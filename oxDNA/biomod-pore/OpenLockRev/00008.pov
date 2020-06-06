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
	<39.816658, 36.439007, 51.716114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888992, 36.560440, 51.341919>,  <39.932392, 36.633301, 51.117401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888992, 36.560440, 51.341919>,  <39.816658, 36.439007, 51.716114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888992, 36.560440, 51.341919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596120, -0.790372, -0.141255,
		-0.782266, -0.532120, -0.323895,
		0.180833, 0.303580, -0.935489,
		39.943241, 36.651512, 51.061272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028099, 35.868546, 51.435528>,  <39.816658, 36.439007, 51.716114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028099, 35.868546, 51.435528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148090, 36.131248, 51.158779>,  <40.220085, 36.288872, 50.992729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148090, 36.131248, 51.158779>,  <40.028099, 35.868546, 51.435528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148090, 36.131248, 51.158779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894846, -0.445041, -0.034476,
		-0.330552, -0.608773, -0.721201,
		0.299976, 0.656760, -0.691867,
		40.238083, 36.328278, 50.951218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491196, 35.494087, 50.883736>,  <40.028099, 35.868546, 51.435528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491196, 35.494087, 50.883736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562035, 35.884834, 50.835781>,  <40.604538, 36.119282, 50.807011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562035, 35.884834, 50.835781>,  <40.491196, 35.494087, 50.883736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562035, 35.884834, 50.835781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940091, -0.203954, -0.273189,
		-0.291319, -0.064320, -0.954461,
		0.177095, 0.976865, -0.119882,
		40.615162, 36.177895, 50.799816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810150, 35.474419, 50.321693>,  <40.491196, 35.494087, 50.883736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810150, 35.474419, 50.321693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905865, 35.805607, 50.524559>,  <40.963291, 36.004318, 50.646278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905865, 35.805607, 50.524559>,  <40.810150, 35.474419, 50.321693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905865, 35.805607, 50.524559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960785, -0.126523, -0.246749,
		-0.140133, 0.546314, -0.825775,
		0.239282, 0.827969, 0.507160,
		40.977650, 36.053997, 50.676708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508202, 35.676476, 50.027828>,  <40.810150, 35.474419, 50.321693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508202, 35.676476, 50.027828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483707, 35.951942, 50.316822>,  <41.469009, 36.117222, 50.490219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483707, 35.951942, 50.316822>,  <41.508202, 35.676476, 50.027828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483707, 35.951942, 50.316822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998105, 0.046674, 0.040109,
		-0.006100, 0.723575, -0.690219,
		-0.061237, 0.688666, 0.722488,
		41.465336, 36.158543, 50.533569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019966, 36.195065, 49.876396>,  <41.508202, 35.676476, 50.027828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019966, 36.195065, 49.876396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939972, 36.206768, 50.268143>,  <41.891975, 36.213791, 50.503189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939972, 36.206768, 50.268143>,  <42.019966, 36.195065, 49.876396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939972, 36.206768, 50.268143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979595, 0.026391, 0.199240,
		-0.020017, 0.999223, -0.033939,
		-0.199981, 0.029259, 0.979363,
		41.879978, 36.215546, 50.561951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445679, 36.665016, 50.185783>,  <42.019966, 36.195065, 49.876396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445679, 36.665016, 50.185783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355694, 36.443363, 50.506367>,  <42.301704, 36.310371, 50.698715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355694, 36.443363, 50.506367>,  <42.445679, 36.665016, 50.185783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355694, 36.443363, 50.506367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971908, -0.069198, 0.224960,
		-0.069198, 0.829546, 0.554134,
		-0.224960, -0.554134, 0.801454,
		42.288204, 36.277122, 50.746803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667252, 37.001640, 50.853821>,  <42.445679, 36.665016, 50.185783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667252, 37.001640, 50.853821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641293, 36.608936, 50.925304>,  <42.625717, 36.373314, 50.968197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641293, 36.608936, 50.925304>,  <42.667252, 37.001640, 50.853821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641293, 36.608936, 50.925304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989773, -0.040527, 0.136772,
		-0.127035, 0.185762, 0.974348,
		-0.064894, -0.981759, 0.178714,
		42.621826, 36.314407, 50.978920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013100, 36.923531, 51.456333>,  <42.667252, 37.001640, 50.853821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013100, 36.923531, 51.456333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992001, 36.573875, 51.263214>,  <42.979343, 36.364082, 51.147343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992001, 36.573875, 51.263214>,  <43.013100, 36.923531, 51.456333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992001, 36.573875, 51.263214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958670, -0.179687, 0.220600,
		-0.279588, -0.451209, 0.847491,
		-0.052746, -0.874141, -0.482799,
		42.976177, 36.311634, 51.118374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256962, 36.480984, 51.917965>,  <43.013100, 36.923531, 51.456333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256962, 36.480984, 51.917965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282833, 36.228573, 51.608738>,  <43.298355, 36.077126, 51.423203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282833, 36.228573, 51.608738>,  <43.256962, 36.480984, 51.917965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282833, 36.228573, 51.608738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924835, -0.253078, 0.283958,
		-0.374829, -0.733322, 0.567223,
		0.064681, -0.631023, -0.773063,
		43.302238, 36.039265, 51.376820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546375, 35.880798, 52.229858>,  <43.256962, 36.480984, 51.917965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546375, 35.880798, 52.229858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613297, 35.820843, 51.840080>,  <43.653450, 35.784870, 51.606213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613297, 35.820843, 51.840080>,  <43.546375, 35.880798, 52.229858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613297, 35.820843, 51.840080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926378, -0.314340, 0.207402,
		-0.337393, -0.937403, 0.086262,
		0.167304, -0.149887, -0.974445,
		43.663486, 35.775875, 51.547749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838085, 35.196815, 52.064369>,  <43.546375, 35.880798, 52.229858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838085, 35.196815, 52.064369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966938, 35.365986, 51.725578>,  <44.044250, 35.467487, 51.522305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966938, 35.365986, 51.725578>,  <43.838085, 35.196815, 52.064369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966938, 35.365986, 51.725578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913107, -0.375001, 0.160029,
		-0.249938, -0.824930, -0.506973,
		0.322128, 0.422923, -0.846977,
		44.063576, 35.492863, 51.471485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202305, 34.797222, 51.560715>,  <43.838085, 35.196815, 52.064369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202305, 34.797222, 51.560715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327759, 35.165516, 51.467873>,  <44.403030, 35.386494, 51.412167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327759, 35.165516, 51.467873>,  <44.202305, 34.797222, 51.560715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327759, 35.165516, 51.467873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948365, -0.315917, 0.028287,
		-0.047280, -0.228992, -0.972279,
		0.313637, 0.920738, -0.232105,
		44.421848, 35.441738, 51.398243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730717, 34.738770, 50.998539>,  <44.202305, 34.797222, 51.560715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730717, 34.738770, 50.998539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780293, 35.083332, 51.195564>,  <44.810036, 35.290070, 51.313778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780293, 35.083332, 51.195564>,  <44.730717, 34.738770, 50.998539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780293, 35.083332, 51.195564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980020, -0.184080, 0.075335,
		0.155565, 0.473386, -0.867009,
		0.123937, 0.861406, 0.492564,
		44.817474, 35.341755, 51.343334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322262, 34.892395, 50.857777>,  <44.730717, 34.738770, 50.998539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322262, 34.892395, 50.857777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297852, 35.169960, 51.144764>,  <45.283203, 35.336498, 51.316956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297852, 35.169960, 51.144764>,  <45.322262, 34.892395, 50.857777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297852, 35.169960, 51.144764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997659, 0.020185, 0.065340,
		0.030858, 0.719780, -0.693516,
		-0.061029, 0.693909, 0.717472,
		45.279545, 35.378132, 51.360004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837200, 35.455639, 50.676373>,  <45.322262, 34.892395, 50.857777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837200, 35.455639, 50.676373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768436, 35.502350, 51.067638>,  <45.727180, 35.530376, 51.302399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768436, 35.502350, 51.067638>,  <45.837200, 35.455639, 50.676373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768436, 35.502350, 51.067638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976649, 0.150088, 0.153721,
		-0.128861, 0.981752, -0.139847,
		-0.171906, 0.116773, 0.978168,
		45.716866, 35.537380, 51.361088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218044, 36.009575, 50.796471>,  <45.837200, 35.455639, 50.676373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218044, 36.009575, 50.796471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143955, 35.835041, 51.148674>,  <46.099503, 35.730320, 51.359997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143955, 35.835041, 51.148674>,  <46.218044, 36.009575, 50.796471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143955, 35.835041, 51.148674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971633, 0.052755, 0.230534,
		-0.147042, 0.898236, 0.414187,
		-0.185223, -0.436336, 0.880513,
		46.088387, 35.704140, 51.412827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819935, 36.243244, 51.259514>,  <46.218044, 36.009575, 50.796471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819935, 36.243244, 51.259514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668716, 35.931694, 51.459686>,  <46.577984, 35.744762, 51.579788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668716, 35.931694, 51.459686>,  <46.819935, 36.243244, 51.259514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668716, 35.931694, 51.459686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922439, -0.270976, 0.275096,
		-0.078663, 0.565614, 0.820910,
		-0.378045, -0.778879, 0.500429,
		46.555302, 35.698029, 51.609814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.332932, 36.134472, 51.827675>,  <46.819935, 36.243244, 51.259514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.332932, 36.134472, 51.827675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.134350, 35.788425, 51.799110>,  <47.015202, 35.580795, 51.781971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.134350, 35.788425, 51.799110>,  <47.332932, 36.134472, 51.827675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.134350, 35.788425, 51.799110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855818, -0.501562, 0.126532,
		-0.145285, 0.001699, 0.989388,
		-0.496455, -0.865120, -0.071415,
		46.985413, 35.528889, 51.777687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676750, 35.644463, 52.276619>,  <47.332932, 36.134472, 51.827675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676750, 35.644463, 52.276619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.490227, 35.415844, 52.006538>,  <47.378315, 35.278671, 51.844490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.490227, 35.415844, 52.006538>,  <47.676750, 35.644463, 52.276619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.490227, 35.415844, 52.006538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743953, -0.666339, 0.050257,
		-0.478635, -0.478882, 0.735921,
		-0.466306, -0.571546, -0.675199,
		47.350334, 35.244381, 51.803978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.735081, 34.978363, 52.597439>,  <47.676750, 35.644463, 52.276619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.735081, 34.978363, 52.597439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658886, 34.973991, 52.204788>,  <47.613167, 34.971367, 51.969196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658886, 34.973991, 52.204788>,  <47.735081, 34.978363, 52.597439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.658886, 34.973991, 52.204788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571720, -0.814099, -0.101880,
		-0.798029, -0.580623, 0.161326,
		-0.190489, -0.010930, -0.981628,
		47.601738, 34.970711, 51.910301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.175102, 35.196472, 51.557144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.326038, 35.134933, 51.922428>,  <24.416599, 35.098011, 52.141598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.326038, 35.134933, 51.922428>,  <24.175102, 35.196472, 51.557144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326038, 35.134933, 51.922428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922638, 0.147325, -0.356418,
		-0.079704, 0.977050, 0.197538,
		0.377341, -0.153848, 0.913206,
		24.439241, 35.088779, 52.196388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608551, 35.773815, 51.704521>,  <24.175102, 35.196472, 51.557144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608551, 35.773815, 51.704521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.705822, 35.456619, 51.927959>,  <24.764185, 35.266300, 52.062023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.705822, 35.456619, 51.927959>,  <24.608551, 35.773815, 51.704521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705822, 35.456619, 51.927959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935030, 0.038444, -0.352478,
		0.258037, 0.608018, 0.750820,
		0.243177, -0.792992, 0.558596,
		24.778774, 35.218723, 52.095539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222815, 35.968124, 52.002312>,  <24.608551, 35.773815, 51.704521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222815, 35.968124, 52.002312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.217670, 35.571453, 52.053539>,  <25.214584, 35.333450, 52.084274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.217670, 35.571453, 52.053539>,  <25.222815, 35.968124, 52.002312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217670, 35.571453, 52.053539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973718, -0.041547, -0.223934,
		0.227392, 0.121823, 0.966153,
		-0.012860, -0.991682, 0.128069,
		25.213812, 35.273949, 52.091961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745035, 35.837082, 52.473701>,  <25.222815, 35.968124, 52.002312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745035, 35.837082, 52.473701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.707209, 35.473396, 52.311527>,  <25.684513, 35.255184, 52.214222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.707209, 35.473396, 52.311527>,  <25.745035, 35.837082, 52.473701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707209, 35.473396, 52.311527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992896, -0.056604, -0.104653,
		0.072203, -0.412454, 0.908113,
		-0.094567, -0.909218, -0.405437,
		25.678839, 35.200630, 52.189896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169291, 35.362801, 52.899044>,  <25.745035, 35.837082, 52.473701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169291, 35.362801, 52.899044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.128242, 35.210876, 52.531303>,  <26.103613, 35.119724, 52.310658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.128242, 35.210876, 52.531303>,  <26.169291, 35.362801, 52.899044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128242, 35.210876, 52.531303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989809, -0.130724, -0.056480,
		-0.098730, -0.915783, 0.389351,
		-0.102621, -0.379807, -0.919356,
		26.097456, 35.096935, 52.255497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628284, 34.779236, 52.905510>,  <26.169291, 35.362801, 52.899044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628284, 34.779236, 52.905510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.583652, 34.890560, 52.523914>,  <26.556873, 34.957355, 52.294956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.583652, 34.890560, 52.523914>,  <26.628284, 34.779236, 52.905510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583652, 34.890560, 52.523914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993567, 0.012545, -0.112548,
		-0.019356, -0.960408, -0.277925,
		-0.111579, 0.278315, -0.953987,
		26.550179, 34.974056, 52.237717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198910, 34.483017, 52.585991>,  <26.628284, 34.779236, 52.905510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198910, 34.483017, 52.585991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.100157, 34.750881, 52.305817>,  <27.040905, 34.911598, 52.137711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.100157, 34.750881, 52.305817>,  <27.198910, 34.483017, 52.585991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100157, 34.750881, 52.305817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905935, -0.097084, -0.412135,
		-0.343990, -0.736299, -0.582696,
		-0.246884, 0.669656, -0.700435,
		27.026091, 34.951778, 52.095688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661789, 34.259583, 52.013374>,  <27.198910, 34.483017, 52.585991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661789, 34.259583, 52.013374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.506889, 34.604275, 51.882256>,  <27.413950, 34.811092, 51.803585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.506889, 34.604275, 51.882256>,  <27.661789, 34.259583, 52.013374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506889, 34.604275, 51.882256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808560, 0.146584, -0.569864,
		-0.443022, -0.485722, -0.753529,
		-0.387251, 0.861735, -0.327796,
		27.390715, 34.862797, 51.783916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675953, 34.209103, 51.334663>,  <27.661789, 34.259583, 52.013374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675953, 34.209103, 51.334663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.666845, 34.601795, 51.410225>,  <27.661381, 34.837410, 51.455563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.666845, 34.601795, 51.410225>,  <27.675953, 34.209103, 51.334663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666845, 34.601795, 51.410225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849816, 0.118533, -0.513578,
		-0.526587, 0.148841, -0.836990,
		-0.022769, 0.981731, 0.188905,
		27.660015, 34.896317, 51.466896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815195, 34.438946, 50.729725>,  <27.675953, 34.209103, 51.334663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815195, 34.438946, 50.729725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.887276, 34.750778, 50.969650>,  <27.930525, 34.937878, 51.113605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.887276, 34.750778, 50.969650>,  <27.815195, 34.438946, 50.729725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887276, 34.750778, 50.969650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900579, 0.114476, -0.419347,
		-0.395580, 0.615749, -0.681447,
		0.180203, 0.779582, 0.599815,
		27.941336, 34.984653, 51.149593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171341, 34.930527, 50.304169>,  <27.815195, 34.438946, 50.729725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171341, 34.930527, 50.304169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.271399, 35.040115, 50.675625>,  <28.331434, 35.105869, 50.898499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.271399, 35.040115, 50.675625>,  <28.171341, 34.930527, 50.304169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271399, 35.040115, 50.675625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917870, 0.238135, -0.317499,
		-0.308126, 0.931791, -0.191898,
		0.250145, 0.273967, 0.928639,
		28.346441, 35.122307, 50.954216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356747, 35.613312, 50.281963>,  <28.171341, 34.930527, 50.304169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356747, 35.613312, 50.281963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.526176, 35.459930, 50.610241>,  <28.627834, 35.367901, 50.807209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.526176, 35.459930, 50.610241>,  <28.356747, 35.613312, 50.281963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526176, 35.459930, 50.610241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901648, 0.265739, -0.341195,
		-0.087259, 0.884503, 0.458302,
		0.423576, -0.383455, 0.820698,
		28.653250, 35.344894, 50.856449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998087, 36.016258, 50.408375>,  <28.356747, 35.613312, 50.281963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998087, 36.016258, 50.408375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.093185, 35.705288, 50.641300>,  <29.150246, 35.518707, 50.781055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.093185, 35.705288, 50.641300>,  <28.998087, 36.016258, 50.408375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093185, 35.705288, 50.641300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970565, 0.166395, -0.174116,
		0.038469, 0.606566, 0.794102,
		0.237748, -0.777425, 0.582311,
		29.164509, 35.472061, 50.815994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581707, 36.182892, 50.815086>,  <28.998087, 36.016258, 50.408375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581707, 36.182892, 50.815086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.557043, 35.784046, 50.797371>,  <29.542246, 35.544739, 50.786743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.557043, 35.784046, 50.797371>,  <29.581707, 36.182892, 50.815086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557043, 35.784046, 50.797371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952844, -0.045594, -0.300016,
		0.297131, -0.060698, 0.952906,
		-0.061657, -0.997114, -0.044288,
		29.538546, 35.484913, 50.784084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237116, 35.856224, 51.279144>,  <29.581707, 36.182892, 50.815086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237116, 35.856224, 51.279144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.119963, 35.606121, 50.989792>,  <30.049671, 35.456059, 50.816181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.119963, 35.606121, 50.989792>,  <30.237116, 35.856224, 51.279144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119963, 35.606121, 50.989792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955850, -0.172548, -0.237861,
		0.023905, -0.761108, 0.648185,
		-0.292881, -0.625253, -0.723380,
		30.032099, 35.418545, 50.772778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744637, 35.354259, 51.345051>,  <30.237116, 35.856224, 51.279144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744637, 35.354259, 51.345051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.573151, 35.283401, 50.990688>,  <30.470259, 35.240887, 50.778072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.573151, 35.283401, 50.990688>,  <30.744637, 35.354259, 51.345051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573151, 35.283401, 50.990688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837817, -0.444850, -0.316497,
		-0.338029, -0.877912, 0.339126,
		-0.428717, -0.177141, -0.885902,
		30.444536, 35.230259, 50.724918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949186, 34.692085, 51.150520>,  <30.744637, 35.354259, 51.345051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949186, 34.692085, 51.150520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.846758, 34.864212, 50.804283>,  <30.785301, 34.967487, 50.596539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.846758, 34.864212, 50.804283>,  <30.949186, 34.692085, 51.150520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846758, 34.864212, 50.804283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832014, -0.357755, -0.423986,
		-0.492118, -0.828759, -0.266417,
		-0.256070, 0.430314, -0.865597,
		30.769938, 34.993305, 50.544605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100630, 34.130836, 50.601871>,  <30.949186, 34.692085, 51.150520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100630, 34.130836, 50.601871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.097546, 34.489590, 50.424992>,  <31.095695, 34.704842, 50.318863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.097546, 34.489590, 50.424992>,  <31.100630, 34.130836, 50.601871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097546, 34.489590, 50.424992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775127, -0.274021, -0.569290,
		-0.631758, -0.347152, -0.693085,
		-0.007710, 0.896882, -0.442202,
		31.095232, 34.758656, 50.292332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359087, 33.902733, 49.948933>,  <31.100630, 34.130836, 50.601871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359087, 33.902733, 49.948933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.358046, 34.301739, 49.920769>,  <31.357420, 34.541142, 49.903870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.358046, 34.301739, 49.920769>,  <31.359087, 33.902733, 49.948933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358046, 34.301739, 49.920769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627771, -0.053178, -0.776580,
		-0.778394, -0.046227, -0.626072,
		-0.002605, 0.997515, -0.070413,
		31.357264, 34.600994, 49.899643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365280, 34.092564, 49.184109>,  <31.359087, 33.902733, 49.948933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365280, 34.092564, 49.184109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.523592, 34.381851, 49.410496>,  <31.618580, 34.555424, 49.546326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.523592, 34.381851, 49.410496>,  <31.365280, 34.092564, 49.184109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523592, 34.381851, 49.410496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685894, 0.177012, -0.705844,
		-0.610661, 0.667551, -0.425993,
		0.395781, 0.723217, 0.565963,
		31.642326, 34.598816, 49.580284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653629, 34.465359, 48.651646>,  <31.365280, 34.092564, 49.184109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653629, 34.465359, 48.651646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.822052, 34.629604, 48.975151>,  <31.923105, 34.728153, 49.169254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.822052, 34.629604, 48.975151>,  <31.653629, 34.465359, 48.651646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822052, 34.629604, 48.975151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785187, 0.281378, -0.551641,
		-0.454083, 0.867306, -0.203935,
		0.421058, 0.410618, 0.808766,
		31.948370, 34.752789, 49.217781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.397966, 35.401764, 35.032471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.419470, 35.079792, 35.268841>,  <24.432373, 34.886608, 35.410664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.419470, 35.079792, 35.268841>,  <24.397966, 35.401764, 35.032471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419470, 35.079792, 35.268841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424348, 0.554104, 0.716168,
		-0.903902, 0.212258, 0.371360,
		0.053759, -0.804932, 0.590927,
		24.435598, 34.838314, 35.446117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.049503, 35.474159, 35.792393>,  <24.397966, 35.401764, 35.032471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.049503, 35.474159, 35.792393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.367788, 35.233318, 35.766136>,  <24.558760, 35.088814, 35.750381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.367788, 35.233318, 35.766136>,  <24.049503, 35.474159, 35.792393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367788, 35.233318, 35.766136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515106, 0.615731, 0.596273,
		-0.318601, -0.508275, 0.800094,
		0.795713, -0.602106, -0.065643,
		24.606503, 35.052685, 35.746445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.260248, 35.229797, 36.497929>,  <24.049503, 35.474159, 35.792393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.260248, 35.229797, 36.497929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.548746, 35.267223, 36.223396>,  <24.721844, 35.289677, 36.058678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.548746, 35.267223, 36.223396>,  <24.260248, 35.229797, 36.497929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548746, 35.267223, 36.223396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482728, 0.642708, 0.594895,
		0.496771, -0.760377, 0.418385,
		0.721244, 0.093560, -0.686334,
		24.765120, 35.295292, 36.017494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.834263, 34.941639, 36.735863>,  <24.260248, 35.229797, 36.497929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.834263, 34.941639, 36.735863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.895130, 35.246983, 36.484745>,  <24.931650, 35.430191, 36.334076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.895130, 35.246983, 36.484745>,  <24.834263, 34.941639, 36.735863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895130, 35.246983, 36.484745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485939, 0.495329, 0.720078,
		0.860644, -0.414641, -0.295574,
		0.152168, 0.763362, -0.627792,
		24.940781, 35.475990, 36.296406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492790, 35.191753, 36.734718>,  <24.834263, 34.941639, 36.735863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492790, 35.191753, 36.734718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.237623, 35.484631, 36.639263>,  <25.084522, 35.660358, 36.581989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.237623, 35.484631, 36.639263>,  <25.492790, 35.191753, 36.734718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237623, 35.484631, 36.639263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345133, 0.548833, 0.761357,
		0.688435, 0.403324, -0.602817,
		-0.637919, 0.732197, -0.238636,
		25.046247, 35.704288, 36.567673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737484, 35.922970, 36.680965>,  <25.492790, 35.191753, 36.734718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737484, 35.922970, 36.680965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.370918, 35.868759, 36.831600>,  <25.150978, 35.836231, 36.921982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.370918, 35.868759, 36.831600>,  <25.737484, 35.922970, 36.680965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370918, 35.868759, 36.831600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301930, 0.383546, 0.872772,
		-0.262725, 0.913523, -0.310566,
		-0.916414, -0.135530, 0.376587,
		25.095995, 35.828098, 36.944576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535234, 36.560486, 36.965736>,  <25.737484, 35.922970, 36.680965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535234, 36.560486, 36.965736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.342468, 36.259422, 37.145187>,  <25.226809, 36.078785, 37.252857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.342468, 36.259422, 37.145187>,  <25.535234, 36.560486, 36.965736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342468, 36.259422, 37.145187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327832, 0.319943, 0.888911,
		-0.812579, 0.575454, 0.092560,
		-0.481914, -0.752655, 0.448631,
		25.197895, 36.033627, 37.279778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886074, 36.780991, 37.426537>,  <25.535234, 36.560486, 36.965736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886074, 36.780991, 37.426537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.060877, 36.445717, 37.557056>,  <25.165758, 36.244553, 37.635368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.060877, 36.445717, 37.557056>,  <24.886074, 36.780991, 37.426537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060877, 36.445717, 37.557056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179482, 0.436745, 0.881499,
		-0.881368, -0.326657, 0.341300,
		0.437009, -0.838182, 0.326304,
		25.191980, 36.194263, 37.654949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785215, 36.636612, 38.206619>,  <24.886074, 36.780991, 37.426537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785215, 36.636612, 38.206619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.112341, 36.411964, 38.156384>,  <25.308617, 36.277176, 38.126244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.112341, 36.411964, 38.156384>,  <24.785215, 36.636612, 38.206619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112341, 36.411964, 38.156384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333695, 0.284985, 0.898572,
		-0.468862, -0.776770, 0.420472,
		0.817812, -0.561615, -0.125586,
		25.357685, 36.243481, 38.118710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833097, 36.145531, 38.718197>,  <24.785215, 36.636612, 38.206619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833097, 36.145531, 38.718197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.165785, 36.293270, 38.552387>,  <25.365396, 36.381912, 38.452904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.165785, 36.293270, 38.552387>,  <24.833097, 36.145531, 38.718197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165785, 36.293270, 38.552387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154926, 0.562563, 0.812109,
		0.533142, -0.739667, 0.410673,
		0.831720, 0.369346, -0.414520,
		25.415300, 36.404076, 38.428032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375917, 36.008331, 39.103458>,  <24.833097, 36.145531, 38.718197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375917, 36.008331, 39.103458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.531984, 36.310684, 38.893158>,  <25.625624, 36.492096, 38.766979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.531984, 36.310684, 38.893158>,  <25.375917, 36.008331, 39.103458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531984, 36.310684, 38.893158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264751, 0.454790, 0.850337,
		0.881860, -0.470966, -0.022676,
		0.390167, 0.755881, -0.525750,
		25.649035, 36.537449, 38.735432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085485, 36.014507, 39.411282>,  <25.375917, 36.008331, 39.103458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085485, 36.014507, 39.411282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.956079, 36.359833, 39.256344>,  <25.878435, 36.567028, 39.163380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.956079, 36.359833, 39.256344>,  <26.085485, 36.014507, 39.411282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956079, 36.359833, 39.256344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396134, 0.495328, 0.773128,
		0.859311, 0.096678, -0.502232,
		-0.323514, 0.863309, -0.387344,
		25.859026, 36.618824, 39.140141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444727, 35.284218, 39.441395>,  <26.085485, 36.014507, 39.411282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444727, 35.284218, 39.441395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.173031, 35.232693, 39.730404>,  <26.010014, 35.201778, 39.903809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.173031, 35.232693, 39.730404>,  <26.444727, 35.284218, 39.441395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173031, 35.232693, 39.730404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223914, -0.973912, 0.036866,
		0.698924, 0.186823, 0.690364,
		-0.679241, -0.128816, 0.722522,
		25.969259, 35.194050, 39.947159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683254, 34.701462, 39.658775>,  <26.444727, 35.284218, 39.441395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683254, 34.701462, 39.658775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.352840, 34.763073, 39.875641>,  <26.154593, 34.800041, 40.005760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.352840, 34.763073, 39.875641>,  <26.683254, 34.701462, 39.658775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352840, 34.763073, 39.875641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067253, -0.928124, 0.366146,
		0.559595, 0.338911, 0.756302,
		-0.826033, 0.154029, 0.542166,
		26.105030, 34.809280, 40.038292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354549, 34.508587, 39.833447>,  <26.683254, 34.701462, 39.658775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354549, 34.508587, 39.833447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.165840, 34.839081, 39.956577>,  <27.052614, 35.037376, 40.030457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.165840, 34.839081, 39.956577>,  <27.354549, 34.508587, 39.833447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165840, 34.839081, 39.956577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149104, -0.269337, 0.951433,
		0.869021, 0.494760, 0.003870,
		-0.471774, 0.826238, 0.307830,
		27.024307, 35.086952, 40.048927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774342, 34.594353, 40.315926>,  <27.354549, 34.508587, 39.833447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774342, 34.594353, 40.315926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.461143, 34.839554, 40.358162>,  <27.273226, 34.986675, 40.383503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.461143, 34.839554, 40.358162>,  <27.774342, 34.594353, 40.315926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461143, 34.839554, 40.358162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096562, -0.047909, 0.994173,
		0.614489, 0.788627, -0.021681,
		-0.782993, 0.613002, 0.105591,
		27.226246, 35.023453, 40.389839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939449, 34.877987, 40.853821>,  <27.774342, 34.594353, 40.315926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939449, 34.877987, 40.853821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.559698, 34.994411, 40.806557>,  <27.331848, 35.064266, 40.778198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.559698, 34.994411, 40.806557>,  <27.939449, 34.877987, 40.853821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559698, 34.994411, 40.806557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093102, 0.098552, 0.990767,
		0.300022, 0.951614, -0.066465,
		-0.949378, 0.291064, -0.118165,
		27.274885, 35.081730, 40.771107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807274, 35.552002, 41.191990>,  <27.939449, 34.877987, 40.853821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807274, 35.552002, 41.191990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.502445, 35.295250, 41.157963>,  <27.319548, 35.141197, 41.137547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.502445, 35.295250, 41.157963>,  <27.807274, 35.552002, 41.191990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502445, 35.295250, 41.157963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157417, 0.056236, 0.985930,
		-0.628065, 0.764740, -0.143899,
		-0.762072, -0.641880, -0.085063,
		27.273823, 35.102684, 41.132442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233482, 35.844353, 41.521217>,  <27.807274, 35.552002, 41.191990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233482, 35.844353, 41.521217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.172304, 35.449078, 41.517376>,  <27.135597, 35.211914, 41.515072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.172304, 35.449078, 41.517376>,  <27.233482, 35.844353, 41.521217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172304, 35.449078, 41.517376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271097, 0.032614, 0.961999,
		-0.950323, 0.149738, -0.272883,
		-0.152948, -0.988188, -0.009600,
		27.126419, 35.152622, 41.514496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560808, 35.637447, 41.757507>,  <27.233482, 35.844353, 41.521217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560808, 35.637447, 41.757507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.820124, 35.348339, 41.853275>,  <26.975714, 35.174873, 41.910736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.820124, 35.348339, 41.853275>,  <26.560808, 35.637447, 41.757507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820124, 35.348339, 41.853275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010195, 0.306187, 0.951917,
		-0.761326, -0.619558, 0.191129,
		0.648289, -0.722771, 0.239424,
		27.014610, 35.131508, 41.925102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198364, 35.563099, 42.442699>,  <26.560808, 35.637447, 41.757507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198364, 35.563099, 42.442699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.293102, 35.782360, 42.763557>,  <26.349945, 35.913918, 42.956070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.293102, 35.782360, 42.763557>,  <26.198364, 35.563099, 42.442699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293102, 35.782360, 42.763557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912605, 0.157677, -0.377215,
		-0.333251, 0.821379, -0.462904,
		0.236847, 0.548155, 0.802140,
		26.364157, 35.946808, 43.004200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607374, 36.259525, 42.173630>,  <26.198364, 35.563099, 42.442699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607374, 36.259525, 42.173630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.701141, 36.144573, 42.545105>,  <26.757402, 36.075600, 42.767990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.701141, 36.144573, 42.545105>,  <26.607374, 36.259525, 42.173630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701141, 36.144573, 42.545105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972091, 0.060128, -0.226769,
		0.009330, 0.955926, 0.293459,
		0.234420, -0.287384, 0.928686,
		26.771467, 36.058357, 42.823711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045498, 36.774742, 42.502872>,  <26.607374, 36.259525, 42.173630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045498, 36.774742, 42.502872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.109991, 36.399532, 42.625587>,  <27.148687, 36.174408, 42.699219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.109991, 36.399532, 42.625587>,  <27.045498, 36.774742, 42.502872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109991, 36.399532, 42.625587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984682, 0.131991, -0.113927,
		0.066373, 0.320461, 0.944934,
		0.161232, -0.938021, 0.306792,
		27.158361, 36.118126, 42.717625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564167, 36.733574, 43.047024>,  <27.045498, 36.774742, 42.502872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564167, 36.733574, 43.047024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.562065, 36.398811, 42.828098>,  <27.560804, 36.197952, 42.696743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.562065, 36.398811, 42.828098>,  <27.564167, 36.733574, 43.047024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562065, 36.398811, 42.828098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995395, 0.048013, -0.082974,
		0.095720, -0.545229, 0.832804,
		-0.005254, -0.836911, -0.547314,
		27.560490, 36.147739, 42.663902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180151, 36.394485, 43.118275>,  <27.564167, 36.733574, 43.047024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180151, 36.394485, 43.118275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.009924, 36.279507, 42.775051>,  <27.907787, 36.210518, 42.569118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.009924, 36.279507, 42.775051>,  <28.180151, 36.394485, 43.118275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009924, 36.279507, 42.775051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885587, 0.062697, -0.460223,
		0.186088, -0.955741, 0.227880,
		-0.425567, -0.287450, -0.858059,
		27.882254, 36.193272, 42.517632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854063, 35.737671, 43.428467>,  <28.180151, 36.394485, 43.118275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854063, 35.737671, 43.428467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.502884, 35.926392, 43.460995>,  <27.292177, 36.039623, 43.480511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.502884, 35.926392, 43.460995>,  <27.854063, 35.737671, 43.428467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502884, 35.926392, 43.460995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276303, 0.360604, 0.890854,
		0.390980, 0.804593, -0.446951,
		-0.877947, 0.471800, 0.081322,
		27.239500, 36.067932, 43.485390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737736, 35.138000, 43.870659>,  <27.854063, 35.737671, 43.428467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737736, 35.138000, 43.870659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.771292, 34.810974, 44.098537>,  <27.791426, 34.614758, 44.235264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.771292, 34.810974, 44.098537>,  <27.737736, 35.138000, 43.870659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771292, 34.810974, 44.098537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142086, -0.575681, -0.805235,
		0.986293, -0.013393, -0.164459,
		0.083892, -0.817564, 0.569693,
		27.796459, 34.565704, 44.269447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191633, 35.071289, 44.571354>,  <27.737736, 35.138000, 43.870659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191633, 35.071289, 44.571354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.889648, 35.027481, 44.829975>,  <27.708458, 35.001198, 44.985149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.889648, 35.027481, 44.829975>,  <28.191633, 35.071289, 44.571354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889648, 35.027481, 44.829975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600946, 0.279092, 0.748981,
		-0.262475, 0.953999, -0.144890,
		-0.754964, -0.109518, 0.646556,
		27.663158, 34.994625, 45.023941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312294, 35.481689, 45.233212>,  <28.191633, 35.071289, 44.571354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312294, 35.481689, 45.233212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.161320, 35.848251, 45.286484>,  <28.070734, 36.068188, 45.318447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.161320, 35.848251, 45.286484>,  <28.312294, 35.481689, 45.233212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161320, 35.848251, 45.286484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556221, 0.109365, 0.823807,
		0.740378, 0.385013, -0.551004,
		-0.377437, 0.916408, 0.133181,
		28.048088, 36.123173, 45.326439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898489, 35.945068, 45.232464>,  <28.312294, 35.481689, 45.233212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898489, 35.945068, 45.232464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.577122, 36.085609, 45.424744>,  <28.384302, 36.169933, 45.540112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.577122, 36.085609, 45.424744>,  <28.898489, 35.945068, 45.232464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577122, 36.085609, 45.424744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586084, 0.324301, 0.742519,
		0.104997, 0.878282, -0.466472,
		-0.803418, 0.351354, 0.480697,
		28.336096, 36.191017, 45.568954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531349, 36.146202, 45.666904>,  <28.898489, 35.945068, 45.232464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531349, 36.146202, 45.666904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.677080, 36.090927, 46.035290>,  <29.764519, 36.057762, 46.256321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.677080, 36.090927, 46.035290>,  <29.531349, 36.146202, 45.666904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677080, 36.090927, 46.035290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926758, 0.151048, -0.343955,
		-0.091580, 0.978820, 0.183096,
		0.364326, -0.138186, 0.920962,
		29.786379, 36.049473, 46.311577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111113, 36.766277, 46.011963>,  <29.531349, 36.146202, 45.666904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111113, 36.766277, 46.011963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150229, 36.397449, 46.161755>,  <30.173698, 36.176155, 46.251629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150229, 36.397449, 46.161755>,  <30.111113, 36.766277, 46.011963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150229, 36.397449, 46.161755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932265, -0.046819, -0.358734,
		0.348309, 0.384191, 0.855031,
		0.097791, -0.922066, 0.374475,
		30.179565, 36.120831, 46.274097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822538, 36.775944, 46.107136>,  <30.111113, 36.766277, 46.011963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822538, 36.775944, 46.107136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725838, 36.390736, 46.154716>,  <30.667818, 36.159611, 46.183266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725838, 36.390736, 46.154716>,  <30.822538, 36.775944, 46.107136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725838, 36.390736, 46.154716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906809, -0.267845, -0.325509,
		0.345332, 0.029175, 0.938027,
		-0.241749, -0.963020, 0.118951,
		30.653313, 36.101830, 46.190403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317356, 36.412960, 46.451210>,  <30.822538, 36.775944, 46.107136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317356, 36.412960, 46.451210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149393, 36.129993, 46.223793>,  <31.048615, 35.960213, 46.087345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149393, 36.129993, 46.223793>,  <31.317356, 36.412960, 46.451210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149393, 36.129993, 46.223793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850178, -0.087380, -0.519193,
		0.317608, -0.701372, 0.638124,
		-0.419907, -0.707419, -0.568539,
		31.023420, 35.917767, 46.053230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852047, 36.019566, 46.717991>,  <31.317356, 36.412960, 46.451210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852047, 36.019566, 46.717991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709709, 35.777073, 47.002487>,  <31.624306, 35.631577, 47.173183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709709, 35.777073, 47.002487>,  <31.852047, 36.019566, 46.717991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709709, 35.777073, 47.002487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932127, -0.175522, 0.316751,
		-0.067187, 0.775676, 0.627544,
		-0.355844, -0.606233, 0.711236,
		31.602957, 35.595203, 47.215858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988497, 36.226997, 47.344646>,  <31.852047, 36.019566, 46.717991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988497, 36.226997, 47.344646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.962797, 35.828232, 47.326561>,  <31.947378, 35.588974, 47.315708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.962797, 35.828232, 47.326561>,  <31.988497, 36.226997, 47.344646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962797, 35.828232, 47.326561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900110, -0.077454, 0.428722,
		-0.430898, -0.013152, 0.902304,
		-0.064249, -0.996909, -0.045213,
		31.943523, 35.529160, 47.312996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944265, 35.912792, 47.987617>,  <31.988497, 36.226997, 47.344646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944265, 35.912792, 47.987617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138477, 35.676838, 47.729534>,  <32.255005, 35.535267, 47.574684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138477, 35.676838, 47.729534>,  <31.944265, 35.912792, 47.987617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138477, 35.676838, 47.729534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742001, -0.112201, 0.660943,
		-0.462274, -0.799654, 0.383219,
		0.485528, -0.589886, -0.645212,
		32.284134, 35.499874, 47.535969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048569, 35.187157, 48.268368>,  <31.944265, 35.912792, 47.987617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048569, 35.187157, 48.268368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.349960, 35.339806, 48.054214>,  <32.530796, 35.431396, 47.925724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.349960, 35.339806, 48.054214>,  <32.048569, 35.187157, 48.268368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349960, 35.339806, 48.054214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599590, -0.064756, 0.797683,
		0.269746, -0.922046, -0.277610,
		0.753478, 0.381624, -0.535382,
		32.576004, 35.454292, 47.893600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686697, 35.447800, 48.719345>,  <32.048569, 35.187157, 48.268368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686697, 35.447800, 48.719345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.858879, 35.304375, 49.050678>,  <31.962189, 35.218319, 49.249477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.858879, 35.304375, 49.050678>,  <31.686697, 35.447800, 48.719345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858879, 35.304375, 49.050678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869962, 0.409410, -0.274862,
		-0.240572, 0.838936, 0.488172,
		0.430454, -0.358567, 0.828335,
		31.988016, 35.196804, 49.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014320, 36.031040, 48.967529>,  <31.686697, 35.447800, 48.719345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014320, 36.031040, 48.967529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183678, 35.694492, 49.101894>,  <32.285290, 35.492561, 49.182514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183678, 35.694492, 49.101894>,  <32.014320, 36.031040, 48.967529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183678, 35.694492, 49.101894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899223, 0.345196, -0.268772,
		0.110182, 0.415854, 0.902732,
		0.423389, -0.841371, 0.335911,
		32.310696, 35.442081, 49.202667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693459, 36.293724, 49.207615>,  <32.014320, 36.031040, 48.967529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693459, 36.293724, 49.207615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742657, 35.896816, 49.201061>,  <32.772175, 35.658672, 49.197128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742657, 35.896816, 49.201061>,  <32.693459, 36.293724, 49.207615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742657, 35.896816, 49.201061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933371, 0.121277, -0.337804,
		0.337180, 0.026257, 0.941074,
		0.123000, -0.992272, -0.016385,
		32.779556, 35.599136, 49.196144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343204, 36.209301, 49.457535>,  <32.693459, 36.293724, 49.207615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343204, 36.209301, 49.457535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266270, 35.871826, 49.257053>,  <33.220108, 35.669342, 49.136765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266270, 35.871826, 49.257053>,  <33.343204, 36.209301, 49.457535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266270, 35.871826, 49.257053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942124, -0.015826, -0.334892,
		0.274610, -0.536608, 0.797898,
		-0.192333, -0.843684, -0.501205,
		33.208569, 35.618721, 49.106693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834038, 35.619190, 49.680782>,  <33.343204, 36.209301, 49.457535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834038, 35.619190, 49.680782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718422, 35.553253, 49.303574>,  <33.649052, 35.513691, 49.077248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718422, 35.553253, 49.303574>,  <33.834038, 35.619190, 49.680782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718422, 35.553253, 49.303574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957265, -0.060042, -0.282912,
		-0.009984, -0.984490, 0.175154,
		-0.289041, -0.164845, -0.943017,
		33.631710, 35.503799, 49.020668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395111, 35.256195, 49.394657>,  <33.834038, 35.619190, 49.680782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395111, 35.256195, 49.394657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178783, 35.358757, 49.074215>,  <34.048988, 35.420296, 48.881950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178783, 35.358757, 49.074215>,  <34.395111, 35.256195, 49.394657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178783, 35.358757, 49.074215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829157, 0.002324, -0.559011,
		-0.141474, -0.966566, -0.213861,
		-0.540817, 0.256409, -0.801106,
		34.016537, 35.435680, 48.833881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686333, 34.818897, 48.847031>,  <34.395111, 35.256195, 49.394657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686333, 34.818897, 48.847031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484325, 35.087433, 48.630047>,  <34.363121, 35.248554, 48.499855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484325, 35.087433, 48.630047>,  <34.686333, 34.818897, 48.847031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484325, 35.087433, 48.630047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802210, 0.133194, -0.581995,
		-0.318464, -0.729083, -0.605821,
		-0.505014, 0.671340, -0.542460,
		34.332821, 35.288834, 48.467308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915337, 34.611820, 48.219784>,  <34.686333, 34.818897, 48.847031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915337, 34.611820, 48.219784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786427, 34.989845, 48.197895>,  <34.709080, 35.216660, 48.184761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786427, 34.989845, 48.197895>,  <34.915337, 34.611820, 48.219784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786427, 34.989845, 48.197895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771346, 0.228641, -0.593927,
		-0.548786, -0.233618, -0.802656,
		-0.322272, 0.945064, -0.054725,
		34.689743, 35.273365, 48.181477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881756, 34.871971, 47.439117>,  <34.915337, 34.611820, 48.219784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881756, 34.871971, 47.439117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890972, 35.185932, 47.686790>,  <34.896503, 35.374310, 47.835396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890972, 35.185932, 47.686790>,  <34.881756, 34.871971, 47.439117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890972, 35.185932, 47.686790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721252, 0.415831, -0.553968,
		-0.692289, 0.459355, -0.556533,
		0.023044, 0.784906, 0.619186,
		34.897884, 35.421406, 47.872547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860451, 35.479279, 47.017487>,  <34.881756, 34.871971, 47.439117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860451, 35.479279, 47.017487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014542, 35.610748, 47.362408>,  <35.106998, 35.689629, 47.569363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014542, 35.610748, 47.362408>,  <34.860451, 35.479279, 47.017487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014542, 35.610748, 47.362408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796152, 0.354124, -0.490651,
		-0.466626, 0.875541, -0.125252,
		0.385230, 0.328670, 0.862307,
		35.130112, 35.709351, 47.621101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181942, 36.085155, 46.848816>,  <34.860451, 35.479279, 47.017487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181942, 36.085155, 46.848816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318069, 36.008781, 47.217106>,  <35.399746, 35.962959, 47.438080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318069, 36.008781, 47.217106>,  <35.181942, 36.085155, 46.848816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318069, 36.008781, 47.217106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861102, 0.456630, -0.223590,
		-0.377738, 0.868927, 0.319812,
		0.340319, -0.190932, 0.920721,
		35.420166, 35.951500, 47.493320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446938, 36.606968, 47.050140>,  <35.181942, 36.085155, 46.848816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446938, 36.606968, 47.050140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652767, 36.357006, 47.284988>,  <35.776264, 36.207027, 47.425896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652767, 36.357006, 47.284988>,  <35.446938, 36.606968, 47.050140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652767, 36.357006, 47.284988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833759, 0.524491, -0.172499,
		-0.200142, 0.578277, 0.790910,
		0.514578, -0.624904, 0.587116,
		35.807140, 36.169537, 47.461124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845387, 36.983047, 47.403427>,  <35.446938, 36.606968, 47.050140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845387, 36.983047, 47.403427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036728, 36.632477, 47.425499>,  <36.151535, 36.422134, 47.438744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036728, 36.632477, 47.425499>,  <35.845387, 36.983047, 47.403427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036728, 36.632477, 47.425499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876780, 0.473129, -0.086057,
		0.049316, 0.089546, 0.994761,
		0.478356, -0.876431, 0.055180,
		36.180233, 36.369549, 47.442051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464897, 37.152569, 47.854042>,  <35.845387, 36.983047, 47.403427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464897, 37.152569, 47.854042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528843, 36.816910, 47.646088>,  <36.567211, 36.615517, 47.521317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528843, 36.816910, 47.646088>,  <36.464897, 37.152569, 47.854042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528843, 36.816910, 47.646088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863581, 0.374013, -0.338145,
		0.478196, -0.394908, 0.784459,
		0.159862, -0.839144, -0.519887,
		36.576801, 36.565166, 47.490120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221588, 37.004753, 47.861153>,  <36.464897, 37.152569, 47.854042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221588, 37.004753, 47.861153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092354, 36.765785, 47.567570>,  <37.014812, 36.622402, 47.391418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092354, 36.765785, 47.567570>,  <37.221588, 37.004753, 47.861153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092354, 36.765785, 47.567570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737195, 0.327440, -0.591039,
		0.593429, -0.732030, 0.334626,
		-0.323088, -0.597424, -0.733961,
		36.995426, 36.586559, 47.347382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706806, 36.490540, 47.641449>,  <37.221588, 37.004753, 47.861153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706806, 36.490540, 47.641449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464737, 36.633583, 47.356949>,  <37.319496, 36.719410, 47.186249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464737, 36.633583, 47.356949>,  <37.706806, 36.490540, 47.641449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464737, 36.633583, 47.356949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752279, 0.549197, -0.363948,
		0.260466, -0.755312, -0.601383,
		-0.605172, 0.357612, -0.711253,
		37.283184, 36.740868, 47.143574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446739, 36.802803, 47.465187>,  <37.706806, 36.490540, 47.641449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446739, 36.802803, 47.465187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534336, 36.706146, 47.843319>,  <38.586895, 36.648151, 48.070198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534336, 36.706146, 47.843319>,  <38.446739, 36.802803, 47.465187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534336, 36.706146, 47.843319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252840, -0.921700, -0.294178,
		0.942397, 0.303441, -0.140750,
		0.218995, -0.241645, 0.945330,
		38.600033, 36.633652, 48.126919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211670, 36.639610, 47.604527>,  <38.446739, 36.802803, 47.465187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211670, 36.639610, 47.604527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945789, 36.443794, 47.830276>,  <38.786263, 36.326305, 47.965729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945789, 36.443794, 47.830276>,  <39.211670, 36.639610, 47.604527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945789, 36.443794, 47.830276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305680, -0.867495, -0.392445,
		0.681711, -0.088340, 0.726269,
		-0.664703, -0.489540, 0.564377,
		38.746380, 36.296932, 47.999588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597443, 36.036434, 47.957176>,  <39.211670, 36.639610, 47.604527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597443, 36.036434, 47.957176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.210037, 35.939739, 47.933388>,  <38.977592, 35.881721, 47.919113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.210037, 35.939739, 47.933388>,  <39.597443, 36.036434, 47.957176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210037, 35.939739, 47.933388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246296, -0.965227, -0.087608,
		-0.036229, -0.099498, 0.994378,
		-0.968517, -0.241737, -0.059475,
		38.919483, 35.867218, 47.915546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385349, 35.498810, 48.414494>,  <39.597443, 36.036434, 47.957176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385349, 35.498810, 48.414494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167797, 35.469921, 48.080074>,  <39.037266, 35.452587, 47.879421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167797, 35.469921, 48.080074>,  <39.385349, 35.498810, 48.414494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167797, 35.469921, 48.080074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058140, -0.997139, 0.048319,
		-0.837144, -0.022328, 0.546526,
		-0.543884, -0.072225, -0.836047,
		39.004631, 35.448254, 47.829262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689495, 35.233856, 48.642601>,  <39.385349, 35.498810, 48.414494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689495, 35.233856, 48.642601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.839325, 35.117435, 48.290466>,  <38.929222, 35.047585, 48.079185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.839325, 35.117435, 48.290466>,  <38.689495, 35.233856, 48.642601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839325, 35.117435, 48.290466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165901, -0.955172, 0.245202,
		-0.912236, 0.054203, -0.406064,
		0.374570, -0.291048, -0.880334,
		38.951694, 35.030121, 48.026367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732426, 35.264553, 49.333282>,  <38.689495, 35.233856, 48.642601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732426, 35.264553, 49.333282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647388, 35.655327, 49.325249>,  <38.596367, 35.889790, 49.320427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647388, 35.655327, 49.325249>,  <38.732426, 35.264553, 49.333282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647388, 35.655327, 49.325249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788630, -0.159411, 0.593844,
		0.576944, 0.142088, 0.804330,
		-0.212597, 0.976933, -0.020083,
		38.583611, 35.948406, 49.319225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722698, 35.624943, 49.979233>,  <38.732426, 35.264553, 49.333282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722698, 35.624943, 49.979233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448738, 35.812500, 49.756145>,  <38.284363, 35.925034, 49.622292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448738, 35.812500, 49.756145>,  <38.722698, 35.624943, 49.979233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448738, 35.812500, 49.756145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694443, -0.188338, 0.694462,
		0.220589, 0.862942, 0.454611,
		-0.684901, 0.468892, -0.557719,
		38.243267, 35.953167, 49.588829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403191, 36.120987, 50.359184>,  <38.722698, 35.624943, 49.979233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403191, 36.120987, 50.359184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145351, 35.970448, 50.092995>,  <37.990650, 35.880123, 49.933281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145351, 35.970448, 50.092995>,  <38.403191, 36.120987, 50.359184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145351, 35.970448, 50.092995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704947, -0.044287, 0.707876,
		-0.295881, 0.925418, -0.236760,
		-0.644596, -0.376351, -0.665474,
		37.951973, 35.857544, 49.893353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745686, 36.444431, 50.434288>,  <38.403191, 36.120987, 50.359184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745686, 36.444431, 50.434288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652847, 36.091560, 50.270386>,  <37.597145, 35.879837, 50.172043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652847, 36.091560, 50.270386>,  <37.745686, 36.444431, 50.434288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652847, 36.091560, 50.270386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763397, -0.095856, 0.638778,
		-0.602790, 0.461067, -0.651200,
		-0.232098, -0.882173, -0.409758,
		37.583218, 35.826908, 50.147457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044777, 36.497593, 50.338909>,  <37.745686, 36.444431, 50.434288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044777, 36.497593, 50.338909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135468, 36.108948, 50.365917>,  <37.189880, 35.875759, 50.382122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135468, 36.108948, 50.365917>,  <37.044777, 36.497593, 50.338909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135468, 36.108948, 50.365917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789105, -0.142615, 0.597473,
		-0.570885, -0.188740, -0.799042,
		0.226722, -0.971617, 0.067519,
		37.203484, 35.817463, 50.386173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480560, 36.110813, 50.228252>,  <37.044777, 36.497593, 50.338909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480560, 36.110813, 50.228252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703167, 35.848274, 50.432014>,  <36.836731, 35.690750, 50.554272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703167, 35.848274, 50.432014>,  <36.480560, 36.110813, 50.228252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703167, 35.848274, 50.432014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753442, -0.140286, 0.642375,
		-0.350159, -0.741301, -0.572592,
		0.556520, -0.656348, 0.509405,
		36.870125, 35.651371, 50.584835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049000, 35.613632, 50.498684>,  <36.480560, 36.110813, 50.228252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049000, 35.613632, 50.498684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.332508, 35.503792, 50.758602>,  <36.502613, 35.437885, 50.914555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.332508, 35.503792, 50.758602>,  <36.049000, 35.613632, 50.498684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332508, 35.503792, 50.758602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705438, -0.278312, 0.651843,
		0.001849, -0.920400, -0.390975,
		0.708769, -0.274603, 0.649799,
		36.545139, 35.421410, 50.953541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902870, 34.972046, 50.774792>,  <36.049000, 35.613632, 50.498684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902870, 34.972046, 50.774792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167976, 35.108673, 51.041348>,  <36.327042, 35.190651, 51.201279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167976, 35.108673, 51.041348>,  <35.902870, 34.972046, 50.774792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167976, 35.108673, 51.041348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640946, -0.201396, 0.740694,
		0.387205, -0.918026, 0.085448,
		0.662767, 0.341568, 0.666386,
		36.366806, 35.211143, 51.241264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921547, 34.532604, 51.316692>,  <35.902870, 34.972046, 50.774792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921547, 34.532604, 51.316692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063221, 34.873016, 51.471767>,  <36.148224, 35.077263, 51.564812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063221, 34.873016, 51.471767>,  <35.921547, 34.532604, 51.316692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063221, 34.873016, 51.471767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589094, -0.118934, 0.799264,
		0.726307, -0.511472, 0.459211,
		0.354185, 0.851030, 0.387688,
		36.169476, 35.128326, 51.588074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833679, 34.357693, 52.004726>,  <35.921547, 34.532604, 51.316692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833679, 34.357693, 52.004726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912415, 34.749813, 52.011314>,  <35.959656, 34.985085, 52.015266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912415, 34.749813, 52.011314>,  <35.833679, 34.357693, 52.004726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912415, 34.749813, 52.011314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596655, 0.106438, 0.795408,
		0.777983, -0.166395, 0.605850,
		0.196837, 0.980298, 0.016474,
		35.971466, 35.043903, 52.016258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966118, 34.506287, 52.671478>,  <35.833679, 34.357693, 52.004726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966118, 34.506287, 52.671478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814011, 34.829414, 52.491337>,  <35.722748, 35.023293, 52.383251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814011, 34.829414, 52.491337>,  <35.966118, 34.506287, 52.671478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814011, 34.829414, 52.491337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626044, 0.133602, 0.768257,
		0.680783, 0.574086, 0.454927,
		-0.380267, 0.807821, -0.450357,
		35.699932, 35.071762, 52.356228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685486, 34.916058, 53.298393>,  <35.966118, 34.506287, 52.671478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685486, 34.916058, 53.298393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517712, 35.094715, 52.982269>,  <35.417046, 35.201908, 52.792595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517712, 35.094715, 52.982269>,  <35.685486, 34.916058, 53.298393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517712, 35.094715, 52.982269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727661, 0.355095, 0.586870,
		0.542755, 0.821229, 0.176066,
		-0.419435, 0.446644, -0.790306,
		35.391880, 35.228710, 52.745178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533932, 35.511967, 53.545738>,  <35.685486, 34.916058, 53.298393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533932, 35.511967, 53.545738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.270588, 35.457127, 53.249695>,  <35.112579, 35.424221, 53.072067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.270588, 35.457127, 53.249695>,  <35.533932, 35.511967, 53.545738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270588, 35.457127, 53.249695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692613, 0.495312, 0.524360,
		0.294695, 0.857828, -0.421052,
		-0.658363, -0.137101, -0.740109,
		35.073078, 35.415997, 53.027660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266998, 36.122002, 53.426601>,  <35.533932, 35.511967, 53.545738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266998, 36.122002, 53.426601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004040, 35.873901, 53.255432>,  <34.846264, 35.725040, 53.152733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004040, 35.873901, 53.255432>,  <35.266998, 36.122002, 53.426601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004040, 35.873901, 53.255432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752548, 0.511214, 0.415129,
		-0.038725, 0.594936, -0.802840,
		-0.657398, -0.620251, -0.427921,
		34.806820, 35.687824, 53.127056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737679, 36.538555, 53.032509>,  <35.266998, 36.122002, 53.426601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737679, 36.538555, 53.032509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571442, 36.182220, 53.105934>,  <34.471699, 35.968422, 53.149990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571442, 36.182220, 53.105934>,  <34.737679, 36.538555, 53.032509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571442, 36.182220, 53.105934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850837, 0.452104, 0.267727,
		-0.321492, -0.044920, -0.945846,
		-0.415595, -0.890833, 0.183567,
		34.446762, 35.914970, 53.161003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075489, 36.615440, 52.759552>,  <34.737679, 36.538555, 53.032509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075489, 36.615440, 52.759552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036316, 36.298729, 53.000713>,  <34.012814, 36.108700, 53.145409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036316, 36.298729, 53.000713>,  <34.075489, 36.615440, 52.759552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036316, 36.298729, 53.000713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838456, 0.391989, 0.378598,
		-0.536098, -0.468431, -0.702262,
		-0.097932, -0.791781, 0.602903,
		34.006935, 36.061195, 53.181583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380699, 36.387260, 52.634983>,  <34.075489, 36.615440, 52.759552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380699, 36.387260, 52.634983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481232, 36.249680, 52.996872>,  <33.541550, 36.167130, 53.214005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481232, 36.249680, 52.996872>,  <33.380699, 36.387260, 52.634983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481232, 36.249680, 52.996872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876691, 0.315222, 0.363383,
		-0.410176, -0.884495, -0.222315,
		0.251332, -0.343953, 0.904726,
		33.556633, 36.146492, 53.268291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770241, 36.173954, 52.961823>,  <33.380699, 36.387260, 52.634983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770241, 36.173954, 52.961823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999584, 36.173306, 53.289543>,  <33.137192, 36.172916, 53.486176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999584, 36.173306, 53.289543>,  <32.770241, 36.173954, 52.961823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999584, 36.173306, 53.289543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800135, 0.213949, 0.560366,
		-0.176195, -0.976844, 0.121375,
		0.573358, -0.001618, 0.819303,
		33.171593, 36.172821, 53.535336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317898, 35.972061, 53.341343>,  <32.770241, 36.173954, 52.961823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317898, 35.972061, 53.341343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597736, 36.130005, 53.579552>,  <32.765640, 36.224770, 53.722477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597736, 36.130005, 53.579552>,  <32.317898, 35.972061, 53.341343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597736, 36.130005, 53.579552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703546, 0.235019, 0.670663,
		0.124858, -0.888174, 0.442220,
		0.699596, 0.394859, 0.595527,
		32.807613, 36.248463, 53.758209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150970, 35.766743, 53.952591>,  <32.317898, 35.972061, 53.341343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150970, 35.766743, 53.952591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.402615, 36.066475, 54.035275>,  <32.553600, 36.246315, 54.084885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.402615, 36.066475, 54.035275>,  <32.150970, 35.766743, 53.952591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402615, 36.066475, 54.035275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613473, 0.315323, 0.724032,
		0.477361, -0.582303, 0.658066,
		0.629109, 0.749330, 0.206704,
		32.591347, 36.291275, 54.097286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237991, 35.849678, 54.692162>,  <32.150970, 35.766743, 53.952591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237991, 35.849678, 54.692162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.350094, 36.211285, 54.563030>,  <32.417355, 36.428249, 54.485550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.350094, 36.211285, 54.563030>,  <32.237991, 35.849678, 54.692162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350094, 36.211285, 54.563030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573557, 0.427372, 0.698846,
		0.769734, -0.010695, 0.638276,
		0.280255, 0.904013, -0.322828,
		32.434170, 36.482487, 54.466183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404423, 36.259903, 55.274216>,  <32.237991, 35.849678, 54.692162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404423, 36.259903, 55.274216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309715, 36.521633, 54.986938>,  <32.252892, 36.678669, 54.814571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309715, 36.521633, 54.986938>,  <32.404423, 36.259903, 55.274216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309715, 36.521633, 54.986938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672525, 0.423115, 0.607193,
		0.701179, 0.626767, 0.339868,
		-0.236765, 0.654321, -0.718196,
		32.238686, 36.717930, 54.771481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237598, 36.856560, 55.624386>,  <32.404423, 36.259903, 55.274216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237598, 36.856560, 55.624386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098946, 36.977566, 55.269234>,  <32.015755, 37.050171, 55.056141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098946, 36.977566, 55.269234>,  <32.237598, 36.856560, 55.624386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098946, 36.977566, 55.269234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560200, 0.692447, 0.454635,
		0.752345, 0.654980, -0.070551,
		-0.346630, 0.302520, -0.887879,
		31.994957, 37.068321, 55.002869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378750, 37.608387, 55.513779>,  <32.237598, 36.856560, 55.624386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378750, 37.608387, 55.513779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.072498, 37.493118, 55.283730>,  <31.888748, 37.423958, 55.145699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.072498, 37.493118, 55.283730>,  <32.378750, 37.608387, 55.513779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072498, 37.493118, 55.283730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562979, 0.732729, 0.382313,
		0.311240, 0.616494, -0.723232,
		-0.765627, -0.288173, -0.575127,
		31.842810, 37.406666, 55.111191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994478, 38.335545, 55.222946>,  <32.378750, 37.608387, 55.513779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994478, 38.335545, 55.222946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738129, 38.029190, 55.202183>,  <31.584318, 37.845375, 55.189724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738129, 38.029190, 55.202183>,  <31.994478, 38.335545, 55.222946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738129, 38.029190, 55.202183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698778, 0.554051, 0.452479,
		-0.317789, 0.326254, -0.890263,
		-0.640874, -0.765889, -0.051908,
		31.545866, 37.799423, 55.186611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407557, 38.675285, 54.936161>,  <31.994478, 38.335545, 55.222946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407557, 38.675285, 54.936161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323204, 38.334064, 55.127087>,  <31.272593, 38.129333, 55.241642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323204, 38.334064, 55.127087>,  <31.407557, 38.675285, 54.936161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323204, 38.334064, 55.127087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476472, 0.516066, 0.711793,
		-0.853523, -0.077323, -0.515285,
		-0.210884, -0.853051, 0.477317,
		31.259939, 38.078148, 55.270283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679625, 38.685444, 55.140427>,  <31.407557, 38.675285, 54.936161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679625, 38.685444, 55.140427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843264, 38.425625, 55.396778>,  <30.941448, 38.269733, 55.550591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843264, 38.425625, 55.396778>,  <30.679625, 38.685444, 55.140427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843264, 38.425625, 55.396778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523346, 0.408324, 0.747917,
		-0.747494, -0.641374, -0.172892,
		0.409099, -0.649546, 0.640880,
		30.965994, 38.230762, 55.589043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149588, 38.514870, 55.473995>,  <30.679625, 38.685444, 55.140427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149588, 38.514870, 55.473995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449453, 38.399338, 55.712181>,  <30.629372, 38.330017, 55.855095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449453, 38.399338, 55.712181>,  <30.149588, 38.514870, 55.473995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449453, 38.399338, 55.712181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429155, 0.472784, 0.769611,
		-0.503817, -0.832497, 0.230474,
		0.749663, -0.288834, 0.595466,
		30.674353, 38.312687, 55.890820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944418, 38.081684, 56.016430>,  <30.149588, 38.514870, 55.473995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944418, 38.081684, 56.016430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282408, 38.248859, 56.149902>,  <30.485203, 38.349163, 56.229984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282408, 38.248859, 56.149902>,  <29.944418, 38.081684, 56.016430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282408, 38.248859, 56.149902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464653, 0.264792, 0.844975,
		0.264792, -0.869030, 0.417939,
		-0.844975, -0.417939, -0.333683,
		30.535900, 38.374241, 56.250008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870951, 38.007027, 56.753628>,  <29.944418, 38.081684, 56.016430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870951, 38.007027, 56.753628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.161766, 38.274178, 56.689938>,  <30.336256, 38.434467, 56.651722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.161766, 38.274178, 56.689938>,  <29.870951, 38.007027, 56.753628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161766, 38.274178, 56.689938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280880, 0.500930, 0.818643,
		0.626517, -0.550460, 0.551789,
		0.727037, 0.667880, -0.159228,
		30.379877, 38.474541, 56.642170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223837, 37.961308, 57.338436>,  <29.870951, 38.007027, 56.753628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223837, 37.961308, 57.338436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337942, 38.313541, 57.187073>,  <30.406404, 38.524883, 57.096256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337942, 38.313541, 57.187073>,  <30.223837, 37.961308, 57.338436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337942, 38.313541, 57.187073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323014, 0.460046, 0.827055,
		0.902378, -0.113696, 0.415676,
		0.285263, 0.880586, -0.378410,
		30.423521, 38.577717, 57.073551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550816, 38.299156, 57.858429>,  <30.223837, 37.961308, 57.338436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550816, 38.299156, 57.858429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437464, 38.600491, 57.621048>,  <30.369453, 38.781292, 57.478619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437464, 38.600491, 57.621048>,  <30.550816, 38.299156, 57.858429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437464, 38.600491, 57.621048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243528, 0.542003, 0.804317,
		0.927572, 0.372449, 0.029866,
		-0.283380, 0.753335, -0.593449,
		30.352449, 38.826492, 57.443012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601402, 38.909393, 58.313850>,  <30.550816, 38.299156, 57.858429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601402, 38.909393, 58.313850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405704, 39.074665, 58.006622>,  <30.288286, 39.173828, 57.822285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405704, 39.074665, 58.006622>,  <30.601402, 38.909393, 58.313850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405704, 39.074665, 58.006622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395670, 0.679665, 0.617657,
		0.777230, 0.606085, -0.169038,
		-0.489242, 0.413178, -0.768066,
		30.258932, 39.198620, 57.776203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767309, 39.531651, 58.428097>,  <30.601402, 38.909393, 58.313850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767309, 39.531651, 58.428097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424299, 39.521168, 58.222588>,  <30.218493, 39.514877, 58.099281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424299, 39.521168, 58.222588>,  <30.767309, 39.531651, 58.428097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424299, 39.521168, 58.222588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453373, 0.510451, 0.730680,
		0.243109, 0.859508, -0.449605,
		-0.857526, -0.026203, -0.513773,
		30.167042, 39.513306, 58.068455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408613, 40.035515, 58.692493>,  <30.767309, 39.531651, 58.428097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408613, 40.035515, 58.692493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.102348, 39.882595, 58.485573>,  <29.918589, 39.790844, 58.361420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.102348, 39.882595, 58.485573>,  <30.408613, 40.035515, 58.692493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102348, 39.882595, 58.485573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642769, 0.423936, 0.638065,
		-0.024630, 0.821050, -0.570325,
		-0.765664, -0.382302, -0.517304,
		29.872648, 39.767906, 58.330383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996828, 40.540737, 58.450108>,  <30.408613, 40.035515, 58.692493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996828, 40.540737, 58.450108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.753834, 40.225227, 58.487610>,  <29.608038, 40.035919, 58.510113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.753834, 40.225227, 58.487610>,  <29.996828, 40.540737, 58.450108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753834, 40.225227, 58.487610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635114, 0.553216, 0.539056,
		-0.477065, 0.267921, -0.837035,
		-0.607485, -0.788778, 0.093759,
		29.571589, 39.988594, 58.515739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280291, 40.827087, 58.285496>,  <29.996828, 40.540737, 58.450108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280291, 40.827087, 58.285496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.232252, 40.482510, 58.482872>,  <29.203430, 40.275761, 58.601299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.232252, 40.482510, 58.482872>,  <29.280291, 40.827087, 58.285496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232252, 40.482510, 58.482872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656172, 0.441867, 0.611713,
		-0.744994, -0.250318, -0.618324,
		-0.120094, -0.861449, 0.493440,
		29.196224, 40.224075, 58.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597410, 40.798595, 58.341370>,  <29.280291, 40.827087, 58.285496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597410, 40.798595, 58.341370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772120, 40.571198, 58.620235>,  <28.876945, 40.434757, 58.787556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772120, 40.571198, 58.620235>,  <28.597410, 40.798595, 58.341370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772120, 40.571198, 58.620235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678578, 0.300566, 0.670217,
		-0.590561, -0.765815, -0.254491,
		0.436771, -0.568496, 0.697168,
		28.903151, 40.400650, 58.829388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083076, 40.588673, 58.714447>,  <28.597410, 40.798595, 58.341370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083076, 40.588673, 58.714447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.383640, 40.526608, 58.970978>,  <28.563978, 40.489368, 59.124897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.383640, 40.526608, 58.970978>,  <28.083076, 40.588673, 58.714447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383640, 40.526608, 58.970978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588815, 0.280970, 0.757861,
		-0.297789, -0.947090, 0.119760,
		0.751411, -0.155166, 0.641330,
		28.609064, 40.480057, 59.163376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763838, 40.351391, 59.305122>,  <28.083076, 40.588673, 58.714447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763838, 40.351391, 59.305122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.118189, 40.471687, 59.446419>,  <28.330799, 40.543865, 59.531197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.118189, 40.471687, 59.446419>,  <27.763838, 40.351391, 59.305122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118189, 40.471687, 59.446419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445537, 0.339300, 0.828476,
		0.129302, -0.891308, 0.434569,
		0.885877, 0.300741, 0.353239,
		28.383951, 40.561909, 59.552391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649170, 40.382175, 60.010822>,  <27.763838, 40.351391, 59.305122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649170, 40.382175, 60.010822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996653, 40.579720, 59.995564>,  <28.205143, 40.698246, 59.986408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996653, 40.579720, 59.995564>,  <27.649170, 40.382175, 60.010822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996653, 40.579720, 59.995564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274272, 0.543725, 0.793182,
		0.412461, -0.678579, 0.607788,
		0.868706, 0.493856, -0.038150,
		28.257265, 40.727875, 59.984119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903997, 40.455036, 60.653645>,  <27.649170, 40.382175, 60.010822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903997, 40.455036, 60.653645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.053734, 40.756481, 60.437519>,  <28.143576, 40.937347, 60.307846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.053734, 40.756481, 60.437519>,  <27.903997, 40.455036, 60.653645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053734, 40.756481, 60.437519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257976, 0.644312, 0.719937,
		0.890684, -0.130114, 0.435606,
		0.374340, 0.753613, -0.540312,
		28.166037, 40.982567, 60.275425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293745, 40.866726, 61.128590>,  <27.903997, 40.455036, 60.653645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293745, 40.866726, 61.128590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.200089, 41.117455, 60.831329>,  <28.143894, 41.267891, 60.652973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.200089, 41.117455, 60.831329>,  <28.293745, 40.866726, 61.128590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200089, 41.117455, 60.831329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462396, 0.600605, 0.652276,
		0.855201, 0.496353, 0.149215,
		-0.234140, 0.626823, -0.743150,
		28.129847, 41.305500, 60.608383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459089, 41.611813, 61.302406>,  <28.293745, 40.866726, 61.128590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459089, 41.611813, 61.302406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.161915, 41.607243, 61.034698>,  <27.983610, 41.604500, 60.874073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.161915, 41.607243, 61.034698>,  <28.459089, 41.611813, 61.302406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161915, 41.607243, 61.034698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504347, 0.666940, 0.548475,
		0.440092, 0.745023, -0.501257,
		-0.742935, -0.011428, -0.669266,
		27.939034, 41.603813, 60.833920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156334, 42.334049, 60.986309>,  <28.459089, 41.611813, 61.302406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156334, 42.334049, 60.986309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.880175, 42.047298, 61.025185>,  <27.714479, 41.875248, 61.048508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.880175, 42.047298, 61.025185>,  <28.156334, 42.334049, 60.986309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880175, 42.047298, 61.025185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521560, 0.586329, 0.619833,
		-0.501324, 0.377243, -0.778692,
		-0.690398, -0.716872, 0.097186,
		27.673056, 41.832237, 61.054340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464989, 42.568253, 61.091682>,  <28.156334, 42.334049, 60.986309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464989, 42.568253, 61.091682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.495794, 42.205345, 61.257057>,  <27.514278, 41.987598, 61.356281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.495794, 42.205345, 61.257057>,  <27.464989, 42.568253, 61.091682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495794, 42.205345, 61.257057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581596, 0.295928, 0.757742,
		-0.809824, -0.298810, -0.504874,
		0.077014, -0.907270, 0.413436,
		27.518898, 41.933163, 61.381088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819717, 42.156910, 60.824207>,  <27.464989, 42.568253, 61.091682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819717, 42.156910, 60.824207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.596323, 42.455898, 60.680328>,  <26.462286, 42.635292, 60.594002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.596323, 42.455898, 60.680328>,  <26.819717, 42.156910, 60.824207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596323, 42.455898, 60.680328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686570, 0.173172, -0.706140,
		-0.465526, -0.641330, -0.609903,
		-0.558486, 0.747468, -0.359702,
		26.428778, 42.680138, 60.572418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856827, 42.133358, 60.169273>,  <26.819717, 42.156910, 60.824207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856827, 42.133358, 60.169273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763754, 42.512970, 60.254322>,  <26.707911, 42.740738, 60.305351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763754, 42.512970, 60.254322>,  <26.856827, 42.133358, 60.169273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763754, 42.512970, 60.254322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660419, 0.314670, -0.681784,
		-0.713937, -0.018219, -0.699973,
		-0.232682, 0.949026, 0.212622,
		26.693949, 42.797676, 60.318108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599424, 42.716072, 59.531845>,  <26.856827, 42.133358, 60.169273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599424, 42.716072, 59.531845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.776888, 42.911255, 59.832527>,  <26.883366, 43.028362, 60.012936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.776888, 42.911255, 59.832527>,  <26.599424, 42.716072, 59.531845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776888, 42.911255, 59.832527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623815, 0.434078, -0.649947,
		-0.643445, 0.757282, -0.111810,
		0.443659, 0.487954, 0.751709,
		26.909986, 43.057640, 60.058041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615225, 43.523296, 59.472641>,  <26.599424, 42.716072, 59.531845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615225, 43.523296, 59.472641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.914574, 43.363937, 59.684761>,  <27.094183, 43.268322, 59.812035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.914574, 43.363937, 59.684761>,  <26.615225, 43.523296, 59.472641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914574, 43.363937, 59.684761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658657, 0.352174, -0.664939,
		0.078149, 0.846909, 0.525963,
		0.748374, -0.398394, 0.530301,
		27.139086, 43.244419, 59.843853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043249, 44.104088, 59.640450>,  <26.615225, 43.523296, 59.472641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043249, 44.104088, 59.640450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.260532, 43.768776, 59.659241>,  <27.390902, 43.567589, 59.670517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.260532, 43.768776, 59.659241>,  <27.043249, 44.104088, 59.640450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260532, 43.768776, 59.659241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774206, 0.478464, -0.414339,
		0.324854, 0.261446, 0.908909,
		0.543208, -0.838282, 0.046982,
		27.423494, 43.517292, 59.673336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569942, 43.953926, 59.184235>,  <27.043249, 44.104088, 59.640450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569942, 43.953926, 59.184235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.887432, 44.182537, 59.267521>,  <28.077927, 44.319706, 59.317493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.887432, 44.182537, 59.267521>,  <27.569942, 43.953926, 59.184235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887432, 44.182537, 59.267521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607590, -0.761209, -0.226706,
		0.028926, 0.306453, -0.951446,
		0.793724, 0.571531, 0.208216,
		28.125549, 44.353996, 59.329987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093067, 44.215996, 58.544895>,  <27.569942, 43.953926, 59.184235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093067, 44.215996, 58.544895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.248070, 44.122677, 58.901638>,  <28.341072, 44.066685, 59.115685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.248070, 44.122677, 58.901638>,  <28.093067, 44.215996, 58.544895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248070, 44.122677, 58.901638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423698, -0.814137, -0.397065,
		0.818729, 0.531744, -0.216636,
		0.387508, -0.233300, 0.891857,
		28.364323, 44.052689, 59.169193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841986, 44.155979, 58.501019>,  <28.093067, 44.215996, 58.544895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841986, 44.155979, 58.501019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.692982, 43.910187, 58.779198>,  <28.603579, 43.762711, 58.946106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.692982, 43.910187, 58.779198>,  <28.841986, 44.155979, 58.501019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692982, 43.910187, 58.779198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482247, -0.768433, -0.420653,
		0.792890, 0.178681, 0.582579,
		-0.372511, -0.614478, 0.695451,
		28.581228, 43.725842, 58.987831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385141, 43.838940, 58.778805>,  <28.841986, 44.155979, 58.501019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385141, 43.838940, 58.778805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.064180, 43.604504, 58.823792>,  <28.871603, 43.463844, 58.850784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.064180, 43.604504, 58.823792>,  <29.385141, 43.838940, 58.778805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064180, 43.604504, 58.823792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441235, -0.709520, -0.549448,
		0.401820, -0.391256, 0.827925,
		-0.802404, -0.586088, 0.112463,
		28.823460, 43.428677, 58.857529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585127, 43.183453, 58.832703>,  <29.385141, 43.838940, 58.778805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585127, 43.183453, 58.832703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198263, 43.108345, 58.764183>,  <28.966145, 43.063282, 58.723072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198263, 43.108345, 58.764183>,  <29.585127, 43.183453, 58.832703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198263, 43.108345, 58.764183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254119, -0.701489, -0.665835,
		0.004856, -0.687501, 0.726168,
		-0.967161, -0.187766, -0.171301,
		28.908115, 43.052013, 58.712791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436741, 42.387814, 58.706123>,  <29.585127, 43.183453, 58.832703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436741, 42.387814, 58.706123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.146776, 42.595375, 58.524914>,  <28.972797, 42.719913, 58.416187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.146776, 42.595375, 58.524914>,  <29.436741, 42.387814, 58.706123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146776, 42.595375, 58.524914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142816, -0.530160, -0.835784,
		-0.673874, -0.670570, 0.310211,
		-0.724912, 0.518909, -0.453029,
		28.929302, 42.751049, 58.389004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042194, 41.840805, 58.427864>,  <29.436741, 42.387814, 58.706123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042194, 41.840805, 58.427864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.917246, 42.162949, 58.226341>,  <28.842278, 42.356236, 58.105427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.917246, 42.162949, 58.226341>,  <29.042194, 41.840805, 58.427864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917246, 42.162949, 58.226341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066461, -0.510523, -0.857292,
		-0.947632, -0.301277, 0.105948,
		-0.312371, 0.805356, -0.503811,
		28.823534, 42.404556, 58.075199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566387, 41.603344, 57.942661>,  <29.042194, 41.840805, 58.427864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566387, 41.603344, 57.942661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.687878, 41.956894, 57.800388>,  <28.760773, 42.169025, 57.715023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.687878, 41.956894, 57.800388>,  <28.566387, 41.603344, 57.942661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687878, 41.956894, 57.800388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173696, -0.418435, -0.891483,
		-0.936792, 0.208987, -0.280616,
		0.303728, 0.883876, -0.355687,
		28.778996, 42.222057, 57.693684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285233, 41.605507, 57.209297>,  <28.566387, 41.603344, 57.942661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285233, 41.605507, 57.209297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568157, 41.888268, 57.209743>,  <28.737913, 42.057922, 57.210011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568157, 41.888268, 57.209743>,  <28.285233, 41.605507, 57.209297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568157, 41.888268, 57.209743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161581, -0.160142, -0.973779,
		-0.688186, 0.688947, -0.227492,
		0.707313, 0.706899, 0.001113,
		28.780352, 42.100338, 57.210079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081476, 42.120068, 56.773071>,  <28.285233, 41.605507, 57.209297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081476, 42.120068, 56.773071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.480865, 42.120876, 56.795147>,  <28.720499, 42.121361, 56.808392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.480865, 42.120876, 56.795147>,  <28.081476, 42.120068, 56.773071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480865, 42.120876, 56.795147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054396, -0.208175, -0.976578,
		0.009514, 0.978089, -0.207967,
		0.998474, 0.002021, 0.055185,
		28.780407, 42.121483, 56.811703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385674, 42.515274, 56.183720>,  <28.081476, 42.120068, 56.773071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385674, 42.515274, 56.183720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.685944, 42.283203, 56.310139>,  <28.866106, 42.143959, 56.385990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.685944, 42.283203, 56.310139>,  <28.385674, 42.515274, 56.183720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685944, 42.283203, 56.310139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260401, -0.179817, -0.948608,
		0.607191, 0.794393, 0.016095,
		0.750673, -0.580177, 0.316044,
		28.911146, 42.109150, 56.404953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868874, 42.545300, 55.683266>,  <28.385674, 42.515274, 56.183720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868874, 42.545300, 55.683266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.004499, 42.237259, 55.899406>,  <29.085875, 42.052437, 56.029091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.004499, 42.237259, 55.899406>,  <28.868874, 42.545300, 55.683266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004499, 42.237259, 55.899406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479018, -0.353020, -0.803690,
		0.809676, 0.531345, 0.249193,
		0.339067, -0.770097, 0.540356,
		29.106220, 42.006229, 56.061512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413927, 42.443081, 55.266151>,  <28.868874, 42.545300, 55.683266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413927, 42.443081, 55.266151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.409904, 42.116207, 55.496666>,  <29.407492, 41.920082, 55.634975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.409904, 42.116207, 55.496666>,  <29.413927, 42.443081, 55.266151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409904, 42.116207, 55.496666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418741, -0.526791, -0.739694,
		0.908050, 0.233877, 0.347486,
		-0.010055, -0.817186, 0.576287,
		29.406887, 41.871052, 55.669552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153650, 42.220982, 55.290283>,  <29.413927, 42.443081, 55.266151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153650, 42.220982, 55.290283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.894428, 41.922676, 55.352062>,  <29.738895, 41.743690, 55.389130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.894428, 41.922676, 55.352062>,  <30.153650, 42.220982, 55.290283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894428, 41.922676, 55.352062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551562, -0.599426, -0.580058,
		0.525169, -0.290721, 0.799799,
		-0.648056, -0.745768, 0.154450,
		29.700012, 41.698944, 55.398396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525932, 41.646675, 55.406918>,  <30.153650, 42.220982, 55.290283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525932, 41.646675, 55.406918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180672, 41.477627, 55.296379>,  <29.973515, 41.376198, 55.230057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180672, 41.477627, 55.296379>,  <30.525932, 41.646675, 55.406918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180672, 41.477627, 55.296379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500783, -0.646337, -0.575730,
		0.064703, -0.635329, 0.769526,
		-0.863151, -0.422617, -0.276343,
		29.921726, 41.350842, 55.213478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638424, 40.922688, 55.469215>,  <30.525932, 41.646675, 55.406918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638424, 40.922688, 55.469215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342461, 40.976761, 55.205624>,  <30.164883, 41.009205, 55.047466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342461, 40.976761, 55.205624>,  <30.638424, 40.922688, 55.469215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342461, 40.976761, 55.205624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470463, -0.596202, -0.650544,
		-0.480829, -0.791371, 0.377538,
		-0.739911, 0.135183, -0.658982,
		30.120487, 41.017315, 55.007927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566164, 40.272026, 55.278297>,  <30.638424, 40.922688, 55.469215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566164, 40.272026, 55.278297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412331, 40.509705, 54.995731>,  <30.320030, 40.652313, 54.826191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412331, 40.509705, 54.995731>,  <30.566164, 40.272026, 55.278297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412331, 40.509705, 54.995731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428766, -0.562721, -0.706756,
		-0.817468, -0.574695, -0.038358,
		-0.384584, 0.594197, -0.706416,
		30.296955, 40.687965, 54.783806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372480, 39.923157, 54.729092>,  <30.566164, 40.272026, 55.278297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372480, 39.923157, 54.729092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405436, 40.287540, 54.567417>,  <30.425209, 40.506172, 54.470413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405436, 40.287540, 54.567417>,  <30.372480, 39.923157, 54.729092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405436, 40.287540, 54.567417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318520, -0.408361, -0.855445,
		-0.944329, -0.058264, -0.323802,
		0.082386, 0.910959, -0.404185,
		30.430151, 40.560829, 54.446163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275177, 39.814312, 53.998402>,  <30.372480, 39.923157, 54.729092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275177, 39.814312, 53.998402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.432859, 40.181660, 53.984558>,  <30.527470, 40.402069, 53.976254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.432859, 40.181660, 53.984558>,  <30.275177, 39.814312, 53.998402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432859, 40.181660, 53.984558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405289, -0.207521, -0.890324,
		-0.824828, 0.336945, -0.454011,
		0.394207, 0.918370, -0.034609,
		30.551121, 40.457172, 53.974174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030716, 40.128181, 53.373482>,  <30.275177, 39.814312, 53.998402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030716, 40.128181, 53.373482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.355480, 40.340412, 53.470882>,  <30.550339, 40.467751, 53.529324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.355480, 40.340412, 53.470882>,  <30.030716, 40.128181, 53.373482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355480, 40.340412, 53.470882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371697, -0.148201, -0.916448,
		-0.450158, 0.834581, -0.317539,
		0.811910, 0.530575, 0.243498,
		30.599052, 40.499584, 53.543930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243687, 40.451717, 52.715916>,  <30.030716, 40.128181, 53.373482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243687, 40.451717, 52.715916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562162, 40.485237, 52.955601>,  <30.753248, 40.505348, 53.099411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562162, 40.485237, 52.955601>,  <30.243687, 40.451717, 52.715916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562162, 40.485237, 52.955601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596751, -0.272192, -0.754850,
		0.099844, 0.958587, -0.266726,
		0.796190, 0.083802, 0.599215,
		30.801020, 40.510376, 53.135365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803215, 40.649837, 52.266258>,  <30.243687, 40.451717, 52.715916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803215, 40.649837, 52.266258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994873, 40.525585, 52.594631>,  <31.109867, 40.451035, 52.791656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994873, 40.525585, 52.594631>,  <30.803215, 40.649837, 52.266258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994873, 40.525585, 52.594631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756607, -0.327937, -0.565687,
		0.444935, 0.892169, 0.077898,
		0.479143, -0.310632, 0.820932,
		31.138617, 40.432396, 52.840912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471041, 40.896683, 52.247120>,  <30.803215, 40.649837, 52.266258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471041, 40.896683, 52.247120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500635, 40.591663, 52.504196>,  <31.518393, 40.408653, 52.658443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500635, 40.591663, 52.504196>,  <31.471041, 40.896683, 52.247120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500635, 40.591663, 52.504196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836236, -0.303693, -0.456596,
		0.543355, 0.571224, 0.615198,
		0.073987, -0.762544, 0.642691,
		31.522831, 40.362900, 52.697002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107826, 40.894714, 52.328106>,  <31.471041, 40.896683, 52.247120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107826, 40.894714, 52.328106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.000126, 40.532673, 52.459743>,  <31.935507, 40.315449, 52.538727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.000126, 40.532673, 52.459743>,  <32.107826, 40.894714, 52.328106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000126, 40.532673, 52.459743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809465, -0.397820, -0.431864,
		0.521798, 0.150109, 0.839758,
		-0.269246, -0.905100, 0.329090,
		31.919352, 40.261143, 52.558472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690544, 40.615772, 52.728123>,  <32.107826, 40.894714, 52.328106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690544, 40.615772, 52.728123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464581, 40.312321, 52.598289>,  <32.329002, 40.130249, 52.520390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464581, 40.312321, 52.598289>,  <32.690544, 40.615772, 52.728123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464581, 40.312321, 52.598289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819461, -0.469666, -0.328478,
		0.096748, -0.451543, 0.886988,
		-0.564911, -0.758632, -0.324582,
		32.295109, 40.084732, 52.500916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006535, 40.040146, 53.010540>,  <32.690544, 40.615772, 52.728123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006535, 40.040146, 53.010540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.786682, 39.913452, 52.701324>,  <32.654770, 39.837437, 52.515797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.786682, 39.913452, 52.701324>,  <33.006535, 40.040146, 53.010540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786682, 39.913452, 52.701324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815764, -0.402973, -0.414899,
		-0.180101, -0.858657, 0.479865,
		-0.549629, -0.316734, -0.773038,
		32.621792, 39.818432, 52.469414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156422, 39.318176, 52.895012>,  <33.006535, 40.040146, 53.010540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156422, 39.318176, 52.895012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991024, 39.431469, 52.548882>,  <32.891785, 39.499447, 52.341202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991024, 39.431469, 52.548882>,  <33.156422, 39.318176, 52.895012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991024, 39.431469, 52.548882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770589, -0.397367, -0.498290,
		-0.484987, -0.872856, -0.053949,
		-0.413498, 0.283237, -0.865330,
		32.866974, 39.516441, 52.289284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133804, 38.745052, 52.539192>,  <33.156422, 39.318176, 52.895012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133804, 38.745052, 52.539192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104332, 39.035324, 52.265560>,  <33.086647, 39.209488, 52.101379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104332, 39.035324, 52.265560>,  <33.133804, 38.745052, 52.539192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104332, 39.035324, 52.265560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647852, -0.486666, -0.586041,
		-0.758194, -0.486363, -0.434272,
		-0.073683, 0.725677, -0.684079,
		33.082226, 39.253029, 52.060337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896641, 38.484898, 51.856232>,  <33.133804, 38.745052, 52.539192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896641, 38.484898, 51.856232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108547, 38.811249, 51.763538>,  <33.235691, 39.007057, 51.707924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108547, 38.811249, 51.763538>,  <32.896641, 38.484898, 51.856232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108547, 38.811249, 51.763538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558845, -0.541308, -0.628234,
		-0.637999, 0.203312, -0.742712,
		0.529764, 0.815873, -0.231735,
		33.267475, 39.056011, 51.694019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023270, 38.393696, 51.116364>,  <32.896641, 38.484898, 51.856232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023270, 38.393696, 51.116364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266754, 38.698772, 51.203785>,  <33.412846, 38.881817, 51.256237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266754, 38.698772, 51.203785>,  <33.023270, 38.393696, 51.116364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266754, 38.698772, 51.203785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604223, -0.267115, -0.750709,
		-0.514180, 0.589025, -0.623433,
		0.608715, 0.762692, 0.218557,
		33.449368, 38.927582, 51.269352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192974, 38.770706, 50.474182>,  <33.023270, 38.393696, 51.116364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192974, 38.770706, 50.474182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482544, 38.837719, 50.741875>,  <33.656284, 38.877926, 50.902493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482544, 38.837719, 50.741875>,  <33.192974, 38.770706, 50.474182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482544, 38.837719, 50.741875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684759, -0.056476, -0.726578,
		-0.083928, 0.984248, -0.155602,
		0.723920, 0.167531, 0.669233,
		33.699718, 38.887978, 50.942646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689171, 39.151279, 50.063183>,  <33.192974, 38.770706, 50.474182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689171, 39.151279, 50.063183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.891525, 39.027637, 50.385311>,  <34.012936, 38.953453, 50.578587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.891525, 39.027637, 50.385311>,  <33.689171, 39.151279, 50.063183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891525, 39.027637, 50.385311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795260, -0.194506, -0.574221,
		0.334132, 0.930926, 0.147420,
		0.505883, -0.309103, 0.805318,
		34.043289, 38.934906, 50.626907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339115, 39.511776, 49.960430>,  <33.689171, 39.151279, 50.063183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339115, 39.511776, 49.960430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456745, 39.256180, 50.244743>,  <34.527325, 39.102821, 50.415333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456745, 39.256180, 50.244743>,  <34.339115, 39.511776, 49.960430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456745, 39.256180, 50.244743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836376, -0.187894, -0.514948,
		0.462597, 0.745917, 0.479178,
		0.294074, -0.638986, 0.710786,
		34.544968, 39.064484, 50.457981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072247, 39.695969, 50.123852>,  <34.339115, 39.511776, 49.960430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072247, 39.695969, 50.123852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994831, 39.326904, 50.257263>,  <34.948383, 39.105465, 50.337311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994831, 39.326904, 50.257263>,  <35.072247, 39.695969, 50.123852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994831, 39.326904, 50.257263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820467, -0.338610, -0.460627,
		0.537938, 0.184500, 0.822546,
		-0.193537, -0.922661, 0.333528,
		34.936771, 39.050106, 50.357323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733410, 39.521366, 50.266029>,  <35.072247, 39.695969, 50.123852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733410, 39.521366, 50.266029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502285, 39.195541, 50.245571>,  <35.363609, 39.000046, 50.233295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502285, 39.195541, 50.245571>,  <35.733410, 39.521366, 50.266029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502285, 39.195541, 50.245571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759910, -0.514062, -0.397840,
		0.297773, -0.268746, 0.916028,
		-0.577813, -0.814565, -0.051149,
		35.328941, 38.951172, 50.230225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021648, 38.923244, 50.512730>,  <35.733410, 39.521366, 50.266029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021648, 38.923244, 50.512730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751072, 38.768200, 50.262230>,  <35.588726, 38.675171, 50.111931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751072, 38.768200, 50.262230>,  <36.021648, 38.923244, 50.512730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751072, 38.768200, 50.262230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729768, -0.467431, -0.498946,
		-0.099328, -0.794521, 0.599058,
		-0.676441, -0.387614, -0.626245,
		35.548138, 38.651917, 50.074356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275818, 38.258347, 50.410175>,  <36.021648, 38.923244, 50.512730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275818, 38.258347, 50.410175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022144, 38.346802, 50.113823>,  <35.869942, 38.399876, 49.936012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022144, 38.346802, 50.113823>,  <36.275818, 38.258347, 50.410175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022144, 38.346802, 50.113823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587260, -0.485527, -0.647603,
		-0.502932, -0.845790, 0.178044,
		-0.634181, 0.221142, -0.740885,
		35.831890, 38.413143, 49.891560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322308, 37.674667, 50.116177>,  <36.275818, 38.258347, 50.410175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322308, 37.674667, 50.116177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173008, 37.943127, 49.859974>,  <36.083427, 38.104202, 49.706253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173008, 37.943127, 49.859974>,  <36.322308, 37.674667, 50.116177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173008, 37.943127, 49.859974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488803, -0.444532, -0.750641,
		-0.788515, -0.593259, -0.162135,
		-0.373251, 0.671144, -0.640507,
		36.061031, 38.144470, 49.667820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175293, 37.339340, 49.460400>,  <36.322308, 37.674667, 50.116177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175293, 37.339340, 49.460400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210484, 37.723988, 49.356438>,  <36.231598, 37.954777, 49.294060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210484, 37.723988, 49.356438>,  <36.175293, 37.339340, 49.460400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210484, 37.723988, 49.356438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504999, -0.267956, -0.820473,
		-0.858625, -0.059068, -0.509190,
		0.087977, 0.961619, -0.259903,
		36.236877, 38.012474, 49.278465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848011, 37.391960, 48.829521>,  <36.175293, 37.339340, 49.460400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848011, 37.391960, 48.829521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120079, 37.682781, 48.866970>,  <36.283321, 37.857273, 48.889439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120079, 37.682781, 48.866970>,  <35.848011, 37.391960, 48.829521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120079, 37.682781, 48.866970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421153, -0.283034, -0.861697,
		-0.599997, 0.625533, -0.498711,
		0.680172, 0.727049, 0.093625,
		36.324131, 37.900894, 48.895058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934471, 37.657345, 48.100079>,  <35.848011, 37.391960, 48.829521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934471, 37.657345, 48.100079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248116, 37.798904, 48.304012>,  <36.436302, 37.883839, 48.426373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248116, 37.798904, 48.304012>,  <35.934471, 37.657345, 48.100079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248116, 37.798904, 48.304012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592782, -0.183792, -0.784111,
		-0.183792, 0.917048, -0.353898,
		0.784111, 0.353898, 0.509830,
		36.483349, 37.905075, 48.456963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209888, 38.016235, 47.655876>,  <35.934471, 37.657345, 48.100079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209888, 38.016235, 47.655876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495537, 37.932163, 47.922966>,  <36.666924, 37.881721, 48.083221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495537, 37.932163, 47.922966>,  <36.209888, 38.016235, 47.655876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495537, 37.932163, 47.922966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580947, -0.354244, -0.732811,
		0.390561, 0.911228, -0.130868,
		0.714117, -0.210180, 0.667729,
		36.709770, 37.869110, 48.123283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745979, 37.923950, 47.021645>,  <36.209888, 38.016235, 47.655876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745979, 37.923950, 47.021645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511959, 37.777462, 46.732204>,  <35.371548, 37.689568, 46.558540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511959, 37.777462, 46.732204>,  <35.745979, 37.923950, 47.021645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511959, 37.777462, 46.732204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807106, 0.175639, 0.563676,
		-0.079339, 0.913801, -0.398338,
		-0.585051, -0.366222, -0.723599,
		35.336445, 37.667595, 46.515125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308563, 38.472946, 46.815689>,  <35.745979, 37.923950, 47.021645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308563, 38.472946, 46.815689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095936, 38.148323, 46.718685>,  <34.968361, 37.953548, 46.660484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095936, 38.148323, 46.718685>,  <35.308563, 38.472946, 46.815689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095936, 38.148323, 46.718685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799831, 0.386719, 0.459042,
		-0.278756, 0.437978, -0.854676,
		-0.531569, -0.811556, -0.242508,
		34.936466, 37.904858, 46.645931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748390, 38.764561, 46.564541>,  <35.308563, 38.472946, 46.815689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748390, 38.764561, 46.564541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628784, 38.387672, 46.624962>,  <34.557018, 38.161541, 46.661217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628784, 38.387672, 46.624962>,  <34.748390, 38.764561, 46.564541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628784, 38.387672, 46.624962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900077, 0.331062, 0.283299,
		-0.316938, -0.051251, -0.947061,
		-0.299017, -0.942216, 0.151056,
		34.539078, 38.105007, 46.670280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097309, 38.681160, 46.271191>,  <34.748390, 38.764561, 46.564541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097309, 38.681160, 46.271191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130730, 38.403500, 46.557178>,  <34.150784, 38.236904, 46.728771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130730, 38.403500, 46.557178>,  <34.097309, 38.681160, 46.271191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130730, 38.403500, 46.557178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903807, 0.249399, 0.347756,
		-0.419706, -0.675248, -0.606537,
		0.083552, -0.694147, 0.714968,
		34.155796, 38.195255, 46.771667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492794, 38.394489, 46.263432>,  <34.097309, 38.681160, 46.271191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492794, 38.394489, 46.263432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630077, 38.246338, 46.608692>,  <33.712448, 38.157448, 46.815849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630077, 38.246338, 46.608692>,  <33.492794, 38.394489, 46.263432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630077, 38.246338, 46.608692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900890, 0.130170, 0.414068,
		-0.265720, -0.919713, -0.288998,
		0.343205, -0.370382, 0.863150,
		33.733040, 38.135223, 46.867638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965885, 37.873325, 46.550072>,  <33.492794, 38.394489, 46.263432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965885, 37.873325, 46.550072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180927, 37.974007, 46.871971>,  <33.309952, 38.034416, 47.065113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180927, 37.974007, 46.871971>,  <32.965885, 37.873325, 46.550072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180927, 37.974007, 46.871971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843088, 0.175642, 0.508283,
		-0.013414, -0.951734, 0.306630,
		0.537608, 0.251698, 0.804752,
		33.342209, 38.049515, 47.113396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680462, 37.526039, 47.164116>,  <32.965885, 37.873325, 46.550072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680462, 37.526039, 47.164116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900555, 37.788193, 47.371082>,  <33.032612, 37.945484, 47.495262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900555, 37.788193, 47.371082>,  <32.680462, 37.526039, 47.164116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900555, 37.788193, 47.371082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632126, -0.077942, 0.770936,
		0.545584, -0.751267, 0.371397,
		0.550231, 0.655380, 0.517419,
		33.065624, 37.984806, 47.526310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783421, 37.314011, 47.872681>,  <32.680462, 37.526039, 47.164116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783421, 37.314011, 47.872681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.809025, 37.711418, 47.835091>,  <32.824387, 37.949863, 47.812538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.809025, 37.711418, 47.835091>,  <32.783421, 37.314011, 47.872681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809025, 37.711418, 47.835091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512501, 0.113528, 0.851149,
		0.856297, -0.006322, 0.516444,
		0.064012, 0.993515, -0.093973,
		32.828228, 38.009472, 47.806900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783909, 37.543156, 48.610184>,  <32.783421, 37.314011, 47.872681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783909, 37.543156, 48.610184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720894, 37.873547, 48.393688>,  <32.683086, 38.071781, 48.263790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720894, 37.873547, 48.393688>,  <32.783909, 37.543156, 48.610184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720894, 37.873547, 48.393688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705692, 0.289234, 0.646794,
		0.690784, 0.483841, 0.537323,
		-0.157534, 0.825979, -0.541241,
		32.673634, 38.121342, 48.231316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814884, 38.128498, 49.044289>,  <32.783909, 37.543156, 48.610184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814884, 38.128498, 49.044289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600456, 38.270744, 48.738041>,  <32.471798, 38.356091, 48.554295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600456, 38.270744, 48.738041>,  <32.814884, 38.128498, 49.044289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600456, 38.270744, 48.738041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657993, 0.392143, 0.642860,
		0.528840, 0.848388, 0.023775,
		-0.536071, 0.355614, -0.765615,
		32.439636, 38.377430, 48.508358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674206, 38.783627, 49.180008>,  <32.814884, 38.128498, 49.044289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674206, 38.783627, 49.180008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375778, 38.698452, 48.927643>,  <32.196724, 38.647346, 48.776226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375778, 38.698452, 48.927643>,  <32.674206, 38.783627, 49.180008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375778, 38.698452, 48.927643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641148, 0.485520, 0.594306,
		0.179770, 0.847896, -0.498753,
		-0.746064, -0.212936, -0.630909,
		32.151958, 38.634571, 48.738369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204731, 39.367111, 49.258717>,  <32.674206, 38.783627, 49.180008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204731, 39.367111, 49.258717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.978521, 39.108440, 49.053974>,  <31.842794, 38.953239, 48.931129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.978521, 39.108440, 49.053974>,  <32.204731, 39.367111, 49.258717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978521, 39.108440, 49.053974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819373, 0.511171, 0.259485,
		0.093842, 0.566144, -0.818947,
		-0.565528, -0.646672, -0.511853,
		31.808863, 38.914440, 48.900417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670378, 39.694798, 48.894524>,  <32.204731, 39.367111, 49.258717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670378, 39.694798, 48.894524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.504021, 39.332737, 48.929688>,  <31.404207, 39.115501, 48.950787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.504021, 39.332737, 48.929688>,  <31.670378, 39.694798, 48.894524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504021, 39.332737, 48.929688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864210, 0.423467, 0.271692,
		-0.283151, 0.037020, -0.958361,
		-0.415893, -0.905155, 0.087912,
		31.379253, 39.061192, 48.956062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021116, 39.713165, 48.482731>,  <31.670378, 39.694798, 48.894524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021116, 39.713165, 48.482731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.972713, 39.445992, 48.776459>,  <30.943672, 39.285686, 48.952694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.972713, 39.445992, 48.776459>,  <31.021116, 39.713165, 48.482731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972713, 39.445992, 48.776459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793650, 0.509420, 0.332582,
		-0.596218, -0.542546, -0.591750,
		-0.121009, -0.667934, 0.734317,
		30.936411, 39.245613, 48.996754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344929, 39.690056, 48.518444>,  <31.021116, 39.713165, 48.482731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344929, 39.690056, 48.518444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.489176, 39.567146, 48.870701>,  <30.575724, 39.493401, 49.082054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.489176, 39.567146, 48.870701>,  <30.344929, 39.690056, 48.518444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489176, 39.567146, 48.870701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787980, 0.404806, 0.463918,
		-0.499041, -0.861229, -0.096145,
		0.360619, -0.307274, 0.880646,
		30.597363, 39.474964, 49.134895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783722, 39.589745, 48.891655>,  <30.344929, 39.690056, 48.518444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783722, 39.589745, 48.891655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.045090, 39.574211, 49.194054>,  <30.201910, 39.564892, 49.375492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.045090, 39.574211, 49.194054>,  <29.783722, 39.589745, 48.891655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045090, 39.574211, 49.194054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714765, 0.297248, 0.633052,
		-0.249302, -0.954010, 0.166472,
		0.653422, -0.038833, 0.755998,
		30.241116, 39.562561, 49.420853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437122, 39.154202, 49.428116>,  <29.783722, 39.589745, 48.891655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437122, 39.154202, 49.428116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695225, 39.378288, 49.635887>,  <29.850086, 39.512741, 49.760551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695225, 39.378288, 49.635887>,  <29.437122, 39.154202, 49.428116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695225, 39.378288, 49.635887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701275, 0.164601, 0.693628,
		0.303081, -0.811831, 0.499072,
		0.645256, 0.560212, 0.519429,
		29.888802, 39.546352, 49.791718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242868, 38.932182, 50.177753>,  <29.437122, 39.154202, 49.428116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242868, 38.932182, 50.177753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.449574, 39.274460, 50.166821>,  <29.573597, 39.479824, 50.160259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.449574, 39.274460, 50.166821>,  <29.242868, 38.932182, 50.177753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449574, 39.274460, 50.166821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552066, 0.357464, 0.753287,
		0.654354, -0.374179, 0.657123,
		0.516762, 0.855692, -0.027337,
		29.604603, 39.531166, 50.158619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495811, 39.128654, 50.855656>,  <29.242868, 38.932182, 50.177753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495811, 39.128654, 50.855656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.533066, 39.472683, 50.655018>,  <29.555418, 39.679100, 50.534634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.533066, 39.472683, 50.655018>,  <29.495811, 39.128654, 50.855656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533066, 39.472683, 50.655018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429077, 0.489278, 0.759276,
		0.898453, 0.144509, 0.414606,
		0.093135, 0.860072, -0.501599,
		29.561007, 39.730705, 50.504539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066864, 39.523029, 51.115669>,  <29.495811, 39.128654, 50.855656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066864, 39.523029, 51.115669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834969, 39.805908, 50.953789>,  <29.695831, 39.975636, 50.856663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834969, 39.805908, 50.953789>,  <30.066864, 39.523029, 51.115669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834969, 39.805908, 50.953789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099766, 0.431334, 0.896659,
		0.808671, 0.560204, -0.179507,
		-0.579739, 0.707194, -0.404697,
		29.661047, 40.018066, 50.832378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164188, 40.259552, 51.427029>,  <30.066864, 39.523029, 51.115669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164188, 40.259552, 51.427029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807331, 40.327778, 51.259705>,  <29.593216, 40.368713, 51.159309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807331, 40.327778, 51.259705>,  <30.164188, 40.259552, 51.427029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807331, 40.327778, 51.259705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285830, 0.503946, 0.815071,
		0.349828, 0.846728, -0.400841,
		-0.892145, 0.170562, -0.418314,
		29.539688, 40.378948, 51.134209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907423, 40.906799, 51.685863>,  <30.164188, 40.259552, 51.427029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907423, 40.906799, 51.685863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571821, 40.735466, 51.551636>,  <29.370461, 40.632668, 51.471100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571821, 40.735466, 51.551636>,  <29.907423, 40.906799, 51.685863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571821, 40.735466, 51.551636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518015, 0.440000, 0.733526,
		-0.166539, 0.789261, -0.591043,
		-0.839002, -0.428330, -0.335572,
		29.320120, 40.606968, 51.450966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364882, 41.473331, 51.562828>,  <29.907423, 40.906799, 51.685863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364882, 41.473331, 51.562828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186842, 41.122818, 51.636600>,  <29.080017, 40.912510, 51.680866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186842, 41.122818, 51.636600>,  <29.364882, 41.473331, 51.562828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186842, 41.122818, 51.636600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593623, 0.442940, 0.671875,
		-0.670445, 0.189567, -0.717334,
		-0.445101, -0.876281, 0.184436,
		29.053312, 40.859932, 51.691933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735893, 41.682224, 51.759521>,  <29.364882, 41.473331, 51.562828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735893, 41.682224, 51.759521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772036, 41.304764, 51.886868>,  <28.793720, 41.078285, 51.963276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772036, 41.304764, 51.886868>,  <28.735893, 41.682224, 51.759521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772036, 41.304764, 51.886868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366074, 0.265821, 0.891812,
		-0.926189, -0.197124, -0.321428,
		0.090356, -0.943653, 0.318362,
		28.799143, 41.021667, 51.982376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129734, 41.544167, 52.170692>,  <28.735893, 41.682224, 51.759521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129734, 41.544167, 52.170692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320354, 41.211758, 52.285442>,  <28.434727, 41.012310, 52.354294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320354, 41.211758, 52.285442>,  <28.129734, 41.544167, 52.170692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320354, 41.211758, 52.285442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453928, 0.046862, 0.889805,
		-0.752894, -0.554258, -0.354893,
		0.476550, -0.831025, 0.286875,
		28.463320, 40.962452, 52.371506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645281, 41.036091, 52.276020>,  <28.129734, 41.544167, 52.170692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645281, 41.036091, 52.276020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.967026, 40.957188, 52.500195>,  <28.160072, 40.909847, 52.634701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.967026, 40.957188, 52.500195>,  <27.645281, 41.036091, 52.276020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967026, 40.957188, 52.500195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577780, -0.039865, 0.815219,
		-0.138465, -0.979541, -0.146036,
		0.804362, -0.197256, 0.560439,
		28.208334, 40.898010, 52.668327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392599, 40.550987, 52.675259>,  <27.645281, 41.036091, 52.276020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392599, 40.550987, 52.675259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.690294, 40.739925, 52.864151>,  <27.868912, 40.853287, 52.977486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.690294, 40.739925, 52.864151>,  <27.392599, 40.550987, 52.675259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690294, 40.739925, 52.864151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507177, -0.060400, 0.859723,
		0.434608, -0.879342, 0.194610,
		0.744236, 0.472344, 0.472233,
		27.913565, 40.881630, 53.005821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423058, 40.203091, 53.313385>,  <27.392599, 40.550987, 52.675259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423058, 40.203091, 53.313385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.591259, 40.560322, 53.377361>,  <27.692181, 40.774662, 53.415749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.591259, 40.560322, 53.377361>,  <27.423058, 40.203091, 53.313385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591259, 40.560322, 53.377361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389213, 0.018323, 0.920965,
		0.819567, -0.449520, 0.355304,
		0.420503, 0.893082, 0.159942,
		27.717409, 40.828247, 53.425343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747328, 40.173790, 54.010323>,  <27.423058, 40.203091, 53.313385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747328, 40.173790, 54.010323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.697071, 40.561153, 53.924168>,  <27.666916, 40.793571, 53.872475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.697071, 40.561153, 53.924168>,  <27.747328, 40.173790, 54.010323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697071, 40.561153, 53.924168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318810, 0.166175, 0.933138,
		0.939454, 0.185909, 0.287861,
		-0.125643, 0.968413, -0.215383,
		27.659378, 40.851677, 53.859554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000357, 40.479588, 54.568943>,  <27.747328, 40.173790, 54.010323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000357, 40.479588, 54.568943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.771690, 40.766743, 54.410027>,  <27.634491, 40.939037, 54.314678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.771690, 40.766743, 54.410027>,  <28.000357, 40.479588, 54.568943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771690, 40.766743, 54.410027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402544, 0.176531, 0.898217,
		0.714954, 0.673404, 0.188065,
		-0.571664, 0.717889, -0.397287,
		27.600191, 40.982109, 54.290840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121815, 41.109146, 54.887280>,  <28.000357, 40.479588, 54.568943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121815, 41.109146, 54.887280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755125, 41.137173, 54.729950>,  <27.535110, 41.153988, 54.635551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755125, 41.137173, 54.729950>,  <28.121815, 41.109146, 54.887280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755125, 41.137173, 54.729950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371416, 0.213238, 0.903648,
		0.147185, 0.974484, -0.169458,
		-0.916726, 0.070064, -0.393325,
		27.480106, 41.158192, 54.611954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709780, 41.714031, 55.293125>,  <28.121815, 41.109146, 54.887280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709780, 41.714031, 55.293125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.404499, 41.553871, 55.090267>,  <27.221331, 41.457775, 54.968552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.404499, 41.553871, 55.090267>,  <27.709780, 41.714031, 55.293125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404499, 41.553871, 55.090267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603687, 0.161987, 0.780591,
		-0.230398, 0.901909, -0.365345,
		-0.763203, -0.400401, -0.507149,
		27.175539, 41.433750, 54.938122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218010, 42.286537, 55.277199>,  <27.709780, 41.714031, 55.293125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218010, 42.286537, 55.277199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.057995, 41.922291, 55.235718>,  <26.961987, 41.703743, 55.210827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.057995, 41.922291, 55.235718>,  <27.218010, 42.286537, 55.277199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057995, 41.922291, 55.235718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651859, 0.203156, 0.730621,
		-0.644245, 0.359876, -0.674861,
		-0.400036, -0.910613, -0.103706,
		26.937984, 41.649105, 55.204605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551647, 42.354340, 55.262428>,  <27.218010, 42.286537, 55.277199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551647, 42.354340, 55.262428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.552628, 41.967674, 55.364845>,  <26.553217, 41.735676, 55.426296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.552628, 41.967674, 55.364845>,  <26.551647, 42.354340, 55.262428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552628, 41.967674, 55.364845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677842, 0.186639, 0.711124,
		-0.735204, -0.175302, -0.654786,
		0.002453, -0.966662, 0.256045,
		26.553364, 41.677677, 55.441658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013668, 42.263100, 55.663918>,  <26.551647, 42.354340, 55.262428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013668, 42.263100, 55.663918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.174200, 41.913017, 55.771954>,  <26.270519, 41.702969, 55.836777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.174200, 41.913017, 55.771954>,  <26.013668, 42.263100, 55.663918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174200, 41.913017, 55.771954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467316, 0.057955, 0.882189,
		-0.787749, -0.480268, -0.385738,
		0.401331, -0.875206, 0.270091,
		26.294600, 41.650455, 55.852982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461542, 41.824028, 55.865387>,  <26.013668, 42.263100, 55.663918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461542, 41.824028, 55.865387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.799683, 41.701530, 56.040474>,  <26.002567, 41.628033, 56.145527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.799683, 41.701530, 56.040474>,  <25.461542, 41.824028, 55.865387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799683, 41.701530, 56.040474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497652, -0.153543, 0.853679,
		-0.194235, -0.939485, -0.282205,
		0.845349, -0.306254, 0.437713,
		26.053288, 41.609657, 56.171787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201906, 41.322769, 56.421635>,  <25.461542, 41.824028, 55.865387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201906, 41.322769, 56.421635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.580133, 41.395100, 56.529861>,  <25.807070, 41.438499, 56.594795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.580133, 41.395100, 56.529861>,  <25.201906, 41.322769, 56.421635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580133, 41.395100, 56.529861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235234, -0.194721, 0.952234,
		0.224876, -0.964046, -0.141584,
		0.945566, 0.180829, 0.270564,
		25.863804, 41.449348, 56.611031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679041, 40.700672, 56.612091>,  <25.201906, 41.322769, 56.421635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679041, 40.700672, 56.612091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.853872, 41.000263, 56.811287>,  <25.958771, 41.180019, 56.930805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.853872, 41.000263, 56.811287>,  <25.679041, 40.700672, 56.612091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853872, 41.000263, 56.811287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122521, -0.498940, 0.857932,
		0.891040, -0.435997, -0.126310,
		0.437077, 0.748976, 0.497994,
		25.984995, 41.224957, 56.960686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617935, 40.561089, 57.445419>,  <25.679041, 40.700672, 56.612091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617935, 40.561089, 57.445419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.356644, 40.260185, 57.411022>,  <25.199869, 40.079643, 57.390385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.356644, 40.260185, 57.411022>,  <25.617935, 40.561089, 57.445419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356644, 40.260185, 57.411022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403337, -0.249604, -0.880350,
		0.640787, -0.609757, 0.466463,
		-0.653231, -0.752260, -0.085995,
		25.160675, 40.034508, 57.385223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046732, 39.887779, 57.421429>,  <25.617935, 40.561089, 57.445419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046732, 39.887779, 57.421429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.691572, 39.778610, 57.273296>,  <25.478476, 39.713108, 57.184418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.691572, 39.778610, 57.273296>,  <26.046732, 39.887779, 57.421429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691572, 39.778610, 57.273296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456394, -0.421501, -0.783609,
		0.057772, -0.864783, 0.498812,
		-0.887901, -0.272925, -0.370331,
		25.425201, 39.696732, 57.162197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017599, 39.111370, 57.260178>,  <26.046732, 39.887779, 57.421429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017599, 39.111370, 57.260178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.719763, 39.259087, 57.037750>,  <25.541061, 39.347717, 56.904293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.719763, 39.259087, 57.037750>,  <26.017599, 39.111370, 57.260178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719763, 39.259087, 57.037750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362871, -0.475267, -0.801528,
		-0.560274, -0.798591, 0.219876,
		-0.744593, 0.369288, -0.556065,
		25.496386, 39.369873, 56.870930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583445, 38.547497, 56.937988>,  <26.017599, 39.111370, 57.260178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583445, 38.547497, 56.937988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.563152, 38.880543, 56.717377>,  <25.550976, 39.080368, 56.585011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.563152, 38.880543, 56.717377>,  <25.583445, 38.547497, 56.937988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563152, 38.880543, 56.717377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375884, -0.495715, -0.782929,
		-0.925277, -0.247031, -0.287816,
		-0.050733, 0.832612, -0.551529,
		25.547932, 39.130325, 56.551918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511826, 38.282887, 56.201946>,  <25.583445, 38.547497, 56.937988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511826, 38.282887, 56.201946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.565687, 38.675121, 56.144932>,  <25.598003, 38.910461, 56.110725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.565687, 38.675121, 56.144932>,  <25.511826, 38.282887, 56.201946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565687, 38.675121, 56.144932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528563, -0.192749, -0.826722,
		-0.838147, 0.035983, -0.544257,
		0.134653, 0.980588, -0.142533,
		25.606083, 38.969299, 56.102173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245518, 38.448792, 55.578545>,  <25.511826, 38.282887, 56.201946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245518, 38.448792, 55.578545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.531908, 38.718372, 55.651394>,  <25.703743, 38.880119, 55.695103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.531908, 38.718372, 55.651394>,  <25.245518, 38.448792, 55.578545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531908, 38.718372, 55.651394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393195, -0.173723, -0.902894,
		-0.576867, 0.718061, -0.389375,
		0.715977, 0.673950, 0.182122,
		25.746700, 38.920559, 55.706032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195663, 38.819557, 54.989758>,  <25.245518, 38.448792, 55.578545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.195663, 38.819557, 54.989758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.555492, 38.895126, 55.147278>,  <25.771389, 38.940468, 55.241791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.555492, 38.895126, 55.147278>,  <25.195663, 38.819557, 54.989758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555492, 38.895126, 55.147278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427781, -0.199079, -0.881687,
		-0.088174, 0.961600, -0.259904,
		0.899572, 0.188924, 0.393800,
		25.825363, 38.951805, 55.265419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645514, 39.161449, 54.465473>,  <25.195663, 38.819557, 54.989758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645514, 39.161449, 54.465473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.931007, 39.065067, 54.728539>,  <26.102304, 39.007240, 54.886379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.931007, 39.065067, 54.728539>,  <25.645514, 39.161449, 54.465473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931007, 39.065067, 54.728539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591718, -0.294982, -0.750237,
		0.374770, 0.924623, -0.067963,
		0.713734, -0.240951, 0.657667,
		26.145128, 38.992783, 54.925838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256958, 39.543758, 54.201145>,  <25.645514, 39.161449, 54.465473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256958, 39.543758, 54.201145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.387550, 39.266830, 54.458549>,  <26.465906, 39.100674, 54.612991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.387550, 39.266830, 54.458549>,  <26.256958, 39.543758, 54.201145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387550, 39.266830, 54.458549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714013, -0.265466, -0.647852,
		0.619350, 0.670988, 0.407653,
		0.326483, -0.692317, 0.643511,
		26.485495, 39.059135, 54.651604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976965, 39.664089, 54.430107>,  <26.256958, 39.543758, 54.201145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976965, 39.664089, 54.430107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.881201, 39.275791, 54.437393>,  <26.823742, 39.042812, 54.441765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.881201, 39.275791, 54.437393>,  <26.976965, 39.664089, 54.430107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881201, 39.275791, 54.437393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751899, -0.197244, -0.629081,
		0.614272, -0.136909, 0.777127,
		-0.239410, -0.970748, 0.018220,
		26.809378, 38.984566, 54.442860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581585, 39.445770, 54.543262>,  <26.976965, 39.664089, 54.430107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581585, 39.445770, 54.543262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.381712, 39.127048, 54.407368>,  <27.261787, 38.935818, 54.325829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.381712, 39.127048, 54.407368>,  <27.581585, 39.445770, 54.543262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381712, 39.127048, 54.407368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822011, -0.312509, -0.476063,
		0.273156, -0.517152, 0.811135,
		-0.499684, -0.796801, -0.339741,
		27.231806, 38.888008, 54.305447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066086, 38.900349, 54.492222>,  <27.581585, 39.445770, 54.543262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066086, 38.900349, 54.492222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.777874, 38.778664, 54.242970>,  <27.604946, 38.705650, 54.093418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.777874, 38.778664, 54.242970>,  <28.066086, 38.900349, 54.492222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777874, 38.778664, 54.242970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687289, -0.432594, -0.583521,
		-0.092046, -0.848714, 0.520781,
		-0.720529, -0.304216, -0.623130,
		27.561716, 38.687401, 54.056030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270912, 38.268742, 54.362911>,  <28.066086, 38.900349, 54.492222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270912, 38.268742, 54.362911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.001373, 38.351315, 54.079132>,  <27.839651, 38.400856, 53.908863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.001373, 38.351315, 54.079132>,  <28.270912, 38.268742, 54.362911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001373, 38.351315, 54.079132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642120, -0.311410, -0.700504,
		-0.365532, -0.927584, 0.077291,
		-0.673846, 0.206427, -0.709450,
		27.799219, 38.413242, 53.866299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222492, 37.642044, 53.902138>,  <28.270912, 38.268742, 54.362911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222492, 37.642044, 53.902138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.073828, 37.932064, 53.670219>,  <27.984629, 38.106075, 53.531067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.073828, 37.932064, 53.670219>,  <28.222492, 37.642044, 53.902138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073828, 37.932064, 53.670219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396342, -0.440839, -0.805341,
		-0.839513, -0.529112, -0.123526,
		-0.371660, 0.725053, -0.579799,
		27.962330, 38.149578, 53.496281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988087, 37.328556, 53.259312>,  <28.222492, 37.642044, 53.902138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988087, 37.328556, 53.259312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.014420, 37.710236, 53.142570>,  <28.030218, 37.939243, 53.072525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.014420, 37.710236, 53.142570>,  <27.988087, 37.328556, 53.259312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014420, 37.710236, 53.142570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436343, -0.290565, -0.851573,
		-0.897369, -0.071287, -0.435485,
		0.065830, 0.954196, -0.291849,
		28.034168, 37.996494, 53.055016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782732, 37.320290, 52.519733>,  <27.988087, 37.328556, 53.259312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782732, 37.320290, 52.519733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.943913, 37.683418, 52.566189>,  <28.040621, 37.901295, 52.594063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.943913, 37.683418, 52.566189>,  <27.782732, 37.320290, 52.519733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943913, 37.683418, 52.566189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234031, 0.020475, -0.972014,
		-0.884794, 0.418853, -0.204208,
		0.402950, 0.907823, 0.116141,
		28.064798, 37.955765, 52.601032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565245, 37.802715, 52.065571>,  <27.782732, 37.320290, 52.519733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565245, 37.802715, 52.065571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.940876, 37.906498, 52.155743>,  <28.166254, 37.968769, 52.209846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.940876, 37.906498, 52.155743>,  <27.565245, 37.802715, 52.065571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940876, 37.906498, 52.155743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237269, -0.014833, -0.971331,
		-0.248674, 0.965641, -0.075491,
		0.939076, 0.259457, 0.225428,
		28.222599, 37.984333, 52.223370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701130, 38.206657, 51.481976>,  <27.565245, 37.802715, 52.065571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701130, 38.206657, 51.481976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061632, 38.142467, 51.642963>,  <28.277933, 38.103954, 51.739555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061632, 38.142467, 51.642963>,  <27.701130, 38.206657, 51.481976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061632, 38.142467, 51.642963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415409, 0.055969, -0.907911,
		0.123168, 0.985452, 0.117103,
		0.901257, -0.160471, 0.402472,
		28.332010, 38.094326, 51.763706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290291, 38.583652, 51.038631>,  <27.701130, 38.206657, 51.481976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290291, 38.583652, 51.038631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.494108, 38.305824, 51.241783>,  <28.616398, 38.139130, 51.363674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.494108, 38.305824, 51.241783>,  <28.290291, 38.583652, 51.038631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494108, 38.305824, 51.241783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640972, -0.087388, -0.762574,
		0.574041, 0.714102, 0.400669,
		0.509542, -0.694566, 0.507883,
		28.646971, 38.097454, 51.394150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900684, 38.529476, 50.665470>,  <28.290291, 38.583652, 51.038631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900684, 38.529476, 50.665470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944889, 38.190083, 50.872490>,  <28.971411, 37.986446, 50.996700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944889, 38.190083, 50.872490>,  <28.900684, 38.529476, 50.665470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944889, 38.190083, 50.872490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623581, -0.346295, -0.700876,
		0.773909, 0.400188, 0.490830,
		0.110510, -0.848486, 0.517551,
		28.978043, 37.935535, 51.027756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622196, 38.392769, 50.707466>,  <28.900684, 38.529476, 50.665470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622196, 38.392769, 50.707466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.420692, 38.053036, 50.770535>,  <29.299791, 37.849194, 50.808376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.420692, 38.053036, 50.770535>,  <29.622196, 38.392769, 50.707466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420692, 38.053036, 50.770535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544063, -0.453716, -0.705789,
		0.670987, -0.269765, 0.690654,
		-0.503757, -0.849334, 0.157668,
		29.269566, 37.798237, 50.817837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083220, 37.772354, 50.729774>,  <29.622196, 38.392769, 50.707466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083220, 37.772354, 50.729774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718611, 37.636028, 50.637711>,  <29.499846, 37.554234, 50.582470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718611, 37.636028, 50.637711>,  <30.083220, 37.772354, 50.729774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718611, 37.636028, 50.637711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337674, -0.300785, -0.891911,
		0.234747, -0.890715, 0.389256,
		-0.911521, -0.340815, -0.230163,
		29.445154, 37.533783, 50.568661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198578, 37.185352, 50.358482>,  <30.083220, 37.772354, 50.729774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198578, 37.185352, 50.358482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830667, 37.285332, 50.237461>,  <29.609921, 37.345318, 50.164848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830667, 37.285332, 50.237461>,  <30.198578, 37.185352, 50.358482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830667, 37.285332, 50.237461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142525, -0.505555, -0.850941,
		-0.365645, -0.825797, 0.429375,
		-0.919777, 0.249946, -0.302551,
		29.554735, 37.360317, 50.146694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932558, 36.579372, 49.983795>,  <30.198578, 37.185352, 50.358482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932558, 36.579372, 49.983795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.711300, 36.896027, 49.879993>,  <29.578545, 37.086018, 49.817711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.711300, 36.896027, 49.879993>,  <29.932558, 36.579372, 49.983795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711300, 36.896027, 49.879993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079202, -0.260120, -0.962323,
		-0.829311, -0.552858, 0.081185,
		-0.553146, 0.791634, -0.259508,
		29.545357, 37.133518, 49.802139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404613, 36.267715, 49.540871>,  <29.932558, 36.579372, 49.983795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404613, 36.267715, 49.540871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.424953, 36.654949, 49.442699>,  <29.437159, 36.887287, 49.383797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.424953, 36.654949, 49.442699>,  <29.404613, 36.267715, 49.540871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424953, 36.654949, 49.442699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160748, -0.250472, -0.954685,
		-0.985685, 0.009095, -0.168354,
		0.050851, 0.968081, -0.245424,
		29.440208, 36.945374, 49.369072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016338, 36.313660, 48.942551>,  <29.404613, 36.267715, 49.540871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016338, 36.313660, 48.942551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228352, 36.652790, 48.936077>,  <29.355560, 36.856266, 48.932194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.228352, 36.652790, 48.936077>,  <29.016338, 36.313660, 48.942551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228352, 36.652790, 48.936077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327042, -0.221993, -0.918566,
		-0.782374, 0.481576, -0.394937,
		0.530033, 0.847823, -0.016186,
		29.387362, 36.907139, 48.931221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812933, 36.748672, 48.403217>,  <29.016338, 36.313660, 48.942551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812933, 36.748672, 48.403217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190601, 36.855862, 48.479874>,  <29.417202, 36.920177, 48.525867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190601, 36.855862, 48.479874>,  <28.812933, 36.748672, 48.403217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190601, 36.855862, 48.479874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271387, -0.302859, -0.913578,
		-0.186778, 0.914585, -0.358676,
		0.944173, 0.267977, 0.191639,
		29.473854, 36.936256, 48.537365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037560, 37.070618, 47.820007>,  <28.812933, 36.748672, 48.403217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037560, 37.070618, 47.820007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.374481, 36.964912, 48.007915>,  <29.576633, 36.901489, 48.120663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.374481, 36.964912, 48.007915>,  <29.037560, 37.070618, 47.820007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374481, 36.964912, 48.007915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394394, -0.291892, -0.871351,
		0.367393, 0.919218, -0.141636,
		0.842304, -0.264267, 0.469773,
		29.627172, 36.885632, 48.148846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566498, 37.138832, 47.281837>,  <29.037560, 37.070618, 47.820007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566498, 37.138832, 47.281837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.768757, 36.929909, 47.556507>,  <29.890112, 36.804554, 47.721310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.768757, 36.929909, 47.556507>,  <29.566498, 37.138832, 47.281837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768757, 36.929909, 47.556507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518919, -0.451726, -0.725718,
		0.689233, 0.723285, 0.042620,
		0.505648, -0.522305, 0.686671,
		29.920452, 36.773216, 47.762508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331245, 37.058270, 47.095242>,  <29.566498, 37.138832, 47.281837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331245, 37.058270, 47.095242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223019, 36.759823, 47.338585>,  <30.158083, 36.580753, 47.484592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223019, 36.759823, 47.338585>,  <30.331245, 37.058270, 47.095242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223019, 36.759823, 47.338585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495634, -0.649704, -0.576395,
		0.825312, 0.145570, 0.545591,
		-0.270567, -0.746119, 0.608358,
		30.141850, 36.535988, 47.521091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977158, 36.602772, 47.044083>,  <30.331245, 37.058270, 47.095242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977158, 36.602772, 47.044083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673260, 36.403297, 47.210983>,  <30.490921, 36.283611, 47.311123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673260, 36.403297, 47.210983>,  <30.977158, 36.602772, 47.044083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673260, 36.403297, 47.210983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370713, -0.859405, -0.352130,
		0.534194, -0.112847, 0.837796,
		-0.759743, -0.498687, 0.417255,
		30.445337, 36.253693, 47.336159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256243, 36.162525, 47.464058>,  <30.977158, 36.602772, 47.044083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256243, 36.162525, 47.464058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890633, 36.022530, 47.382023>,  <30.671267, 35.938534, 47.332802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890633, 36.022530, 47.382023>,  <31.256243, 36.162525, 47.464058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890633, 36.022530, 47.382023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405040, -0.815220, -0.413956,
		-0.022315, -0.461437, 0.886892,
		-0.914027, -0.349989, -0.205092,
		30.616425, 35.917534, 47.320496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224293, 35.558350, 47.832973>,  <31.256243, 36.162525, 47.464058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224293, 35.558350, 47.832973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957268, 35.524456, 47.537086>,  <30.797052, 35.504120, 47.359554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957268, 35.524456, 47.537086>,  <31.224293, 35.558350, 47.832973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957268, 35.524456, 47.537086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435692, -0.850096, -0.295819,
		-0.603763, -0.519766, 0.604411,
		-0.667565, -0.084733, -0.739715,
		30.756998, 35.499035, 47.315170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925560, 34.894753, 47.951279>,  <31.224293, 35.558350, 47.832973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925560, 34.894753, 47.951279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862513, 35.008453, 47.572998>,  <30.824684, 35.076675, 47.346027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862513, 35.008453, 47.572998>,  <30.925560, 34.894753, 47.951279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862513, 35.008453, 47.572998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350583, -0.879183, -0.322689,
		-0.923172, -0.382410, 0.038922,
		-0.157619, 0.284252, -0.945704,
		30.815228, 35.093731, 47.289288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522190, 34.383194, 47.802017>,  <30.925560, 34.894753, 47.951279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522190, 34.383194, 47.802017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.671467, 34.546303, 47.468685>,  <30.761034, 34.644169, 47.268684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.671467, 34.546303, 47.468685>,  <30.522190, 34.383194, 47.802017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671467, 34.546303, 47.468685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402712, -0.880395, -0.250456,
		-0.835793, -0.242126, -0.492774,
		0.373194, 0.407775, -0.833334,
		30.783424, 34.668636, 47.218685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265797, 33.966736, 47.194927>,  <30.522190, 34.383194, 47.802017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265797, 33.966736, 47.194927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.605181, 34.157425, 47.102970>,  <30.808811, 34.271839, 47.047794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.605181, 34.157425, 47.102970>,  <30.265797, 33.966736, 47.194927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605181, 34.157425, 47.102970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326717, -0.813494, -0.481127,
		-0.416382, 0.333106, -0.845970,
		0.848458, 0.476726, -0.229893,
		30.859718, 34.300442, 47.034000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365891, 33.687115, 46.492508>,  <30.265797, 33.966736, 47.194927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365891, 33.687115, 46.492508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700506, 33.879456, 46.597565>,  <30.901276, 33.994862, 46.660599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700506, 33.879456, 46.597565>,  <30.365891, 33.687115, 46.492508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700506, 33.879456, 46.597565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538310, -0.810632, -0.230430,
		0.102104, 0.334147, -0.936974,
		0.836539, 0.480854, 0.262644,
		30.951468, 34.023712, 46.676357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791121, 33.453362, 45.988842>,  <30.365891, 33.687115, 46.492508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791121, 33.453362, 45.988842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057426, 33.607365, 46.244507>,  <31.217211, 33.699768, 46.397903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057426, 33.607365, 46.244507>,  <30.791121, 33.453362, 45.988842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057426, 33.607365, 46.244507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639163, -0.736251, -0.222274,
		0.385004, 0.556509, -0.736253,
		0.665765, 0.385009, 0.639160,
		31.257156, 33.722866, 46.436256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370733, 33.584713, 45.597122>,  <30.791121, 33.453362, 45.988842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370733, 33.584713, 45.597122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467564, 33.533279, 45.981800>,  <31.525661, 33.502419, 46.212608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467564, 33.533279, 45.981800>,  <31.370733, 33.584713, 45.597122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467564, 33.533279, 45.981800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655829, -0.708777, -0.259852,
		0.715044, 0.693614, -0.087244,
		0.242074, -0.128588, 0.961699,
		31.540186, 33.494701, 46.270309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138195, 33.842670, 45.651814>,  <31.370733, 33.584713, 45.597122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138195, 33.842670, 45.651814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005638, 33.586952, 45.929367>,  <31.926104, 33.433521, 46.095901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005638, 33.586952, 45.929367>,  <32.138195, 33.842670, 45.651814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005638, 33.586952, 45.929367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507976, -0.740648, -0.439773,
		0.795071, 0.206741, 0.570193,
		-0.331394, -0.639295, 0.693888,
		31.906219, 33.395164, 46.137535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629059, 33.535675, 46.091141>,  <32.138195, 33.842670, 45.651814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629059, 33.535675, 46.091141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.322613, 33.286762, 46.026848>,  <32.138744, 33.137417, 45.988274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.322613, 33.286762, 46.026848>,  <32.629059, 33.535675, 46.091141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322613, 33.286762, 46.026848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635022, -0.694362, -0.338538,
		0.099058, -0.361428, 0.927123,
		-0.766116, -0.622279, -0.160733,
		32.092777, 33.100079, 45.978626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362362, 33.822906, 45.871525>,  <32.629059, 33.535675, 46.091141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362362, 33.822906, 45.871525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.615116, 33.608429, 45.647663>,  <33.766769, 33.479740, 45.513348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.615116, 33.608429, 45.647663>,  <33.362362, 33.822906, 45.871525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615116, 33.608429, 45.647663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769380, 0.346692, 0.536525,
		-0.093656, -0.769609, 0.631610,
		0.631888, -0.536197, -0.559652,
		33.804684, 33.447571, 45.479767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619141, 33.436993, 46.348396>,  <33.362362, 33.822906, 45.871525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619141, 33.436993, 46.348396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874008, 33.468109, 46.041679>,  <34.026928, 33.486778, 45.857651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874008, 33.468109, 46.041679>,  <33.619141, 33.436993, 46.348396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874008, 33.468109, 46.041679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756881, 0.124571, 0.641571,
		0.145425, -0.989157, 0.020498,
		0.637167, 0.077786, -0.766790,
		34.065159, 33.491447, 45.811642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084415, 32.928612, 46.406704>,  <33.619141, 33.436993, 46.348396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084415, 32.928612, 46.406704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.207306, 33.265793, 46.230049>,  <34.281040, 33.468102, 46.124058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.207306, 33.265793, 46.230049>,  <34.084415, 32.928612, 46.406704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207306, 33.265793, 46.230049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627749, 0.169272, 0.759789,
		0.715222, -0.510664, -0.477158,
		0.307227, 0.842953, -0.441636,
		34.299473, 33.518677, 46.097557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842602, 32.986660, 46.382351>,  <34.084415, 32.928612, 46.406704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842602, 32.986660, 46.382351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.770760, 33.378387, 46.345108>,  <34.727654, 33.613426, 46.322762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.770760, 33.378387, 46.345108>,  <34.842602, 32.986660, 46.382351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770760, 33.378387, 46.345108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564280, 0.180089, 0.805702,
		0.805810, 0.092168, -0.584957,
		-0.179605, 0.979323, -0.093109,
		34.716877, 33.672184, 46.317177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151196, 32.372761, 45.961834>,  <34.842602, 32.986660, 46.382351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151196, 32.372761, 45.961834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982155, 32.661270, 45.742317>,  <34.880730, 32.834373, 45.610607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982155, 32.661270, 45.742317>,  <35.151196, 32.372761, 45.961834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982155, 32.661270, 45.742317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781043, 0.597005, 0.183184,
		0.459758, -0.351216, -0.815641,
		-0.422605, 0.721271, -0.548793,
		34.855373, 32.877651, 45.577679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623253, 32.680805, 45.676796>,  <35.151196, 32.372761, 45.961834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623253, 32.680805, 45.676796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374531, 32.993855, 45.688484>,  <35.225296, 33.181686, 45.695496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.374531, 32.993855, 45.688484>,  <35.623253, 32.680805, 45.676796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374531, 32.993855, 45.688484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662887, 0.506070, 0.551792,
		0.417062, 0.362473, -0.833470,
		-0.621804, 0.782628, 0.029216,
		35.187988, 33.228642, 45.697250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019314, 33.383911, 45.437122>,  <35.623253, 32.680805, 45.676796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019314, 33.383911, 45.437122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711105, 33.468075, 45.677799>,  <35.526180, 33.518574, 45.822205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711105, 33.468075, 45.677799>,  <36.019314, 33.383911, 45.437122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711105, 33.468075, 45.677799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624212, 0.440229, 0.645413,
		-0.129081, 0.872884, -0.470544,
		-0.770517, 0.210409, 0.601690,
		35.479950, 33.531197, 45.858307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973774, 34.090076, 45.478535>,  <36.019314, 33.383911, 45.437122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973774, 34.090076, 45.478535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819199, 33.923283, 45.807606>,  <35.726456, 33.823208, 46.005047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819199, 33.923283, 45.807606>,  <35.973774, 34.090076, 45.478535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819199, 33.923283, 45.807606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549719, 0.612093, 0.568464,
		-0.740593, 0.671914, -0.007311,
		-0.386434, -0.416982, 0.822675,
		35.703270, 33.798187, 46.054409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771751, 34.644913, 45.932793>,  <35.973774, 34.090076, 45.478535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771751, 34.644913, 45.932793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823471, 34.313599, 46.150867>,  <35.854504, 34.114811, 46.281712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823471, 34.313599, 46.150867>,  <35.771751, 34.644913, 45.932793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823471, 34.313599, 46.150867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615885, 0.497975, 0.610497,
		-0.777154, 0.256837, 0.574515,
		0.129296, -0.828285, 0.545185,
		35.862259, 34.065113, 46.314423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891647, 34.922619, 46.495258>,  <35.771751, 34.644913, 45.932793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891647, 34.922619, 46.495258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.020184, 34.545227, 46.527725>,  <36.097305, 34.318794, 46.547203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.020184, 34.545227, 46.527725>,  <35.891647, 34.922619, 46.495258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020184, 34.545227, 46.527725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777375, 0.311770, 0.546340,
		-0.540763, -0.112469, 0.833622,
		0.321345, -0.943478, 0.081163,
		36.116589, 34.262184, 46.552074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943539, 34.865475, 47.234489>,  <35.891647, 34.922619, 46.495258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943539, 34.865475, 47.234489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184986, 34.613510, 47.038998>,  <36.329857, 34.462334, 46.921703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184986, 34.613510, 47.038998>,  <35.943539, 34.865475, 47.234489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184986, 34.613510, 47.038998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785779, 0.366336, 0.498347,
		-0.134874, -0.684845, 0.716098,
		0.603623, -0.629909, -0.488727,
		36.366074, 34.424538, 46.892380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145599, 34.461906, 47.774193>,  <35.943539, 34.865475, 47.234489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145599, 34.461906, 47.774193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412655, 34.399563, 47.482998>,  <36.572887, 34.362156, 47.308281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412655, 34.399563, 47.482998>,  <36.145599, 34.461906, 47.774193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412655, 34.399563, 47.482998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743109, 0.198921, 0.638921,
		0.045230, -0.967542, 0.248628,
		0.667641, -0.155859, -0.727986,
		36.612946, 34.352806, 47.264603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619968, 33.942039, 48.053642>,  <36.145599, 34.461906, 47.774193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619968, 33.942039, 48.053642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804314, 34.138565, 47.758018>,  <36.914921, 34.256481, 47.580643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804314, 34.138565, 47.758018>,  <36.619968, 33.942039, 48.053642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804314, 34.138565, 47.758018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855650, -0.024996, 0.516950,
		0.235513, -0.870622, -0.431915,
		0.460864, 0.491317, -0.739061,
		36.942574, 34.285961, 47.536301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296494, 33.586052, 48.017014>,  <36.619968, 33.942039, 48.053642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296494, 33.586052, 48.017014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356922, 33.918205, 47.802486>,  <37.393181, 34.117496, 47.673771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356922, 33.918205, 47.802486>,  <37.296494, 33.586052, 48.017014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356922, 33.918205, 47.802486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938881, 0.049237, 0.340702,
		0.309321, -0.555009, -0.772196,
		0.151071, 0.830386, -0.536317,
		37.402245, 34.167320, 47.641590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880966, 33.383038, 47.579624>,  <37.296494, 33.586052, 48.017014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880966, 33.383038, 47.579624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857235, 33.779839, 47.624172>,  <37.842995, 34.017921, 47.650902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857235, 33.779839, 47.624172>,  <37.880966, 33.383038, 47.579624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857235, 33.779839, 47.624172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950682, 0.022127, 0.309378,
		0.304440, 0.124232, -0.944395,
		-0.059331, 0.992007, 0.111368,
		37.839436, 34.077442, 47.657581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540607, 33.654457, 47.292645>,  <37.880966, 33.383038, 47.579624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540607, 33.654457, 47.292645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415340, 33.963497, 47.513557>,  <38.340179, 34.148922, 47.646103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415340, 33.963497, 47.513557>,  <38.540607, 33.654457, 47.292645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415340, 33.963497, 47.513557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946916, 0.209564, 0.243788,
		0.072613, 0.599309, -0.797217,
		-0.313172, 0.772600, 0.552279,
		38.321388, 34.195278, 47.679241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127831, 34.156609, 47.299065>,  <38.540607, 33.654457, 47.292645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127831, 34.156609, 47.299065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906113, 34.245178, 47.619995>,  <38.773083, 34.298321, 47.812553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906113, 34.245178, 47.619995>,  <39.127831, 34.156609, 47.299065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906113, 34.245178, 47.619995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832316, 0.145999, 0.534727,
		0.001265, 0.964186, -0.265226,
		-0.554299, 0.221428, 0.802323,
		38.739822, 34.311607, 47.860691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237015, 34.728489, 46.906067>,  <39.127831, 34.156609, 47.299065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237015, 34.728489, 46.906067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.366318, 35.096828, 46.993294>,  <39.443897, 35.317833, 47.045628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.366318, 35.096828, 46.993294>,  <39.237015, 34.728489, 46.906067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366318, 35.096828, 46.993294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017178, 0.224687, -0.974279,
		-0.946156, 0.318687, 0.056813,
		0.323255, 0.920844, 0.218063,
		39.463295, 35.373081, 47.058712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996826, 34.973492, 46.364979>,  <39.237015, 34.728489, 46.906067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996826, 34.973492, 46.364979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247471, 35.233925, 46.536301>,  <39.397858, 35.390182, 46.639095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247471, 35.233925, 46.536301>,  <38.996826, 34.973492, 46.364979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247471, 35.233925, 46.536301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068267, 0.501618, -0.862391,
		-0.776332, 0.569628, 0.269875,
		0.626616, 0.651079, 0.428309,
		39.435455, 35.429249, 46.664795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732079, 35.630653, 46.287178>,  <38.996826, 34.973492, 46.364979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732079, 35.630653, 46.287178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131809, 35.634964, 46.301235>,  <39.371647, 35.637550, 46.309669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131809, 35.634964, 46.301235>,  <38.732079, 35.630653, 46.287178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131809, 35.634964, 46.301235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027336, 0.421373, -0.906475,
		-0.024576, 0.906823, 0.420794,
		0.999324, 0.010774, 0.035145,
		39.431606, 35.638195, 46.311779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066090, 36.196384, 45.885029>,  <38.732079, 35.630653, 46.287178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066090, 36.196384, 45.885029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388504, 35.961411, 45.913963>,  <39.581951, 35.820427, 45.931324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388504, 35.961411, 45.913963>,  <39.066090, 36.196384, 45.885029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388504, 35.961411, 45.913963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306786, 0.310147, -0.899829,
		0.506153, 0.747485, 0.430205,
		0.806035, -0.587431, 0.072336,
		39.630314, 35.785183, 45.935665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796543, 36.597538, 45.723068>,  <39.066090, 36.196384, 45.885029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796543, 36.597538, 45.723068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685432, 36.232281, 45.603729>,  <39.618767, 36.013126, 45.532127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685432, 36.232281, 45.603729>,  <39.796543, 36.597538, 45.723068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685432, 36.232281, 45.603729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245520, 0.232771, -0.941030,
		0.928742, -0.334643, 0.159538,
		-0.277773, -0.913144, -0.298346,
		39.602100, 35.958336, 45.514225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387470, 36.143513, 45.462666>,  <39.796543, 36.597538, 45.723068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387470, 36.143513, 45.462666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055374, 36.036831, 45.266880>,  <39.856117, 35.972820, 45.149410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055374, 36.036831, 45.266880>,  <40.387470, 36.143513, 45.462666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055374, 36.036831, 45.266880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480459, 0.102780, -0.870974,
		0.282601, -0.958282, 0.042810,
		-0.830238, -0.266706, -0.489461,
		39.806301, 35.956818, 45.120041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476185, 35.543964, 45.002541>,  <40.387470, 36.143513, 45.462666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476185, 35.543964, 45.002541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.196930, 35.791622, 44.858727>,  <40.029377, 35.940216, 44.772438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.196930, 35.791622, 44.858727>,  <40.476185, 35.543964, 45.002541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196930, 35.791622, 44.858727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502880, 0.066601, -0.861786,
		-0.509623, -0.782449, -0.357851,
		-0.698138, 0.619143, -0.359536,
		39.987488, 35.977364, 44.750866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510452, 35.454617, 44.215679>,  <40.476185, 35.543964, 45.002541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510452, 35.454617, 44.215679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.349091, 35.810963, 44.299232>,  <40.252274, 36.024769, 44.349365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.349091, 35.810963, 44.299232>,  <40.510452, 35.454617, 44.215679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349091, 35.810963, 44.299232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429747, 0.385994, -0.816288,
		-0.807827, -0.239526, -0.538556,
		-0.403402, 0.890862, 0.208881,
		40.228069, 36.078220, 44.361897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140652, 35.719086, 43.728004>,  <40.510452, 35.454617, 44.215679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140652, 35.719086, 43.728004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.232811, 36.067341, 43.901863>,  <40.288105, 36.276295, 44.006180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.232811, 36.067341, 43.901863>,  <40.140652, 35.719086, 43.728004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232811, 36.067341, 43.901863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249265, 0.378956, -0.891212,
		-0.940631, 0.313672, -0.129709,
		0.230394, 0.870633, 0.434645,
		40.301929, 36.328529, 44.032257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753349, 36.340733, 43.497395>,  <40.140652, 35.719086, 43.728004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753349, 36.340733, 43.497395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.132065, 36.422421, 43.596905>,  <40.359295, 36.471432, 43.656612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.132065, 36.422421, 43.596905>,  <39.753349, 36.340733, 43.497395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132065, 36.422421, 43.596905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195899, 0.247642, -0.948840,
		-0.255377, 0.947084, 0.194459,
		0.946788, 0.204217, 0.248775,
		40.416100, 36.483685, 43.671535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020050, 37.096004, 43.233387>,  <39.753349, 36.340733, 43.497395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020050, 37.096004, 43.233387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.296757, 36.807285, 43.241955>,  <40.462780, 36.634052, 43.247097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.296757, 36.807285, 43.241955>,  <40.020050, 37.096004, 43.233387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296757, 36.807285, 43.241955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135984, 0.101082, -0.985541,
		0.709200, 0.684678, 0.168079,
		0.691768, -0.721802, 0.021418,
		40.504288, 36.590744, 43.248379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573345, 37.408386, 42.922913>,  <40.020050, 37.096004, 43.233387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573345, 37.408386, 42.922913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670147, 37.021015, 42.898994>,  <40.728230, 36.788593, 42.884644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670147, 37.021015, 42.898994>,  <40.573345, 37.408386, 42.922913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670147, 37.021015, 42.898994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208823, 0.112166, -0.971500,
		0.947537, 0.222620, 0.229375,
		0.242004, -0.968431, -0.059793,
		40.742748, 36.730484, 42.881058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207256, 37.327717, 42.645493>,  <40.573345, 37.408386, 42.922913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207256, 37.327717, 42.645493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.047932, 36.968220, 42.572159>,  <40.952335, 36.752522, 42.528160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.047932, 36.968220, 42.572159>,  <41.207256, 37.327717, 42.645493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047932, 36.968220, 42.572159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430117, -0.006475, -0.902750,
		0.810153, -0.438428, 0.389144,
		-0.398310, -0.898743, -0.183330,
		40.928440, 36.698597, 42.517159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707314, 36.810146, 42.682667>,  <41.207256, 37.327717, 42.645493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707314, 36.810146, 42.682667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409821, 36.826000, 42.415745>,  <41.231327, 36.835514, 42.255592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409821, 36.826000, 42.415745>,  <41.707314, 36.810146, 42.682667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409821, 36.826000, 42.415745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668469, 0.038232, -0.742757,
		-0.003928, -0.998482, -0.054930,
		-0.743730, 0.039636, -0.667304,
		41.186703, 36.837891, 42.215553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850605, 36.326920, 42.054787>,  <41.707314, 36.810146, 42.682667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850605, 36.326920, 42.054787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.592880, 36.591721, 41.901623>,  <41.438244, 36.750599, 41.809727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.592880, 36.591721, 41.901623>,  <41.850605, 36.326920, 42.054787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592880, 36.591721, 41.901623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597954, 0.123942, -0.791890,
		-0.476774, -0.739184, -0.475703,
		-0.644312, 0.662001, -0.382906,
		41.399586, 36.790321, 41.786751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622261, 36.078640, 41.385403>,  <41.850605, 36.326920, 42.054787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622261, 36.078640, 41.385403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.632046, 36.475662, 41.433132>,  <41.637917, 36.713875, 41.461769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.632046, 36.475662, 41.433132>,  <41.622261, 36.078640, 41.385403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632046, 36.475662, 41.433132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515935, 0.089701, -0.851918,
		-0.856278, 0.082406, -0.509899,
		0.024465, 0.992554, 0.119325,
		41.639385, 36.773430, 41.468929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016659, 35.472370, 41.179771>,  <41.622261, 36.078640, 41.385403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016659, 35.472370, 41.179771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260559, 35.341808, 41.468678>,  <41.406898, 35.263474, 41.642021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260559, 35.341808, 41.468678>,  <41.016659, 35.472370, 41.179771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260559, 35.341808, 41.468678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743899, -0.550162, 0.379390,
		0.273528, -0.768624, -0.578272,
		0.609752, -0.326403, 0.722264,
		41.443485, 35.243889, 41.685356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205948, 34.607506, 41.230938>,  <41.016659, 35.472370, 41.179771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205948, 34.607506, 41.230938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.180210, 34.803535, 41.578659>,  <41.164768, 34.921154, 41.787292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.180210, 34.803535, 41.578659>,  <41.205948, 34.607506, 41.230938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180210, 34.803535, 41.578659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729604, -0.617418, 0.294064,
		0.680836, -0.615325, 0.397288,
		-0.064347, 0.490072, 0.869304,
		41.160908, 34.950558, 41.839451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936298, 34.449959, 41.222202>,  <41.205948, 34.607506, 41.230938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936298, 34.449959, 41.222202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.088043, 34.080166, 41.207115>,  <42.179092, 33.858292, 41.198063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.088043, 34.080166, 41.207115>,  <41.936298, 34.449959, 41.222202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088043, 34.080166, 41.207115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784373, 0.342960, -0.516853,
		0.490755, 0.166490, 0.855243,
		0.379365, -0.924478, -0.037719,
		42.201851, 33.802822, 41.195801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706985, 34.332462, 41.466614>,  <41.936298, 34.449959, 41.222202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706985, 34.332462, 41.466614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.576057, 34.080883, 41.184540>,  <42.497501, 33.929935, 41.015297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.576057, 34.080883, 41.184540>,  <42.706985, 34.332462, 41.466614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576057, 34.080883, 41.184540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601755, 0.436647, -0.668753,
		0.728527, -0.643246, 0.235549,
		-0.327321, -0.628947, -0.705186,
		42.477859, 33.892200, 40.972984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343426, 34.021862, 41.237556>,  <42.706985, 34.332462, 41.466614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343426, 34.021862, 41.237556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.044273, 33.983765, 40.974770>,  <42.864780, 33.960907, 40.817097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.044273, 33.983765, 40.974770>,  <43.343426, 34.021862, 41.237556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044273, 33.983765, 40.974770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599527, 0.328010, -0.730053,
		0.285025, -0.939861, -0.188210,
		-0.747882, -0.095246, -0.656963,
		42.819908, 33.955193, 40.777679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587280, 33.705353, 40.645115>,  <43.343426, 34.021862, 41.237556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587280, 33.705353, 40.645115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.283325, 33.951706, 40.561916>,  <43.100952, 34.099518, 40.511997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.283325, 33.951706, 40.561916>,  <43.587280, 33.705353, 40.645115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283325, 33.951706, 40.561916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545051, 0.429276, -0.720168,
		-0.354248, -0.660616, -0.661887,
		-0.759886, 0.615880, -0.207999,
		43.055359, 34.136471, 40.499516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364559, 33.848164, 39.880123>,  <43.587280, 33.705353, 40.645115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364559, 33.848164, 39.880123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.356346, 34.156769, 40.134476>,  <43.351418, 34.341930, 40.287086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.356346, 34.156769, 40.134476>,  <43.364559, 33.848164, 39.880123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356346, 34.156769, 40.134476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627644, 0.505019, -0.592469,
		-0.778230, 0.386942, -0.494605,
		-0.020534, 0.771513, 0.635882,
		43.350185, 34.388222, 40.325241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964119, 34.488220, 39.749344>,  <43.364559, 33.848164, 39.880123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964119, 34.488220, 39.749344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.311958, 34.560638, 39.933094>,  <43.520660, 34.604088, 40.043343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.311958, 34.560638, 39.933094>,  <42.964119, 34.488220, 39.749344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311958, 34.560638, 39.933094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294977, 0.555609, -0.777359,
		-0.395967, 0.811494, 0.429753,
		0.869597, 0.181041, 0.459375,
		43.572838, 34.614952, 40.070908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784611, 34.480541, 38.983910>,  <42.964119, 34.488220, 39.749344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784611, 34.480541, 38.983910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.022366, 34.738918, 38.792301>,  <43.165020, 34.893944, 38.677334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.022366, 34.738918, 38.792301>,  <42.784611, 34.480541, 38.983910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022366, 34.738918, 38.792301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530139, 0.133169, 0.837388,
		0.604693, -0.751684, -0.263284,
		0.594390, 0.645940, -0.479023,
		43.200684, 34.932701, 38.648594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636337, 34.347454, 39.013550>,  <42.784611, 34.480541, 38.983910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636337, 34.347454, 39.013550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.562630, 34.737869, 38.967270>,  <43.518406, 34.972118, 38.939503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.562630, 34.737869, 38.967270>,  <43.636337, 34.347454, 39.013550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562630, 34.737869, 38.967270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513549, 0.195981, 0.835380,
		0.838041, 0.094517, -0.537359,
		-0.184270, 0.976042, -0.115701,
		43.507347, 35.030682, 38.932560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269196, 34.077961, 38.633995>,  <43.636337, 34.347454, 39.013550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269196, 34.077961, 38.633995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.469505, 34.367825, 38.823349>,  <44.589691, 34.541744, 38.936962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.469505, 34.367825, 38.823349>,  <44.269196, 34.077961, 38.633995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469505, 34.367825, 38.823349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850069, 0.308663, 0.426743,
		0.163129, -0.616110, 0.770582,
		0.500771, 0.724662, 0.473384,
		44.619736, 34.585224, 38.965363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108932, 33.668808, 38.127426>,  <44.269196, 34.077961, 38.633995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108932, 33.668808, 38.127426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.179588, 34.062344, 38.115646>,  <44.221981, 34.298466, 38.108578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.179588, 34.062344, 38.115646>,  <44.108932, 33.668808, 38.127426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179588, 34.062344, 38.115646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983898, -0.175667, 0.032962,
		0.027255, -0.034800, -0.999023,
		0.176642, 0.983835, -0.029452,
		44.232582, 34.357494, 38.106812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673092, 33.851086, 37.610836>,  <44.108932, 33.668808, 38.127426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673092, 33.851086, 37.610836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.656521, 34.158794, 37.865864>,  <44.646580, 34.343422, 38.018883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.656521, 34.158794, 37.865864>,  <44.673092, 33.851086, 37.610836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656521, 34.158794, 37.865864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995593, 0.085519, -0.038495,
		-0.084138, 0.633168, -0.769428,
		-0.041427, 0.769276, 0.637573,
		44.644093, 34.389576, 38.057137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906372, 34.573956, 37.392487>,  <44.673092, 33.851086, 37.610836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906372, 34.573956, 37.392487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.976665, 34.499439, 37.779148>,  <45.018841, 34.454727, 38.011143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.976665, 34.499439, 37.779148>,  <44.906372, 34.573956, 37.392487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976665, 34.499439, 37.779148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975744, 0.163174, -0.145935,
		-0.130545, 0.968849, 0.210450,
		0.175729, -0.186294, 0.966651,
		45.029385, 34.443550, 38.069145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170002, 35.141903, 37.762768>,  <44.906372, 34.573956, 37.392487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170002, 35.141903, 37.762768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.291241, 34.781464, 37.886803>,  <45.363983, 34.565201, 37.961224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.291241, 34.781464, 37.886803>,  <45.170002, 35.141903, 37.762768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291241, 34.781464, 37.886803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940819, 0.231178, -0.247822,
		0.151628, 0.366849, 0.917840,
		0.303098, -0.901099, 0.310086,
		45.382172, 34.511135, 37.979828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794876, 35.145748, 38.290649>,  <45.170002, 35.141903, 37.762768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794876, 35.145748, 38.290649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.797981, 34.839924, 38.032848>,  <45.799843, 34.656429, 37.878166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.797981, 34.839924, 38.032848>,  <45.794876, 35.145748, 38.290649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797981, 34.839924, 38.032848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989672, 0.098135, -0.104501,
		0.143146, -0.637039, 0.757424,
		0.007759, -0.764559, -0.644507,
		45.800308, 34.610558, 37.839497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238617, 34.697151, 38.599449>,  <45.794876, 35.145748, 38.290649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238617, 34.697151, 38.599449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.209862, 34.655807, 38.202633>,  <46.192608, 34.631001, 37.964542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.209862, 34.655807, 38.202633>,  <46.238617, 34.697151, 38.599449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209862, 34.655807, 38.202633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997265, 0.009681, -0.073275,
		0.017178, -0.994597, 0.102383,
		-0.071888, -0.103362, -0.992043,
		46.188297, 34.624798, 37.905022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.623867, 34.092819, 38.354378>,  <46.238617, 34.697151, 38.599449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.623867, 34.092819, 38.354378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.626907, 34.288082, 38.005287>,  <46.628731, 34.405239, 37.795834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.626907, 34.288082, 38.005287>,  <46.623867, 34.092819, 38.354378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.626907, 34.288082, 38.005287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846826, -0.467299, -0.254004,
		-0.531816, -0.737112, -0.416938,
		0.007605, 0.488157, -0.872723,
		46.629189, 34.434528, 37.743469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.635300, 33.681496, 37.727631>,  <46.623867, 34.092819, 38.354378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.635300, 33.681496, 37.727631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.836445, 34.016479, 37.642044>,  <46.957130, 34.217472, 37.590691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.836445, 34.016479, 37.642044>,  <46.635300, 33.681496, 37.727631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.836445, 34.016479, 37.642044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827056, -0.538125, -0.162477,
		-0.251212, -0.095262, -0.963233,
		0.502862, 0.837464, -0.213970,
		46.987305, 34.267719, 37.577854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.698826, 33.609306, 36.958893>,  <46.635300, 33.681496, 37.727631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.698826, 33.609306, 36.958893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.983803, 33.778000, 37.183239>,  <47.154789, 33.879215, 37.317848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.983803, 33.778000, 37.183239>,  <46.698826, 33.609306, 36.958893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983803, 33.778000, 37.183239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691364, -0.558727, -0.458083,
		0.120185, 0.714120, -0.689629,
		0.712440, 0.421730, 0.560868,
		47.197536, 33.904518, 37.351498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.302673, 33.621651, 36.455067>,  <46.698826, 33.609306, 36.958893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.302673, 33.621651, 36.455067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.412987, 33.677444, 36.835484>,  <47.479176, 33.710918, 37.063736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.412987, 33.677444, 36.835484>,  <47.302673, 33.621651, 36.455067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.412987, 33.677444, 36.835484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863124, -0.471381, -0.181153,
		0.423038, 0.870830, -0.250388,
		0.275781, 0.139481, 0.951047,
		47.495720, 33.719288, 37.120796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.992321, 33.863960, 36.482803>,  <47.302673, 33.621651, 36.455067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.992321, 33.863960, 36.482803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.883427, 33.674248, 36.817696>,  <47.818092, 33.560421, 37.018631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.883427, 33.674248, 36.817696>,  <47.992321, 33.863960, 36.482803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.883427, 33.674248, 36.817696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810040, -0.582577, -0.066630,
		0.519351, 0.660049, 0.542779,
		-0.272232, -0.474277, 0.837228,
		47.801758, 33.531963, 37.068863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.368931, 34.122581, 37.002403>,  <47.992321, 33.863960, 36.482803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.368931, 34.122581, 37.002403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.283951, 33.737053, 37.066803>,  <48.232964, 33.505737, 37.105442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.283951, 33.737053, 37.066803>,  <48.368931, 34.122581, 37.002403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.283951, 33.737053, 37.066803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968351, -0.229741, -0.097548,
		0.131006, 0.135176, 0.982123,
		-0.212448, -0.963819, 0.160996,
		48.220215, 33.447906, 37.115101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.305260, 34.570992, 36.332500>,  <48.368931, 34.122581, 37.002403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.305260, 34.570992, 36.332500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.918427, 34.665588, 36.294930>,  <47.686325, 34.722347, 36.272385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.918427, 34.665588, 36.294930>,  <48.305260, 34.570992, 36.332500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.918427, 34.665588, 36.294930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179581, 0.372777, -0.910378,
		-0.180280, -0.897279, -0.402975,
		-0.967083, 0.236490, -0.093930,
		47.628300, 34.736534, 36.266750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.224091, 35.039726, 35.739250>,  <48.305260, 34.570992, 36.332500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.224091, 35.039726, 35.739250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.856796, 34.883526, 35.712891>,  <47.636417, 34.789806, 35.697075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.856796, 34.883526, 35.712891>,  <48.224091, 35.039726, 35.739250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.856796, 34.883526, 35.712891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171312, 0.541711, -0.822923,
		0.357052, -0.744351, -0.564318,
		-0.918241, -0.390501, -0.065902,
		47.581326, 34.766376, 35.693119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.132721, 34.809811, 35.012016>,  <48.224091, 35.039726, 35.739250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.132721, 34.809811, 35.012016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.820644, 34.922039, 35.235653>,  <47.633400, 34.989376, 35.369835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.820644, 34.922039, 35.235653>,  <48.132721, 34.809811, 35.012016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.820644, 34.922039, 35.235653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204211, 0.730568, -0.651589,
		-0.591273, -0.622535, -0.512685,
		-0.780188, 0.280571, 0.559094,
		47.586586, 35.006210, 35.403381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.511189, 34.253464, 57.244122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.749746, 34.574512, 57.248413>,  <30.892881, 34.767139, 57.250988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.749746, 34.574512, 57.248413>,  <30.511189, 34.253464, 57.244122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749746, 34.574512, 57.248413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377332, -0.268531, -0.886291,
		-0.708472, 0.532630, -0.463004,
		0.596396, 0.802618, 0.010732,
		30.928665, 34.815296, 57.251633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361481, 34.780247, 56.643169>,  <30.511189, 34.253464, 57.244122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361481, 34.780247, 56.643169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.743641, 34.800476, 56.759552>,  <30.972937, 34.812614, 56.829380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.743641, 34.800476, 56.759552>,  <30.361481, 34.780247, 56.643169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743641, 34.800476, 56.759552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289857, -0.349171, -0.891102,
		0.056527, 0.935693, -0.348257,
		0.955399, 0.050573, 0.290955,
		31.030260, 34.815647, 56.846840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622211, 35.036690, 56.033226>,  <30.361481, 34.780247, 56.643169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622211, 35.036690, 56.033226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.922884, 34.896431, 56.256660>,  <31.103287, 34.812275, 56.390720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.922884, 34.896431, 56.256660>,  <30.622211, 35.036690, 56.033226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922884, 34.896431, 56.256660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451479, -0.343826, -0.823377,
		0.480772, 0.871109, -0.100138,
		0.751681, -0.350647, 0.558589,
		31.148388, 34.791237, 56.424236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234413, 35.314430, 55.811592>,  <30.622211, 35.036690, 56.033226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234413, 35.314430, 55.811592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.411537, 35.014709, 56.008556>,  <31.517811, 34.834877, 56.126736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.411537, 35.014709, 56.008556>,  <31.234413, 35.314430, 55.811592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411537, 35.014709, 56.008556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541378, -0.214339, -0.813000,
		0.714723, 0.626586, 0.310743,
		0.442810, -0.749299, 0.492413,
		31.544380, 34.789921, 56.156281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008949, 35.333958, 55.686932>,  <31.234413, 35.314430, 55.811592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008949, 35.333958, 55.686932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.945538, 34.953121, 55.791534>,  <31.907492, 34.724617, 55.854298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.945538, 34.953121, 55.791534>,  <32.008949, 35.333958, 55.686932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945538, 34.953121, 55.791534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618000, -0.302244, -0.725758,
		0.770029, 0.046561, 0.636308,
		-0.158528, -0.952093, 0.261511,
		31.897980, 34.667492, 55.869987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701050, 34.960686, 55.788540>,  <32.008949, 35.333958, 55.686932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701050, 34.960686, 55.788540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.431553, 34.673737, 55.717606>,  <32.269855, 34.501568, 55.675045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.431553, 34.673737, 55.717606>,  <32.701050, 34.960686, 55.788540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431553, 34.673737, 55.717606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599487, -0.390280, -0.698782,
		0.432078, -0.577108, 0.693004,
		-0.673738, -0.717376, -0.177337,
		32.229431, 34.458523, 55.664406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126068, 34.338196, 55.753380>,  <32.701050, 34.960686, 55.788540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126068, 34.338196, 55.753380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.766411, 34.263908, 55.594856>,  <32.550617, 34.219337, 55.499744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.766411, 34.263908, 55.594856>,  <33.126068, 34.338196, 55.753380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766411, 34.263908, 55.594856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430490, -0.538559, -0.724316,
		-0.078914, -0.821865, 0.564190,
		-0.899139, -0.185720, -0.396304,
		32.496670, 34.208191, 55.475964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135616, 33.632946, 55.584557>,  <33.126068, 34.338196, 55.753380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135616, 33.632946, 55.584557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.835640, 33.752392, 55.348450>,  <32.655655, 33.824059, 55.206783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.835640, 33.752392, 55.348450>,  <33.135616, 33.632946, 55.584557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835640, 33.752392, 55.348450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500949, -0.326386, -0.801575,
		-0.432021, -0.896827, 0.095177,
		-0.749938, 0.298619, -0.590270,
		32.610657, 33.841976, 55.171368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948231, 33.059998, 55.120529>,  <33.135616, 33.632946, 55.584557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948231, 33.059998, 55.120529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.823933, 33.391964, 54.935196>,  <32.749355, 33.591145, 54.823994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.823933, 33.391964, 54.935196>,  <32.948231, 33.059998, 55.120529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823933, 33.391964, 54.935196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334610, -0.360749, -0.870572,
		-0.889649, -0.425561, -0.165598,
		-0.310742, 0.829915, -0.463337,
		32.730709, 33.640938, 54.796196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653198, 32.864334, 54.526386>,  <32.948231, 33.059998, 55.120529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653198, 32.864334, 54.526386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.723717, 33.242176, 54.415649>,  <32.766029, 33.468880, 54.349205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.723717, 33.242176, 54.415649>,  <32.653198, 32.864334, 54.526386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723717, 33.242176, 54.415649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324008, -0.321265, -0.889836,
		-0.929483, 0.067176, -0.362697,
		0.176298, 0.944604, -0.276845,
		32.776608, 33.525558, 54.332596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283531, 33.024944, 53.861301>,  <32.653198, 32.864334, 54.526386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283531, 33.024944, 53.861301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.592197, 33.278912, 53.876366>,  <32.777397, 33.431290, 53.885406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.592197, 33.278912, 53.876366>,  <32.283531, 33.024944, 53.861301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592197, 33.278912, 53.876366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169589, -0.148319, -0.974290,
		-0.613004, 0.758212, -0.222127,
		0.771664, 0.634914, 0.037664,
		32.823696, 33.469387, 53.887665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244682, 33.470985, 53.221561>,  <32.283531, 33.024944, 53.861301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244682, 33.470985, 53.221561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.625824, 33.484013, 53.342232>,  <32.854507, 33.491829, 53.414635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.625824, 33.484013, 53.342232>,  <32.244682, 33.470985, 53.221561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625824, 33.484013, 53.342232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298740, 0.073382, -0.951509,
		-0.053131, 0.996772, 0.060192,
		0.952854, 0.032572, 0.301674,
		32.911682, 33.493786, 53.432735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458221, 34.172478, 52.881279>,  <32.244682, 33.470985, 53.221561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458221, 34.172478, 52.881279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.786137, 33.967430, 52.983395>,  <32.982883, 33.844402, 53.044662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.786137, 33.967430, 52.983395>,  <32.458221, 34.172478, 52.881279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786137, 33.967430, 52.983395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356231, 0.107437, -0.928201,
		0.448386, 0.851868, 0.270687,
		0.819786, -0.512619, 0.255289,
		33.032074, 33.813644, 53.059982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920734, 34.531384, 52.540104>,  <32.458221, 34.172478, 52.881279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920734, 34.531384, 52.540104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.085144, 34.176342, 52.623260>,  <33.183788, 33.963318, 52.673153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.085144, 34.176342, 52.623260>,  <32.920734, 34.531384, 52.540104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085144, 34.176342, 52.623260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297118, -0.085160, -0.951036,
		0.861849, 0.452662, 0.228721,
		0.411020, -0.887606, 0.207889,
		33.208450, 33.910061, 52.685627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350239, 34.514915, 52.039734>,  <32.920734, 34.531384, 52.540104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350239, 34.514915, 52.039734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.334663, 34.137093, 52.170147>,  <33.325317, 33.910400, 52.248394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.334663, 34.137093, 52.170147>,  <33.350239, 34.514915, 52.039734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334663, 34.137093, 52.170147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212984, -0.326629, -0.920843,
		0.976280, 0.033588, 0.213893,
		-0.038934, -0.944556, 0.326035,
		33.322983, 33.853725, 52.267956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084431, 34.233253, 51.924778>,  <33.350239, 34.514915, 52.039734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084431, 34.233253, 51.924778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816261, 33.937134, 51.944710>,  <33.655357, 33.759460, 51.956669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816261, 33.937134, 51.944710>,  <34.084431, 34.233253, 51.924778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816261, 33.937134, 51.944710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303489, -0.334891, -0.892044,
		0.677068, -0.582928, 0.449193,
		-0.670428, -0.740300, 0.049831,
		33.615131, 33.715042, 51.959660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426334, 33.698860, 51.612198>,  <34.084431, 34.233253, 51.924778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426334, 33.698860, 51.612198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.051888, 33.558205, 51.609623>,  <33.827221, 33.473812, 51.608078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.051888, 33.558205, 51.609623>,  <34.426334, 33.698860, 51.612198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051888, 33.558205, 51.609623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166733, -0.427617, -0.888450,
		0.309659, -0.832765, 0.458928,
		-0.936115, -0.351635, -0.006434,
		33.771053, 33.452713, 51.607693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518211, 33.033707, 51.489079>,  <34.426334, 33.698860, 51.612198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518211, 33.033707, 51.489079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.143368, 33.119923, 51.379272>,  <33.918461, 33.171654, 51.313389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.143368, 33.119923, 51.379272>,  <34.518211, 33.033707, 51.489079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143368, 33.119923, 51.379272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164292, -0.421527, -0.891809,
		-0.307939, -0.880827, 0.359607,
		-0.937113, 0.215542, -0.274518,
		33.862232, 33.184586, 51.296917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397678, 32.475670, 51.122322>,  <34.518211, 33.033707, 51.489079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397678, 32.475670, 51.122322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.092979, 32.714809, 51.022465>,  <33.910160, 32.858292, 50.962551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.092979, 32.714809, 51.022465>,  <34.397678, 32.475670, 51.122322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092979, 32.714809, 51.022465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012703, -0.371473, -0.928357,
		-0.647753, -0.710342, 0.275373,
		-0.761745, 0.597848, -0.249646,
		33.864456, 32.894165, 50.947571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780994, 32.136219, 50.814148>,  <34.397678, 32.475670, 51.122322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780994, 32.136219, 50.814148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.751030, 32.496086, 50.642109>,  <33.733051, 32.712006, 50.538887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.751030, 32.496086, 50.642109>,  <33.780994, 32.136219, 50.814148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751030, 32.496086, 50.642109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158538, -0.415078, -0.895866,
		-0.984507, -0.135298, -0.111538,
		-0.074912, 0.899669, -0.430097,
		33.728558, 32.765987, 50.513081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451740, 31.964933, 50.249458>,  <33.780994, 32.136219, 50.814148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451740, 31.964933, 50.249458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.605389, 32.322651, 50.157639>,  <33.697578, 32.537281, 50.102547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.605389, 32.322651, 50.157639>,  <33.451740, 31.964933, 50.249458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605389, 32.322651, 50.157639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206081, -0.325396, -0.922848,
		-0.899989, 0.307181, -0.309288,
		0.384122, 0.894291, -0.229548,
		33.720627, 32.590939, 50.088776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073490, 32.274082, 49.708778>,  <33.451740, 31.964933, 50.249458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073490, 32.274082, 49.708778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.446991, 32.416435, 49.693508>,  <33.671093, 32.501846, 49.684345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.446991, 32.416435, 49.693508>,  <33.073490, 32.274082, 49.708778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446991, 32.416435, 49.693508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093506, -0.345493, -0.933751,
		-0.345493, 0.868322, -0.355882,
		0.933751, 0.355882, -0.038172,
		33.727116, 32.523201, 49.682056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433369, 32.016678, 49.421059>,  <33.073490, 32.274082, 49.708778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433369, 32.016678, 49.421059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.118824, 31.925430, 49.191418>,  <31.930096, 31.870680, 49.053635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.118824, 31.925430, 49.191418>,  <32.433369, 32.016678, 49.421059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118824, 31.925430, 49.191418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616219, 0.355292, 0.702881,
		0.043629, 0.906492, -0.419964,
		-0.786366, -0.228123, -0.574098,
		31.882914, 31.856993, 49.019188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943857, 32.565739, 49.434441>,  <32.433369, 32.016678, 49.421059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943857, 32.565739, 49.434441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.746847, 32.233978, 49.328972>,  <31.628641, 32.034924, 49.265690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.746847, 32.233978, 49.328972>,  <31.943857, 32.565739, 49.434441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746847, 32.233978, 49.328972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744529, 0.244666, 0.621141,
		-0.450661, 0.502236, -0.738014,
		-0.492525, -0.829396, -0.263668,
		31.599089, 31.985159, 49.249870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273563, 32.797657, 49.377113>,  <31.943857, 32.565739, 49.434441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273563, 32.797657, 49.377113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.259634, 32.405380, 49.454082>,  <31.251276, 32.170013, 49.500263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.259634, 32.405380, 49.454082>,  <31.273563, 32.797657, 49.377113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259634, 32.405380, 49.454082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637440, 0.170088, 0.751492,
		-0.769713, -0.096493, -0.631056,
		-0.034821, -0.980693, 0.192427,
		31.249187, 32.111172, 49.511810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559437, 32.582134, 49.360229>,  <31.273563, 32.797657, 49.377113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559437, 32.582134, 49.360229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.761887, 32.315186, 49.578751>,  <30.883356, 32.155014, 49.709866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.761887, 32.315186, 49.578751>,  <30.559437, 32.582134, 49.360229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761887, 32.315186, 49.578751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643799, 0.129150, 0.754217,
		-0.573901, -0.733439, -0.364289,
		0.506124, -0.667374, 0.546306,
		30.913723, 32.114975, 49.742641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077595, 32.146378, 49.745430>,  <30.559437, 32.582134, 49.360229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077595, 32.146378, 49.745430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.407751, 32.073151, 49.959053>,  <30.605844, 32.029213, 50.087227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.407751, 32.073151, 49.959053>,  <30.077595, 32.146378, 49.745430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407751, 32.073151, 49.959053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556586, -0.105420, 0.824074,
		-0.094547, -0.977435, -0.188896,
		0.825392, -0.183051, 0.534060,
		30.655369, 32.018230, 50.119270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876833, 31.672777, 50.183514>,  <30.077595, 32.146378, 49.745430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876833, 31.672777, 50.183514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.220434, 31.802999, 50.341568>,  <30.426596, 31.881132, 50.436401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.220434, 31.802999, 50.341568>,  <29.876833, 31.672777, 50.183514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220434, 31.802999, 50.341568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336708, -0.222156, 0.915027,
		0.385672, -0.919055, -0.081216,
		0.859002, 0.325554, 0.395132,
		30.478134, 31.900665, 50.460106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144651, 31.115143, 50.621323>,  <29.876833, 31.672777, 50.183514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144651, 31.115143, 50.621323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.285433, 31.468224, 50.745884>,  <30.369902, 31.680071, 50.820621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.285433, 31.468224, 50.745884>,  <30.144651, 31.115143, 50.621323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285433, 31.468224, 50.745884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460123, -0.126558, 0.878789,
		0.815117, -0.452575, 0.361609,
		0.351953, 0.882700, 0.311399,
		30.391018, 31.733034, 50.839302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252861, 31.035704, 51.288059>,  <30.144651, 31.115143, 50.621323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252861, 31.035704, 51.288059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.234409, 31.435270, 51.290596>,  <30.223337, 31.675011, 51.292118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.234409, 31.435270, 51.290596>,  <30.252861, 31.035704, 51.288059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234409, 31.435270, 51.290596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598844, -0.032733, 0.800197,
		0.799536, 0.033117, 0.599704,
		-0.046130, 0.998915, 0.006339,
		30.220570, 31.734945, 51.292500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354095, 31.165545, 51.892666>,  <30.252861, 31.035704, 51.288059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354095, 31.165545, 51.892666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.205111, 31.527500, 51.810257>,  <30.115719, 31.744675, 51.760811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.205111, 31.527500, 51.810257>,  <30.354095, 31.165545, 51.892666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205111, 31.527500, 51.810257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210821, 0.133687, 0.968340,
		0.903784, 0.404104, 0.140976,
		-0.372464, 0.904891, -0.206018,
		30.093372, 31.798967, 51.748451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668928, 31.595734, 52.401375>,  <30.354095, 31.165545, 51.892666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668928, 31.595734, 52.401375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.348446, 31.792845, 52.265587>,  <30.156157, 31.911112, 52.184113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.348446, 31.792845, 52.265587>,  <30.668928, 31.595734, 52.401375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348446, 31.792845, 52.265587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203793, 0.308693, 0.929073,
		0.562618, 0.813560, -0.146902,
		-0.801205, 0.492776, -0.339474,
		30.108084, 31.940678, 52.163746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691784, 32.193890, 52.845451>,  <30.668928, 31.595734, 52.401375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691784, 32.193890, 52.845451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.332727, 32.232941, 52.673538>,  <30.117294, 32.256371, 52.570393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.332727, 32.232941, 52.673538>,  <30.691784, 32.193890, 52.845451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332727, 32.232941, 52.673538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218535, 0.748242, 0.626400,
		0.382734, 0.656203, -0.650317,
		-0.897640, 0.097628, -0.429781,
		30.063435, 32.262230, 52.544605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666882, 32.868359, 52.870163>,  <30.691784, 32.193890, 52.845451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666882, 32.868359, 52.870163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.306017, 32.700817, 52.828846>,  <30.089499, 32.600292, 52.804054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.306017, 32.700817, 52.828846>,  <30.666882, 32.868359, 52.870163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306017, 32.700817, 52.828846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355575, 0.586376, 0.727825,
		-0.244285, 0.693342, -0.677939,
		-0.902159, -0.418855, -0.103292,
		30.035370, 32.575161, 52.797859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104723, 33.361492, 53.066494>,  <30.666882, 32.868359, 52.870163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104723, 33.361492, 53.066494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.892832, 33.022224, 53.067097>,  <29.765697, 32.818665, 53.067459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.892832, 33.022224, 53.067097>,  <30.104723, 33.361492, 53.066494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892832, 33.022224, 53.067097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552235, 0.346252, 0.758384,
		-0.643758, 0.400904, -0.651806,
		-0.529728, -0.848166, 0.001509,
		29.733913, 32.767776, 53.067551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470907, 33.582264, 53.254116>,  <30.104723, 33.361492, 53.066494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470907, 33.582264, 53.254116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.481499, 33.194172, 53.350414>,  <29.487854, 32.961319, 53.408192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.481499, 33.194172, 53.350414>,  <29.470907, 33.582264, 53.254116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481499, 33.194172, 53.350414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350703, 0.216504, 0.911117,
		-0.936113, -0.108553, -0.334529,
		0.026478, -0.970228, 0.240742,
		29.489443, 32.903103, 53.422638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847548, 33.464176, 53.594234>,  <29.470907, 33.582264, 53.254116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847548, 33.464176, 53.594234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.107496, 33.184147, 53.712601>,  <29.263466, 33.016129, 53.783623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.107496, 33.184147, 53.712601>,  <28.847548, 33.464176, 53.594234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107496, 33.184147, 53.712601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176741, 0.239476, 0.954680,
		-0.739208, -0.672721, 0.031898,
		0.649872, -0.700070, 0.295920,
		29.302458, 32.974125, 53.801376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560009, 33.056076, 54.029221>,  <28.847548, 33.464176, 53.594234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560009, 33.056076, 54.029221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.934044, 32.982338, 54.150299>,  <29.158464, 32.938095, 54.222946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.934044, 32.982338, 54.150299>,  <28.560009, 33.056076, 54.029221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934044, 32.982338, 54.150299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271763, 0.175275, 0.946268,
		-0.227497, -0.967107, 0.113800,
		0.935089, -0.184346, 0.302698,
		29.214571, 32.927036, 54.241108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575438, 32.599720, 54.739887>,  <28.560009, 33.056076, 54.029221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575438, 32.599720, 54.739887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.926548, 32.790302, 54.719887>,  <29.137215, 32.904652, 54.707886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.926548, 32.790302, 54.719887>,  <28.575438, 32.599720, 54.739887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926548, 32.790302, 54.719887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087926, 0.262826, 0.960829,
		0.470936, -0.838995, 0.272595,
		0.877775, 0.476456, -0.050005,
		29.189880, 32.933239, 54.704884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884874, 32.361462, 55.316944>,  <28.575438, 32.599720, 54.739887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884874, 32.361462, 55.316944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.090738, 32.684032, 55.200462>,  <29.214256, 32.877575, 55.130573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.090738, 32.684032, 55.200462>,  <28.884874, 32.361462, 55.316944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090738, 32.684032, 55.200462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064295, 0.302387, 0.951015,
		0.854982, -0.508170, 0.103777,
		0.514658, 0.806427, -0.291208,
		29.245136, 32.925961, 55.113102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.452223, 32.536884, 55.873268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423893, 32.879673, 55.669079>,  <29.406895, 33.085346, 55.546566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423893, 32.879673, 55.669079>,  <29.452223, 32.536884, 55.873268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423893, 32.879673, 55.669079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077374, 0.514938, 0.853728,
		0.994484, 0.020966, -0.102777,
		-0.070823, 0.856971, -0.510475,
		29.402647, 33.136765, 55.515938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966227, 33.045094, 56.123390>,  <29.452223, 32.536884, 55.873268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966227, 33.045094, 56.123390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676640, 33.257141, 55.946823>,  <29.502888, 33.384369, 55.840885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676640, 33.257141, 55.946823>,  <29.966227, 33.045094, 56.123390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676640, 33.257141, 55.946823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003899, 0.643020, 0.765839,
		0.689824, 0.552721, -0.467592,
		-0.723966, 0.530117, -0.441416,
		29.459450, 33.416176, 55.814400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925581, 33.652348, 56.624039>,  <29.966227, 33.045094, 56.123390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925581, 33.652348, 56.624039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591030, 33.676178, 56.406075>,  <29.390301, 33.690475, 56.275295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591030, 33.676178, 56.406075>,  <29.925581, 33.652348, 56.624039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591030, 33.676178, 56.406075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340229, 0.723001, 0.601260,
		0.429791, 0.688273, -0.584431,
		-0.836375, 0.059576, -0.544910,
		29.340118, 33.694050, 56.242603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793655, 34.296432, 56.487534>,  <29.925581, 33.652348, 56.624039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793655, 34.296432, 56.487534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430721, 34.143806, 56.416939>,  <29.212961, 34.052231, 56.374580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430721, 34.143806, 56.416939>,  <29.793655, 34.296432, 56.487534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430721, 34.143806, 56.416939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417649, 0.770092, 0.482211,
		-0.048086, 0.511237, -0.858093,
		-0.907335, -0.381570, -0.176487,
		29.158522, 34.029335, 56.363991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424191, 34.917610, 56.267494>,  <29.793655, 34.296432, 56.487534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424191, 34.917610, 56.267494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153925, 34.650303, 56.392010>,  <28.991766, 34.489918, 56.466721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153925, 34.650303, 56.392010>,  <29.424191, 34.917610, 56.267494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153925, 34.650303, 56.392010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524746, 0.732542, 0.433618,
		-0.517805, 0.129631, -0.845620,
		-0.675663, -0.668265, 0.311290,
		28.951225, 34.449821, 56.485397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843788, 35.262459, 56.271564>,  <29.424191, 34.917610, 56.267494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843788, 35.262459, 56.271564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784702, 34.948246, 56.511940>,  <28.749250, 34.759720, 56.656166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784702, 34.948246, 56.511940>,  <28.843788, 35.262459, 56.271564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784702, 34.948246, 56.511940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619172, 0.547251, 0.563154,
		-0.771237, -0.288895, -0.567215,
		-0.147717, -0.785529, 0.600936,
		28.740387, 34.712585, 56.692223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113865, 35.322868, 56.459270>,  <28.843788, 35.262459, 56.271564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113865, 35.322868, 56.459270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245888, 35.053188, 56.723549>,  <28.325102, 34.891380, 56.882114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245888, 35.053188, 56.723549>,  <28.113865, 35.322868, 56.459270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245888, 35.053188, 56.723549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783772, 0.194346, 0.589857,
		-0.526083, -0.712523, -0.464272,
		0.330057, -0.674197, 0.660697,
		28.344906, 34.850929, 56.921757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471573, 35.108757, 56.694706>,  <28.113865, 35.322868, 56.459270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471573, 35.108757, 56.694706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737835, 35.030865, 56.982868>,  <27.897593, 34.984127, 57.155766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737835, 35.030865, 56.982868>,  <27.471573, 35.108757, 56.694706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737835, 35.030865, 56.982868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666246, 0.279814, 0.691246,
		-0.336189, -0.940097, 0.056518,
		0.665653, -0.194734, 0.720406,
		27.937531, 34.972443, 57.198990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118793, 34.767136, 57.351982>,  <27.471573, 35.108757, 56.694706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118793, 34.767136, 57.351982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455681, 34.943432, 57.476181>,  <27.657814, 35.049210, 57.550701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455681, 34.943432, 57.476181>,  <27.118793, 34.767136, 57.351982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455681, 34.943432, 57.476181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502629, 0.433578, 0.747914,
		0.195010, -0.785975, 0.586697,
		0.842221, 0.440742, 0.310502,
		27.708347, 35.075653, 57.569332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124882, 34.685879, 58.144726>,  <27.118793, 34.767136, 57.351982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124882, 34.685879, 58.144726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378298, 34.982964, 58.058002>,  <27.530348, 35.161213, 58.005966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378298, 34.982964, 58.058002>,  <27.124882, 34.685879, 58.144726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378298, 34.982964, 58.058002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364397, 0.533625, 0.763190,
		0.682527, -0.404504, 0.608714,
		0.633539, 0.742712, -0.216813,
		27.568359, 35.205776, 57.992958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407724, 34.878738, 58.821095>,  <27.124882, 34.685879, 58.144726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407724, 34.878738, 58.821095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468050, 35.176846, 58.561302>,  <27.504246, 35.355709, 58.405426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468050, 35.176846, 58.561302>,  <27.407724, 34.878738, 58.821095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468050, 35.176846, 58.561302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290958, 0.661358, 0.691338,
		0.944775, 0.084709, 0.316583,
		0.150812, 0.745271, -0.649481,
		27.513294, 35.400429, 58.366459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583443, 35.514996, 59.248466>,  <27.407724, 34.878738, 58.821095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583443, 35.514996, 59.248466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504852, 35.670429, 58.888378>,  <27.457699, 35.763687, 58.672325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504852, 35.670429, 58.888378>,  <27.583443, 35.514996, 59.248466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504852, 35.670429, 58.888378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410327, 0.801274, 0.435422,
		0.890522, 0.454935, 0.002015,
		-0.196474, 0.388580, -0.900224,
		27.445910, 35.787003, 58.618309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401369, 36.261635, 59.417034>,  <27.583443, 35.514996, 59.248466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401369, 36.261635, 59.417034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301495, 36.247677, 59.029957>,  <27.241570, 36.239304, 58.797710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301495, 36.247677, 59.029957>,  <27.401369, 36.261635, 59.417034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301495, 36.247677, 59.029957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460889, 0.883175, 0.087076,
		0.851609, 0.467743, -0.236599,
		-0.249687, -0.034891, -0.967698,
		27.226589, 36.237209, 58.739647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699215, 36.741737, 59.020702>,  <27.401369, 36.261635, 59.417034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699215, 36.741737, 59.020702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340492, 36.634968, 58.879570>,  <27.125259, 36.570908, 58.794891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340492, 36.634968, 58.879570>,  <27.699215, 36.741737, 59.020702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340492, 36.634968, 58.879570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367145, 0.893993, 0.256867,
		0.246862, 0.359899, -0.899740,
		-0.896807, -0.266925, -0.352828,
		27.071449, 36.554890, 58.773720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368454, 37.438259, 58.783577>,  <27.699215, 36.741737, 59.020702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368454, 37.438259, 58.783577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057022, 37.188480, 58.808517>,  <26.870163, 37.038612, 58.823483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057022, 37.188480, 58.808517>,  <27.368454, 37.438259, 58.783577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057022, 37.188480, 58.808517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604655, 0.773055, 0.191778,
		-0.167957, 0.111612, -0.979456,
		-0.778578, -0.624443, 0.062353,
		26.823448, 37.001148, 58.827225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940804, 37.744041, 58.381622>,  <27.368454, 37.438259, 58.783577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940804, 37.744041, 58.381622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698326, 37.507259, 58.594078>,  <26.552839, 37.365189, 58.721554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698326, 37.507259, 58.594078>,  <26.940804, 37.744041, 58.381622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698326, 37.507259, 58.594078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589034, 0.782898, 0.200276,
		-0.534386, -0.191455, -0.823272,
		-0.606193, -0.591959, 0.531143,
		26.516468, 37.329670, 58.753422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337927, 37.866066, 58.075630>,  <26.940804, 37.744041, 58.381622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337927, 37.866066, 58.075630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233889, 37.704121, 58.426273>,  <26.171465, 37.606953, 58.636658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233889, 37.704121, 58.426273>,  <26.337927, 37.866066, 58.075630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233889, 37.704121, 58.426273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709758, 0.695690, 0.110716,
		-0.654670, -0.593381, -0.468302,
		-0.260096, -0.404863, 0.876605,
		26.155859, 37.582661, 58.689255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656076, 37.621964, 58.032986>,  <26.337927, 37.866066, 58.075630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656076, 37.621964, 58.032986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719852, 37.673550, 58.424484>,  <25.758118, 37.704502, 58.659382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719852, 37.673550, 58.424484>,  <25.656076, 37.621964, 58.032986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719852, 37.673550, 58.424484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739226, 0.672707, 0.031782,
		-0.654312, -0.728582, 0.202592,
		0.159441, 0.128966, 0.978747,
		25.767685, 37.712238, 58.718109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030474, 37.831772, 58.225391>,  <25.656076, 37.621964, 58.032986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030474, 37.831772, 58.225391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248743, 37.930389, 58.545757>,  <25.379705, 37.989559, 58.737976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248743, 37.930389, 58.545757>,  <25.030474, 37.831772, 58.225391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248743, 37.930389, 58.545757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639616, 0.740023, 0.207983,
		-0.541416, -0.625766, 0.561502,
		0.545674, 0.246540, 0.800911,
		25.412445, 38.004353, 58.786030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582954, 37.947521, 58.674469>,  <25.030474, 37.831772, 58.225391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582954, 37.947521, 58.674469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879976, 38.136074, 58.864799>,  <25.058189, 38.249207, 58.978996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879976, 38.136074, 58.864799>,  <24.582954, 37.947521, 58.674469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879976, 38.136074, 58.864799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630848, 0.730910, 0.260386,
		-0.225044, -0.493525, 0.840112,
		0.742553, 0.471385, 0.475826,
		25.102743, 38.277489, 59.007549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.306526, 38.323643, 59.319000>,  <24.582954, 37.947521, 58.674469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.306526, 38.323643, 59.319000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654892, 38.494743, 59.222229>,  <24.863913, 38.597404, 59.164165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654892, 38.494743, 59.222229>,  <24.306526, 38.323643, 59.319000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.654892, 38.494743, 59.222229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370902, 0.895104, 0.247427,
		0.322392, -0.125755, 0.938216,
		0.870916, 0.427755, -0.241932,
		24.916166, 38.623070, 59.149651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523783, 38.644218, 59.924152>,  <24.306526, 38.323643, 59.319000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523783, 38.644218, 59.924152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696611, 38.794800, 59.596348>,  <24.800308, 38.885147, 59.399666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696611, 38.794800, 59.596348>,  <24.523783, 38.644218, 59.924152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.696611, 38.794800, 59.596348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564966, 0.821285, 0.079399,
		0.702941, 0.428690, 0.567537,
		0.432072, 0.376452, -0.819510,
		24.826233, 38.907734, 59.350494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718798, 39.266750, 60.073418>,  <24.523783, 38.644218, 59.924152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718798, 39.266750, 60.073418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659685, 39.255493, 59.677971>,  <24.624218, 39.248737, 59.440701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659685, 39.255493, 59.677971>,  <24.718798, 39.266750, 60.073418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659685, 39.255493, 59.677971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580742, 0.811592, 0.063702,
		0.800563, 0.583547, -0.136283,
		-0.147779, -0.028148, -0.988620,
		24.615351, 39.247047, 59.381386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870930, 39.317734, 60.795033>,  <24.718798, 39.266750, 60.073418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870930, 39.317734, 60.795033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161283, 39.570496, 60.903687>,  <25.335495, 39.722153, 60.968880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161283, 39.570496, 60.903687>,  <24.870930, 39.317734, 60.795033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161283, 39.570496, 60.903687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683319, -0.707610, -0.179898,
		0.078532, 0.316198, -0.945437,
		0.725884, 0.631908, 0.271634,
		25.379049, 39.760067, 60.985176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434160, 38.995522, 60.437897>,  <24.870930, 39.317734, 60.795033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434160, 38.995522, 60.437897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635216, 39.259621, 60.661118>,  <25.755850, 39.418079, 60.795052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635216, 39.259621, 60.661118>,  <25.434160, 38.995522, 60.437897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635216, 39.259621, 60.661118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849352, -0.497461, -0.176450,
		0.161109, 0.562675, -0.810827,
		0.502639, 0.660250, 0.558054,
		25.786007, 39.457695, 60.828533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955555, 39.124355, 59.998547>,  <25.434160, 38.995522, 60.437897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955555, 39.124355, 59.998547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112097, 39.227230, 60.351974>,  <26.206022, 39.288956, 60.564030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112097, 39.227230, 60.351974>,  <25.955555, 39.124355, 59.998547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112097, 39.227230, 60.351974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837587, -0.497250, -0.226252,
		0.381167, 0.828612, -0.410016,
		0.391356, 0.257184, 0.883570,
		26.229504, 39.304386, 60.617046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572258, 39.453854, 59.845795>,  <25.955555, 39.124355, 59.998547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572258, 39.453854, 59.845795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597340, 39.343300, 60.229393>,  <26.612389, 39.276966, 60.459553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597340, 39.343300, 60.229393>,  <26.572258, 39.453854, 59.845795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597340, 39.343300, 60.229393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980734, -0.161065, -0.110543,
		0.185014, 0.947454, 0.260963,
		0.062702, -0.276387, 0.958999,
		26.616150, 39.260384, 60.517094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191261, 39.630852, 60.007881>,  <26.572258, 39.453854, 59.845795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191261, 39.630852, 60.007881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107721, 39.365009, 60.294846>,  <27.057596, 39.205505, 60.467026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107721, 39.365009, 60.294846>,  <27.191261, 39.630852, 60.007881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107721, 39.365009, 60.294846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906936, -0.406066, -0.112149,
		0.365852, 0.627226, 0.687560,
		-0.208852, -0.664603, 0.717414,
		27.045065, 39.165627, 60.510071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862896, 39.621532, 60.386497>,  <27.191261, 39.630852, 60.007881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862896, 39.621532, 60.386497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659323, 39.289474, 60.477573>,  <27.537180, 39.090240, 60.532219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659323, 39.289474, 60.477573>,  <27.862896, 39.621532, 60.386497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659323, 39.289474, 60.477573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840346, -0.536467, -0.077598,
		0.186567, 0.151848, 0.970636,
		-0.508932, -0.830148, 0.227692,
		27.506643, 39.040432, 60.545879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307077, 39.250790, 60.711765>,  <27.862896, 39.621532, 60.386497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307077, 39.250790, 60.711765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041655, 38.954075, 60.672894>,  <27.882401, 38.776047, 60.649570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041655, 38.954075, 60.672894>,  <28.307077, 39.250790, 60.711765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041655, 38.954075, 60.672894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726011, -0.607135, -0.322948,
		0.180559, -0.284846, 0.941414,
		-0.663556, -0.741788, -0.097178,
		27.842588, 38.731537, 60.643742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531912, 38.631630, 61.157539>,  <28.307077, 39.250790, 60.711765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531912, 38.631630, 61.157539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321157, 38.497097, 60.845318>,  <28.194704, 38.416378, 60.657982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321157, 38.497097, 60.845318>,  <28.531912, 38.631630, 61.157539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321157, 38.497097, 60.845318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803818, -0.495586, -0.329045,
		-0.276165, -0.800797, 0.531467,
		-0.526886, -0.336332, -0.780558,
		28.163092, 38.396198, 60.611149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760397, 37.922119, 61.067478>,  <28.531912, 38.631630, 61.157539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760397, 37.922119, 61.067478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593964, 38.023705, 60.718224>,  <28.494102, 38.084656, 60.508671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593964, 38.023705, 60.718224>,  <28.760397, 37.922119, 61.067478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593964, 38.023705, 60.718224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583362, -0.662019, -0.470552,
		-0.697540, -0.705147, 0.127302,
		-0.416085, 0.253966, -0.873141,
		28.469139, 38.099895, 60.456280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642309, 37.259510, 60.681206>,  <28.760397, 37.922119, 61.067478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642309, 37.259510, 60.681206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618666, 37.516605, 60.375687>,  <28.604479, 37.670864, 60.192375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618666, 37.516605, 60.375687>,  <28.642309, 37.259510, 60.681206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618666, 37.516605, 60.375687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465411, -0.659148, -0.590692,
		-0.883119, -0.390397, -0.260176,
		-0.059109, 0.642740, -0.763801,
		28.600933, 37.709427, 60.146545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434488, 36.815468, 60.115883>,  <28.642309, 37.259510, 60.681206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434488, 36.815468, 60.115883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587032, 37.136635, 59.932625>,  <28.678558, 37.329334, 59.822670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587032, 37.136635, 59.932625>,  <28.434488, 36.815468, 60.115883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587032, 37.136635, 59.932625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450601, -0.594189, -0.666257,
		-0.807170, 0.047643, -0.588393,
		0.381359, 0.802913, -0.458144,
		28.701441, 37.377510, 59.795181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316463, 36.743603, 59.467564>,  <28.434488, 36.815468, 60.115883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316463, 36.743603, 59.467564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628885, 36.992939, 59.482521>,  <28.816338, 37.142540, 59.491497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628885, 36.992939, 59.482521>,  <28.316463, 36.743603, 59.467564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628885, 36.992939, 59.482521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464662, -0.540132, -0.701674,
		-0.417185, 0.565422, -0.711516,
		0.781055, 0.623342, 0.037395,
		28.863201, 37.179943, 59.493740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468357, 36.791100, 58.817909>,  <28.316463, 36.743603, 59.467564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468357, 36.791100, 58.817909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792332, 36.909111, 59.020676>,  <28.986717, 36.979916, 59.142334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792332, 36.909111, 59.020676>,  <28.468357, 36.791100, 58.817909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792332, 36.909111, 59.020676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577879, -0.549189, -0.603695,
		0.100287, 0.781890, -0.615297,
		0.809937, 0.295025, 0.506914,
		29.035313, 36.997620, 59.172749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943287, 36.899986, 58.262379>,  <28.468357, 36.791100, 58.817909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943287, 36.899986, 58.262379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160803, 36.868889, 58.596626>,  <29.291311, 36.850231, 58.797173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160803, 36.868889, 58.596626>,  <28.943287, 36.899986, 58.262379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160803, 36.868889, 58.596626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701593, -0.504254, -0.503483,
		0.460503, 0.860049, -0.219666,
		0.543788, -0.077739, 0.835615,
		29.323938, 36.845566, 58.847309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679571, 37.079094, 58.094624>,  <28.943287, 36.899986, 58.262379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679571, 37.079094, 58.094624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670965, 36.839985, 58.415176>,  <29.665802, 36.696522, 58.607506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670965, 36.839985, 58.415176>,  <29.679571, 37.079094, 58.094624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670965, 36.839985, 58.415176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669238, -0.604101, -0.432645,
		0.742736, 0.527005, 0.413048,
		-0.021517, -0.597769, 0.801380,
		29.664511, 36.660656, 58.655590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371784, 36.921577, 58.252644>,  <29.679571, 37.079094, 58.094624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371784, 36.921577, 58.252644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151140, 36.643383, 58.436832>,  <30.018753, 36.476467, 58.547344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151140, 36.643383, 58.436832>,  <30.371784, 36.921577, 58.252644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151140, 36.643383, 58.436832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638557, -0.707281, -0.303314,
		0.536630, 0.126725, 0.834248,
		-0.551610, -0.695482, 0.460469,
		29.985657, 36.434738, 58.574974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843658, 36.535797, 58.569901>,  <30.371784, 36.921577, 58.252644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843658, 36.535797, 58.569901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519558, 36.308865, 58.511066>,  <30.325098, 36.172707, 58.475765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519558, 36.308865, 58.511066>,  <30.843658, 36.535797, 58.569901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519558, 36.308865, 58.511066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584735, -0.765513, -0.268468,
		0.039717, -0.303530, 0.951994,
		-0.810251, -0.567327, -0.147081,
		30.276482, 36.138668, 58.466942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036076, 35.892265, 58.927952>,  <30.843658, 36.535797, 58.569901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036076, 35.892265, 58.927952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732075, 35.816036, 58.679409>,  <30.549675, 35.770298, 58.530285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732075, 35.816036, 58.679409>,  <31.036076, 35.892265, 58.927952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732075, 35.816036, 58.679409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408461, -0.883692, -0.228577,
		-0.505527, -0.427519, 0.749446,
		-0.760001, -0.190568, -0.621355,
		30.504074, 35.758865, 58.493004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230337, 35.254517, 58.878532>,  <31.036076, 35.892265, 58.927952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230337, 35.254517, 58.878532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966339, 35.299957, 58.581478>,  <30.807940, 35.327221, 58.403248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966339, 35.299957, 58.581478>,  <31.230337, 35.254517, 58.878532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966339, 35.299957, 58.581478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439771, -0.743026, -0.504494,
		-0.609103, -0.659552, 0.440437,
		-0.659996, 0.113598, -0.742631,
		30.768341, 35.334038, 58.358688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108637, 34.606831, 58.518642>,  <31.230337, 35.254517, 58.878532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108637, 34.606831, 58.518642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975500, 34.879143, 58.257641>,  <30.895618, 35.042530, 58.101040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975500, 34.879143, 58.257641>,  <31.108637, 34.606831, 58.518642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975500, 34.879143, 58.257641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325138, -0.566668, -0.757082,
		-0.885157, -0.464139, -0.032738,
		-0.332840, 0.680780, -0.652499,
		30.875648, 35.083378, 58.061890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782530, 34.188885, 57.932434>,  <31.108637, 34.606831, 58.518642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782530, 34.188885, 57.932434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868855, 34.560081, 57.810940>,  <30.920649, 34.782799, 57.738045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868855, 34.560081, 57.810940>,  <30.782530, 34.188885, 57.932434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868855, 34.560081, 57.810940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436677, -0.369952, -0.820030,
		-0.873349, 0.044338, -0.485073,
		0.215812, 0.927992, -0.303736,
		30.933598, 34.838478, 57.719818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.220337, 35.060444, 50.671268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.320560, 34.980881, 51.050247>,  <47.380695, 34.933144, 51.277634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.320560, 34.980881, 51.050247>,  <47.220337, 35.060444, 50.671268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.320560, 34.980881, 51.050247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871742, 0.379293, 0.310166,
		-0.421055, -0.903643, -0.078364,
		0.250557, -0.198910, 0.947447,
		47.395729, 34.921207, 51.334480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718510, 34.550045, 50.936199>,  <47.220337, 35.060444, 50.671268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.718510, 34.550045, 50.936199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.904697, 34.746914, 51.230438>,  <47.016411, 34.865036, 51.406982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.904697, 34.746914, 51.230438>,  <46.718510, 34.550045, 50.936199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.904697, 34.746914, 51.230438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872367, 0.395409, 0.287450,
		-0.149388, -0.775512, 0.613403,
		0.465466, 0.492171, 0.735601,
		47.044338, 34.894566, 51.451118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.270435, 34.488861, 51.581532>,  <46.718510, 34.550045, 50.936199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.270435, 34.488861, 51.581532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.502132, 34.814907, 51.584621>,  <46.641151, 35.010536, 51.586475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.502132, 34.814907, 51.584621>,  <46.270435, 34.488861, 51.581532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502132, 34.814907, 51.584621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783285, 0.553954, 0.282133,
		0.225692, -0.169475, 0.959344,
		0.579247, 0.815116, 0.007724,
		46.675907, 35.059441, 51.586937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145340, 34.682964, 52.253914>,  <46.270435, 34.488861, 51.581532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.145340, 34.682964, 52.253914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.273094, 34.988422, 52.029476>,  <46.349747, 35.171700, 51.894814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.273094, 34.988422, 52.029476>,  <46.145340, 34.682964, 52.253914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273094, 34.988422, 52.029476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892961, 0.440730, 0.091537,
		0.317194, 0.471802, 0.822673,
		0.319389, 0.763649, -0.561098,
		46.368912, 35.217518, 51.861145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940926, 35.258739, 52.639637>,  <46.145340, 34.682964, 52.253914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940926, 35.258739, 52.639637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.991333, 35.389530, 52.264999>,  <46.021576, 35.468006, 52.040218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.991333, 35.389530, 52.264999>,  <45.940926, 35.258739, 52.639637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991333, 35.389530, 52.264999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954414, 0.297472, -0.024565,
		0.270578, 0.896992, 0.349561,
		0.126019, 0.326980, -0.936592,
		46.029140, 35.487625, 51.984020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348804, 35.558640, 52.597950>,  <45.940926, 35.258739, 52.639637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348804, 35.558640, 52.597950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.482147, 35.559074, 52.220829>,  <45.562153, 35.559334, 51.994556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.482147, 35.559074, 52.220829>,  <45.348804, 35.558640, 52.597950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482147, 35.559074, 52.220829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930623, 0.160585, -0.328866,
		0.151043, 0.987021, 0.054542,
		0.333356, 0.001085, -0.942800,
		45.582153, 35.559399, 51.937988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051170, 36.193958, 52.289455>,  <45.348804, 35.558640, 52.597950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051170, 36.193958, 52.289455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.138779, 35.933121, 51.999130>,  <45.191345, 35.776619, 51.824936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.138779, 35.933121, 51.999130>,  <45.051170, 36.193958, 52.289455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138779, 35.933121, 51.999130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823869, 0.274941, -0.495629,
		0.522753, 0.706524, -0.477026,
		0.219019, -0.652099, -0.725809,
		45.204483, 35.737492, 51.781387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910091, 36.585739, 51.769516>,  <45.051170, 36.193958, 52.289455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910091, 36.585739, 51.769516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.915287, 36.215889, 51.617252>,  <44.918404, 35.993980, 51.525894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.915287, 36.215889, 51.617252>,  <44.910091, 36.585739, 51.769516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915287, 36.215889, 51.617252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878434, 0.171317, -0.446099,
		0.477687, 0.340174, -0.809998,
		0.012985, -0.924625, -0.380657,
		44.919182, 35.938503, 51.503056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604706, 36.675945, 51.054451>,  <44.910091, 36.585739, 51.769516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604706, 36.675945, 51.054451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.565765, 36.293480, 51.164921>,  <44.542400, 36.063999, 51.231201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.565765, 36.293480, 51.164921>,  <44.604706, 36.675945, 51.054451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565765, 36.293480, 51.164921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890701, -0.040104, -0.452818,
		0.444044, -0.290071, -0.847752,
		-0.097351, -0.956165, 0.276174,
		44.536560, 36.006630, 51.247772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330723, 36.349560, 50.495739>,  <44.604706, 36.675945, 51.054451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330723, 36.349560, 50.495739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.238209, 36.082470, 50.778763>,  <44.182701, 35.922215, 50.948578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.238209, 36.082470, 50.778763>,  <44.330723, 36.349560, 50.495739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238209, 36.082470, 50.778763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941012, -0.031104, -0.336941,
		0.246994, -0.743754, -0.621148,
		-0.231281, -0.667730, 0.707564,
		44.168823, 35.882153, 50.991032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933746, 35.708557, 50.264652>,  <44.330723, 36.349560, 50.495739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933746, 35.708557, 50.264652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.844162, 35.744576, 50.652824>,  <43.790413, 35.766186, 50.885727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.844162, 35.744576, 50.652824>,  <43.933746, 35.708557, 50.264652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844162, 35.744576, 50.652824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972291, 0.047828, -0.228828,
		-0.067020, -0.994788, 0.076846,
		-0.223960, 0.090053, 0.970429,
		43.776974, 35.771591, 50.943954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358192, 35.219818, 50.411209>,  <43.933746, 35.708557, 50.264652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358192, 35.219818, 50.411209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.346470, 35.476246, 50.717979>,  <43.339436, 35.630104, 50.902042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.346470, 35.476246, 50.717979>,  <43.358192, 35.219818, 50.411209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346470, 35.476246, 50.717979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986349, 0.105834, -0.126156,
		-0.162042, -0.760150, 0.629217,
		-0.029305, 0.641070, 0.766922,
		43.337677, 35.668568, 50.948055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816879, 35.091259, 50.756874>,  <43.358192, 35.219818, 50.411209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816879, 35.091259, 50.756874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.886749, 35.471508, 50.859486>,  <42.928673, 35.699657, 50.921051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.886749, 35.471508, 50.859486>,  <42.816879, 35.091259, 50.756874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886749, 35.471508, 50.859486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982308, 0.186115, -0.020806,
		-0.067523, -0.248355, 0.966313,
		0.174678, 0.950621, 0.256528,
		42.939152, 35.756695, 50.936443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370865, 35.147171, 51.299679>,  <42.816879, 35.091259, 50.756874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370865, 35.147171, 51.299679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.439739, 35.525204, 51.188560>,  <42.481064, 35.752026, 51.121891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.439739, 35.525204, 51.188560>,  <42.370865, 35.147171, 51.299679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439739, 35.525204, 51.188560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982378, 0.185559, 0.022382,
		0.072700, 0.269043, 0.960380,
		0.172186, 0.945083, -0.277792,
		42.491394, 35.808727, 51.105225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917793, 35.565861, 51.765373>,  <42.370865, 35.147171, 51.299679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917793, 35.565861, 51.765373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.031963, 35.788319, 51.453159>,  <42.100464, 35.921795, 51.265831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.031963, 35.788319, 51.453159>,  <41.917793, 35.565861, 51.765373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031963, 35.788319, 51.453159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888680, 0.458525, 0.001735,
		0.358860, 0.693150, 0.625110,
		0.285425, 0.556145, -0.780535,
		42.117592, 35.955162, 51.218998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500603, 36.057178, 51.814171>,  <41.917793, 35.565861, 51.765373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500603, 36.057178, 51.814171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.631004, 36.118042, 51.440952>,  <41.709244, 36.154560, 51.217022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.631004, 36.118042, 51.440952>,  <41.500603, 36.057178, 51.814171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631004, 36.118042, 51.440952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893875, 0.370904, -0.251831,
		0.307750, 0.916121, 0.256929,
		0.326003, 0.152162, -0.933043,
		41.728806, 36.163689, 51.161041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406422, 36.731304, 51.677418>,  <41.500603, 36.057178, 51.814171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406422, 36.731304, 51.677418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.417812, 36.536739, 51.328114>,  <41.424648, 36.419998, 51.118530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.417812, 36.536739, 51.328114>,  <41.406422, 36.731304, 51.677418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417812, 36.536739, 51.328114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956934, 0.239230, -0.164457,
		0.288906, 0.840338, -0.458656,
		0.028475, -0.486416, -0.873263,
		41.426353, 36.390816, 51.066135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123878, 37.243294, 51.191753>,  <41.406422, 36.731304, 51.677418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123878, 37.243294, 51.191753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.106041, 36.880306, 51.024651>,  <41.095337, 36.662514, 50.924389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.106041, 36.880306, 51.024651>,  <41.123878, 37.243294, 51.191753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106041, 36.880306, 51.024651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945427, 0.173445, -0.275836,
		0.322769, 0.382655, -0.865676,
		-0.044597, -0.907465, -0.417755,
		41.092663, 36.608067, 50.899323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948040, 37.385220, 50.567635>,  <41.123878, 37.243294, 51.191753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948040, 37.385220, 50.567635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.845474, 37.006184, 50.643867>,  <40.783936, 36.778763, 50.689606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.845474, 37.006184, 50.643867>,  <40.948040, 37.385220, 50.567635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845474, 37.006184, 50.643867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913810, 0.173409, -0.367261,
		0.314965, -0.268325, -0.910384,
		-0.256414, -0.947592, 0.190581,
		40.768551, 36.721905, 50.701042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619095, 37.078827, 49.976273>,  <40.948040, 37.385220, 50.567635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619095, 37.078827, 49.976273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.481178, 36.871338, 50.289204>,  <40.398426, 36.746845, 50.476963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.481178, 36.871338, 50.289204>,  <40.619095, 37.078827, 49.976273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481178, 36.871338, 50.289204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931675, 0.087499, -0.352599,
		0.114450, -0.850450, -0.513455,
		-0.344795, -0.518727, 0.782328,
		40.377739, 36.715721, 50.523903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081112, 36.680111, 49.733513>,  <40.619095, 37.078827, 49.976273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081112, 36.680111, 49.733513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.032696, 36.699818, 50.130081>,  <40.003647, 36.711643, 50.368023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.032696, 36.699818, 50.130081>,  <40.081112, 36.680111, 49.733513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032696, 36.699818, 50.130081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968387, 0.213602, -0.128844,
		-0.218118, -0.975677, 0.021861,
		-0.121041, 0.049273, 0.991424,
		39.996384, 36.714596, 50.427509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537403, 36.241737, 49.857086>,  <40.081112, 36.680111, 49.733513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537403, 36.241737, 49.857086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.584839, 36.553627, 50.103004>,  <39.613300, 36.740761, 50.250557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.584839, 36.553627, 50.103004>,  <39.537403, 36.241737, 49.857086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584839, 36.553627, 50.103004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901496, 0.344089, -0.262504,
		-0.416224, -0.523106, 0.743719,
		0.118588, 0.779720, 0.614795,
		39.620415, 36.787544, 50.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312588, 36.524918, 49.227962>,  <39.537403, 36.241737, 49.857086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312588, 36.524918, 49.227962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016228, 36.701080, 49.430782>,  <38.838409, 36.806778, 49.552475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016228, 36.701080, 49.430782>,  <39.312588, 36.524918, 49.227962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016228, 36.701080, 49.430782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635512, 0.703922, 0.317204,
		-0.217226, 0.557256, -0.801423,
		-0.740903, 0.440409, 0.507053,
		38.793957, 36.833202, 49.582897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752880, 36.183289, 48.740143>,  <39.312588, 36.524918, 49.227962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752880, 36.183289, 48.740143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471085, 36.463516, 48.785595>,  <38.302010, 36.631653, 48.812866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471085, 36.463516, 48.785595>,  <38.752880, 36.183289, 48.740143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471085, 36.463516, 48.785595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419191, -0.281538, -0.863143,
		-0.572697, -0.655702, 0.492010,
		-0.704484, 0.700565, 0.113628,
		38.259739, 36.673687, 48.819683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155365, 35.953026, 48.469486>,  <38.752880, 36.183289, 48.740143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155365, 35.953026, 48.469486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044281, 36.335758, 48.503780>,  <37.977631, 36.565399, 48.524357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.044281, 36.335758, 48.503780>,  <38.155365, 35.953026, 48.469486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044281, 36.335758, 48.503780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638404, -0.117121, -0.760738,
		-0.717858, -0.265997, 0.643371,
		-0.277706, 0.956832, 0.085737,
		37.960968, 36.622807, 48.529503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891296, 35.250778, 48.315289>,  <38.155365, 35.953026, 48.469486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891296, 35.250778, 48.315289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.021927, 34.917419, 48.136940>,  <38.100304, 34.717403, 48.029930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.021927, 34.917419, 48.136940>,  <37.891296, 35.250778, 48.315289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021927, 34.917419, 48.136940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827767, -0.024480, -0.560538,
		0.456235, 0.552134, -0.697852,
		0.326575, -0.833396, -0.445869,
		38.119900, 34.667400, 48.003178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795876, 35.447205, 47.691017>,  <37.891296, 35.250778, 48.315289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795876, 35.447205, 47.691017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799194, 35.048904, 47.727688>,  <37.801186, 34.809925, 47.749691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799194, 35.048904, 47.727688>,  <37.795876, 35.447205, 47.691017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799194, 35.048904, 47.727688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850063, -0.055308, -0.523769,
		0.526616, -0.073584, -0.846913,
		0.008300, -0.995754, 0.091677,
		37.801685, 34.750179, 47.755192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606735, 35.235249, 46.995636>,  <37.795876, 35.447205, 47.691017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606735, 35.235249, 46.995636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530460, 34.896454, 47.194130>,  <37.484695, 34.693176, 47.313229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530460, 34.896454, 47.194130>,  <37.606735, 35.235249, 46.995636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530460, 34.896454, 47.194130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745521, -0.203917, -0.634521,
		0.638622, -0.490950, -0.592562,
		-0.190685, -0.846986, 0.496239,
		37.473255, 34.642357, 47.343002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563091, 34.727535, 46.480026>,  <37.606735, 35.235249, 46.995636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563091, 34.727535, 46.480026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387028, 34.569679, 46.802647>,  <37.281391, 34.474964, 46.996220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387028, 34.569679, 46.802647>,  <37.563091, 34.727535, 46.480026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387028, 34.569679, 46.802647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748692, -0.334577, -0.572292,
		0.495704, -0.855753, -0.148201,
		-0.440156, -0.394645, 0.806547,
		37.254982, 34.451286, 47.044609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534512, 34.047081, 46.378353>,  <37.563091, 34.727535, 46.480026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534512, 34.047081, 46.378353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.253334, 34.136955, 46.648285>,  <37.084629, 34.190880, 46.810242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.253334, 34.136955, 46.648285>,  <37.534512, 34.047081, 46.378353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253334, 34.136955, 46.648285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690218, -0.444495, -0.570984,
		0.171667, -0.867146, 0.467534,
		-0.702944, 0.224681, 0.674825,
		37.042450, 34.204361, 46.850731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128231, 33.405075, 46.427376>,  <37.534512, 34.047081, 46.378353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128231, 33.405075, 46.427376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900425, 33.703148, 46.566143>,  <36.763741, 33.881992, 46.649403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900425, 33.703148, 46.566143>,  <37.128231, 33.405075, 46.427376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900425, 33.703148, 46.566143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813668, -0.451212, -0.366540,
		-0.116604, -0.491030, 0.863304,
		-0.569515, 0.745183, 0.346922,
		36.729572, 33.926704, 46.670219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591419, 33.068745, 46.823341>,  <37.128231, 33.405075, 46.427376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591419, 33.068745, 46.823341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451073, 33.432873, 46.735516>,  <36.366863, 33.651348, 46.682819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451073, 33.432873, 46.735516>,  <36.591419, 33.068745, 46.823341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451073, 33.432873, 46.735516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916603, -0.381854, -0.118432,
		-0.191651, 0.159697, 0.968384,
		-0.350868, 0.910321, -0.219562,
		36.345814, 33.705971, 46.669647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919514, 33.068520, 47.089272>,  <36.591419, 33.068745, 46.823341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919514, 33.068520, 47.089272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892467, 33.388721, 46.851074>,  <35.876240, 33.580845, 46.708157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892467, 33.388721, 46.851074>,  <35.919514, 33.068520, 47.089272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892467, 33.388721, 46.851074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884818, -0.323899, -0.334941,
		-0.461003, 0.504256, 0.730207,
		-0.067618, 0.800510, -0.595493,
		35.872181, 33.628876, 46.672424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171268, 33.247261, 47.099178>,  <35.919514, 33.068520, 47.089272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171268, 33.247261, 47.099178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.318821, 33.431915, 46.776485>,  <35.407352, 33.542709, 46.582870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.318821, 33.431915, 46.776485>,  <35.171268, 33.247261, 47.099178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318821, 33.431915, 46.776485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834149, -0.218469, -0.506425,
		-0.410031, 0.859746, 0.304485,
		0.368877, 0.461636, -0.806735,
		35.429485, 33.570408, 46.534466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674854, 33.605484, 46.832859>,  <35.171268, 33.247261, 47.099178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674854, 33.605484, 46.832859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.918030, 33.555344, 46.519249>,  <35.063934, 33.525261, 46.331081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.918030, 33.555344, 46.519249>,  <34.674854, 33.605484, 46.832859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918030, 33.555344, 46.519249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778648, -0.287284, -0.557831,
		-0.155315, 0.949608, -0.272254,
		0.607935, -0.125350, -0.784030,
		35.100410, 33.517738, 46.284039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.762213, 32.209534, 52.746708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.149685, 32.308815, 52.749538>,  <29.382168, 32.368385, 52.751236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.149685, 32.308815, 52.749538>,  <28.762213, 32.209534, 52.746708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149685, 32.308815, 52.749538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028247, -0.081823, -0.996247,
		-0.246697, 0.965245, -0.086272,
		0.968681, 0.248208, 0.007080,
		29.440289, 32.383278, 52.751663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842684, 32.204693, 52.047012>,  <28.762213, 32.209534, 52.746708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842684, 32.204693, 52.047012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.215403, 32.252605, 52.184071>,  <29.439034, 32.281353, 52.266308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.215403, 32.252605, 52.184071>,  <28.842684, 32.204693, 52.047012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215403, 32.252605, 52.184071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357778, -0.143786, -0.922670,
		-0.061249, 0.982333, -0.176834,
		0.931796, 0.119780, 0.342650,
		29.494942, 32.288540, 52.286865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156492, 32.705761, 51.686996>,  <28.842684, 32.204693, 52.047012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156492, 32.705761, 51.686996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.441977, 32.462902, 51.826706>,  <29.613266, 32.317188, 51.910534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.441977, 32.462902, 51.826706>,  <29.156492, 32.705761, 51.686996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441977, 32.462902, 51.826706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429508, -0.014552, -0.902946,
		0.553301, 0.794458, 0.250387,
		0.713709, -0.607144, 0.349278,
		29.656090, 32.280758, 51.931488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753412, 32.993801, 51.411621>,  <29.156492, 32.705761, 51.686996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753412, 32.993801, 51.411621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.859541, 32.624687, 51.523384>,  <29.923218, 32.403217, 51.590443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.859541, 32.624687, 51.523384>,  <29.753412, 32.993801, 51.411621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859541, 32.624687, 51.523384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655024, -0.040128, -0.754542,
		0.707493, 0.383215, 0.593801,
		0.265324, -0.922787, 0.279405,
		29.939138, 32.347851, 51.607204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372839, 33.031494, 51.306347>,  <29.753412, 32.993801, 51.411621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372839, 33.031494, 51.306347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.348608, 32.632229, 51.306194>,  <30.334068, 32.392670, 51.306103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.348608, 32.632229, 51.306194>,  <30.372839, 33.031494, 51.306347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348608, 32.632229, 51.306194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490666, -0.029447, -0.870850,
		0.869240, -0.052941, 0.491548,
		-0.060578, -0.998163, -0.000379,
		30.330435, 32.332779, 51.306080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102858, 32.778011, 51.236271>,  <30.372839, 33.031494, 51.306347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102858, 32.778011, 51.236271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.871723, 32.469959, 51.128193>,  <30.733042, 32.285130, 51.063347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.871723, 32.469959, 51.128193>,  <31.102858, 32.778011, 51.236271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871723, 32.469959, 51.128193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484829, -0.057586, -0.872711,
		0.656540, -0.635284, 0.406656,
		-0.577837, -0.770128, -0.270196,
		30.698372, 32.238922, 51.047134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600334, 32.196156, 51.051464>,  <31.102858, 32.778011, 51.236271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600334, 32.196156, 51.051464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248983, 32.107193, 50.882236>,  <31.038172, 32.053814, 50.780701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248983, 32.107193, 50.882236>,  <31.600334, 32.196156, 51.051464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248983, 32.107193, 50.882236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454005, -0.111507, -0.883994,
		0.149434, -0.968556, 0.198920,
		-0.878379, -0.222410, -0.423066,
		30.985470, 32.040470, 50.755318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634544, 31.522373, 50.785789>,  <31.600334, 32.196156, 51.051464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634544, 31.522373, 50.785789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344765, 31.696917, 50.572338>,  <31.170897, 31.801643, 50.444267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344765, 31.696917, 50.572338>,  <31.634544, 31.522373, 50.785789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344765, 31.696917, 50.572338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439120, -0.304597, -0.845218,
		-0.531362, -0.846647, 0.029051,
		-0.724450, 0.436360, -0.533631,
		31.127430, 31.827824, 50.412251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306856, 30.988348, 50.314980>,  <31.634544, 31.522373, 50.785789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306856, 30.988348, 50.314980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.208279, 31.326914, 50.126152>,  <31.149132, 31.530054, 50.012856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.208279, 31.326914, 50.126152>,  <31.306856, 30.988348, 50.314980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208279, 31.326914, 50.126152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373253, -0.366624, -0.852214,
		-0.894398, -0.386223, -0.225575,
		-0.246444, 0.846415, -0.472067,
		31.134346, 31.580839, 49.984531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314188, 30.841881, 49.618404>,  <31.306856, 30.988348, 50.314980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314188, 30.841881, 49.618404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251955, 31.233782, 49.568005>,  <31.214615, 31.468924, 49.537766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251955, 31.233782, 49.568005>,  <31.314188, 30.841881, 49.618404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251955, 31.233782, 49.568005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299202, -0.074825, -0.951252,
		-0.941421, -0.185696, -0.281503,
		-0.155581, 0.979754, -0.126002,
		31.205280, 31.527708, 49.530205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815466, 30.961796, 49.074791>,  <31.314188, 30.841881, 49.618404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815466, 30.961796, 49.074791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.063473, 31.275473, 49.084801>,  <31.212276, 31.463678, 49.090809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.063473, 31.275473, 49.084801>,  <30.815466, 30.961796, 49.074791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063473, 31.275473, 49.084801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298750, -0.206469, -0.931729,
		-0.725485, 0.585164, -0.362291,
		0.620016, 0.784190, 0.025027,
		31.249477, 31.510729, 49.092308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774273, 31.385960, 48.441605>,  <30.815466, 30.961796, 49.074791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774273, 31.385960, 48.441605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.116472, 31.506777, 48.609837>,  <31.321793, 31.579268, 48.710777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.116472, 31.506777, 48.609837>,  <30.774273, 31.385960, 48.441605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116472, 31.506777, 48.609837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459737, -0.069348, -0.885343,
		-0.238246, 0.950768, -0.198188,
		0.855500, 0.302044, 0.420582,
		31.373123, 31.597389, 48.736012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997133, 32.004162, 48.231213>,  <30.774273, 31.385960, 48.441605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997133, 32.004162, 48.231213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.321508, 31.789801, 48.325184>,  <31.516132, 31.661184, 48.381565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.321508, 31.789801, 48.325184>,  <30.997133, 32.004162, 48.231213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321508, 31.789801, 48.325184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323432, 0.075942, -0.943199,
		0.487620, 0.840859, 0.234911,
		0.810937, -0.535901, 0.234930,
		31.564789, 31.629030, 48.395664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544806, 32.412464, 48.054924>,  <30.997133, 32.004162, 48.231213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544806, 32.412464, 48.054924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.683958, 32.037510, 48.061619>,  <31.767450, 31.812536, 48.065636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.683958, 32.037510, 48.061619>,  <31.544806, 32.412464, 48.054924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683958, 32.037510, 48.061619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304407, 0.096050, -0.947687,
		0.886744, 0.334777, 0.318762,
		0.347881, -0.937389, 0.016736,
		31.788322, 31.756292, 48.066639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580849, 32.665676, 47.352455>,  <31.544806, 32.412464, 48.054924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580849, 32.665676, 47.352455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.674011, 32.852917, 47.011482>,  <31.729908, 32.965260, 46.806900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.674011, 32.852917, 47.011482>,  <31.580849, 32.665676, 47.352455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674011, 32.852917, 47.011482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395496, 0.846367, 0.356714,
		0.888447, 0.254052, 0.382255,
		0.232904, 0.468102, -0.852429,
		31.743883, 32.993347, 46.755753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888681, 33.309025, 47.532578>,  <31.580849, 32.665676, 47.352455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888681, 33.309025, 47.532578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793209, 33.375954, 47.149948>,  <31.735926, 33.416111, 46.920372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793209, 33.375954, 47.149948>,  <31.888681, 33.309025, 47.532578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793209, 33.375954, 47.149948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393074, 0.884095, 0.252722,
		0.887989, 0.436325, -0.145249,
		-0.238683, 0.167321, -0.956574,
		31.721603, 33.426151, 46.862976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170422, 33.915699, 47.308826>,  <31.888681, 33.309025, 47.532578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170422, 33.915699, 47.308826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.847488, 33.887569, 47.074471>,  <31.653728, 33.870693, 46.933857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.847488, 33.887569, 47.074471>,  <32.170422, 33.915699, 47.308826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847488, 33.887569, 47.074471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211682, 0.961303, 0.176314,
		0.550816, 0.266367, -0.790981,
		-0.807337, -0.070320, -0.585886,
		31.605288, 33.866474, 46.898705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984377, 34.693264, 46.970333>,  <32.170422, 33.915699, 47.308826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984377, 34.693264, 46.970333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673429, 34.456005, 46.886551>,  <31.486862, 34.313648, 46.836281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673429, 34.456005, 46.886551>,  <31.984377, 34.693264, 46.970333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673429, 34.456005, 46.886551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603697, 0.797041, -0.016572,
		0.176775, 0.113566, -0.977678,
		-0.777367, -0.593151, -0.209457,
		31.440220, 34.278061, 46.823715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680845, 34.950691, 46.374157>,  <31.984377, 34.693264, 46.970333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680845, 34.950691, 46.374157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.412582, 34.745438, 46.588417>,  <31.251625, 34.622288, 46.716972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.412582, 34.745438, 46.588417>,  <31.680845, 34.950691, 46.374157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412582, 34.745438, 46.588417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572141, 0.817436, 0.066730,
		-0.472098, -0.261712, -0.841802,
		-0.670656, -0.513133, 0.535646,
		31.211386, 34.591499, 46.749111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124065, 35.250114, 46.079536>,  <31.680845, 34.950691, 46.374157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124065, 35.250114, 46.079536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026304, 35.077866, 46.427059>,  <30.967648, 34.974518, 46.635574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026304, 35.077866, 46.427059>,  <31.124065, 35.250114, 46.079536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026304, 35.077866, 46.427059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693451, 0.703895, 0.153810,
		-0.677785, -0.564885, -0.470651,
		-0.244404, -0.430623, 0.868810,
		30.952984, 34.948677, 46.687702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382437, 35.259796, 46.077744>,  <31.124065, 35.250114, 46.079536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382437, 35.259796, 46.077744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.530270, 35.206905, 46.445641>,  <30.618969, 35.175171, 46.666378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.530270, 35.206905, 46.445641>,  <30.382437, 35.259796, 46.077744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530270, 35.206905, 46.445641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733976, 0.565448, 0.376228,
		-0.569814, -0.814116, 0.111928,
		0.369583, -0.132227, 0.919741,
		30.641144, 35.167236, 46.721561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799429, 35.227425, 46.494114>,  <30.382437, 35.259796, 46.077744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799429, 35.227425, 46.494114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104187, 35.333069, 46.730675>,  <30.287043, 35.396458, 46.872612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104187, 35.333069, 46.730675>,  <29.799429, 35.227425, 46.494114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104187, 35.333069, 46.730675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609339, 0.601851, 0.516218,
		-0.219598, -0.753670, 0.619482,
		0.761895, 0.264114, 0.591406,
		30.332756, 35.412304, 46.908096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473545, 35.271679, 47.168686>,  <29.799429, 35.227425, 46.494114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473545, 35.271679, 47.168686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.813259, 35.478436, 47.211647>,  <30.017088, 35.602489, 47.237423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.813259, 35.478436, 47.211647>,  <29.473545, 35.271679, 47.168686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813259, 35.478436, 47.211647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452643, 0.608231, 0.652050,
		0.271710, -0.602394, 0.750530,
		0.849287, 0.516890, 0.107407,
		30.068045, 35.633503, 47.243870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559542, 35.483089, 47.915581>,  <29.473545, 35.271679, 47.168686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559542, 35.483089, 47.915581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.813589, 35.724426, 47.722668>,  <29.966019, 35.869228, 47.606918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.813589, 35.724426, 47.722668>,  <29.559542, 35.483089, 47.915581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813589, 35.724426, 47.722668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101712, 0.684275, 0.722096,
		0.765690, -0.409562, 0.495963,
		0.635118, 0.603346, -0.482285,
		30.004126, 35.905430, 47.577984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056639, 35.621090, 48.386112>,  <29.559542, 35.483089, 47.915581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056639, 35.621090, 48.386112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.062683, 35.919067, 48.119328>,  <30.066309, 36.097855, 47.959255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.062683, 35.919067, 48.119328>,  <30.056639, 35.621090, 48.386112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062683, 35.919067, 48.119328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002742, 0.667004, 0.745049,
		0.999882, -0.013087, 0.008036,
		0.015110, 0.744939, -0.666961,
		30.067217, 36.142548, 47.919239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485569, 36.127773, 48.727547>,  <30.056639, 35.621090, 48.386112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485569, 36.127773, 48.727547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.290646, 36.319550, 48.435612>,  <30.173691, 36.434616, 48.260448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.290646, 36.319550, 48.435612>,  <30.485569, 36.127773, 48.727547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290646, 36.319550, 48.435612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175817, 0.764810, 0.619801,
		0.855347, 0.430353, -0.288405,
		-0.487308, 0.479439, -0.729842,
		30.144453, 36.463383, 48.216660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793026, 36.744717, 48.710850>,  <30.485569, 36.127773, 48.727547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793026, 36.744717, 48.710850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.429123, 36.778660, 48.548302>,  <30.210781, 36.799026, 48.450771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.429123, 36.778660, 48.548302>,  <30.793026, 36.744717, 48.710850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429123, 36.778660, 48.548302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264361, 0.636317, 0.724717,
		0.320081, 0.766746, -0.556461,
		-0.909759, 0.084862, -0.406370,
		30.156195, 36.804119, 48.426392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616924, 37.445843, 48.744511>,  <30.793026, 36.744717, 48.710850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616924, 37.445843, 48.744511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269913, 37.248386, 48.720127>,  <30.061707, 37.129913, 48.705498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269913, 37.248386, 48.720127>,  <30.616924, 37.445843, 48.744511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269913, 37.248386, 48.720127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412401, 0.645357, 0.642992,
		-0.278062, 0.582956, -0.763442,
		-0.867529, -0.493637, -0.060962,
		30.009653, 37.100296, 48.701839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013025, 37.989288, 48.295261>,  <30.616924, 37.445843, 48.744511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013025, 37.989288, 48.295261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237555, 38.275707, 48.461246>,  <31.372272, 38.447559, 48.560837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237555, 38.275707, 48.461246>,  <31.013025, 37.989288, 48.295261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237555, 38.275707, 48.461246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729866, -0.191942, -0.656090,
		-0.390145, 0.671142, -0.630361,
		0.561322, 0.716050, 0.414958,
		31.405951, 38.490520, 48.585735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269094, 38.428417, 47.778816>,  <31.013025, 37.989288, 48.295261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269094, 38.428417, 47.778816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530827, 38.491150, 48.074722>,  <31.687866, 38.528790, 48.252266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530827, 38.491150, 48.074722>,  <31.269094, 38.428417, 47.778816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530827, 38.491150, 48.074722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756201, -0.140025, -0.639182,
		0.003345, 0.977649, -0.210216,
		0.654331, 0.156827, 0.739768,
		31.727125, 38.538197, 48.296654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852163, 38.802570, 47.436855>,  <31.269094, 38.428417, 47.778816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852163, 38.802570, 47.436855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998835, 38.658421, 47.779942>,  <32.086838, 38.571930, 47.985794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998835, 38.658421, 47.779942>,  <31.852163, 38.802570, 47.436855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998835, 38.658421, 47.779942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898610, -0.101564, -0.426831,
		0.240931, 0.927264, 0.286591,
		0.366677, -0.360370, 0.857719,
		32.108837, 38.550308, 48.037258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339363, 39.238342, 47.755600>,  <31.852163, 38.802570, 47.436855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339363, 39.238342, 47.755600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.437939, 38.867649, 47.869041>,  <32.497086, 38.645233, 47.937107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.437939, 38.867649, 47.869041>,  <32.339363, 39.238342, 47.755600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437939, 38.867649, 47.869041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879203, 0.090660, -0.467743,
		0.407760, 0.364620, 0.837128,
		0.246443, -0.926732, 0.283608,
		32.511871, 38.589630, 47.954124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015263, 39.286072, 47.848572>,  <32.339363, 39.238342, 47.755600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015263, 39.286072, 47.848572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940796, 38.894665, 47.813145>,  <32.896118, 38.659821, 47.791889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940796, 38.894665, 47.813145>,  <33.015263, 39.286072, 47.848572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940796, 38.894665, 47.813145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819550, -0.104932, -0.563318,
		0.541924, -0.177454, 0.821479,
		-0.186163, -0.978519, -0.088567,
		32.884949, 38.601109, 47.786575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680485, 39.009296, 47.990528>,  <33.015263, 39.286072, 47.848572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680485, 39.009296, 47.990528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479481, 38.700848, 47.834148>,  <33.358879, 38.515778, 47.740318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479481, 38.700848, 47.834148>,  <33.680485, 39.009296, 47.990528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479481, 38.700848, 47.834148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796392, -0.236852, -0.556472,
		0.336512, -0.590987, 0.733140,
		-0.502513, -0.771126, -0.390954,
		33.328728, 38.469509, 47.716862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108994, 38.439713, 48.144241>,  <33.680485, 39.009296, 47.990528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108994, 38.439713, 48.144241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868786, 38.307873, 47.852833>,  <33.724663, 38.228767, 47.677986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868786, 38.307873, 47.852833>,  <34.108994, 38.439713, 48.144241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868786, 38.307873, 47.852833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792792, -0.364176, -0.488730,
		-0.104226, -0.871057, 0.479996,
		-0.600514, -0.329598, -0.728524,
		33.688633, 38.208992, 47.634277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219917, 37.738953, 47.991528>,  <34.108994, 38.439713, 48.144241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219917, 37.738953, 47.991528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089424, 37.895611, 47.647392>,  <34.011127, 37.989605, 47.440910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089424, 37.895611, 47.647392>,  <34.219917, 37.738953, 47.991528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089424, 37.895611, 47.647392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755446, -0.439073, -0.486330,
		-0.568222, -0.808597, -0.152629,
		-0.326229, 0.391646, -0.860342,
		33.991554, 38.013103, 47.389290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266182, 37.162117, 47.534039>,  <34.219917, 37.738953, 47.991528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266182, 37.162117, 47.534039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222610, 37.490528, 47.309879>,  <34.196468, 37.687576, 47.175385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222610, 37.490528, 47.309879>,  <34.266182, 37.162117, 47.534039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222610, 37.490528, 47.309879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779631, -0.279181, -0.560566,
		-0.616693, -0.497969, -0.609686,
		-0.108931, 0.821027, -0.560401,
		34.189930, 37.736835, 47.141758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231815, 36.862976, 46.818138>,  <34.266182, 37.162117, 47.534039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231815, 36.862976, 46.818138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332237, 37.246841, 46.767529>,  <34.392490, 37.477161, 46.737164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332237, 37.246841, 46.767529>,  <34.231815, 36.862976, 46.818138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332237, 37.246841, 46.767529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687074, -0.268749, -0.675058,
		-0.681835, 0.082544, -0.726834,
		0.251058, 0.959667, -0.126528,
		34.407555, 37.534740, 46.729568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300175, 36.910107, 46.125755>,  <34.231815, 36.862976, 46.818138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300175, 36.910107, 46.125755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499218, 37.215366, 46.290672>,  <34.618645, 37.398521, 46.389622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499218, 37.215366, 46.290672>,  <34.300175, 36.910107, 46.125755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499218, 37.215366, 46.290672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775384, -0.178307, -0.605794,
		-0.388795, 0.621139, -0.680459,
		0.497613, 0.763147, 0.412297,
		34.648502, 37.444309, 46.414360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656898, 37.351902, 45.659164>,  <34.300175, 36.910107, 46.125755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656898, 37.351902, 45.659164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855354, 37.369831, 46.006001>,  <34.974426, 37.380589, 46.214100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855354, 37.369831, 46.006001>,  <34.656898, 37.351902, 45.659164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855354, 37.369831, 46.006001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822464, -0.344262, -0.452809,
		0.278209, 0.937803, -0.207666,
		0.496137, 0.044822, 0.867086,
		35.004196, 37.383278, 46.266125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.161501, 40.516003, 53.372066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865658, 40.672432, 53.152962>,  <28.688152, 40.766289, 53.021500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865658, 40.672432, 53.152962>,  <29.161501, 40.516003, 53.372066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865658, 40.672432, 53.152962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478033, -0.267677, -0.836560,
		-0.473778, -0.880575, 0.011031,
		-0.739607, 0.391071, -0.547764,
		28.643776, 40.789753, 52.988632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127226, 39.952587, 52.821095>,  <29.161501, 40.516003, 53.372066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127226, 39.952587, 52.821095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936981, 40.269932, 52.669113>,  <28.822834, 40.460339, 52.577923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936981, 40.269932, 52.669113>,  <29.127226, 39.952587, 52.821095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936981, 40.269932, 52.669113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307678, -0.254615, -0.916791,
		-0.824091, -0.552941, -0.123002,
		-0.475613, 0.793365, -0.379954,
		28.794298, 40.507942, 52.555126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780182, 39.722519, 52.257126>,  <29.127226, 39.952587, 52.821095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780182, 39.722519, 52.257126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800858, 40.116909, 52.193661>,  <28.813263, 40.353542, 52.155582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800858, 40.116909, 52.193661>,  <28.780182, 39.722519, 52.257126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800858, 40.116909, 52.193661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192547, -0.165730, -0.967191,
		-0.979925, 0.019442, -0.198414,
		0.051687, 0.985979, -0.158660,
		28.816364, 40.412704, 52.146061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526508, 39.715611, 51.674599>,  <28.780182, 39.722519, 52.257126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526508, 39.715611, 51.674599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697487, 40.076847, 51.691135>,  <28.800074, 40.293591, 51.701057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697487, 40.076847, 51.691135>,  <28.526508, 39.715611, 51.674599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697487, 40.076847, 51.691135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191711, -0.045856, -0.980380,
		-0.883481, 0.426984, -0.192734,
		0.427444, 0.903096, 0.041345,
		28.825720, 40.347775, 51.703537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224186, 40.097626, 51.098186>,  <28.526508, 39.715611, 51.674599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224186, 40.097626, 51.098186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585331, 40.232876, 51.204403>,  <28.802017, 40.314026, 51.268131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585331, 40.232876, 51.204403>,  <28.224186, 40.097626, 51.098186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585331, 40.232876, 51.204403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240071, 0.115866, -0.963816,
		-0.356658, 0.933941, 0.023437,
		0.902863, 0.338126, 0.265536,
		28.856190, 40.334312, 51.284065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384422, 40.684208, 50.698555>,  <28.224186, 40.097626, 51.098186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384422, 40.684208, 50.698555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735083, 40.545376, 50.831829>,  <28.945478, 40.462074, 50.911793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.735083, 40.545376, 50.831829>,  <28.384422, 40.684208, 50.698555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735083, 40.545376, 50.831829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354565, -0.002044, -0.935029,
		0.325215, 0.937832, 0.121272,
		0.876652, -0.347084, 0.333187,
		28.998077, 40.441250, 50.931786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902018, 40.904034, 50.123817>,  <28.384422, 40.684208, 50.698555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902018, 40.904034, 50.123817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.108631, 40.633526, 50.333900>,  <29.232599, 40.471222, 50.459949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.108631, 40.633526, 50.333900>,  <28.902018, 40.904034, 50.123817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108631, 40.633526, 50.333900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553560, -0.204227, -0.807380,
		0.653272, 0.707775, 0.268868,
		0.516533, -0.676274, 0.525211,
		29.263592, 40.430645, 50.491463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579090, 40.883579, 49.933613>,  <28.902018, 40.904034, 50.123817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579090, 40.883579, 49.933613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548067, 40.518833, 50.094852>,  <29.529453, 40.299984, 50.191597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548067, 40.518833, 50.094852>,  <29.579090, 40.883579, 49.933613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548067, 40.518833, 50.094852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629440, -0.358331, -0.689495,
		0.773169, 0.200248, 0.601757,
		-0.077558, -0.911866, 0.403095,
		29.524799, 40.245274, 50.215782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203678, 40.753437, 50.225773>,  <29.579090, 40.883579, 49.933613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203678, 40.753437, 50.225773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.037294, 40.390026, 50.209991>,  <29.937464, 40.171978, 50.200523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.037294, 40.390026, 50.209991>,  <30.203678, 40.753437, 50.225773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037294, 40.390026, 50.209991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777791, -0.332957, -0.533087,
		0.471188, -0.252429, 0.845140,
		-0.415962, -0.908526, -0.039452,
		29.912506, 40.117470, 50.198154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755114, 40.298500, 50.444393>,  <30.203678, 40.753437, 50.225773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755114, 40.298500, 50.444393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496408, 40.078758, 50.232769>,  <30.341185, 39.946915, 50.105793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496408, 40.078758, 50.232769>,  <30.755114, 40.298500, 50.444393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496408, 40.078758, 50.232769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762251, -0.489116, -0.423957,
		-0.025870, -0.677478, 0.735088,
		-0.646765, -0.549353, -0.529062,
		30.302380, 39.913952, 50.074051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050486, 39.688358, 50.427441>,  <30.755114, 40.298500, 50.444393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050486, 39.688358, 50.427441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.802973, 39.660091, 50.114491>,  <30.654465, 39.643131, 49.926720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.802973, 39.660091, 50.114491>,  <31.050486, 39.688358, 50.427441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802973, 39.660091, 50.114491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685828, -0.534268, -0.494163,
		-0.383078, -0.842356, 0.379062,
		-0.618782, -0.070669, -0.782378,
		30.617338, 39.638889, 49.879776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076372, 38.926849, 50.300125>,  <31.050486, 39.688358, 50.427441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076372, 38.926849, 50.300125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.916950, 39.053093, 49.955673>,  <30.821297, 39.128841, 49.749001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.916950, 39.053093, 49.955673>,  <31.076372, 38.926849, 50.300125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916950, 39.053093, 49.955673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553106, -0.666253, -0.500181,
		-0.731593, -0.675645, 0.090972,
		-0.398555, 0.315611, -0.861129,
		30.797384, 39.147778, 49.697334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817190, 38.350220, 49.943436>,  <31.076372, 38.926849, 50.300125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817190, 38.350220, 49.943436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.852362, 38.625267, 49.655148>,  <30.873465, 38.790295, 49.482174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.852362, 38.625267, 49.655148>,  <30.817190, 38.350220, 49.943436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852362, 38.625267, 49.655148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496120, -0.657635, -0.566905,
		-0.863790, -0.307718, -0.398968,
		0.087929, 0.687623, -0.720724,
		30.878740, 38.831554, 49.438931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706182, 37.990925, 49.292488>,  <30.817190, 38.350220, 49.943436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706182, 37.990925, 49.292488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.934282, 38.305943, 49.199032>,  <31.071142, 38.494953, 49.142956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.934282, 38.305943, 49.199032>,  <30.706182, 37.990925, 49.292488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934282, 38.305943, 49.199032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509674, -0.562253, -0.651233,
		-0.644240, 0.252285, -0.722016,
		0.570252, 0.787543, -0.233643,
		31.105358, 38.542206, 49.128941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113602, 38.018646, 48.881397>,  <30.706182, 37.990925, 49.292488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113602, 38.018646, 48.881397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884552, 37.691181, 48.898785>,  <29.747122, 37.494701, 48.909218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884552, 37.691181, 48.898785>,  <30.113602, 38.018646, 48.881397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884552, 37.691181, 48.898785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505936, 0.394612, 0.767013,
		-0.645081, 0.417216, -0.640157,
		-0.572624, -0.818664, 0.043472,
		29.712765, 37.445583, 48.911827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457146, 38.224934, 49.107498>,  <30.113602, 38.018646, 48.881397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457146, 38.224934, 49.107498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436804, 37.830761, 49.172424>,  <29.424599, 37.594257, 49.211380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436804, 37.830761, 49.172424>,  <29.457146, 38.224934, 49.107498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436804, 37.830761, 49.172424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359974, 0.169689, 0.917401,
		-0.931575, -0.011775, -0.363358,
		-0.050856, -0.985427, 0.162316,
		29.421547, 37.535133, 49.221119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777136, 38.131432, 49.478008>,  <29.457146, 38.224934, 49.107498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777136, 38.131432, 49.478008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015436, 37.823349, 49.569103>,  <29.158417, 37.638500, 49.623760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015436, 37.823349, 49.569103>,  <28.777136, 38.131432, 49.478008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015436, 37.823349, 49.569103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266760, 0.077701, 0.960626,
		-0.757576, -0.633044, -0.159170,
		0.595750, -0.770207, 0.227735,
		29.194160, 37.592285, 49.637424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336729, 37.599899, 49.841373>,  <28.777136, 38.131432, 49.478008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336729, 37.599899, 49.841373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714926, 37.518410, 49.942993>,  <28.941845, 37.469517, 50.003963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714926, 37.518410, 49.942993>,  <28.336729, 37.599899, 49.841373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714926, 37.518410, 49.942993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260152, -0.003312, 0.965562,
		-0.195868, -0.979022, -0.056131,
		0.945493, -0.203725, 0.254046,
		28.998573, 37.457294, 50.019207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189323, 37.152477, 50.394566>,  <28.336729, 37.599899, 49.841373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189323, 37.152477, 50.394566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567898, 37.279274, 50.419136>,  <28.795042, 37.355350, 50.433880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567898, 37.279274, 50.419136>,  <28.189323, 37.152477, 50.394566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567898, 37.279274, 50.419136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059144, -0.016840, 0.998107,
		0.317425, -0.948279, 0.002810,
		0.946437, 0.316991, 0.061431,
		28.851830, 37.374371, 50.437565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563311, 36.684494, 50.924675>,  <28.189323, 37.152477, 50.394566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563311, 36.684494, 50.924675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768965, 37.024879, 50.881721>,  <28.892357, 37.229111, 50.855949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768965, 37.024879, 50.881721>,  <28.563311, 36.684494, 50.924675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768965, 37.024879, 50.881721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055772, 0.158106, 0.985846,
		0.855895, -0.500867, 0.128748,
		0.514134, 0.850961, -0.107388,
		28.923204, 37.280167, 50.849506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965088, 36.790730, 51.579967>,  <28.563311, 36.684494, 50.924675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965088, 36.790730, 51.579967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977940, 37.155693, 51.416756>,  <28.985651, 37.374672, 51.318829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977940, 37.155693, 51.416756>,  <28.965088, 36.790730, 51.579967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977940, 37.155693, 51.416756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224911, 0.404367, 0.886511,
		0.973849, 0.063286, 0.218202,
		0.032130, 0.912404, -0.408026,
		28.987579, 37.429413, 51.294350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336458, 37.245594, 52.100956>,  <28.965088, 36.790730, 51.579967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336458, 37.245594, 52.100956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120943, 37.505970, 51.887043>,  <28.991634, 37.662193, 51.758698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120943, 37.505970, 51.887043>,  <29.336458, 37.245594, 52.100956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120943, 37.505970, 51.887043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282004, 0.458815, 0.842593,
		0.793840, 0.604787, -0.063636,
		-0.538787, 0.650938, -0.534778,
		28.959307, 37.701252, 51.726608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534382, 37.942802, 52.276756>,  <29.336458, 37.245594, 52.100956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534382, 37.942802, 52.276756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167812, 37.987930, 52.123165>,  <28.947870, 38.015007, 52.031010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167812, 37.987930, 52.123165>,  <29.534382, 37.942802, 52.276756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167812, 37.987930, 52.123165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343826, 0.269071, 0.899658,
		0.204816, 0.956490, -0.207793,
		-0.916425, 0.112819, -0.383976,
		28.892885, 38.021774, 52.007973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319813, 38.420620, 52.682331>,  <29.534382, 37.942802, 52.276756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319813, 38.420620, 52.682331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979855, 38.293133, 52.514477>,  <28.775879, 38.216640, 52.413765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979855, 38.293133, 52.514477>,  <29.319813, 38.420620, 52.682331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979855, 38.293133, 52.514477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458858, 0.056088, 0.886738,
		-0.259083, 0.946188, -0.193915,
		-0.849897, -0.318719, -0.419635,
		28.724886, 38.197517, 52.388588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944979, 38.895977, 52.931004>,  <29.319813, 38.420620, 52.682331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944979, 38.895977, 52.931004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677368, 38.618893, 52.823254>,  <28.516802, 38.452644, 52.758606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677368, 38.618893, 52.823254>,  <28.944979, 38.895977, 52.931004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677368, 38.618893, 52.823254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529727, 0.190192, 0.826569,
		-0.521339, 0.695688, -0.494190,
		-0.669025, -0.692708, -0.269371,
		28.476660, 38.411079, 52.742443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253288, 39.253002, 52.835938>,  <28.944979, 38.895977, 52.931004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253288, 39.253002, 52.835938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.204056, 38.862026, 52.904594>,  <28.174517, 38.627441, 52.945789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.204056, 38.862026, 52.904594>,  <28.253288, 39.253002, 52.835938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204056, 38.862026, 52.904594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720684, 0.206940, 0.661658,
		-0.682251, -0.042261, -0.729896,
		-0.123082, -0.977441, 0.171641,
		28.167131, 38.568794, 52.956085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582310, 39.132759, 52.776169>,  <28.253288, 39.253002, 52.835938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582310, 39.132759, 52.776169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.722523, 38.839874, 53.009747>,  <27.806650, 38.664143, 53.149895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.722523, 38.839874, 53.009747>,  <27.582310, 39.132759, 52.776169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722523, 38.839874, 53.009747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764192, 0.136838, 0.630306,
		-0.541423, -0.667191, -0.511584,
		0.350530, -0.732211, 0.583949,
		27.827682, 38.620213, 53.184933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018600, 38.608349, 52.877102>,  <27.582310, 39.132759, 52.776169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018600, 38.608349, 52.877102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271889, 38.597034, 53.186481>,  <27.423862, 38.590248, 53.372108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271889, 38.597034, 53.186481>,  <27.018600, 38.608349, 52.877102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271889, 38.597034, 53.186481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767462, 0.106370, 0.632208,
		-0.100152, -0.993924, 0.045650,
		0.633223, -0.028283, 0.773453,
		27.461855, 38.588551, 53.418518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.723299, 38.669189, 56.630661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347948, 38.579754, 56.525242>,  <31.122738, 38.526093, 56.461990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347948, 38.579754, 56.525242>,  <31.723299, 38.669189, 56.630661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347948, 38.579754, 56.525242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345396, -0.633929, -0.691979,
		-0.012349, -0.740365, 0.672092,
		-0.938376, -0.223593, -0.263547,
		31.066435, 38.512676, 56.446178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714682, 37.936172, 56.656925>,  <31.723299, 38.669189, 56.630661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714682, 37.936172, 56.656925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415880, 38.065575, 56.424606>,  <31.236599, 38.143215, 56.285213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415880, 38.065575, 56.424606>,  <31.714682, 37.936172, 56.656925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415880, 38.065575, 56.424606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274681, -0.645385, -0.712762,
		-0.605419, -0.691972, 0.393247,
		-0.747006, 0.323502, -0.580800,
		31.191780, 38.162628, 56.250366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459364, 37.323868, 56.426659>,  <31.714682, 37.936172, 56.656925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459364, 37.323868, 56.426659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315805, 37.601883, 56.177464>,  <31.229671, 37.768692, 56.027946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315805, 37.601883, 56.177464>,  <31.459364, 37.323868, 56.426659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315805, 37.601883, 56.177464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282601, -0.555214, -0.782224,
		-0.889568, -0.456794, 0.002846,
		-0.358896, 0.695037, -0.622991,
		31.208138, 37.810394, 55.990566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087673, 36.973797, 55.851639>,  <31.459364, 37.323868, 56.426659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087673, 36.973797, 55.851639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.104836, 37.327179, 55.665020>,  <31.115133, 37.539207, 55.553047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.104836, 37.327179, 55.665020>,  <31.087673, 36.973797, 55.851639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104836, 37.327179, 55.665020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087422, -0.468510, -0.879122,
		-0.995247, -0.003066, -0.097336,
		0.042907, 0.883453, -0.466551,
		31.117708, 37.592216, 55.525055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719986, 36.852833, 55.149467>,  <31.087673, 36.973797, 55.851639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719986, 36.852833, 55.149467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963516, 37.168377, 55.115921>,  <31.109634, 37.357704, 55.095791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963516, 37.168377, 55.115921>,  <30.719986, 36.852833, 55.149467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963516, 37.168377, 55.115921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560926, -0.502832, -0.657663,
		-0.560975, 0.353358, -0.748629,
		0.608826, 0.788858, -0.083868,
		31.146164, 37.405033, 55.090759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837454, 37.024563, 54.417942>,  <30.719986, 36.852833, 55.149467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837454, 37.024563, 54.417942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.144529, 37.151409, 54.640686>,  <31.328775, 37.227516, 54.774330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.144529, 37.151409, 54.640686>,  <30.837454, 37.024563, 54.417942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144529, 37.151409, 54.640686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638064, -0.458808, -0.618360,
		0.059398, 0.830019, -0.554563,
		0.767689, 0.317117, 0.556858,
		31.374836, 37.246544, 54.807743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276335, 37.170834, 53.948208>,  <30.837454, 37.024563, 54.417942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276335, 37.170834, 53.948208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523457, 37.166634, 54.262714>,  <31.671730, 37.164112, 54.451416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523457, 37.166634, 54.262714>,  <31.276335, 37.170834, 53.948208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523457, 37.166634, 54.262714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719633, -0.395466, -0.570732,
		0.316933, 0.918421, -0.236763,
		0.617804, -0.010501, 0.786262,
		31.708797, 37.163483, 54.498592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963657, 37.529209, 53.815777>,  <31.276335, 37.170834, 53.948208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963657, 37.529209, 53.815777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050198, 37.285004, 54.120529>,  <32.102123, 37.138481, 54.303379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050198, 37.285004, 54.120529>,  <31.963657, 37.529209, 53.815777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050198, 37.285004, 54.120529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861419, -0.247913, -0.443278,
		0.459509, 0.752202, 0.472275,
		0.216351, -0.610518, 0.761880,
		32.115105, 37.101849, 54.349094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602348, 37.654018, 53.923748>,  <31.963657, 37.529209, 53.815777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602348, 37.654018, 53.923748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563251, 37.294304, 54.094265>,  <32.539791, 37.078476, 54.196575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563251, 37.294304, 54.094265>,  <32.602348, 37.654018, 53.923748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563251, 37.294304, 54.094265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794129, -0.328650, -0.511222,
		0.599837, 0.288560, 0.746277,
		-0.097746, -0.899290, 0.426290,
		32.533928, 37.024517, 54.222153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267033, 37.420361, 54.203491>,  <32.602348, 37.654018, 53.923748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267033, 37.420361, 54.203491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065308, 37.077335, 54.162991>,  <32.944271, 36.871521, 54.138691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065308, 37.077335, 54.162991>,  <33.267033, 37.420361, 54.203491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065308, 37.077335, 54.162991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797995, -0.418030, -0.434113,
		0.329952, -0.299731, 0.895150,
		-0.504317, -0.857562, -0.101254,
		32.914013, 36.820068, 54.132614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693489, 36.826763, 54.501614>,  <33.267033, 37.420361, 54.203491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693489, 36.826763, 54.501614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427925, 36.634827, 54.272190>,  <33.268585, 36.519665, 54.134537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427925, 36.634827, 54.272190>,  <33.693489, 36.826763, 54.501614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427925, 36.634827, 54.272190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726800, -0.594569, -0.343876,
		-0.176011, -0.645164, 0.743494,
		-0.663915, -0.479846, -0.573555,
		33.228752, 36.490871, 54.100124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040081, 36.298363, 54.520489>,  <33.693489, 36.826763, 54.501614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040081, 36.298363, 54.520489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775497, 36.271492, 54.221703>,  <33.616745, 36.255371, 54.042431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775497, 36.271492, 54.221703>,  <34.040081, 36.298363, 54.520489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775497, 36.271492, 54.221703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619884, -0.609592, -0.494107,
		-0.422151, -0.789864, 0.444863,
		-0.661462, -0.067176, -0.746964,
		33.577061, 36.251339, 53.997612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809677, 35.624996, 54.412819>,  <34.040081, 36.298363, 54.520489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809677, 35.624996, 54.412819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763561, 35.811344, 54.061893>,  <33.735893, 35.923153, 53.851337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763561, 35.811344, 54.061893>,  <33.809677, 35.624996, 54.412819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763561, 35.811344, 54.061893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593188, -0.676138, -0.436996,
		-0.796767, -0.570789, -0.198400,
		-0.115287, 0.465872, -0.877310,
		33.728973, 35.951107, 53.798702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659927, 35.130341, 53.960716>,  <33.809677, 35.624996, 54.412819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659927, 35.130341, 53.960716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807663, 35.437031, 53.750679>,  <33.896305, 35.621044, 53.624657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807663, 35.437031, 53.750679>,  <33.659927, 35.130341, 53.960716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807663, 35.437031, 53.750679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537425, -0.637203, -0.552401,
		-0.758129, -0.078173, -0.647403,
		0.369344, 0.766722, -0.525094,
		33.918465, 35.667046, 53.593151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973919, 34.730587, 53.941109>,  <33.659927, 35.130341, 53.960716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973919, 34.730587, 53.941109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913528, 34.360416, 54.080128>,  <32.877293, 34.138313, 54.163540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913528, 34.360416, 54.080128>,  <32.973919, 34.730587, 53.941109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913528, 34.360416, 54.080128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544956, 0.371244, 0.751798,
		-0.824760, -0.075895, -0.560366,
		-0.150975, -0.925429, 0.347547,
		32.868237, 34.082787, 54.184391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267406, 34.684063, 54.150475>,  <32.973919, 34.730587, 53.941109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267406, 34.684063, 54.150475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437256, 34.382656, 54.351238>,  <32.539165, 34.201813, 54.471695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437256, 34.382656, 54.351238>,  <32.267406, 34.684063, 54.150475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437256, 34.382656, 54.351238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607350, 0.174052, 0.775133,
		-0.671434, -0.633969, -0.383744,
		0.424619, -0.753518, 0.501906,
		32.564640, 34.156601, 54.501808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691727, 34.338543, 54.397633>,  <32.267406, 34.684063, 54.150475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691727, 34.338543, 54.397633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.971815, 34.187828, 54.640194>,  <32.139866, 34.097401, 54.785732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.971815, 34.187828, 54.640194>,  <31.691727, 34.338543, 54.397633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971815, 34.187828, 54.640194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591508, 0.169436, 0.788296,
		-0.399764, -0.910673, -0.104229,
		0.700219, -0.376785, 0.606404,
		32.181881, 34.074791, 54.822117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397755, 33.826107, 54.919220>,  <31.691727, 34.338543, 54.397633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397755, 33.826107, 54.919220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730377, 33.974819, 55.084286>,  <31.929951, 34.064045, 55.183327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730377, 33.974819, 55.084286>,  <31.397755, 33.826107, 54.919220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730377, 33.974819, 55.084286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488999, 0.137665, 0.861353,
		0.263427, -0.918055, 0.296278,
		0.831557, 0.371783, 0.412664,
		31.979845, 34.086353, 55.208084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397608, 33.500221, 55.519127>,  <31.397755, 33.826107, 54.919220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397608, 33.500221, 55.519127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.661652, 33.798477, 55.555527>,  <31.820078, 33.977428, 55.577366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.661652, 33.798477, 55.555527>,  <31.397608, 33.500221, 55.519127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661652, 33.798477, 55.555527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321209, 0.170678, 0.931501,
		0.679030, -0.644122, 0.352171,
		0.660108, 0.745638, 0.091002,
		31.859684, 34.022167, 55.582829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592943, 33.428024, 56.174778>,  <31.397608, 33.500221, 55.519127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592943, 33.428024, 56.174778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673063, 33.804020, 56.064285>,  <31.721134, 34.029617, 55.997990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673063, 33.804020, 56.064285>,  <31.592943, 33.428024, 56.174778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673063, 33.804020, 56.064285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324514, 0.329682, 0.886567,
		0.924430, -0.087937, 0.371074,
		0.200299, 0.939988, -0.276232,
		31.733152, 34.086018, 55.981415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836584, 33.683628, 56.773380>,  <31.592943, 33.428024, 56.174778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836584, 33.683628, 56.773380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.743484, 34.008713, 56.559715>,  <31.687624, 34.203762, 56.431515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.743484, 34.008713, 56.559715>,  <31.836584, 33.683628, 56.773380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743484, 34.008713, 56.559715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309269, 0.458883, 0.832934,
		0.922052, 0.359064, 0.144542,
		-0.232749, 0.812711, -0.534161,
		31.673660, 34.252525, 56.399467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238754, 34.345058, 57.048805>,  <31.836584, 33.683628, 56.773380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238754, 34.345058, 57.048805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909729, 34.468491, 56.857738>,  <31.712313, 34.542549, 56.743099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909729, 34.468491, 56.857738>,  <32.238754, 34.345058, 57.048805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909729, 34.468491, 56.857738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261138, 0.541199, 0.799319,
		0.505167, 0.782228, -0.364589,
		-0.822565, 0.308582, -0.477666,
		31.662960, 34.561066, 56.714439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243172, 35.122116, 57.267147>,  <32.238754, 34.345058, 57.048805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243172, 35.122116, 57.267147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879896, 35.032417, 57.125782>,  <31.661930, 34.978600, 57.040962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879896, 35.032417, 57.125782>,  <32.243172, 35.122116, 57.267147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879896, 35.032417, 57.125782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411400, 0.633692, 0.655122,
		0.077042, 0.740370, -0.667770,
		-0.908193, -0.224248, -0.353409,
		31.607439, 34.965141, 57.019760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884048, 35.762424, 57.272095>,  <32.243172, 35.122116, 57.267147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884048, 35.762424, 57.272095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605520, 35.475353, 57.268730>,  <31.438404, 35.303108, 57.266712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605520, 35.475353, 57.268730>,  <31.884048, 35.762424, 57.272095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605520, 35.475353, 57.268730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543422, 0.519521, 0.659387,
		-0.468861, 0.463714, -0.751757,
		-0.696320, -0.717682, -0.008409,
		31.396624, 35.260048, 57.266209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175791, 35.998791, 57.199181>,  <31.884048, 35.762424, 57.272095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175791, 35.998791, 57.199181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120806, 35.644897, 57.377331>,  <31.087814, 35.432564, 57.484222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120806, 35.644897, 57.377331>,  <31.175791, 35.998791, 57.199181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120806, 35.644897, 57.377331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661856, 0.416569, 0.623231,
		-0.736920, -0.209104, -0.642825,
		-0.137461, -0.884729, 0.445375,
		31.079567, 35.379478, 57.510944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530592, 35.975151, 57.196899>,  <31.175791, 35.998791, 57.199181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530592, 35.975151, 57.196899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.617214, 35.690277, 57.464001>,  <30.669188, 35.519352, 57.624260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.617214, 35.690277, 57.464001>,  <30.530592, 35.975151, 57.196899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617214, 35.690277, 57.464001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740245, 0.326156, 0.587928,
		-0.636506, -0.621620, -0.456561,
		0.216558, -0.712187, 0.667751,
		30.682182, 35.476620, 57.664326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964216, 35.507660, 57.351368>,  <30.530592, 35.975151, 57.196899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964216, 35.507660, 57.351368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.197891, 35.451836, 57.671181>,  <30.338097, 35.418343, 57.863068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.197891, 35.451836, 57.671181>,  <29.964216, 35.507660, 57.351368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197891, 35.451836, 57.671181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691190, 0.430808, 0.580225,
		-0.425419, -0.891587, 0.155213,
		0.584188, -0.139557, 0.799530,
		30.373148, 35.409969, 57.911041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530529, 35.323441, 57.841709>,  <29.964216, 35.507660, 57.351368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530529, 35.323441, 57.841709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837444, 35.467941, 58.053658>,  <30.021593, 35.554642, 58.180828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837444, 35.467941, 58.053658>,  <29.530529, 35.323441, 57.841709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837444, 35.467941, 58.053658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634559, 0.547184, 0.545824,
		-0.092756, -0.755039, 0.649085,
		0.767288, 0.361254, 0.529872,
		30.067631, 35.576317, 58.212620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924520, 34.840321, 58.087952>,  <29.530529, 35.323441, 57.841709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924520, 34.840321, 58.087952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628273, 34.888004, 57.823444>,  <28.450525, 34.916615, 57.664742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628273, 34.888004, 57.823444>,  <28.924520, 34.840321, 58.087952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628273, 34.888004, 57.823444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393607, -0.720640, -0.570746,
		-0.544574, -0.682984, 0.486798,
		-0.740616, 0.119206, -0.661270,
		28.406088, 34.923767, 57.625065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879187, 34.176582, 57.911644>,  <28.924520, 34.840321, 58.087952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879187, 34.176582, 57.911644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710577, 34.400196, 57.626045>,  <28.609411, 34.534367, 57.454685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710577, 34.400196, 57.626045>,  <28.879187, 34.176582, 57.911644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710577, 34.400196, 57.626045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474251, -0.535206, -0.699028,
		-0.772920, -0.633272, -0.039522,
		-0.421522, 0.559036, -0.714001,
		28.584120, 34.567905, 57.411846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629608, 33.670250, 57.486740>,  <28.879187, 34.176582, 57.911644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629608, 33.670250, 57.486740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.649639, 34.001141, 57.262886>,  <28.661657, 34.199673, 57.128574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.649639, 34.001141, 57.262886>,  <28.629608, 33.670250, 57.486740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649639, 34.001141, 57.262886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246337, -0.553261, -0.795752,
		-0.967890, -0.098008, -0.231482,
		0.050080, 0.827223, -0.559638,
		28.664663, 34.249306, 57.094994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168064, 33.541534, 56.919857>,  <28.629608, 33.670250, 57.486740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168064, 33.541534, 56.919857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.408772, 33.829800, 56.782150>,  <28.553196, 34.002758, 56.699528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.408772, 33.829800, 56.782150>,  <28.168064, 33.541534, 56.919857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408772, 33.829800, 56.782150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163928, -0.533321, -0.829877,
		-0.781667, 0.442958, -0.439072,
		0.601767, 0.720664, -0.344266,
		28.589302, 34.045998, 56.678871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119511, 33.363411, 56.234974>,  <28.168064, 33.541534, 56.919857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119511, 33.363411, 56.234974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.421947, 33.622631, 56.271542>,  <28.603411, 33.778164, 56.293480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.421947, 33.622631, 56.271542>,  <28.119511, 33.363411, 56.234974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421947, 33.622631, 56.271542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450772, -0.414398, -0.790620,
		-0.474477, 0.638990, -0.605445,
		0.756093, 0.648048, 0.091417,
		28.648775, 33.817047, 56.298965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291697, 33.834522, 55.670666>,  <28.119511, 33.363411, 56.234974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291697, 33.834522, 55.670666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.657877, 33.845280, 55.831276>,  <28.877584, 33.851734, 55.927643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.657877, 33.845280, 55.831276>,  <28.291697, 33.834522, 55.670666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657877, 33.845280, 55.831276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395027, -0.250545, -0.883844,
		0.076830, 0.967731, -0.239986,
		0.915451, 0.026895, 0.401529,
		28.932512, 33.853348, 55.951736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633291, 34.164913, 55.166584>,  <28.291697, 33.834522, 55.670666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633291, 34.164913, 55.166584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.900928, 33.959816, 55.381771>,  <29.061510, 33.836758, 55.510883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.900928, 33.959816, 55.381771>,  <28.633291, 34.164913, 55.166584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900928, 33.959816, 55.381771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411331, -0.347388, -0.842691,
		0.618968, 0.785121, -0.021527,
		0.669093, -0.512744, 0.537967,
		29.101656, 33.805992, 55.543159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284777, 34.309986, 54.970638>,  <28.633291, 34.164913, 55.166584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284777, 34.309986, 54.970638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.312416, 33.946129, 55.134480>,  <29.329000, 33.727814, 55.232784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.312416, 33.946129, 55.134480>,  <29.284777, 34.309986, 54.970638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312416, 33.946129, 55.134480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402470, -0.350267, -0.845772,
		0.912821, 0.223296, 0.341901,
		0.069100, -0.909644, 0.409602,
		29.333147, 33.673237, 55.257359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872002, 34.074154, 54.724026>,  <29.284777, 34.309986, 54.970638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872002, 34.074154, 54.724026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704206, 33.740429, 54.867111>,  <29.603529, 33.540195, 54.952965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704206, 33.740429, 54.867111>,  <29.872002, 34.074154, 54.724026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704206, 33.740429, 54.867111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170663, -0.459520, -0.871616,
		0.891575, -0.304582, 0.335148,
		-0.419486, -0.834308, 0.357716,
		29.578362, 33.490135, 54.974426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425045, 33.453781, 54.654465>,  <29.872002, 34.074154, 54.724026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425045, 33.453781, 54.654465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.046352, 33.325123, 54.660667>,  <29.819136, 33.247929, 54.664387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.046352, 33.325123, 54.660667>,  <30.425045, 33.453781, 54.654465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046352, 33.325123, 54.660667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199786, -0.624442, -0.755088,
		0.252552, -0.711770, 0.655440,
		-0.946733, -0.321647, 0.015502,
		29.762333, 33.228630, 54.665318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448706, 32.792961, 54.372700>,  <30.425045, 33.453781, 54.654465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448706, 32.792961, 54.372700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.051252, 32.816875, 54.334503>,  <29.812780, 32.831226, 54.311584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.051252, 32.816875, 54.334503>,  <30.448706, 32.792961, 54.372700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051252, 32.816875, 54.334503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054393, -0.487708, -0.871311,
		-0.098668, -0.870957, 0.481351,
		-0.993633, 0.059788, -0.095495,
		29.753162, 32.834812, 54.305855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219530, 32.064041, 54.120880>,  <30.448706, 32.792961, 54.372700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219530, 32.064041, 54.120880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.922152, 32.314602, 54.027153>,  <29.743725, 32.464939, 53.970917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.922152, 32.314602, 54.027153>,  <30.219530, 32.064041, 54.120880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922152, 32.314602, 54.027153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022378, -0.373457, -0.927378,
		-0.668421, -0.684212, 0.291663,
		-0.743447, 0.626405, -0.234315,
		29.699118, 32.502525, 53.956860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636456, 31.664534, 53.817738>,  <30.219530, 32.064041, 54.120880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636456, 31.664534, 53.817738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.585743, 32.038353, 53.684746>,  <29.555315, 32.262646, 53.604950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.585743, 32.038353, 53.684746>,  <29.636456, 31.664534, 53.817738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585743, 32.038353, 53.684746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104437, -0.345897, -0.932442,
		-0.986417, -0.083493, 0.141455,
		-0.126781, 0.934550, -0.332479,
		29.547709, 32.318718, 53.585003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136518, 31.665337, 53.216240>,  <29.636456, 31.664534, 53.817738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136518, 31.665337, 53.216240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.325352, 32.015694, 53.176334>,  <29.438652, 32.225906, 53.152390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.325352, 32.015694, 53.176334>,  <29.136518, 31.665337, 53.216240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325352, 32.015694, 53.176334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158271, -0.027123, -0.987023,
		-0.867230, 0.481748, 0.125824,
		0.472083, 0.875890, -0.099769,
		29.466976, 32.278461, 53.146404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.614401, 38.235397, 53.321930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.905272, 38.404015, 53.538639>,  <27.079794, 38.505184, 53.668663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.905272, 38.404015, 53.538639>,  <26.614401, 38.235397, 53.321930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905272, 38.404015, 53.538639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610062, 0.035029, 0.791579,
		0.314708, -0.906131, 0.282640,
		0.727175, 0.421544, 0.541772,
		27.123425, 38.530479, 53.701172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450191, 37.932697, 53.941929>,  <26.614401, 38.235397, 53.321930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450191, 37.932697, 53.941929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.706015, 38.223915, 54.040657>,  <26.859509, 38.398643, 54.099895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.706015, 38.223915, 54.040657>,  <26.450191, 37.932697, 53.941929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706015, 38.223915, 54.040657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436743, 0.079891, 0.896032,
		0.632630, -0.680863, 0.369061,
		0.639559, 0.728041, 0.246821,
		26.897882, 38.442326, 54.114704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599192, 37.776264, 54.688900>,  <26.450191, 37.932697, 53.941929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599192, 37.776264, 54.688900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.699755, 38.159321, 54.632732>,  <26.760094, 38.389156, 54.599030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.699755, 38.159321, 54.632732>,  <26.599192, 37.776264, 54.688900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699755, 38.159321, 54.632732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431897, 0.240835, 0.869174,
		0.866175, -0.157871, 0.474150,
		0.251409, 0.957640, -0.140421,
		26.775177, 38.446613, 54.590607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910173, 37.988884, 55.341885>,  <26.599192, 37.776264, 54.688900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910173, 37.988884, 55.341885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.785400, 38.310669, 55.139679>,  <26.710537, 38.503738, 55.018356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.785400, 38.310669, 55.139679>,  <26.910173, 37.988884, 55.341885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785400, 38.310669, 55.139679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483080, 0.323860, 0.813479,
		0.818126, 0.497954, 0.287596,
		-0.311935, 0.804460, -0.505509,
		26.691820, 38.552006, 54.988026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983992, 38.596928, 55.787182>,  <26.910173, 37.988884, 55.341885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983992, 38.596928, 55.787182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.724897, 38.732342, 55.514172>,  <26.569441, 38.813591, 55.350365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.724897, 38.732342, 55.514172>,  <26.983992, 38.596928, 55.787182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724897, 38.732342, 55.514172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465679, 0.533097, 0.706364,
		0.602978, 0.775372, -0.187657,
		-0.647734, 0.338534, -0.682521,
		26.530577, 38.833900, 55.309414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967302, 39.240910, 55.939690>,  <26.983992, 38.596928, 55.787182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967302, 39.240910, 55.939690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.628777, 39.188850, 55.733074>,  <26.425661, 39.157616, 55.609104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.628777, 39.188850, 55.733074>,  <26.967302, 39.240910, 55.939690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628777, 39.188850, 55.733074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505719, 0.500923, 0.702370,
		0.167339, 0.855651, -0.489755,
		-0.846313, -0.130145, -0.516543,
		26.374882, 39.149807, 55.578110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507458, 39.851158, 56.042740>,  <26.967302, 39.240910, 55.939690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507458, 39.851158, 56.042740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.280497, 39.543312, 55.925613>,  <26.144320, 39.358604, 55.855339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.280497, 39.543312, 55.925613>,  <26.507458, 39.851158, 56.042740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280497, 39.543312, 55.925613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744377, 0.327351, 0.582018,
		-0.352078, 0.548204, -0.758626,
		-0.567401, -0.769620, -0.292817,
		26.110277, 39.312428, 55.837769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853796, 40.175030, 55.740837>,  <26.507458, 39.851158, 56.042740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853796, 40.175030, 55.740837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.785545, 39.803509, 55.872417>,  <25.744595, 39.580597, 55.951366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.785545, 39.803509, 55.872417>,  <25.853796, 40.175030, 55.740837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785545, 39.803509, 55.872417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762976, 0.335789, 0.552371,
		-0.623502, -0.156730, -0.765951,
		-0.170625, -0.928807, 0.328947,
		25.734358, 39.524868, 55.971100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227743, 40.261101, 56.030384>,  <25.853796, 40.175030, 55.740837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227743, 40.261101, 56.030384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.347160, 39.907059, 56.173195>,  <25.418810, 39.694633, 56.258881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.347160, 39.907059, 56.173195>,  <25.227743, 40.261101, 56.030384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347160, 39.907059, 56.173195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673882, 0.069415, 0.735570,
		-0.675837, -0.460194, -0.575730,
		0.298540, -0.885100, 0.357030,
		25.436722, 39.641529, 56.280304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528271, 39.873417, 56.187958>,  <25.227743, 40.261101, 56.030384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528271, 39.873417, 56.187958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.840956, 39.734531, 56.395176>,  <25.028566, 39.651199, 56.519508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.840956, 39.734531, 56.395176>,  <24.528271, 39.873417, 56.187958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840956, 39.734531, 56.395176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521641, 0.091223, 0.848274,
		-0.341786, -0.933340, -0.109809,
		0.781711, -0.347209, 0.518047,
		25.075470, 39.630367, 56.550591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149231, 39.482880, 56.699642>,  <24.528271, 39.873417, 56.187958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149231, 39.482880, 56.699642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.524040, 39.537895, 56.828064>,  <24.748926, 39.570904, 56.905117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.524040, 39.537895, 56.828064>,  <24.149231, 39.482880, 56.699642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524040, 39.537895, 56.828064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342224, 0.177844, 0.922634,
		0.069793, -0.974401, 0.213710,
		0.937023, 0.137530, 0.321051,
		24.805147, 39.579155, 56.924377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.293295, 39.053070, 57.244606>,  <24.149231, 39.482880, 56.699642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.293295, 39.053070, 57.244606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.546637, 39.360348, 57.281990>,  <24.698641, 39.544716, 57.304420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.546637, 39.360348, 57.281990>,  <24.293295, 39.053070, 57.244606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.546637, 39.360348, 57.281990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364009, 0.189154, 0.911986,
		0.682906, -0.611631, 0.399432,
		0.633353, 0.768197, 0.093465,
		24.736643, 39.590809, 57.310028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559294, 38.893559, 57.863548>,  <24.293295, 39.053070, 57.244606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559294, 38.893559, 57.863548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.573475, 39.280766, 57.764206>,  <24.581984, 39.513092, 57.704601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.573475, 39.280766, 57.764206>,  <24.559294, 38.893559, 57.863548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.573475, 39.280766, 57.764206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363542, 0.243975, 0.899063,
		0.930903, 0.058410, 0.360566,
		0.035455, 0.968021, -0.248352,
		24.584112, 39.571171, 57.689701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897511, 39.539513, 58.225777>,  <24.559294, 38.893559, 57.863548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897511, 39.539513, 58.225777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.889874, 39.490860, 58.622734>,  <24.885292, 39.461670, 58.860909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.889874, 39.490860, 58.622734>,  <24.897511, 39.539513, 58.225777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889874, 39.490860, 58.622734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676005, -0.732882, -0.076818,
		0.736649, 0.669396, 0.096213,
		-0.019091, -0.121628, 0.992392,
		24.884146, 39.454372, 58.920452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491339, 39.277252, 58.299812>,  <24.897511, 39.539513, 58.225777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491339, 39.277252, 58.299812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.316940, 39.185780, 58.647976>,  <25.212301, 39.130898, 58.856876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.316940, 39.185780, 58.647976>,  <25.491339, 39.277252, 58.299812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316940, 39.185780, 58.647976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568416, -0.819814, 0.069339,
		0.697719, 0.524987, 0.487418,
		-0.435995, -0.228677, 0.870411,
		25.186142, 39.117176, 58.909100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057993, 39.115826, 58.781326>,  <25.491339, 39.277252, 58.299812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057993, 39.115826, 58.781326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.719614, 38.960415, 58.927433>,  <25.516586, 38.867168, 59.015099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.719614, 38.960415, 58.927433>,  <26.057993, 39.115826, 58.781326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719614, 38.960415, 58.927433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444758, -0.891955, 0.081283,
		0.294220, 0.231216, 0.927348,
		-0.845946, -0.388531, 0.365266,
		25.465830, 38.843857, 59.037014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239958, 38.787308, 59.374393>,  <26.057993, 39.115826, 58.781326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239958, 38.787308, 59.374393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.879475, 38.628590, 59.304676>,  <25.663185, 38.533360, 59.262848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.879475, 38.628590, 59.304676>,  <26.239958, 38.787308, 59.374393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879475, 38.628590, 59.304676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388320, -0.917886, 0.081806,
		-0.192440, 0.006044, 0.981290,
		-0.901207, -0.396797, -0.174291,
		25.609112, 38.509552, 59.252388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071575, 38.244610, 59.902771>,  <26.239958, 38.787308, 59.374393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071575, 38.244610, 59.902771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.863249, 38.173920, 59.568699>,  <25.738253, 38.131508, 59.368256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.863249, 38.173920, 59.568699>,  <26.071575, 38.244610, 59.902771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863249, 38.173920, 59.568699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448124, -0.889299, -0.091277,
		-0.726592, -0.421801, 0.542354,
		-0.520816, -0.176721, -0.835177,
		25.707005, 38.120903, 59.318146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046291, 37.623394, 60.002193>,  <26.071575, 38.244610, 59.902771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046291, 37.623394, 60.002193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.939608, 37.662144, 59.618637>,  <25.875597, 37.685394, 59.388504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.939608, 37.662144, 59.618637>,  <26.046291, 37.623394, 60.002193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939608, 37.662144, 59.618637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423617, -0.881890, -0.206925,
		-0.865686, -0.461393, 0.194172,
		-0.266712, 0.096878, -0.958895,
		25.859594, 37.691208, 59.330967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761438, 37.012524, 59.878429>,  <26.046291, 37.623394, 60.002193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761438, 37.012524, 59.878429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.877609, 37.178413, 59.533485>,  <25.947311, 37.277946, 59.326519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.877609, 37.178413, 59.533485>,  <25.761438, 37.012524, 59.878429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877609, 37.178413, 59.533485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449622, -0.854663, -0.259599,
		-0.844686, -0.312340, -0.434684,
		0.290425, 0.414723, -0.862356,
		25.964737, 37.302830, 59.274780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790739, 36.485687, 59.483559>,  <25.761438, 37.012524, 59.878429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790739, 36.485687, 59.483559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.003723, 36.745945, 59.266987>,  <26.131514, 36.902100, 59.137043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.003723, 36.745945, 59.266987>,  <25.790739, 36.485687, 59.483559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003723, 36.745945, 59.266987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562821, -0.749906, -0.347669,
		-0.632231, -0.119608, -0.765492,
		0.532462, 0.650642, -0.541432,
		26.163462, 36.941139, 59.104557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787004, 36.193241, 58.870785>,  <25.790739, 36.485687, 59.483559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787004, 36.193241, 58.870785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.102751, 36.438770, 58.866203>,  <26.292198, 36.586086, 58.863453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.102751, 36.438770, 58.866203>,  <25.787004, 36.193241, 58.870785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102751, 36.438770, 58.866203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572757, -0.743021, -0.346221,
		-0.221029, 0.266733, -0.938083,
		0.789364, 0.613818, -0.011456,
		26.339560, 36.622917, 58.862766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991131, 36.190746, 58.175087>,  <25.787004, 36.193241, 58.870785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991131, 36.190746, 58.175087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.313854, 36.284397, 58.392067>,  <26.507488, 36.340588, 58.522255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.313854, 36.284397, 58.392067>,  <25.991131, 36.190746, 58.175087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313854, 36.284397, 58.392067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551455, -0.627929, -0.549183,
		0.212039, 0.742219, -0.635729,
		0.806806, 0.234128, 0.542446,
		26.555897, 36.354637, 58.554802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462805, 36.321331, 57.786751>,  <25.991131, 36.190746, 58.175087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462805, 36.321331, 57.786751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.671467, 36.204185, 58.107277>,  <26.796663, 36.133900, 58.299595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.671467, 36.204185, 58.107277>,  <26.462805, 36.321331, 57.786751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671467, 36.204185, 58.107277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598024, -0.544351, -0.588259,
		0.608477, 0.786074, -0.108824,
		0.521654, -0.292863, 0.801317,
		26.827963, 36.116325, 58.347672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966827, 36.174923, 57.443333>,  <26.462805, 36.321331, 57.786751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966827, 36.174923, 57.443333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.099243, 36.058887, 57.802502>,  <27.178692, 35.989265, 58.018002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.099243, 36.058887, 57.802502>,  <26.966827, 36.174923, 57.443333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099243, 36.058887, 57.802502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705653, -0.555650, -0.439666,
		0.626472, 0.779168, 0.020759,
		0.331039, -0.290086, 0.897922,
		27.198555, 35.971863, 58.071877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709356, 36.243744, 57.409775>,  <26.966827, 36.174923, 57.443333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709356, 36.243744, 57.409775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.658670, 35.987152, 57.712414>,  <27.628260, 35.833195, 57.893997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.658670, 35.987152, 57.712414>,  <27.709356, 36.243744, 57.409775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658670, 35.987152, 57.712414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718933, -0.584914, -0.375514,
		0.683432, 0.496360, 0.535301,
		-0.126715, -0.641484, 0.756599,
		27.620655, 35.794708, 57.939392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476038, 36.045979, 57.669071>,  <27.709356, 36.243744, 57.409775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476038, 36.045979, 57.669071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.174206, 35.804306, 57.771507>,  <27.993107, 35.659302, 57.832970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.174206, 35.804306, 57.771507>,  <28.476038, 36.045979, 57.669071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174206, 35.804306, 57.771507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570620, -0.796841, -0.198586,
		0.324042, -0.003721, 0.946036,
		-0.754579, -0.604177, 0.256086,
		27.947832, 35.623055, 57.848331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752514, 35.538662, 58.116322>,  <28.476038, 36.045979, 57.669071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752514, 35.538662, 58.116322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.434582, 35.372147, 57.939709>,  <28.243822, 35.272240, 57.833740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.434582, 35.372147, 57.939709>,  <28.752514, 35.538662, 58.116322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434582, 35.372147, 57.939709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567191, -0.768300, -0.296665,
		-0.215732, -0.486232, 0.846781,
		-0.794830, -0.416286, -0.441533,
		28.196133, 35.247261, 57.807247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261698, 35.406918, 58.612465>,  <28.752514, 35.538662, 58.116322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261698, 35.406918, 58.612465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.578186, 35.647434, 58.567879>,  <29.768078, 35.791744, 58.541126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.578186, 35.647434, 58.567879>,  <29.261698, 35.406918, 58.612465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578186, 35.647434, 58.567879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392527, 0.639127, 0.661392,
		0.468930, -0.479551, 0.741711,
		0.791219, 0.601288, -0.111469,
		29.815552, 35.827820, 58.534439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382189, 35.579212, 59.294094>,  <29.261698, 35.406918, 58.612465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382189, 35.579212, 59.294094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.572540, 35.841557, 59.059696>,  <29.686750, 35.998962, 58.919060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.572540, 35.841557, 59.059696>,  <29.382189, 35.579212, 59.294094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572540, 35.841557, 59.059696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195691, 0.728526, 0.656472,
		0.857464, -0.197728, 0.475036,
		0.475879, 0.655861, -0.585991,
		29.715303, 36.038315, 58.883900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813791, 36.017967, 59.778645>,  <29.382189, 35.579212, 59.294094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813791, 36.017967, 59.778645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.786772, 36.214172, 59.431118>,  <29.770561, 36.331894, 59.222603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.786772, 36.214172, 59.431118>,  <29.813791, 36.017967, 59.778645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786772, 36.214172, 59.431118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393625, 0.787067, 0.474959,
		0.916786, 0.374069, 0.139912,
		-0.067547, 0.490508, -0.868815,
		29.766508, 36.361324, 59.170475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132406, 36.699474, 59.893341>,  <29.813791, 36.017967, 59.778645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132406, 36.699474, 59.893341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.872740, 36.737072, 59.591415>,  <29.716940, 36.759632, 59.410259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.872740, 36.737072, 59.591415>,  <30.132406, 36.699474, 59.893341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872740, 36.737072, 59.591415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325012, 0.862911, 0.386979,
		0.687713, 0.496538, -0.529623,
		-0.649167, 0.093996, -0.754816,
		29.677990, 36.765270, 59.364971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116369, 37.463318, 59.733772>,  <30.132406, 36.699474, 59.893341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116369, 37.463318, 59.733772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.783752, 37.321339, 59.562870>,  <29.584183, 37.236149, 59.460331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.783752, 37.321339, 59.562870>,  <30.116369, 37.463318, 59.733772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783752, 37.321339, 59.562870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524603, 0.754655, 0.394066,
		0.182553, 0.551820, -0.813737,
		-0.831544, -0.354951, -0.427251,
		29.534288, 37.214851, 59.434696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809128, 38.029739, 59.537807>,  <30.116369, 37.463318, 59.733772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809128, 38.029739, 59.537807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.512337, 37.761768, 59.527466>,  <29.334261, 37.600986, 59.521259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.512337, 37.761768, 59.527466>,  <29.809128, 38.029739, 59.537807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512337, 37.761768, 59.527466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623871, 0.675823, 0.392489,
		-0.245464, 0.307349, -0.919393,
		-0.741979, -0.669925, -0.025856,
		29.289743, 37.560791, 59.519711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232132, 38.404621, 59.222279>,  <29.809128, 38.029739, 59.537807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232132, 38.404621, 59.222279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.052629, 38.097034, 59.404400>,  <28.944927, 37.912483, 59.513672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.052629, 38.097034, 59.404400>,  <29.232132, 38.404621, 59.222279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052629, 38.097034, 59.404400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639517, 0.632206, 0.437417,
		-0.624206, -0.094881, -0.775477,
		-0.448759, -0.768969, 0.455305,
		28.918001, 37.866344, 59.540993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026020, 38.803265, 58.570820>,  <29.232132, 38.404621, 59.222279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026020, 38.803265, 58.570820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.174517, 39.174587, 58.562538>,  <29.263615, 39.397381, 58.557568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.174517, 39.174587, 58.562538>,  <29.026020, 38.803265, 58.570820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174517, 39.174587, 58.562538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564215, -0.243234, -0.788986,
		-0.737456, 0.281222, -0.614063,
		0.371241, 0.928306, -0.020705,
		29.285889, 39.453079, 58.556328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863470, 39.001675, 57.924568>,  <29.026020, 38.803265, 58.570820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863470, 39.001675, 57.924568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.168238, 39.230545, 58.045956>,  <29.351099, 39.367867, 58.118790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.168238, 39.230545, 58.045956>,  <28.863470, 39.001675, 57.924568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168238, 39.230545, 58.045956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485538, -0.194511, -0.852302,
		-0.428638, 0.796731, -0.426015,
		0.761920, 0.572175, 0.303468,
		29.396814, 39.402199, 58.136997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044355, 39.562283, 57.407761>,  <28.863470, 39.001675, 57.924568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044355, 39.562283, 57.407761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376980, 39.503235, 57.621944>,  <29.576555, 39.467808, 57.750454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376980, 39.503235, 57.621944>,  <29.044355, 39.562283, 57.407761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376980, 39.503235, 57.621944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487195, -0.269103, -0.830798,
		0.266735, 0.951731, -0.151856,
		0.831561, -0.147619, 0.535458,
		29.626448, 39.458950, 57.782581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523436, 39.630112, 56.819733>,  <29.044355, 39.562283, 57.407761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523436, 39.630112, 56.819733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.762707, 39.523834, 57.122147>,  <29.906269, 39.460068, 57.303596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.762707, 39.523834, 57.122147>,  <29.523436, 39.630112, 56.819733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762707, 39.523834, 57.122147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573155, -0.517517, -0.635350,
		0.560070, 0.813378, -0.157283,
		0.598176, -0.265693, 0.756037,
		29.942160, 39.444126, 57.348957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190298, 39.803703, 56.676201>,  <29.523436, 39.630112, 56.819733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190298, 39.803703, 56.676201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.271902, 39.497246, 56.919971>,  <30.320866, 39.313370, 57.066235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.271902, 39.497246, 56.919971>,  <30.190298, 39.803703, 56.676201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271902, 39.497246, 56.919971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590303, -0.400340, -0.700907,
		0.780975, 0.502738, 0.370585,
		0.204012, -0.766148, 0.609423,
		30.333105, 39.267403, 57.102798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882812, 39.743034, 56.666531>,  <30.190298, 39.803703, 56.676201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882812, 39.743034, 56.666531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.754768, 39.386761, 56.795654>,  <30.677942, 39.172997, 56.873127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.754768, 39.386761, 56.795654>,  <30.882812, 39.743034, 56.666531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754768, 39.386761, 56.795654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408471, -0.437197, -0.801256,
		0.854799, -0.124632, 0.503771,
		-0.320109, -0.890688, 0.322807,
		30.658735, 39.119553, 56.892498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391874, 39.334637, 56.587254>,  <30.882812, 39.743034, 56.666531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391874, 39.334637, 56.587254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.080479, 39.083576, 56.588486>,  <30.893641, 38.932941, 56.589226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.080479, 39.083576, 56.588486>,  <31.391874, 39.334637, 56.587254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080479, 39.083576, 56.588486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390925, -0.488699, -0.779969,
		0.491052, -0.605994, 0.625811,
		-0.778490, -0.627650, 0.003078,
		30.846931, 38.895283, 56.589409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.665640, 42.310066, 57.241776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486980, 41.954147, 57.204334>,  <26.379786, 41.740597, 57.181870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486980, 41.954147, 57.204334>,  <26.665640, 42.310066, 57.241776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486980, 41.954147, 57.204334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388004, -0.098364, -0.916394,
		0.806201, -0.445622, 0.389180,
		-0.446647, -0.889801, -0.093602,
		26.352985, 41.687206, 57.176254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051149, 41.643017, 57.082218>,  <26.665640, 42.310066, 57.241776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051149, 41.643017, 57.082218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690680, 41.584633, 56.918961>,  <26.474398, 41.549603, 56.821007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690680, 41.584633, 56.918961>,  <27.051149, 41.643017, 57.082218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690680, 41.584633, 56.918961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430712, -0.195820, -0.880989,
		0.048664, -0.969717, 0.239333,
		-0.901177, -0.145956, -0.408139,
		26.420326, 41.540848, 56.796520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221136, 41.161247, 56.479786>,  <27.051149, 41.643017, 57.082218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221136, 41.161247, 56.479786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841122, 41.260536, 56.404083>,  <26.613113, 41.320110, 56.358662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841122, 41.260536, 56.404083>,  <27.221136, 41.161247, 56.479786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841122, 41.260536, 56.404083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139320, -0.205357, -0.968720,
		-0.279319, -0.946687, 0.160515,
		-0.950037, 0.248218, -0.189252,
		26.556110, 41.335003, 56.347309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918821, 40.537224, 56.172894>,  <27.221136, 41.161247, 56.479786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918821, 40.537224, 56.172894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747498, 40.881161, 56.061741>,  <26.644703, 41.087524, 55.995049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747498, 40.881161, 56.061741>,  <26.918821, 40.537224, 56.172894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747498, 40.881161, 56.061741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270391, -0.171473, -0.947357,
		-0.862230, -0.480897, -0.159051,
		-0.428308, 0.859846, -0.277880,
		26.619005, 41.139114, 55.978378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628012, 40.429710, 55.603035>,  <26.918821, 40.537224, 56.172894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628012, 40.429710, 55.603035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575039, 40.823948, 55.560940>,  <26.543255, 41.060490, 55.535683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575039, 40.823948, 55.560940>,  <26.628012, 40.429710, 55.603035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575039, 40.823948, 55.560940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174311, -0.081360, -0.981324,
		-0.975745, -0.148301, -0.161024,
		-0.132430, 0.985590, -0.105237,
		26.535311, 41.119625, 55.529369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131102, 40.683205, 55.012444>,  <26.628012, 40.429710, 55.603035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131102, 40.683205, 55.012444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411516, 40.963886, 55.063305>,  <26.579765, 41.132294, 55.093822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411516, 40.963886, 55.063305>,  <26.131102, 40.683205, 55.012444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411516, 40.963886, 55.063305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151502, 0.027682, -0.988069,
		-0.696848, 0.711935, -0.086903,
		0.701035, 0.701700, 0.127150,
		26.621826, 41.174397, 55.101448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248159, 40.783089, 54.316807>,  <26.131102, 40.683205, 55.012444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248159, 40.783089, 54.316807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530981, 40.994827, 54.504368>,  <26.700674, 41.121872, 54.616905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530981, 40.994827, 54.504368>,  <26.248159, 40.783089, 54.316807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530981, 40.994827, 54.504368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427773, 0.207835, -0.879667,
		-0.563105, 0.822553, -0.079491,
		0.707052, 0.529350, 0.468899,
		26.743097, 41.153633, 54.645039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347378, 41.424347, 53.915031>,  <26.248159, 40.783089, 54.316807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347378, 41.424347, 53.915031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666210, 41.346512, 54.143696>,  <26.857510, 41.299812, 54.280895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666210, 41.346512, 54.143696>,  <26.347378, 41.424347, 53.915031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666210, 41.346512, 54.143696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598220, 0.125220, -0.791488,
		0.082428, 0.972860, 0.216215,
		0.797081, -0.194585, 0.571663,
		26.905334, 41.288136, 54.315193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902794, 41.893593, 53.653439>,  <26.347378, 41.424347, 53.915031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902794, 41.893593, 53.653439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107759, 41.629379, 53.872940>,  <27.230738, 41.470852, 54.004642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107759, 41.629379, 53.872940>,  <26.902794, 41.893593, 53.653439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107759, 41.629379, 53.872940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683046, -0.073800, -0.726637,
		0.520464, 0.747164, 0.413356,
		0.512412, -0.660530, 0.548757,
		27.261482, 41.431221, 54.037567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539986, 42.121601, 53.611912>,  <26.902794, 41.893593, 53.653439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539986, 42.121601, 53.611912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568693, 41.728062, 53.677502>,  <27.585918, 41.491936, 53.716854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568693, 41.728062, 53.677502>,  <27.539986, 42.121601, 53.611912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568693, 41.728062, 53.677502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631531, -0.082422, -0.770957,
		0.772022, 0.158885, 0.615417,
		0.071769, -0.983851, 0.163972,
		27.590223, 41.432907, 53.726692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211273, 42.014011, 53.452785>,  <27.539986, 42.121601, 53.611912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211273, 42.014011, 53.452785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061274, 41.643253, 53.459030>,  <27.971273, 41.420799, 53.462776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061274, 41.643253, 53.459030>,  <28.211273, 42.014011, 53.452785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061274, 41.643253, 53.459030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625345, -0.265357, -0.733846,
		0.684339, -0.265430, 0.679137,
		-0.374998, -0.926894, 0.015609,
		27.948774, 41.365185, 53.463715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705664, 41.538475, 53.768429>,  <28.211273, 42.014011, 53.452785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705664, 41.538475, 53.768429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480137, 41.359772, 53.490574>,  <28.344822, 41.252548, 53.323860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480137, 41.359772, 53.490574>,  <28.705664, 41.538475, 53.768429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480137, 41.359772, 53.490574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815296, -0.166724, -0.554523,
		0.131928, -0.878980, 0.458245,
		-0.563815, -0.446763, -0.694633,
		28.310993, 41.225742, 53.282185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049162, 41.045593, 54.279839>,  <28.705664, 41.538475, 53.768429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049162, 41.045593, 54.279839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389278, 41.055626, 54.490124>,  <29.593349, 41.061646, 54.616295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389278, 41.055626, 54.490124>,  <29.049162, 41.045593, 54.279839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389278, 41.055626, 54.490124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519000, 0.205858, 0.829615,
		-0.087412, -0.978260, 0.188059,
		0.850293, 0.025084, 0.525712,
		29.644365, 41.063152, 54.647839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849625, 40.709927, 54.885696>,  <29.049162, 41.045593, 54.279839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849625, 40.709927, 54.885696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163784, 40.940994, 54.974648>,  <29.352280, 41.079636, 55.028019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163784, 40.940994, 54.974648>,  <28.849625, 40.709927, 54.885696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163784, 40.940994, 54.974648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415290, 0.225355, 0.881334,
		0.459003, -0.784549, 0.416892,
		0.785398, 0.577666, 0.222377,
		29.399405, 41.114292, 55.041359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943663, 40.627731, 55.677868>,  <28.849625, 40.709927, 54.885696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943663, 40.627731, 55.677868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168367, 40.948261, 55.595600>,  <29.303190, 41.140579, 55.546238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168367, 40.948261, 55.595600>,  <28.943663, 40.627731, 55.677868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168367, 40.948261, 55.595600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269344, 0.412213, 0.870365,
		0.782225, -0.433542, 0.447398,
		0.561763, 0.801325, -0.205671,
		29.336897, 41.188660, 55.533897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151178, 40.737629, 56.296127>,  <28.943663, 40.627731, 55.677868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151178, 40.737629, 56.296127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250183, 41.083664, 56.121601>,  <29.309586, 41.291283, 56.016888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250183, 41.083664, 56.121601>,  <29.151178, 40.737629, 56.296127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250183, 41.083664, 56.121601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264093, 0.493511, 0.828675,
		0.932198, -0.089880, 0.350612,
		0.247512, 0.865083, -0.436313,
		29.324436, 41.343189, 55.990707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659565, 41.039394, 56.666485>,  <29.151178, 40.737629, 56.296127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659565, 41.039394, 56.666485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456463, 41.323711, 56.471767>,  <29.334602, 41.494301, 56.354939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456463, 41.323711, 56.471767>,  <29.659565, 41.039394, 56.666485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456463, 41.323711, 56.471767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039574, 0.545211, 0.837364,
		0.860593, 0.444438, -0.248704,
		-0.507753, 0.710788, -0.486793,
		29.304136, 41.536949, 56.325729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011269, 41.550743, 56.912609>,  <29.659565, 41.039394, 56.666485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011269, 41.550743, 56.912609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675823, 41.708916, 56.762753>,  <29.474556, 41.803818, 56.672836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675823, 41.708916, 56.762753>,  <30.011269, 41.550743, 56.912609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675823, 41.708916, 56.762753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061749, 0.614327, 0.786632,
		0.541215, 0.682815, -0.490766,
		-0.838614, 0.395433, -0.374645,
		29.424238, 41.827545, 56.650360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010254, 42.241173, 57.243095>,  <30.011269, 41.550743, 56.912609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010254, 42.241173, 57.243095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640343, 42.208530, 57.094437>,  <29.418396, 42.188946, 57.005241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640343, 42.208530, 57.094437>,  <30.010254, 42.241173, 57.243095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640343, 42.208530, 57.094437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356456, 0.527513, 0.771148,
		0.133120, 0.845618, -0.516922,
		-0.924780, -0.081605, -0.371648,
		29.362909, 42.184048, 56.982941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736061, 42.960503, 57.093689>,  <30.010254, 42.241173, 57.243095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736061, 42.960503, 57.093689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436758, 42.699535, 57.141788>,  <29.257175, 42.542953, 57.170647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436758, 42.699535, 57.141788>,  <29.736061, 42.960503, 57.093689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436758, 42.699535, 57.141788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239936, 0.435132, 0.867808,
		-0.618498, 0.620492, -0.482130,
		-0.748258, -0.652418, 0.120250,
		29.212280, 42.503811, 57.177864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109333, 43.380569, 57.243908>,  <29.736061, 42.960503, 57.093689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109333, 43.380569, 57.243908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016201, 43.011215, 57.365986>,  <28.960321, 42.789600, 57.439232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016201, 43.011215, 57.365986>,  <29.109333, 43.380569, 57.243908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016201, 43.011215, 57.365986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410664, 0.377814, 0.829826,
		-0.881559, 0.067877, -0.467169,
		-0.232829, -0.923390, 0.305191,
		28.946352, 42.734200, 57.457542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366358, 43.398731, 57.355015>,  <29.109333, 43.380569, 57.243908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366358, 43.398731, 57.355015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508915, 43.106747, 57.588303>,  <28.594450, 42.931557, 57.728275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508915, 43.106747, 57.588303>,  <28.366358, 43.398731, 57.355015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508915, 43.106747, 57.588303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336142, 0.482242, 0.808982,
		-0.871775, -0.484361, -0.073501,
		0.356394, -0.729957, 0.583220,
		28.615833, 42.887760, 57.763268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860142, 43.357307, 57.923458>,  <28.366358, 43.398731, 57.355015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860142, 43.357307, 57.923458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182665, 43.168861, 58.066517>,  <28.376179, 43.055794, 58.152351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182665, 43.168861, 58.066517>,  <27.860142, 43.357307, 57.923458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182665, 43.168861, 58.066517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132946, 0.444833, 0.885691,
		-0.576360, -0.761689, 0.296039,
		0.806309, -0.471119, 0.357647,
		28.424559, 43.027527, 58.173813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644333, 42.889481, 58.442513>,  <27.860142, 43.357307, 57.923458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644333, 42.889481, 58.442513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034422, 42.929432, 58.521469>,  <28.268476, 42.953403, 58.568844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034422, 42.929432, 58.521469>,  <27.644333, 42.889481, 58.442513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034422, 42.929432, 58.521469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219936, 0.341783, 0.913681,
		0.023796, -0.934456, 0.355283,
		0.975224, 0.099881, 0.197387,
		28.326988, 42.959396, 58.580685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780937, 42.646248, 59.057819>,  <27.644333, 42.889481, 58.442513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780937, 42.646248, 59.057819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094296, 42.889999, 59.008907>,  <28.282310, 43.036251, 58.979561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094296, 42.889999, 59.008907>,  <27.780937, 42.646248, 59.057819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094296, 42.889999, 59.008907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174809, 0.404833, 0.897525,
		0.596436, -0.681740, 0.423669,
		0.783394, 0.609377, -0.122282,
		28.329313, 43.072811, 58.972221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144253, 42.813412, 59.750320>,  <27.780937, 42.646248, 59.057819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144253, 42.813412, 59.750320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221886, 43.122753, 59.508904>,  <28.268465, 43.308357, 59.364056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221886, 43.122753, 59.508904>,  <28.144253, 42.813412, 59.750320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221886, 43.122753, 59.508904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256978, 0.633835, 0.729532,
		0.946729, 0.013508, 0.321750,
		0.194081, 0.773351, -0.603540,
		28.280109, 43.354759, 59.327843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925501, 42.142002, 59.644482>,  <28.144253, 42.813412, 59.750320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925501, 42.142002, 59.644482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024845, 41.902210, 59.948837>,  <28.084452, 41.758335, 60.131451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024845, 41.902210, 59.948837>,  <27.925501, 42.142002, 59.644482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024845, 41.902210, 59.948837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507480, -0.588550, -0.629343,
		0.825095, 0.542437, 0.158050,
		0.248359, -0.599475, 0.760886,
		28.099352, 41.722366, 60.177101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617601, 41.891373, 59.536587>,  <27.925501, 42.142002, 59.644482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617601, 41.891373, 59.536587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504976, 41.608810, 59.796345>,  <28.437401, 41.439274, 59.952198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504976, 41.608810, 59.796345>,  <28.617601, 41.891373, 59.536587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504976, 41.608810, 59.796345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445177, -0.695696, -0.563759,
		0.850023, 0.130360, 0.510360,
		-0.281564, -0.706409, 0.649391,
		28.420507, 41.396889, 59.991161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232697, 41.525337, 59.863270>,  <28.617601, 41.891373, 59.536587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232697, 41.525337, 59.863270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935551, 41.257954, 59.877800>,  <28.757263, 41.097523, 59.886517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935551, 41.257954, 59.877800>,  <29.232697, 41.525337, 59.863270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935551, 41.257954, 59.877800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580105, -0.669856, -0.463433,
		0.334115, -0.323197, 0.885387,
		-0.742863, -0.668458, 0.036321,
		28.712692, 41.057415, 59.888695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502834, 40.972569, 60.044498>,  <29.232697, 41.525337, 59.863270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502834, 40.972569, 60.044498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171131, 40.846832, 59.859665>,  <28.972109, 40.771393, 59.748764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171131, 40.846832, 59.859665>,  <29.502834, 40.972569, 60.044498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171131, 40.846832, 59.859665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540573, -0.660969, -0.520481,
		-0.141815, -0.681403, 0.718037,
		-0.829258, -0.314339, -0.462084,
		28.922354, 40.752529, 59.721039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529413, 40.162304, 60.003677>,  <29.502834, 40.972569, 60.044498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529413, 40.162304, 60.003677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250101, 40.271946, 59.739174>,  <29.082514, 40.337730, 59.580471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250101, 40.271946, 59.739174>,  <29.529413, 40.162304, 60.003677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250101, 40.271946, 59.739174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350838, -0.674165, -0.649934,
		-0.623954, -0.685832, 0.374588,
		-0.698280, 0.274109, -0.661263,
		29.040617, 40.354179, 59.540794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313877, 39.489197, 59.785336>,  <29.529413, 40.162304, 60.003677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313877, 39.489197, 59.785336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190865, 39.754173, 59.512104>,  <29.117058, 39.913158, 59.348167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190865, 39.754173, 59.512104>,  <29.313877, 39.489197, 59.785336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190865, 39.754173, 59.512104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306809, -0.610491, -0.730184,
		-0.900719, -0.434126, -0.015500,
		-0.307529, 0.662446, -0.683075,
		29.098606, 39.952908, 59.307182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066813, 39.113316, 59.283176>,  <29.313877, 39.489197, 59.785336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066813, 39.113316, 59.283176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112654, 39.460812, 59.090443>,  <29.140158, 39.669308, 58.974804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112654, 39.460812, 59.090443>,  <29.066813, 39.113316, 59.283176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112654, 39.460812, 59.090443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434839, -0.479961, -0.761940,
		-0.893186, -0.122198, -0.432766,
		0.114603, 0.868738, -0.481831,
		29.147034, 39.721432, 58.945892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554762, 38.640751, 59.216473>,  <29.066813, 39.113316, 59.283176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554762, 38.640751, 59.216473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560818, 38.351505, 59.492699>,  <28.564451, 38.177959, 59.658432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560818, 38.351505, 59.492699>,  <28.554762, 38.640751, 59.216473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560818, 38.351505, 59.492699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626973, 0.531132, 0.569916,
		-0.778894, -0.441592, -0.445332,
		0.015140, -0.723115, 0.690562,
		28.565359, 38.134571, 59.699867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888781, 38.394859, 59.314667>,  <28.554762, 38.640751, 59.216473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888781, 38.394859, 59.314667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064255, 38.311230, 59.664261>,  <28.169538, 38.261051, 59.874016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064255, 38.311230, 59.664261>,  <27.888781, 38.394859, 59.314667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064255, 38.311230, 59.664261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804440, 0.342123, 0.485621,
		-0.400539, -0.916101, -0.018103,
		0.438684, -0.209073, 0.873982,
		28.195860, 38.248508, 59.926456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456177, 37.917999, 59.658375>,  <27.888781, 38.394859, 59.314667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456177, 37.917999, 59.658375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658663, 38.059788, 59.972851>,  <27.780155, 38.144863, 60.161537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658663, 38.059788, 59.972851>,  <27.456177, 37.917999, 59.658375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658663, 38.059788, 59.972851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828803, 0.451961, 0.329874,
		-0.238395, -0.818584, 0.522579,
		0.506215, 0.354474, 0.786190,
		27.810528, 38.166130, 60.208706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095385, 37.765968, 60.270439>,  <27.456177, 37.917999, 59.658375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095385, 37.765968, 60.270439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323151, 38.077141, 60.376717>,  <27.459810, 38.263844, 60.440483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323151, 38.077141, 60.376717>,  <27.095385, 37.765968, 60.270439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323151, 38.077141, 60.376717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809420, 0.474133, 0.346464,
		0.143550, -0.412340, 0.899650,
		0.569415, 0.777929, 0.265694,
		27.493975, 38.310520, 60.456425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785389, 37.984268, 60.868481>,  <27.095385, 37.765968, 60.270439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785389, 37.984268, 60.868481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015764, 38.294819, 60.766079>,  <27.153990, 38.481148, 60.704639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015764, 38.294819, 60.766079>,  <26.785389, 37.984268, 60.868481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015764, 38.294819, 60.766079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692199, 0.629744, 0.352538,
		0.434918, -0.025836, 0.900100,
		0.575941, 0.776373, -0.256004,
		27.188547, 38.527729, 60.689278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710165, 38.329357, 61.422371>,  <26.785389, 37.984268, 60.868481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710165, 38.329357, 61.422371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816324, 38.574337, 61.124519>,  <26.880020, 38.721325, 60.945808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816324, 38.574337, 61.124519>,  <26.710165, 38.329357, 61.422371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816324, 38.574337, 61.124519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682780, 0.664680, 0.303336,
		0.680717, 0.427913, 0.594571,
		0.265397, 0.612447, -0.744629,
		26.895945, 38.758072, 60.901131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851135, 38.948887, 61.749645>,  <26.710165, 38.329357, 61.422371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851135, 38.948887, 61.749645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765957, 39.035751, 61.368595>,  <26.714849, 39.087868, 61.139965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765957, 39.035751, 61.368595>,  <26.851135, 38.948887, 61.749645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765957, 39.035751, 61.368595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754737, 0.582627, 0.301526,
		0.620504, 0.783191, 0.039827,
		-0.212948, 0.217157, -0.952626,
		26.702072, 39.100899, 61.082806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572119, 39.511528, 61.877193>,  <26.851135, 38.948887, 61.749645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572119, 39.511528, 61.877193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493509, 39.472286, 61.486961>,  <26.446344, 39.448742, 61.252823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493509, 39.472286, 61.486961>,  <26.572119, 39.511528, 61.877193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493509, 39.472286, 61.486961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670478, 0.739442, 0.060703,
		0.715429, 0.666033, -0.211095,
		-0.196523, -0.098106, -0.975579,
		26.434553, 39.442856, 61.194286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502937, 40.256004, 61.542999>,  <26.572119, 39.511528, 61.877193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502937, 40.256004, 61.542999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278461, 40.010254, 61.321152>,  <26.143776, 39.862804, 61.188042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278461, 40.010254, 61.321152>,  <26.502937, 40.256004, 61.542999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278461, 40.010254, 61.321152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624443, 0.754093, -0.203505,
		0.543264, 0.232123, -0.806835,
		-0.561191, -0.614379, -0.554619,
		26.110104, 39.825939, 61.154766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.673401, 35.887226, 46.344700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.788857, 36.089127, 46.670132>,  <36.858131, 36.210266, 46.865391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.788857, 36.089127, 46.670132>,  <36.673401, 35.887226, 46.344700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788857, 36.089127, 46.670132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782859, -0.364781, 0.504050,
		0.551198, -0.782408, 0.289859,
		0.288637, 0.504750, 0.813582,
		36.875446, 36.240551, 46.914207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789146, 35.367229, 46.856228>,  <36.673401, 35.887226, 46.344700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789146, 35.367229, 46.856228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717049, 35.716103, 47.038132>,  <36.673790, 35.925426, 47.147274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717049, 35.716103, 47.038132>,  <36.789146, 35.367229, 46.856228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717049, 35.716103, 47.038132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829535, -0.383228, 0.406212,
		0.528569, -0.304023, 0.792581,
		-0.180241, 0.872184, 0.454761,
		36.662975, 35.977757, 47.174561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661350, 35.157452, 47.495323>,  <36.789146, 35.367229, 46.856228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661350, 35.157452, 47.495323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518730, 35.531113, 47.489197>,  <36.433159, 35.755310, 47.485519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518730, 35.531113, 47.489197>,  <36.661350, 35.157452, 47.495323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518730, 35.531113, 47.489197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831624, -0.309859, 0.460857,
		0.425764, 0.177058, 0.887342,
		-0.356549, 0.934151, -0.015319,
		36.411766, 35.811359, 47.484600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438232, 35.353779, 48.238846>,  <36.661350, 35.157452, 47.495323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438232, 35.353779, 48.238846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251064, 35.611252, 47.996616>,  <36.138763, 35.765736, 47.851276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251064, 35.611252, 47.996616>,  <36.438232, 35.353779, 48.238846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251064, 35.611252, 47.996616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834193, -0.095402, 0.543158,
		0.291849, 0.759322, 0.581597,
		-0.467917, 0.643684, -0.605578,
		36.110691, 35.804356, 47.814941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054600, 35.761562, 48.636635>,  <36.438232, 35.353779, 48.238846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054600, 35.761562, 48.636635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864002, 35.797989, 48.286854>,  <35.749645, 35.819847, 48.076984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864002, 35.797989, 48.286854>,  <36.054600, 35.761562, 48.636635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864002, 35.797989, 48.286854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853566, -0.286244, 0.435304,
		-0.210663, 0.953819, 0.214128,
		-0.476494, 0.091069, -0.874448,
		35.721054, 35.825310, 48.024521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517117, 36.234375, 48.733334>,  <36.054600, 35.761562, 48.636635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517117, 36.234375, 48.733334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406559, 36.051907, 48.394981>,  <35.340225, 35.942425, 48.191971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406559, 36.051907, 48.394981>,  <35.517117, 36.234375, 48.733334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406559, 36.051907, 48.394981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934359, -0.078416, 0.347597,
		-0.224894, 0.886430, -0.404555,
		-0.276397, -0.456172, -0.845879,
		35.323639, 35.915054, 48.141216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862026, 36.543114, 48.636986>,  <35.517117, 36.234375, 48.733334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862026, 36.543114, 48.636986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.880848, 36.210739, 48.415234>,  <34.892139, 36.011314, 48.282185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.880848, 36.210739, 48.415234>,  <34.862026, 36.543114, 48.636986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880848, 36.210739, 48.415234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961102, -0.188874, 0.201518,
		-0.272156, 0.523331, -0.807500,
		0.047055, -0.830934, -0.554377,
		34.894966, 35.961460, 48.248920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259190, 36.521881, 48.278961>,  <34.862026, 36.543114, 48.636986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259190, 36.521881, 48.278961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393589, 36.146618, 48.245571>,  <34.474228, 35.921459, 48.225536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393589, 36.146618, 48.245571>,  <34.259190, 36.521881, 48.278961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393589, 36.146618, 48.245571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911006, -0.346213, 0.224064,
		-0.239107, 0.000761, -0.970993,
		0.336000, -0.938155, -0.083475,
		34.494389, 35.865170, 48.220528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768528, 36.256077, 47.765369>,  <34.259190, 36.521881, 48.278961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768528, 36.256077, 47.765369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926201, 35.965466, 47.990501>,  <34.020805, 35.791100, 48.125580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926201, 35.965466, 47.990501>,  <33.768528, 36.256077, 47.765369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926201, 35.965466, 47.990501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915357, -0.255635, 0.311084,
		-0.082132, -0.637814, -0.765799,
		0.394178, -0.726529, 0.562832,
		34.044453, 35.747505, 48.159351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331432, 35.764141, 47.801826>,  <33.768528, 36.256077, 47.765369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331432, 35.764141, 47.801826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.553112, 35.632221, 48.107529>,  <33.686119, 35.553070, 48.290951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.553112, 35.632221, 48.107529>,  <33.331432, 35.764141, 47.801826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553112, 35.632221, 48.107529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821312, -0.365910, 0.437672,
		0.135306, -0.870254, -0.473656,
		0.554201, -0.329800, 0.764260,
		33.719372, 35.533279, 48.336807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244114, 35.022778, 47.951080>,  <33.331432, 35.764141, 47.801826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244114, 35.022778, 47.951080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375702, 35.163342, 48.301689>,  <33.454655, 35.247681, 48.512054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375702, 35.163342, 48.301689>,  <33.244114, 35.022778, 47.951080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375702, 35.163342, 48.301689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779859, -0.422339, 0.462006,
		0.532542, -0.835550, 0.135112,
		0.328967, 0.351406, 0.876524,
		33.474392, 35.268764, 48.564648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006676, 34.490871, 48.434120>,  <33.244114, 35.022778, 47.951080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006676, 34.490871, 48.434120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.059746, 34.821045, 48.653591>,  <33.091587, 35.019150, 48.785275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.059746, 34.821045, 48.653591>,  <33.006676, 34.490871, 48.434120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059746, 34.821045, 48.653591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745036, -0.282044, 0.604460,
		0.653696, -0.488983, 0.577561,
		0.132674, 0.825437, 0.548681,
		33.099548, 35.068676, 48.818195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913666, 34.286018, 49.129425>,  <33.006676, 34.490871, 48.434120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913666, 34.286018, 49.129425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.881180, 34.684013, 49.152790>,  <32.861687, 34.922810, 49.166809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.881180, 34.684013, 49.152790>,  <32.913666, 34.286018, 49.129425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881180, 34.684013, 49.152790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844758, -0.099815, 0.525758,
		0.528951, -0.006642, 0.848627,
		-0.081214, 0.994984, 0.058408,
		32.856815, 34.982510, 49.170311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814335, 34.394295, 49.790592>,  <32.913666, 34.286018, 49.129425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814335, 34.394295, 49.790592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.659710, 34.698277, 49.581581>,  <32.566933, 34.880665, 49.456173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.659710, 34.698277, 49.581581>,  <32.814335, 34.394295, 49.790592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659710, 34.698277, 49.581581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819504, -0.023147, 0.572606,
		0.423059, 0.649563, 0.631734,
		-0.386567, 0.759955, -0.522527,
		32.543739, 34.926262, 49.424824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685223, 35.085926, 50.206467>,  <32.814335, 34.394295, 49.790592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685223, 35.085926, 50.206467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.436977, 35.005352, 49.903347>,  <32.288029, 34.957008, 49.721474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.436977, 35.005352, 49.903347>,  <32.685223, 35.085926, 50.206467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436977, 35.005352, 49.903347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782931, 0.106064, 0.613001,
		-0.043102, 0.973743, -0.223532,
		-0.620614, -0.201432, -0.757802,
		32.250793, 34.944923, 49.676006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203495, 35.565666, 50.239346>,  <32.685223, 35.085926, 50.206467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203495, 35.565666, 50.239346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.028728, 35.265491, 50.040970>,  <31.923868, 35.085388, 49.921944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.028728, 35.265491, 50.040970>,  <32.203495, 35.565666, 50.239346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028728, 35.265491, 50.040970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884368, 0.257672, 0.389229,
		-0.164302, 0.608650, -0.776241,
		-0.436919, -0.750433, -0.495935,
		31.897654, 35.040363, 49.892189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627932, 35.828060, 49.925419>,  <32.203495, 35.565666, 50.239346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627932, 35.828060, 49.925419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.550695, 35.435795, 49.912674>,  <31.504353, 35.200436, 49.905029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.550695, 35.435795, 49.912674>,  <31.627932, 35.828060, 49.925419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550695, 35.435795, 49.912674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971808, 0.186668, 0.144031,
		-0.135299, 0.058774, -0.989060,
		-0.193091, -0.980663, -0.031861,
		31.492767, 35.141594, 49.903114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000633, 35.874084, 49.530468>,  <31.627932, 35.828060, 49.925419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000633, 35.874084, 49.530468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.022160, 35.534554, 49.740837>,  <31.035076, 35.330833, 49.867058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.022160, 35.534554, 49.740837>,  <31.000633, 35.874084, 49.530468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022160, 35.534554, 49.740837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965934, 0.089261, 0.242907,
		-0.253130, -0.521078, -0.815109,
		0.053816, -0.848829, 0.525922,
		31.038305, 35.279903, 49.898613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487679, 35.388573, 49.341248>,  <31.000633, 35.874084, 49.530468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487679, 35.388573, 49.341248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.565567, 35.290829, 49.721222>,  <30.612301, 35.232182, 49.949207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.565567, 35.290829, 49.721222>,  <30.487679, 35.388573, 49.341248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565567, 35.290829, 49.721222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980071, -0.009661, 0.198413,
		-0.039311, -0.969630, -0.241395,
		0.194720, -0.244384, 0.949927,
		30.623983, 35.217522, 50.006203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966385, 34.876793, 49.524696>,  <30.487679, 35.388573, 49.341248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966385, 34.876793, 49.524696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.100327, 35.011627, 49.876659>,  <30.180691, 35.092529, 50.087837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.100327, 35.011627, 49.876659>,  <29.966385, 34.876793, 49.524696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100327, 35.011627, 49.876659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941985, 0.142707, 0.303807,
		-0.023161, -0.930596, 0.365315,
		0.334854, 0.337085, 0.879912,
		30.200783, 35.112755, 50.140633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630077, 34.478539, 49.977730>,  <29.966385, 34.876793, 49.524696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630077, 34.478539, 49.977730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.759890, 34.754704, 50.236343>,  <29.837776, 34.920403, 50.391510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.759890, 34.754704, 50.236343>,  <29.630077, 34.478539, 49.977730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759890, 34.754704, 50.236343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880425, -0.029352, 0.473277,
		0.345735, -0.722817, 0.598334,
		0.324530, 0.690416, 0.646534,
		29.857248, 34.961830, 50.430302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518085, 34.190052, 50.708740>,  <29.630077, 34.478539, 49.977730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518085, 34.190052, 50.708740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.526804, 34.589748, 50.721706>,  <29.532036, 34.829567, 50.729485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.526804, 34.589748, 50.721706>,  <29.518085, 34.190052, 50.708740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526804, 34.589748, 50.721706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833910, 0.000288, 0.551900,
		0.551470, -0.039058, 0.833280,
		0.021796, 0.999237, 0.032412,
		29.533342, 34.889519, 50.731430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211111, 34.347351, 51.409546>,  <29.518085, 34.190052, 50.708740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211111, 34.347351, 51.409546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.209641, 34.703465, 51.227386>,  <29.208759, 34.917133, 51.118092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.209641, 34.703465, 51.227386>,  <29.211111, 34.347351, 51.409546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209641, 34.703465, 51.227386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919150, 0.176372, 0.352215,
		0.393890, 0.419876, 0.817652,
		-0.003676, 0.890279, -0.455401,
		29.208538, 34.970547, 51.090767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137732, 34.812939, 51.959873>,  <29.211111, 34.347351, 51.409546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137732, 34.812939, 51.959873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.993004, 34.964935, 51.619358>,  <28.906168, 35.056133, 51.415047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.993004, 34.964935, 51.619358>,  <29.137732, 34.812939, 51.959873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993004, 34.964935, 51.619358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900995, 0.091927, 0.423978,
		0.239364, 0.920411, 0.309108,
		-0.361819, 0.379990, -0.851290,
		28.884459, 35.078934, 51.363972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687256, 35.278458, 52.154572>,  <29.137732, 34.812939, 51.959873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687256, 35.278458, 52.154572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.561739, 35.242977, 51.776436>,  <28.486429, 35.221691, 51.549553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.561739, 35.242977, 51.776436>,  <28.687256, 35.278458, 52.154572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561739, 35.242977, 51.776436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924765, 0.254287, 0.283106,
		0.215276, 0.963053, -0.161817,
		-0.313794, -0.088697, -0.945339,
		28.467602, 35.216370, 51.492832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233877, 35.890583, 52.010136>,  <28.687256, 35.278458, 52.154572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233877, 35.890583, 52.010136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.135094, 35.596565, 51.757557>,  <28.075823, 35.420155, 51.606010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.135094, 35.596565, 51.757557>,  <28.233877, 35.890583, 52.010136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135094, 35.596565, 51.757557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955070, 0.074438, 0.286880,
		-0.163866, 0.673921, -0.720402,
		-0.246960, -0.735044, -0.631444,
		28.061007, 35.376053, 51.568123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634752, 36.180817, 51.825550>,  <28.233877, 35.890583, 52.010136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634752, 36.180817, 51.825550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.649534, 35.797478, 51.712265>,  <27.658403, 35.567474, 51.644295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.649534, 35.797478, 51.712265>,  <27.634752, 36.180817, 51.825550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649534, 35.797478, 51.712265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966537, -0.106269, 0.233481,
		-0.253852, 0.265106, -0.930203,
		0.036955, -0.958345, -0.283211,
		27.660620, 35.509975, 51.627300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054953, 36.070122, 51.512486>,  <27.634752, 36.180817, 51.825550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054953, 36.070122, 51.512486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.151711, 35.690742, 51.594395>,  <27.209764, 35.463116, 51.643539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.151711, 35.690742, 51.594395>,  <27.054953, 36.070122, 51.512486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151711, 35.690742, 51.594395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942148, -0.179113, 0.283331,
		-0.232047, -0.261464, -0.936905,
		0.241892, -0.948449, 0.204775,
		27.224277, 35.406208, 51.655827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507576, 35.717396, 51.195427>,  <27.054953, 36.070122, 51.512486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507576, 35.717396, 51.195427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.678757, 35.504787, 51.487823>,  <26.781466, 35.377224, 51.663261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.678757, 35.504787, 51.487823>,  <26.507576, 35.717396, 51.195427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678757, 35.504787, 51.487823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891467, -0.381404, 0.244578,
		0.148804, -0.756320, -0.637054,
		0.427953, -0.531518, 0.730988,
		26.807142, 35.345333, 51.707119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157837, 35.063103, 51.043026>,  <26.507576, 35.717396, 51.195427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157837, 35.063103, 51.043026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.315897, 35.061607, 51.410469>,  <26.410734, 35.060711, 51.630936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.315897, 35.061607, 51.410469>,  <26.157837, 35.063103, 51.043026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315897, 35.061607, 51.410469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808382, -0.476385, 0.345798,
		0.436318, -0.879229, -0.191267,
		0.395152, -0.003738, 0.918608,
		26.434443, 35.060486, 51.686050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066603, 34.377636, 51.241871>,  <26.157837, 35.063103, 51.043026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066603, 34.377636, 51.241871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.056818, 34.626553, 51.554832>,  <26.050947, 34.775902, 51.742611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.056818, 34.626553, 51.554832>,  <26.066603, 34.377636, 51.241871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056818, 34.626553, 51.554832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922064, -0.316440, 0.222854,
		0.386263, -0.715974, 0.581534,
		-0.024463, 0.622292, 0.782403,
		26.049479, 34.813240, 51.789555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610535, 34.038055, 51.667027>,  <26.066603, 34.377636, 51.241871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610535, 34.038055, 51.667027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.633709, 34.414146, 51.801262>,  <25.647614, 34.639801, 51.881802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.633709, 34.414146, 51.801262>,  <25.610535, 34.038055, 51.667027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633709, 34.414146, 51.801262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930178, -0.071222, 0.360134,
		0.362509, -0.333020, 0.870451,
		0.057937, 0.940226, 0.335587,
		25.651091, 34.696213, 51.901939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186674, 33.938572, 52.247833>,  <25.610535, 34.038055, 51.667027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186674, 33.938572, 52.247833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.210819, 34.336292, 52.212692>,  <25.225306, 34.574924, 52.191608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.210819, 34.336292, 52.212692>,  <25.186674, 33.938572, 52.247833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210819, 34.336292, 52.212692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794578, 0.101135, 0.598680,
		0.604154, 0.033668, 0.796156,
		0.060363, 0.994303, -0.087853,
		25.228928, 34.634583, 52.186337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222481, 34.270123, 52.878277>,  <25.186674, 33.938572, 52.247833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222481, 34.270123, 52.878277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.075836, 34.556877, 52.641071>,  <24.987848, 34.728931, 52.498749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.075836, 34.556877, 52.641071>,  <25.222481, 34.270123, 52.878277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075836, 34.556877, 52.641071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750500, 0.148830, 0.643894,
		0.549858, 0.681117, 0.483461,
		-0.366613, 0.716888, -0.593014,
		24.965853, 34.771942, 52.463165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026979, 34.762638, 53.340057>,  <25.222481, 34.270123, 52.878277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026979, 34.762638, 53.340057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.827318, 34.828934, 52.999851>,  <24.707521, 34.868710, 52.795727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.827318, 34.828934, 52.999851>,  <25.026979, 34.762638, 53.340057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827318, 34.828934, 52.999851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836544, 0.163742, 0.522860,
		0.225923, 0.972481, 0.056914,
		-0.499153, 0.165737, -0.850516,
		24.677572, 34.878654, 52.744698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<33.446415, 33.533081, 49.317390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595337, 33.164104, 49.276405>,  <33.684689, 32.942719, 49.251812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595337, 33.164104, 49.276405>,  <33.446415, 33.533081, 49.317390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595337, 33.164104, 49.276405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926780, -0.363585, -0.094262,
		0.049696, 0.130056, -0.990260,
		0.372303, -0.922438, -0.102465,
		33.707027, 32.887375, 49.245667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055576, 33.777050, 49.714630>,  <33.446415, 33.533081, 49.317390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055576, 33.777050, 49.714630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.930908, 33.417377, 49.837490>,  <33.856110, 33.201576, 49.911205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.930908, 33.417377, 49.837490>,  <34.055576, 33.777050, 49.714630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930908, 33.417377, 49.837490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304478, 0.400713, 0.864131,
		-0.900087, 0.175802, -0.398670,
		-0.311668, -0.899179, 0.307148,
		33.837406, 33.147625, 49.929634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397484, 33.869431, 49.981564>,  <34.055576, 33.777050, 49.714630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397484, 33.869431, 49.981564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515171, 33.517788, 50.131557>,  <33.585781, 33.306801, 50.221554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515171, 33.517788, 50.131557>,  <33.397484, 33.869431, 49.981564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515171, 33.517788, 50.131557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388648, 0.248396, 0.887272,
		-0.873150, -0.406785, -0.268580,
		0.294214, -0.879105, 0.374983,
		33.603436, 33.254055, 50.244053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020424, 33.836334, 50.582577>,  <33.397484, 33.869431, 49.981564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020424, 33.836334, 50.582577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.259544, 33.532253, 50.684338>,  <33.403019, 33.349804, 50.745396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.259544, 33.532253, 50.684338>,  <33.020424, 33.836334, 50.582577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259544, 33.532253, 50.684338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123490, 0.226236, 0.966213,
		-0.792074, -0.609022, 0.041367,
		0.597804, -0.760203, 0.254403,
		33.438885, 33.304192, 50.760658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645988, 33.538342, 51.026306>,  <33.020424, 33.836334, 50.582577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645988, 33.538342, 51.026306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021992, 33.419174, 51.092785>,  <33.247593, 33.347675, 51.132671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.021992, 33.419174, 51.092785>,  <32.645988, 33.538342, 51.026306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021992, 33.419174, 51.092785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097387, 0.232564, 0.967693,
		-0.326945, -0.925829, 0.189599,
		0.940012, -0.297918, 0.166199,
		33.303997, 33.329800, 51.142643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542091, 33.158932, 51.479229>,  <32.645988, 33.538342, 51.026306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542091, 33.158932, 51.479229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928185, 33.254242, 51.522221>,  <33.159840, 33.311428, 51.548016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928185, 33.254242, 51.522221>,  <32.542091, 33.158932, 51.479229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928185, 33.254242, 51.522221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158743, 0.207671, 0.965232,
		0.207671, -0.948735, 0.238275,
		-0.965232, -0.238275, -0.107478,
		33.217754, 33.325726, 51.554462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773895, 32.750259, 52.048813>,  <32.542091, 33.158932, 51.479229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773895, 32.750259, 52.048813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014957, 33.064945, 51.995308>,  <33.159595, 33.253757, 51.963207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014957, 33.064945, 51.995308>,  <32.773895, 32.750259, 52.048813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014957, 33.064945, 51.995308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017480, 0.180592, 0.983403,
		0.797810, -0.590316, 0.122586,
		0.602656, 0.786711, -0.133760,
		33.195755, 33.300957, 51.955181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236633, 32.612274, 52.528347>,  <32.773895, 32.750259, 52.048813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236633, 32.612274, 52.528347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.275574, 33.005001, 52.463165>,  <33.298939, 33.240639, 52.424057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.275574, 33.005001, 52.463165>,  <33.236633, 32.612274, 52.528347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275574, 33.005001, 52.463165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132136, 0.175029, 0.975656,
		0.986440, -0.073446, 0.146773,
		0.097348, 0.981820, -0.162951,
		33.304779, 33.299545, 52.414280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766499, 32.780457, 52.957592>,  <33.236633, 32.612274, 52.528347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766499, 32.780457, 52.957592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.590874, 33.131863, 52.882290>,  <33.485500, 33.342705, 52.837109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.590874, 33.131863, 52.882290>,  <33.766499, 32.780457, 52.957592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590874, 33.131863, 52.882290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080838, 0.170055, 0.982113,
		0.894812, 0.446428, -0.003647,
		-0.439063, 0.878512, -0.188256,
		33.459156, 33.395416, 52.825813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102962, 33.169769, 53.336288>,  <33.766499, 32.780457, 52.957592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102962, 33.169769, 53.336288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765934, 33.367256, 53.250202>,  <33.563717, 33.485748, 53.198551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765934, 33.367256, 53.250202>,  <34.102962, 33.169769, 53.336288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765934, 33.367256, 53.250202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102602, 0.245129, 0.964046,
		0.528723, 0.834357, -0.155882,
		-0.842570, 0.493720, -0.215212,
		33.513165, 33.515373, 53.185638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106636, 33.761326, 53.708496>,  <34.102962, 33.169769, 53.336288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106636, 33.761326, 53.708496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720268, 33.700150, 53.624966>,  <33.488449, 33.663445, 53.574848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.720268, 33.700150, 53.624966>,  <34.106636, 33.761326, 53.708496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720268, 33.700150, 53.624966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248515, 0.322340, 0.913421,
		-0.072389, 0.934187, -0.349363,
		-0.965919, -0.152944, -0.208826,
		33.430492, 33.654266, 53.562317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762691, 34.388584, 53.897896>,  <34.106636, 33.761326, 53.708496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762691, 34.388584, 53.897896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.477482, 34.108391, 53.885796>,  <33.306355, 33.940273, 53.878536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.477482, 34.108391, 53.885796>,  <33.762691, 34.388584, 53.897896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477482, 34.108391, 53.885796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356953, 0.325531, 0.875565,
		-0.603470, 0.635102, -0.482152,
		-0.713028, -0.700482, -0.030253,
		33.263573, 33.898247, 53.876720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752380, 34.831272, 53.285744>,  <33.762691, 34.388584, 53.897896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752380, 34.831272, 53.285744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960323, 35.168419, 53.230145>,  <34.085091, 35.370708, 53.196785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960323, 35.168419, 53.230145>,  <33.752380, 34.831272, 53.285744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960323, 35.168419, 53.230145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681336, -0.507255, -0.527706,
		-0.515292, 0.179632, -0.837977,
		0.519861, 0.842867, -0.138995,
		34.116283, 35.421280, 53.188446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951008, 34.853207, 52.558704>,  <33.752380, 34.831272, 53.285744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951008, 34.853207, 52.558704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195675, 35.120003, 52.728874>,  <34.342476, 35.280083, 52.830975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195675, 35.120003, 52.728874>,  <33.951008, 34.853207, 52.558704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195675, 35.120003, 52.728874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750014, -0.317833, -0.580053,
		-0.251679, 0.673872, -0.694662,
		0.611668, 0.666993, 0.425421,
		34.379177, 35.320099, 52.856499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300385, 35.285648, 52.046124>,  <33.951008, 34.853207, 52.558704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300385, 35.285648, 52.046124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.539276, 35.305897, 52.366314>,  <34.682610, 35.318047, 52.558426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.539276, 35.305897, 52.366314>,  <34.300385, 35.285648, 52.046124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539276, 35.305897, 52.366314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789365, -0.214036, -0.575405,
		0.142203, 0.975513, -0.167785,
		0.597228, 0.050619, 0.800473,
		34.718445, 35.321083, 52.606457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744701, 35.733971, 51.746822>,  <34.300385, 35.285648, 52.046124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744701, 35.733971, 51.746822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951607, 35.568581, 52.046547>,  <35.075752, 35.469345, 52.226383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.951607, 35.568581, 52.046547>,  <34.744701, 35.733971, 51.746822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951607, 35.568581, 52.046547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814046, -0.032505, -0.579890,
		0.264128, 0.909933, 0.319777,
		0.517267, -0.413479, 0.749313,
		35.106789, 35.444538, 52.271339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333210, 36.175014, 51.798473>,  <34.744701, 35.733971, 51.746822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333210, 36.175014, 51.798473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455063, 35.842361, 51.984200>,  <35.528175, 35.642769, 52.095634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455063, 35.842361, 51.984200>,  <35.333210, 36.175014, 51.798473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455063, 35.842361, 51.984200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825428, -0.012735, -0.564363,
		0.475254, 0.555185, 0.682571,
		0.304634, -0.831629, 0.464318,
		35.546452, 35.592873, 52.123493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021248, 36.356632, 51.982418>,  <35.333210, 36.175014, 51.798473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021248, 36.356632, 51.982418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999702, 35.957253, 51.988174>,  <35.986774, 35.717625, 51.991627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999702, 35.957253, 51.988174>,  <36.021248, 36.356632, 51.982418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999702, 35.957253, 51.988174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875700, -0.054157, -0.479809,
		0.479842, -0.013241, 0.877255,
		-0.053863, -0.998445, 0.014392,
		35.983543, 35.657719, 51.992493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731609, 36.128647, 52.173752>,  <36.021248, 36.356632, 51.982418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731609, 36.128647, 52.173752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533535, 35.824665, 52.005341>,  <36.414692, 35.642277, 51.904293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533535, 35.824665, 52.005341>,  <36.731609, 36.128647, 52.173752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533535, 35.824665, 52.005341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806736, -0.222351, -0.547482,
		0.322446, -0.610761, 0.723187,
		-0.495182, -0.759955, -0.421026,
		36.384979, 35.596680, 51.879032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257759, 35.653461, 52.055832>,  <36.731609, 36.128647, 52.173752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257759, 35.653461, 52.055832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981903, 35.533825, 51.792030>,  <36.816391, 35.462044, 51.633751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981903, 35.533825, 51.792030>,  <37.257759, 35.653461, 52.055832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981903, 35.533825, 51.792030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721961, -0.213186, -0.658274,
		0.056290, -0.930105, 0.362955,
		-0.689640, -0.299093, -0.659499,
		36.775009, 35.444096, 51.594181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540703, 35.030457, 51.774048>,  <37.257759, 35.653461, 52.055832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540703, 35.030457, 51.774048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254238, 35.155632, 51.524509>,  <37.082359, 35.230740, 51.374786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254238, 35.155632, 51.524509>,  <37.540703, 35.030457, 51.774048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254238, 35.155632, 51.524509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643327, -0.050611, -0.763917,
		-0.270634, -0.948423, -0.165078,
		-0.716161, 0.312941, -0.623843,
		37.039391, 35.249516, 51.337357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738846, 34.733952, 51.116192>,  <37.540703, 35.030457, 51.774048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738846, 34.733952, 51.116192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456844, 34.986279, 50.986549>,  <37.287643, 35.137672, 50.908764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456844, 34.986279, 50.986549>,  <37.738846, 34.733952, 51.116192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456844, 34.986279, 50.986549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394926, -0.030404, -0.918210,
		-0.589075, -0.775337, -0.227691,
		-0.704999, 0.630815, -0.324111,
		37.245346, 35.175522, 50.889317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428627, 34.542374, 50.402958>,  <37.738846, 34.733952, 51.116192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428627, 34.542374, 50.402958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391598, 34.940613, 50.408875>,  <37.369381, 35.179558, 50.412426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391598, 34.940613, 50.408875>,  <37.428627, 34.542374, 50.402958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391598, 34.940613, 50.408875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504986, 0.059746, -0.861058,
		-0.858149, -0.072239, -0.508292,
		-0.092571, 0.995596, 0.014791,
		37.363827, 35.239292, 50.413311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264595, 34.636822, 49.694344>,  <37.428627, 34.542374, 50.402958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264595, 34.636822, 49.694344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385448, 34.989178, 49.840080>,  <37.457962, 35.200592, 49.927521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385448, 34.989178, 49.840080>,  <37.264595, 34.636822, 49.694344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385448, 34.989178, 49.840080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525303, 0.165085, -0.834748,
		-0.795470, 0.443595, -0.412858,
		0.302133, 0.880892, 0.364342,
		37.476089, 35.253445, 49.949383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271820, 35.143219, 49.067425>,  <37.264595, 34.636822, 49.694344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271820, 35.143219, 49.067425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500191, 35.294331, 49.358994>,  <37.637211, 35.384998, 49.533936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500191, 35.294331, 49.358994>,  <37.271820, 35.143219, 49.067425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500191, 35.294331, 49.358994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587150, 0.432685, -0.684133,
		-0.573846, 0.818574, 0.025216,
		0.570924, 0.377782, 0.728921,
		37.671467, 35.407665, 49.577671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299335, 35.810413, 48.930225>,  <37.271820, 35.143219, 49.067425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299335, 35.810413, 48.930225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637417, 35.695824, 49.110699>,  <37.840267, 35.627071, 49.218983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637417, 35.695824, 49.110699>,  <37.299335, 35.810413, 48.930225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637417, 35.695824, 49.110699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532734, 0.384080, -0.754107,
		0.042739, 0.877734, 0.477238,
		0.845203, -0.286471, 0.451184,
		37.890976, 35.609882, 49.246056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367355, 36.502365, 48.597294>,  <37.299335, 35.810413, 48.930225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367355, 36.502365, 48.597294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.479580, 36.839481, 48.413563>,  <37.546913, 37.041752, 48.303322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.479580, 36.839481, 48.413563>,  <37.367355, 36.502365, 48.597294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479580, 36.839481, 48.413563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669955, 0.514643, 0.535073,
		0.687348, 0.157612, 0.709022,
		0.280559, 0.842794, -0.459331,
		37.563747, 37.092319, 48.275764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228104, 37.047138, 48.949932>,  <37.367355, 36.502365, 48.597294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228104, 37.047138, 48.949932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217644, 37.248352, 48.604382>,  <37.211369, 37.369080, 48.397053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217644, 37.248352, 48.604382>,  <37.228104, 37.047138, 48.949932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217644, 37.248352, 48.604382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747029, 0.564410, 0.351268,
		0.664277, 0.654523, 0.361020,
		-0.026149, 0.503032, -0.863872,
		37.209801, 37.399261, 48.345219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544128, 37.627361, 49.109116>,  <37.228104, 37.047138, 48.949932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544128, 37.627361, 49.109116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303062, 37.685120, 48.795185>,  <37.158424, 37.719776, 48.606827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303062, 37.685120, 48.795185>,  <37.544128, 37.627361, 49.109116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303062, 37.685120, 48.795185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589242, 0.582706, 0.559686,
		0.538138, 0.799752, -0.266091,
		-0.602662, 0.144397, -0.784824,
		37.122265, 37.728439, 48.559738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437634, 38.384518, 49.104431>,  <37.544128, 37.627361, 49.109116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437634, 38.384518, 49.104431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119331, 38.247658, 48.904545>,  <36.928352, 38.165543, 48.784615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119331, 38.247658, 48.904545>,  <37.437634, 38.384518, 49.104431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119331, 38.247658, 48.904545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597225, 0.580277, 0.553716,
		0.100516, 0.739061, -0.666098,
		-0.795751, -0.342153, -0.499712,
		36.880608, 38.145012, 48.754631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031021, 38.965111, 48.964813>,  <37.437634, 38.384518, 49.104431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031021, 38.965111, 48.964813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811768, 38.631691, 48.937286>,  <36.680214, 38.431637, 48.920773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811768, 38.631691, 48.937286>,  <37.031021, 38.965111, 48.964813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811768, 38.631691, 48.937286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620130, 0.349825, 0.702183,
		-0.561234, 0.427565, -0.708664,
		-0.548138, -0.833553, -0.068813,
		36.647327, 38.381626, 48.916641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286247, 39.220146, 48.788685>,  <37.031021, 38.965111, 48.964813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286247, 39.220146, 48.788685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229881, 38.851486, 48.933296>,  <36.196064, 38.630291, 49.020061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229881, 38.851486, 48.933296>,  <36.286247, 39.220146, 48.788685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229881, 38.851486, 48.933296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766597, 0.332651, 0.549248,
		-0.626477, -0.199749, -0.753410,
		-0.140910, -0.921653, 0.361525,
		36.187607, 38.574989, 49.041756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531837, 38.900890, 48.748249>,  <36.286247, 39.220146, 48.788685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531837, 38.900890, 48.748249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681721, 38.674931, 49.042316>,  <35.771652, 38.539352, 49.218758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.681721, 38.674931, 49.042316>,  <35.531837, 38.900890, 48.748249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681721, 38.674931, 49.042316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800074, 0.203655, 0.564275,
		-0.468482, -0.799631, -0.375652,
		0.374709, -0.564903, 0.735173,
		35.794132, 38.505459, 49.262867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987816, 38.459389, 48.904400>,  <35.531837, 38.900890, 48.748249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987816, 38.459389, 48.904400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229618, 38.454594, 49.223003>,  <35.374699, 38.451717, 49.414165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229618, 38.454594, 49.223003>,  <34.987816, 38.459389, 48.904400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229618, 38.454594, 49.223003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796223, 0.021610, 0.604618,
		-0.024471, -0.999694, 0.003504,
		0.604509, -0.012005, 0.796508,
		35.410973, 38.450996, 49.461956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582718, 38.113056, 49.465645>,  <34.987816, 38.459389, 48.904400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582718, 38.113056, 49.465645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890068, 38.304058, 49.636093>,  <35.074478, 38.418659, 49.738361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890068, 38.304058, 49.636093>,  <34.582718, 38.113056, 49.465645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890068, 38.304058, 49.636093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531924, 0.106243, 0.840101,
		0.355879, -0.872182, 0.335631,
		0.768379, 0.477505, 0.426125,
		35.120583, 38.447308, 49.763931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583767, 37.895767, 50.077446>,  <34.582718, 38.113056, 49.465645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583767, 37.895767, 50.077446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.808994, 38.225224, 50.104473>,  <34.944130, 38.422897, 50.120689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.808994, 38.225224, 50.104473>,  <34.583767, 37.895767, 50.077446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808994, 38.225224, 50.104473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509600, 0.281682, 0.812996,
		0.650587, -0.492204, 0.578335,
		0.563066, 0.823645, 0.067568,
		34.977913, 38.472317, 50.124744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731583, 37.853943, 50.789970>,  <34.583767, 37.895767, 50.077446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731583, 37.853943, 50.789970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.819836, 38.227043, 50.675922>,  <34.872787, 38.450905, 50.607494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.819836, 38.227043, 50.675922>,  <34.731583, 37.853943, 50.789970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819836, 38.227043, 50.675922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561868, 0.360491, 0.744547,
		0.797262, -0.004069, 0.603620,
		0.220629, 0.932753, -0.285120,
		34.886024, 38.506870, 50.590385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943260, 38.189232, 51.350773>,  <34.731583, 37.853943, 50.789970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943260, 38.189232, 51.350773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809643, 38.460197, 51.088619>,  <34.729473, 38.622776, 50.931328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809643, 38.460197, 51.088619>,  <34.943260, 38.189232, 51.350773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809643, 38.460197, 51.088619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611145, 0.373689, 0.697752,
		0.717576, 0.633613, 0.289169,
		-0.334046, 0.677415, -0.655380,
		34.709431, 38.663422, 50.892006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567230, 38.611023, 51.768986>,  <34.943260, 38.189232, 51.350773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567230, 38.611023, 51.768986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480007, 38.757088, 51.406967>,  <34.427673, 38.844727, 51.189758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480007, 38.757088, 51.406967>,  <34.567230, 38.611023, 51.768986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480007, 38.757088, 51.406967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701808, 0.585744, 0.405425,
		0.678172, 0.723573, 0.128552,
		-0.218056, 0.365166, -0.905044,
		34.414589, 38.866638, 51.135452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446690, 39.395603, 51.862770>,  <34.567230, 38.611023, 51.768986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446690, 39.395603, 51.862770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260773, 39.250416, 51.539726>,  <34.149223, 39.163303, 51.345901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260773, 39.250416, 51.539726>,  <34.446690, 39.395603, 51.862770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260773, 39.250416, 51.539726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806927, 0.549103, 0.217611,
		0.364474, 0.752822, -0.548103,
		-0.464788, -0.362965, -0.807607,
		34.121338, 39.141525, 51.297443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213593, 39.944443, 51.481182>,  <34.446690, 39.395603, 51.862770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213593, 39.944443, 51.481182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994144, 39.611431, 51.450413>,  <33.862476, 39.411625, 51.431950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994144, 39.611431, 51.450413>,  <34.213593, 39.944443, 51.481182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994144, 39.611431, 51.450413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802443, 0.498486, 0.328021,
		-0.234741, 0.241685, -0.941533,
		-0.548619, -0.832527, -0.076924,
		33.829559, 39.361671, 51.427334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649261, 40.213940, 51.198376>,  <34.213593, 39.944443, 51.481182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649261, 40.213940, 51.198376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541519, 39.872833, 51.377365>,  <33.476875, 39.668167, 51.484756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541519, 39.872833, 51.377365>,  <33.649261, 40.213940, 51.198376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541519, 39.872833, 51.377365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807902, 0.452985, 0.376960,
		-0.524158, -0.259977, -0.810969,
		-0.269356, -0.852770, 0.447471,
		33.460712, 39.617001, 51.511608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904297, 40.194202, 51.232937>,  <33.649261, 40.213940, 51.198376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904297, 40.194202, 51.232937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951294, 39.881264, 51.477600>,  <32.979492, 39.693501, 51.624397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.951294, 39.881264, 51.477600>,  <32.904297, 40.194202, 51.232937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951294, 39.881264, 51.477600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792642, 0.297176, 0.532358,
		-0.598259, -0.547377, -0.585205,
		0.117491, -0.782346, 0.611663,
		32.986542, 39.646561, 51.661098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296921, 39.992073, 51.206371>,  <32.904297, 40.194202, 51.232937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296921, 39.992073, 51.206371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464954, 39.847115, 51.539165>,  <32.565777, 39.760139, 51.738842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464954, 39.847115, 51.539165>,  <32.296921, 39.992073, 51.206371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464954, 39.847115, 51.539165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855414, 0.147953, 0.496364,
		-0.302974, -0.920207, -0.247844,
		0.420088, -0.362395, 0.831983,
		32.590981, 39.738396, 51.788761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901447, 39.484333, 51.456188>,  <32.296921, 39.992073, 51.206371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901447, 39.484333, 51.456188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.110420, 39.606228, 51.774734>,  <32.235806, 39.679363, 51.965862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.110420, 39.606228, 51.774734>,  <31.901447, 39.484333, 51.456188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110420, 39.606228, 51.774734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851060, 0.128803, 0.509026,
		0.052542, -0.943689, 0.326636,
		0.522434, 0.304732, 0.796368,
		32.267151, 39.697647, 52.013645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527115, 39.147785, 52.109894>,  <31.901447, 39.484333, 51.456188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527115, 39.147785, 52.109894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.774481, 39.431812, 52.244576>,  <31.922901, 39.602230, 52.325382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.774481, 39.431812, 52.244576>,  <31.527115, 39.147785, 52.109894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774481, 39.431812, 52.244576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686737, 0.280010, 0.670811,
		0.382042, -0.646064, 0.660792,
		0.618415, 0.710068, 0.336701,
		31.960005, 39.644833, 52.345585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524338, 39.097343, 52.963879>,  <31.527115, 39.147785, 52.109894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524338, 39.097343, 52.963879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.637190, 39.457001, 52.830048>,  <31.704901, 39.672794, 52.749748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.637190, 39.457001, 52.830048>,  <31.524338, 39.097343, 52.963879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637190, 39.457001, 52.830048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588948, 0.437616, 0.679436,
		0.757327, 0.005359, 0.653013,
		0.282128, 0.899146, -0.334575,
		31.721828, 39.726746, 52.729675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615417, 39.384209, 53.575584>,  <31.524338, 39.097343, 52.963879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615417, 39.384209, 53.575584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.613262, 39.686924, 53.314129>,  <31.611969, 39.868553, 53.157257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.613262, 39.686924, 53.314129>,  <31.615417, 39.384209, 53.575584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613262, 39.686924, 53.314129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640041, 0.499608, 0.583729,
		0.768322, 0.421499, 0.481684,
		-0.005388, 0.756790, -0.653636,
		31.611647, 39.913960, 53.118038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787634, 39.916096, 53.915279>,  <31.615417, 39.384209, 53.575584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787634, 39.916096, 53.915279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.577049, 40.036903, 53.597382>,  <31.450699, 40.109390, 53.406643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.577049, 40.036903, 53.597382>,  <31.787634, 39.916096, 53.915279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577049, 40.036903, 53.597382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551361, 0.590276, 0.589555,
		0.647179, 0.748569, -0.144233,
		-0.526460, 0.302024, -0.794746,
		31.419111, 40.127510, 53.358959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946383, 40.661034, 53.710434>,  <31.787634, 39.916096, 53.915279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946383, 40.661034, 53.710434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579845, 40.626083, 53.554134>,  <31.359924, 40.605114, 53.460354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579845, 40.626083, 53.554134>,  <31.946383, 40.661034, 53.710434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579845, 40.626083, 53.554134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353915, 0.633132, 0.688396,
		0.187248, 0.769097, -0.611088,
		-0.916342, -0.087372, -0.390748,
		31.304943, 40.599873, 53.436909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604528, 41.223389, 53.880032>,  <31.946383, 40.661034, 53.710434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604528, 41.223389, 53.880032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294006, 40.990959, 53.782291>,  <31.107693, 40.851501, 53.723648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294006, 40.990959, 53.782291>,  <31.604528, 41.223389, 53.880032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294006, 40.990959, 53.782291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490675, 0.313691, 0.812918,
		-0.395716, 0.750967, -0.528638,
		-0.776303, -0.581074, -0.244348,
		31.061115, 40.816635, 53.708988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033924, 41.660397, 53.994953>,  <31.604528, 41.223389, 53.880032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033924, 41.660397, 53.994953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889536, 41.287479, 53.985703>,  <30.802904, 41.063728, 53.980152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889536, 41.287479, 53.985703>,  <31.033924, 41.660397, 53.994953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889536, 41.287479, 53.985703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418906, 0.139940, 0.897182,
		-0.833198, 0.333542, -0.441056,
		-0.360970, -0.932291, -0.023125,
		30.781244, 41.007793, 53.978764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299051, 41.715977, 53.873272>,  <31.033924, 41.660397, 53.994953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299051, 41.715977, 53.873272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.366465, 41.364498, 54.051929>,  <30.406914, 41.153610, 54.159122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.366465, 41.364498, 54.051929>,  <30.299051, 41.715977, 53.873272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366465, 41.364498, 54.051929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671527, 0.229344, 0.704594,
		-0.721559, -0.418679, -0.551417,
		0.168534, -0.878697, 0.446640,
		30.417025, 41.100887, 54.185921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662043, 41.533726, 53.993176>,  <30.299051, 41.715977, 53.873272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662043, 41.533726, 53.993176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880943, 41.286228, 54.218624>,  <30.012283, 41.137730, 54.353893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880943, 41.286228, 54.218624>,  <29.662043, 41.533726, 53.993176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880943, 41.286228, 54.218624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623793, 0.147459, 0.767553,
		-0.558030, -0.771629, -0.305271,
		0.547252, -0.618744, 0.563624,
		30.045118, 41.100605, 54.387711>
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
