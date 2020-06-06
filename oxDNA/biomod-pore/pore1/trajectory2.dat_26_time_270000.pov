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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<46.195076, 39.340481, 44.778500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327477, 39.557381, 45.087410>,  <46.406918, 39.687519, 45.272755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327477, 39.557381, 45.087410>,  <46.195076, 39.340481, 44.778500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.327477, 39.557381, 45.087410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791793, -0.285606, 0.539901,
		0.513325, -0.790189, 0.334811,
		0.331000, 0.542246, 0.772274,
		46.426777, 39.720055, 45.319092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222256, 38.851593, 45.342377>,  <46.195076, 39.340481, 44.778500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222256, 38.851593, 45.342377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220299, 39.207848, 45.524254>,  <46.219124, 39.421600, 45.633381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220299, 39.207848, 45.524254>,  <46.222256, 38.851593, 45.342377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.220299, 39.207848, 45.524254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576873, -0.373925, 0.726222,
		0.816819, -0.258742, 0.515615,
		-0.004897, 0.890636, 0.454691,
		46.218830, 39.475037, 45.660660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402328, 38.647423, 46.065643>,  <46.222256, 38.851593, 45.342377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402328, 38.647423, 46.065643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225090, 39.005356, 46.087349>,  <46.118748, 39.220116, 46.100372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.225090, 39.005356, 46.087349>,  <46.402328, 38.647423, 46.065643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.225090, 39.005356, 46.087349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476933, -0.286554, 0.830916,
		0.759080, 0.342293, 0.553745,
		-0.443094, 0.894831, 0.054266,
		46.092163, 39.273804, 46.103630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352871, 38.867119, 46.725773>,  <46.402328, 38.647423, 46.065643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352871, 38.867119, 46.725773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047050, 39.080101, 46.580479>,  <45.863556, 39.207890, 46.493301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.047050, 39.080101, 46.580479>,  <46.352871, 38.867119, 46.725773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047050, 39.080101, 46.580479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538683, -0.218383, 0.813713,
		0.353944, 0.817799, 0.453793,
		-0.764555, 0.532460, -0.363239,
		45.817684, 39.239838, 46.471508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116653, 39.154675, 47.300709>,  <46.352871, 38.867119, 46.725773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116653, 39.154675, 47.300709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809151, 39.237968, 47.058830>,  <45.624649, 39.287945, 46.913704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809151, 39.237968, 47.058830>,  <46.116653, 39.154675, 47.300709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809151, 39.237968, 47.058830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616123, 0.012395, 0.787553,
		0.171489, 0.978001, 0.118767,
		-0.768755, 0.208231, -0.604695,
		45.578526, 39.300438, 46.877422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745750, 39.614517, 47.611217>,  <46.116653, 39.154675, 47.300709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745750, 39.614517, 47.611217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485786, 39.443466, 47.359901>,  <45.329807, 39.340836, 47.209110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485786, 39.443466, 47.359901>,  <45.745750, 39.614517, 47.611217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485786, 39.443466, 47.359901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666710, -0.076065, 0.741426,
		-0.364846, 0.900748, -0.235669,
		-0.649912, -0.427629, -0.628290,
		45.290813, 39.315178, 47.171413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130791, 39.979019, 47.674019>,  <45.745750, 39.614517, 47.611217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130791, 39.979019, 47.674019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021210, 39.628372, 47.515781>,  <44.955463, 39.417984, 47.420837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021210, 39.628372, 47.515781>,  <45.130791, 39.979019, 47.674019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021210, 39.628372, 47.515781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817979, -0.003964, 0.575234,
		-0.505828, 0.481175, -0.715967,
		-0.273950, -0.876616, -0.395596,
		44.939026, 39.365387, 47.397102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383488, 40.111485, 47.505924>,  <45.130791, 39.979019, 47.674019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383488, 40.111485, 47.505924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480576, 39.729607, 47.574806>,  <44.538826, 39.500481, 47.616135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480576, 39.729607, 47.574806>,  <44.383488, 40.111485, 47.505924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480576, 39.729607, 47.574806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755733, -0.074779, 0.650596,
		-0.608240, -0.288053, -0.739641,
		0.242715, -0.954691, 0.172207,
		44.553391, 39.443199, 47.626469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774399, 39.853806, 47.647385>,  <44.383488, 40.111485, 47.505924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774399, 39.853806, 47.647385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013943, 39.560989, 47.777298>,  <44.157669, 39.385300, 47.855247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013943, 39.560989, 47.777298>,  <43.774399, 39.853806, 47.647385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013943, 39.560989, 47.777298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676192, -0.244890, 0.694833,
		-0.429112, -0.635720, -0.641656,
		0.598855, -0.732044, 0.324784,
		44.193600, 39.341377, 47.874733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292370, 39.348743, 47.928070>,  <43.774399, 39.853806, 47.647385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292370, 39.348743, 47.928070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641861, 39.244339, 48.092247>,  <43.851555, 39.181698, 48.190754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641861, 39.244339, 48.092247>,  <43.292370, 39.348743, 47.928070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641861, 39.244339, 48.092247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479028, -0.315301, 0.819218,
		-0.084410, -0.912392, -0.400519,
		0.873732, -0.261010, 0.410447,
		43.903980, 39.166035, 48.215382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191765, 38.729607, 48.211170>,  <43.292370, 39.348743, 47.928070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191765, 38.729607, 48.211170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501236, 38.885521, 48.410965>,  <43.686920, 38.979069, 48.530842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501236, 38.885521, 48.410965>,  <43.191765, 38.729607, 48.211170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501236, 38.885521, 48.410965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407678, -0.297210, 0.863403,
		0.484991, -0.871629, -0.071040,
		0.773681, 0.389781, 0.499488,
		43.733341, 39.002457, 48.560810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487717, 38.175323, 48.554264>,  <43.191765, 38.729607, 48.211170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487717, 38.175323, 48.554264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584572, 38.516296, 48.739616>,  <43.642685, 38.720882, 48.850826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584572, 38.516296, 48.739616>,  <43.487717, 38.175323, 48.554264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584572, 38.516296, 48.739616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549242, -0.273276, 0.789717,
		0.799815, -0.445726, 0.402025,
		0.242134, 0.852437, 0.463382,
		43.657211, 38.772026, 48.878632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594151, 37.867756, 49.223091>,  <43.487717, 38.175323, 48.554264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594151, 37.867756, 49.223091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582157, 38.263268, 49.281624>,  <43.574963, 38.500576, 49.316742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582157, 38.263268, 49.281624>,  <43.594151, 37.867756, 49.223091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582157, 38.263268, 49.281624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456609, -0.143780, 0.877972,
		0.889162, -0.040491, 0.455797,
		-0.029984, 0.988781, 0.146332,
		43.573162, 38.559902, 49.325523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614037, 37.915485, 49.888035>,  <43.594151, 37.867756, 49.223091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614037, 37.915485, 49.888035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516060, 38.298004, 49.824150>,  <43.457275, 38.527515, 49.785820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516060, 38.298004, 49.824150>,  <43.614037, 37.915485, 49.888035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516060, 38.298004, 49.824150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489859, 0.020097, 0.871570,
		0.836686, 0.291719, 0.463527,
		-0.244938, 0.956293, -0.159716,
		43.442577, 38.584892, 49.776234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864857, 38.325039, 50.512150>,  <43.614037, 37.915485, 49.888035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864857, 38.325039, 50.512150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560020, 38.488014, 50.310867>,  <43.377117, 38.585800, 50.190098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560020, 38.488014, 50.310867>,  <43.864857, 38.325039, 50.512150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560020, 38.488014, 50.310867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491933, 0.140950, 0.859148,
		0.420972, 0.902292, 0.093014,
		-0.762092, 0.407434, -0.503203,
		43.331394, 38.610245, 50.159904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585850, 38.817390, 50.926178>,  <43.864857, 38.325039, 50.512150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585850, 38.817390, 50.926178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274796, 38.802933, 50.675110>,  <43.088161, 38.794258, 50.524467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274796, 38.802933, 50.675110>,  <43.585850, 38.817390, 50.926178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274796, 38.802933, 50.675110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627977, -0.003704, 0.778223,
		-0.030457, 0.999339, -0.019820,
		-0.777636, -0.036149, -0.627675,
		43.041504, 38.792088, 50.486809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180923, 39.398804, 50.983669>,  <43.585850, 38.817390, 50.926178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180923, 39.398804, 50.983669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949608, 39.110863, 50.830101>,  <42.810818, 38.938099, 50.737961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949608, 39.110863, 50.830101>,  <43.180923, 39.398804, 50.983669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949608, 39.110863, 50.830101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571457, 0.021557, 0.820349,
		-0.582253, 0.693794, -0.423830,
		-0.578290, -0.719851, -0.383922,
		42.776119, 38.894909, 50.714924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669312, 39.557686, 51.285210>,  <43.180923, 39.398804, 50.983669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669312, 39.557686, 51.285210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584183, 39.184792, 51.168148>,  <42.533104, 38.961056, 51.097912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584183, 39.184792, 51.168148>,  <42.669312, 39.557686, 51.285210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584183, 39.184792, 51.168148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481230, -0.160664, 0.861745,
		-0.850367, 0.324231, -0.414427,
		-0.212821, -0.932235, -0.292653,
		42.520336, 38.905121, 51.080353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045231, 39.505741, 51.574207>,  <42.669312, 39.557686, 51.285210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045231, 39.505741, 51.574207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135410, 39.124832, 51.491890>,  <42.189518, 38.896286, 51.442501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135410, 39.124832, 51.491890>,  <42.045231, 39.505741, 51.574207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135410, 39.124832, 51.491890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640645, -0.304042, 0.705076,
		-0.733994, -0.027119, -0.678615,
		0.225448, -0.952273, -0.205792,
		42.203045, 38.839149, 51.430153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409782, 39.095135, 51.527096>,  <42.045231, 39.505741, 51.574207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409782, 39.095135, 51.527096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708714, 38.850189, 51.630249>,  <41.888073, 38.703220, 51.692142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708714, 38.850189, 51.630249>,  <41.409782, 39.095135, 51.527096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708714, 38.850189, 51.630249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500593, -0.263687, 0.824546,
		-0.436926, -0.745301, -0.503608,
		0.747330, -0.612369, 0.257881,
		41.932915, 38.666481, 51.707615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034122, 38.572495, 51.932026>,  <41.409782, 39.095135, 51.527096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034122, 38.572495, 51.932026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409702, 38.453430, 52.001045>,  <41.635052, 38.381992, 52.042458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409702, 38.453430, 52.001045>,  <41.034122, 38.572495, 51.932026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409702, 38.453430, 52.001045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305874, -0.492570, 0.814749,
		-0.157530, -0.817785, -0.553546,
		0.938949, -0.297662, 0.172544,
		41.691387, 38.364132, 52.052807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014736, 37.755707, 52.022102>,  <41.034122, 38.572495, 51.932026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014736, 37.755707, 52.022102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333908, 37.930038, 52.188652>,  <41.525410, 38.034637, 52.288582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333908, 37.930038, 52.188652>,  <41.014736, 37.755707, 52.022102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333908, 37.930038, 52.188652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335388, -0.252936, 0.907490,
		0.500825, -0.863757, -0.055653,
		0.797928, 0.435828, 0.416371,
		41.573288, 38.060787, 52.313564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282413, 37.307766, 52.526505>,  <41.014736, 37.755707, 52.022102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282413, 37.307766, 52.526505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450249, 37.648499, 52.651939>,  <41.550949, 37.852936, 52.727200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450249, 37.648499, 52.651939>,  <41.282413, 37.307766, 52.526505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450249, 37.648499, 52.651939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259207, -0.218647, 0.940747,
		0.869919, -0.476009, 0.129058,
		0.419586, 0.851827, 0.313590,
		41.576126, 37.904045, 52.746017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824833, 37.149979, 53.002674>,  <41.282413, 37.307766, 52.526505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824833, 37.149979, 53.002674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673897, 37.513542, 53.073666>,  <41.583336, 37.731682, 53.116261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673897, 37.513542, 53.073666>,  <41.824833, 37.149979, 53.002674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673897, 37.513542, 53.073666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133110, -0.242891, 0.960878,
		0.916460, 0.338950, 0.212637,
		-0.377338, 0.908910, 0.177482,
		41.560696, 37.786217, 53.126911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818859, 37.160557, 53.704708>,  <41.824833, 37.149979, 53.002674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818859, 37.160557, 53.704708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614388, 37.499069, 53.644695>,  <41.491703, 37.702175, 53.608688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614388, 37.499069, 53.644695>,  <41.818859, 37.160557, 53.704708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614388, 37.499069, 53.644695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274654, 0.004570, 0.961532,
		0.814409, 0.532722, 0.230097,
		-0.511178, 0.846278, -0.150036,
		41.461033, 37.752953, 53.599686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977974, 37.582626, 54.286625>,  <41.818859, 37.160557, 53.704708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977974, 37.582626, 54.286625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644596, 37.731667, 54.123390>,  <41.444569, 37.821091, 54.025448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644596, 37.731667, 54.123390>,  <41.977974, 37.582626, 54.286625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644596, 37.731667, 54.123390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390490, 0.125427, 0.912023,
		0.391009, 0.919475, 0.040962,
		-0.833444, 0.372605, -0.408089,
		41.394562, 37.843449, 54.000965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792423, 38.245750, 54.640469>,  <41.977974, 37.582626, 54.286625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792423, 38.245750, 54.640469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447453, 38.123711, 54.478912>,  <41.240471, 38.050488, 54.381977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447453, 38.123711, 54.478912>,  <41.792423, 38.245750, 54.640469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447453, 38.123711, 54.478912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483527, 0.260565, 0.835648,
		-0.149718, 0.915979, -0.372244,
		-0.862430, -0.305102, -0.403890,
		41.188725, 38.032181, 54.357746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348305, 38.655830, 54.789925>,  <41.792423, 38.245750, 54.640469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348305, 38.655830, 54.789925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130424, 38.332733, 54.699726>,  <40.999695, 38.138874, 54.645607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130424, 38.332733, 54.699726>,  <41.348305, 38.655830, 54.789925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130424, 38.332733, 54.699726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559493, 0.149722, 0.815200,
		-0.624712, 0.570204, -0.533481,
		-0.544704, -0.807745, -0.225492,
		40.967014, 38.090408, 54.632080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516186, 38.681633, 54.647148>,  <41.348305, 38.655830, 54.789925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516186, 38.681633, 54.647148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603912, 38.332291, 54.821114>,  <40.656548, 38.122684, 54.925495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603912, 38.332291, 54.821114>,  <40.516186, 38.681633, 54.647148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603912, 38.332291, 54.821114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709338, 0.163329, 0.685684,
		-0.669879, -0.458887, -0.583682,
		0.219319, -0.873354, 0.434917,
		40.669708, 38.070286, 54.951588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875557, 38.280182, 54.691036>,  <40.516186, 38.681633, 54.647148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875557, 38.280182, 54.691036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116013, 38.130173, 54.973309>,  <40.260284, 38.040169, 55.142673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116013, 38.130173, 54.973309>,  <39.875557, 38.280182, 54.691036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116013, 38.130173, 54.973309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739028, 0.075139, 0.669472,
		-0.304091, -0.923966, -0.231983,
		0.601138, -0.375022, 0.705685,
		40.296352, 38.017666, 55.185013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583027, 37.700298, 55.061638>,  <39.875557, 38.280182, 54.691036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583027, 37.700298, 55.061638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858040, 37.822044, 55.325356>,  <40.023048, 37.895092, 55.483585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858040, 37.822044, 55.325356>,  <39.583027, 37.700298, 55.061638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858040, 37.822044, 55.325356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676452, -0.061683, 0.733899,
		0.264039, -0.950557, 0.163478,
		0.687528, 0.304364, 0.659293,
		40.064297, 37.913353, 55.523144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595955, 37.129917, 55.685390>,  <39.583027, 37.700298, 55.061638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595955, 37.129917, 55.685390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773441, 37.466202, 55.809528>,  <39.879932, 37.667973, 55.884010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773441, 37.466202, 55.809528>,  <39.595955, 37.129917, 55.685390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773441, 37.466202, 55.809528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633342, 0.049179, 0.772308,
		0.634029, -0.539239, 0.554282,
		0.443717, 0.840716, 0.310342,
		39.906555, 37.718418, 55.902630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557247, 37.089760, 56.373764>,  <39.595955, 37.129917, 55.685390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557247, 37.089760, 56.373764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626347, 37.480423, 56.322693>,  <39.667805, 37.714821, 56.292049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626347, 37.480423, 56.322693>,  <39.557247, 37.089760, 56.373764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626347, 37.480423, 56.322693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762163, 0.214654, 0.610764,
		0.623913, -0.008192, 0.781451,
		0.172745, 0.976656, -0.127682,
		39.678169, 37.773418, 56.284389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602463, 37.279827, 56.971214>,  <39.557247, 37.089760, 56.373764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602463, 37.279827, 56.971214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517082, 37.609886, 56.762001>,  <39.465855, 37.807922, 56.636475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517082, 37.609886, 56.762001>,  <39.602463, 37.279827, 56.971214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517082, 37.609886, 56.762001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503724, 0.365764, 0.782610,
		0.837079, 0.430513, 0.337576,
		-0.213451, 0.825152, -0.523033,
		39.453049, 37.857433, 56.605091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872116, 37.804573, 57.371597>,  <39.602463, 37.279827, 56.971214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872116, 37.804573, 57.371597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603676, 37.976105, 57.129696>,  <39.442612, 38.079025, 56.984554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603676, 37.976105, 57.129696>,  <39.872116, 37.804573, 57.371597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603676, 37.976105, 57.129696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434473, 0.433471, 0.789516,
		0.600713, 0.792594, -0.104587,
		-0.671101, 0.428832, -0.604753,
		39.402344, 38.104755, 56.948269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833172, 38.385765, 57.624748>,  <39.872116, 37.804573, 57.371597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833172, 38.385765, 57.624748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488098, 38.358078, 57.424355>,  <39.281055, 38.341465, 57.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488098, 38.358078, 57.424355>,  <39.833172, 38.385765, 57.624748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488098, 38.358078, 57.424355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453547, 0.544169, 0.705815,
		0.223766, 0.836115, -0.500839,
		-0.862684, -0.069217, -0.500984,
		39.229294, 38.337315, 57.274059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513420, 39.095963, 57.612247>,  <39.833172, 38.385765, 57.624748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513420, 39.095963, 57.612247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194084, 38.873833, 57.519058>,  <39.002483, 38.740555, 57.463142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194084, 38.873833, 57.519058>,  <39.513420, 39.095963, 57.612247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194084, 38.873833, 57.519058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486575, 0.366865, 0.792878,
		-0.354831, 0.746343, -0.563087,
		-0.798336, -0.555321, -0.232977,
		38.954582, 38.707237, 57.449165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997986, 39.545593, 57.603813>,  <39.513420, 39.095963, 57.612247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997986, 39.545593, 57.603813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885735, 39.172195, 57.693111>,  <38.818382, 38.948158, 57.746689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885735, 39.172195, 57.693111>,  <38.997986, 39.545593, 57.603813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885735, 39.172195, 57.693111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340727, 0.314332, 0.886059,
		-0.897303, 0.172587, -0.406276,
		-0.280628, -0.933493, 0.223246,
		38.801548, 38.892147, 57.760086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345253, 39.690014, 57.919807>,  <38.997986, 39.545593, 57.603813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345253, 39.690014, 57.919807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452568, 39.315605, 58.010925>,  <38.516956, 39.090961, 58.065598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452568, 39.315605, 58.010925>,  <38.345253, 39.690014, 57.919807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452568, 39.315605, 58.010925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351583, 0.125012, 0.927772,
		-0.896889, -0.329001, -0.295549,
		0.268291, -0.936018, 0.227793,
		38.533054, 39.034801, 58.079262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772591, 39.498417, 58.223862>,  <38.345253, 39.690014, 57.919807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772591, 39.498417, 58.223862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066917, 39.265228, 58.361683>,  <38.243511, 39.125317, 58.444378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066917, 39.265228, 58.361683>,  <37.772591, 39.498417, 58.223862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066917, 39.265228, 58.361683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328167, 0.138101, 0.934470,
		-0.592354, -0.800669, -0.089695,
		0.735814, -0.582973, 0.344557,
		38.287663, 39.090336, 58.465050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409031, 38.901630, 58.680893>,  <37.772591, 39.498417, 58.223862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409031, 38.901630, 58.680893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785885, 38.964729, 58.799210>,  <38.011997, 39.002590, 58.870201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785885, 38.964729, 58.799210>,  <37.409031, 38.901630, 58.680893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785885, 38.964729, 58.799210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320766, 0.167850, 0.932167,
		0.097401, -0.973109, 0.208739,
		0.942137, 0.157750, 0.295791,
		38.068527, 39.012054, 58.887947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220661, 38.816822, 59.319096>,  <37.409031, 38.901630, 58.680893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220661, 38.816822, 59.319096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596245, 38.953949, 59.330627>,  <37.821594, 39.036224, 59.337547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596245, 38.953949, 59.330627>,  <37.220661, 38.816822, 59.319096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596245, 38.953949, 59.330627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087217, 0.156131, 0.983878,
		0.332794, -0.926334, 0.176501,
		0.938957, 0.342823, 0.028833,
		37.877934, 39.056797, 59.339279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671234, 38.575760, 59.901527>,  <37.220661, 38.816822, 59.319096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671234, 38.575760, 59.901527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801476, 38.940300, 59.800789>,  <37.879620, 39.159023, 59.740345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801476, 38.940300, 59.800789>,  <37.671234, 38.575760, 59.901527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801476, 38.940300, 59.800789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052300, 0.248596, 0.967194,
		0.944058, -0.328096, 0.033281,
		0.325606, 0.911347, -0.251848,
		37.899158, 39.213703, 59.725235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234833, 38.822758, 60.324368>,  <37.671234, 38.575760, 59.901527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234833, 38.822758, 60.324368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054504, 39.160576, 60.208771>,  <37.946308, 39.363266, 60.139412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054504, 39.160576, 60.208771>,  <38.234833, 38.822758, 60.324368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054504, 39.160576, 60.208771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118652, 0.377578, 0.918344,
		0.884694, 0.379717, -0.270426,
		-0.450818, 0.844541, -0.288987,
		37.919258, 39.413937, 60.122074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546555, 39.414639, 60.779572>,  <38.234833, 38.822758, 60.324368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546555, 39.414639, 60.779572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213570, 39.547295, 60.602020>,  <38.013779, 39.626888, 60.495491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213570, 39.547295, 60.602020>,  <38.546555, 39.414639, 60.779572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213570, 39.547295, 60.602020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135426, 0.655021, 0.743376,
		0.537278, 0.678944, -0.500368,
		-0.832462, 0.331637, -0.443874,
		37.963833, 39.646786, 60.468857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530376, 40.261791, 60.768806>,  <38.546555, 39.414639, 60.779572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530376, 40.261791, 60.768806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172001, 40.084175, 60.764359>,  <37.956974, 39.977608, 60.761692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172001, 40.084175, 60.764359>,  <38.530376, 40.261791, 60.768806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172001, 40.084175, 60.764359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341887, 0.673423, 0.655449,
		-0.283557, 0.591044, -0.755157,
		-0.895940, -0.444036, -0.011116,
		37.903217, 39.950966, 60.761024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026897, 40.831902, 60.792839>,  <38.530376, 40.261791, 60.768806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026897, 40.831902, 60.792839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844730, 40.504608, 60.933174>,  <37.735428, 40.308231, 61.017376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844730, 40.504608, 60.933174>,  <38.026897, 40.831902, 60.792839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844730, 40.504608, 60.933174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552146, 0.568724, 0.609662,
		-0.698375, 0.083941, -0.710793,
		-0.455420, -0.818234, 0.350835,
		37.708103, 40.259136, 61.038425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253464, 40.936295, 60.881744>,  <38.026897, 40.831902, 60.792839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253464, 40.936295, 60.881744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217590, 41.214462, 60.596550>,  <37.196068, 41.381363, 60.425434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217590, 41.214462, 60.596550>,  <37.253464, 40.936295, 60.881744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217590, 41.214462, 60.596550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995561, 0.083109, -0.044165,
		0.028542, -0.713781, -0.699787,
		-0.089683, 0.695420, -0.712985,
		37.190685, 41.423088, 60.382656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526596, 40.689674, 60.199455>,  <37.253464, 40.936295, 60.881744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526596, 40.689674, 60.199455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680626, 41.054810, 60.253769>,  <37.773045, 41.273891, 60.286358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680626, 41.054810, 60.253769>,  <37.526596, 40.689674, 60.199455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680626, 41.054810, 60.253769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866367, -0.306865, -0.394008,
		-0.317998, 0.269365, -0.909021,
		0.385079, 0.912840, 0.135787,
		37.796150, 41.328663, 60.294506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795979, 40.981228, 59.503601>,  <37.526596, 40.689674, 60.199455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795979, 40.981228, 59.503601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976364, 41.116234, 59.834106>,  <38.084595, 41.197239, 60.032410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976364, 41.116234, 59.834106>,  <37.795979, 40.981228, 59.503601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976364, 41.116234, 59.834106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850446, -0.443445, -0.283017,
		0.270882, 0.830325, -0.487014,
		0.450960, 0.337515, 0.826268,
		38.111652, 41.217487, 60.081985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365276, 41.373817, 59.341835>,  <37.795979, 40.981228, 59.503601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365276, 41.373817, 59.341835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411232, 41.213005, 59.705193>,  <38.438805, 41.116520, 59.923206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411232, 41.213005, 59.705193>,  <38.365276, 41.373817, 59.341835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411232, 41.213005, 59.705193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856660, -0.422867, -0.295494,
		0.502925, 0.812132, 0.295818,
		0.114888, -0.402027, 0.908392,
		38.445698, 41.092396, 59.977711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024204, 41.598343, 59.546661>,  <38.365276, 41.373817, 59.341835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024204, 41.598343, 59.546661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945610, 41.268822, 59.759357>,  <38.898453, 41.071110, 59.886974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945610, 41.268822, 59.759357>,  <39.024204, 41.598343, 59.546661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945610, 41.268822, 59.759357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847005, -0.415801, -0.331197,
		0.493938, 0.385310, 0.779462,
		-0.196488, -0.823799, 0.531740,
		38.886665, 41.021683, 59.918880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626289, 41.447128, 59.997272>,  <39.024204, 41.598343, 59.546661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626289, 41.447128, 59.997272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403324, 41.136711, 59.879261>,  <39.269543, 40.950459, 59.808453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403324, 41.136711, 59.879261>,  <39.626289, 41.447128, 59.997272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403324, 41.136711, 59.879261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807718, -0.424703, -0.408925,
		0.192045, -0.466240, 0.863562,
		-0.557415, -0.776046, -0.295028,
		39.236099, 40.903896, 59.790752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015644, 40.834278, 60.178539>,  <39.626289, 41.447128, 59.997272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015644, 40.834278, 60.178539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736404, 40.707726, 59.921616>,  <39.568863, 40.631794, 59.767460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736404, 40.707726, 59.921616>,  <40.015644, 40.834278, 60.178539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736404, 40.707726, 59.921616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673386, -0.594982, -0.438802,
		-0.243334, -0.738849, 0.628402,
		-0.698097, -0.316382, -0.642310,
		39.526974, 40.612812, 59.728924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049183, 40.113205, 60.170490>,  <40.015644, 40.834278, 60.178539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049183, 40.113205, 60.170490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887474, 40.227844, 59.823059>,  <39.790451, 40.296627, 59.614601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887474, 40.227844, 59.823059>,  <40.049183, 40.113205, 60.170490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887474, 40.227844, 59.823059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761997, -0.419717, -0.493152,
		-0.505893, -0.861220, -0.048708,
		-0.404269, 0.286597, -0.868579,
		39.766193, 40.313824, 59.562485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213406, 39.573284, 59.676781>,  <40.049183, 40.113205, 60.170490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213406, 39.573284, 59.676781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099434, 39.854973, 59.416660>,  <40.031052, 40.023987, 59.260590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099434, 39.854973, 59.416660>,  <40.213406, 39.573284, 59.676781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099434, 39.854973, 59.416660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726265, -0.284158, -0.625934,
		-0.625585, -0.650633, -0.430489,
		-0.284926, 0.704224, -0.650297,
		40.013954, 40.066238, 59.221573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463341, 39.339939, 58.987480>,  <40.213406, 39.573284, 59.676781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463341, 39.339939, 58.987480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409874, 39.730354, 58.918808>,  <40.377796, 39.964603, 58.877605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409874, 39.730354, 58.918808>,  <40.463341, 39.339939, 58.987480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409874, 39.730354, 58.918808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841667, 0.020346, -0.539613,
		-0.523192, -0.216628, -0.824222,
		-0.133665, 0.976042, -0.171684,
		40.369774, 40.023167, 58.867302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554962, 39.405121, 58.331039>,  <40.463341, 39.339939, 58.987480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554962, 39.405121, 58.331039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616264, 39.786301, 58.435654>,  <40.653046, 40.015007, 58.498421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616264, 39.786301, 58.435654>,  <40.554962, 39.405121, 58.331039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616264, 39.786301, 58.435654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678913, 0.090777, -0.728585,
		-0.718046, 0.289220, -0.633057,
		0.153255, 0.952949, 0.261537,
		40.662239, 40.072186, 58.514114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585007, 39.831135, 57.713612>,  <40.554962, 39.405121, 58.331039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585007, 39.831135, 57.713612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791645, 40.041977, 57.983513>,  <40.915630, 40.168480, 58.145454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791645, 40.041977, 57.983513>,  <40.585007, 39.831135, 57.713612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791645, 40.041977, 57.983513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678853, 0.228118, -0.697940,
		-0.521809, 0.818612, -0.239980,
		0.516598, 0.527102, 0.674751,
		40.946625, 40.200108, 58.185940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813480, 40.427437, 57.358444>,  <40.585007, 39.831135, 57.713612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813480, 40.427437, 57.358444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063721, 40.435646, 57.670395>,  <41.213863, 40.440571, 57.857563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063721, 40.435646, 57.670395>,  <40.813480, 40.427437, 57.358444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063721, 40.435646, 57.670395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716353, 0.380795, -0.584666,
		-0.308968, 0.924432, 0.223527,
		0.625602, 0.020519, 0.779873,
		41.251400, 40.441803, 57.904358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091030, 41.147743, 57.318165>,  <40.813480, 40.427437, 57.358444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091030, 41.147743, 57.318165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325863, 40.887527, 57.510887>,  <41.466763, 40.731396, 57.626518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325863, 40.887527, 57.510887>,  <41.091030, 41.147743, 57.318165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325863, 40.887527, 57.510887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790278, 0.331531, -0.515314,
		0.175500, 0.683288, 0.708744,
		0.587078, -0.650542, 0.481803,
		41.501987, 40.692364, 57.655430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678444, 41.482265, 57.366241>,  <41.091030, 41.147743, 57.318165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678444, 41.482265, 57.366241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793011, 41.104378, 57.430084>,  <41.861752, 40.877647, 57.468391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793011, 41.104378, 57.430084>,  <41.678444, 41.482265, 57.366241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793011, 41.104378, 57.430084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777124, 0.131631, -0.615428,
		0.560395, 0.300307, 0.771863,
		0.286419, -0.944716, 0.159610,
		41.878937, 40.820961, 57.477966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405575, 41.445694, 57.264069>,  <41.678444, 41.482265, 57.366241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405575, 41.445694, 57.264069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296585, 41.065193, 57.206268>,  <42.231194, 40.836891, 57.171589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296585, 41.065193, 57.206268>,  <42.405575, 41.445694, 57.264069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296585, 41.065193, 57.206268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651000, -0.071676, -0.755686,
		0.708490, -0.299971, 0.638795,
		-0.272470, -0.951252, -0.144500,
		42.214844, 40.779819, 57.162918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035160, 41.204227, 57.001167>,  <42.405575, 41.445694, 57.264069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035160, 41.204227, 57.001167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762543, 40.920029, 56.931091>,  <42.598972, 40.749508, 56.889046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762543, 40.920029, 56.931091>,  <43.035160, 41.204227, 57.001167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762543, 40.920029, 56.931091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553867, -0.344377, -0.758047,
		0.478258, -0.613675, 0.628229,
		-0.681543, -0.710497, -0.175194,
		42.558079, 40.706879, 56.878532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420589, 40.506180, 56.906536>,  <43.035160, 41.204227, 57.001167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420589, 40.506180, 56.906536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073769, 40.470764, 56.710419>,  <42.865677, 40.449516, 56.592751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073769, 40.470764, 56.710419>,  <43.420589, 40.506180, 56.906536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073769, 40.470764, 56.710419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489612, -0.333540, -0.805625,
		-0.092205, -0.938570, 0.332544,
		-0.867052, -0.088535, -0.490289,
		42.813652, 40.444202, 56.563332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322178, 39.781254, 56.595833>,  <43.420589, 40.506180, 56.906536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322178, 39.781254, 56.595833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080948, 39.998077, 56.361748>,  <42.936211, 40.128170, 56.221298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080948, 39.998077, 56.361748>,  <43.322178, 39.781254, 56.595833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080948, 39.998077, 56.361748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506224, -0.306898, -0.805947,
		-0.616469, -0.782296, -0.089319,
		-0.603077, 0.542057, -0.585210,
		42.900024, 40.160694, 56.186184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052711, 39.310711, 56.093979>,  <43.322178, 39.781254, 56.595833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052711, 39.310711, 56.093979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005489, 39.667931, 55.920303>,  <42.977158, 39.882263, 55.816097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005489, 39.667931, 55.920303>,  <43.052711, 39.310711, 56.093979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005489, 39.667931, 55.920303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538076, -0.309962, -0.783836,
		-0.834589, -0.326161, -0.443938,
		-0.118053, 0.893053, -0.434190,
		42.970074, 39.935848, 55.790047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911785, 39.135967, 55.421844>,  <43.052711, 39.310711, 56.093979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911785, 39.135967, 55.421844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046379, 39.512268, 55.405056>,  <43.127136, 39.738049, 55.394985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046379, 39.512268, 55.405056>,  <42.911785, 39.135967, 55.421844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046379, 39.512268, 55.405056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491333, -0.213410, -0.844422,
		-0.803349, 0.263515, -0.534032,
		0.336485, 0.940753, -0.041969,
		43.147324, 39.794495, 55.392464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730061, 39.417355, 54.772202>,  <42.911785, 39.135967, 55.421844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730061, 39.417355, 54.772202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038261, 39.633209, 54.907917>,  <43.223183, 39.762722, 54.989346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038261, 39.633209, 54.907917>,  <42.730061, 39.417355, 54.772202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038261, 39.633209, 54.907917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503943, -0.189737, -0.842639,
		-0.390344, 0.820238, -0.418139,
		0.770502, 0.539638, 0.339291,
		43.269413, 39.795101, 55.009705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956299, 39.691002, 54.229477>,  <42.730061, 39.417355, 54.772202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956299, 39.691002, 54.229477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253098, 39.778877, 54.482834>,  <43.431175, 39.831604, 54.634846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253098, 39.778877, 54.482834>,  <42.956299, 39.691002, 54.229477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253098, 39.778877, 54.482834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662938, -0.099797, -0.741993,
		-0.099797, 0.970452, -0.219689,
		0.741993, 0.219689, 0.633390,
		43.475697, 39.844784, 54.672852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413567, 40.294678, 53.924408>,  <42.956299, 39.691002, 54.229477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413567, 40.294678, 53.924408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644272, 40.101234, 54.187759>,  <43.782696, 39.985168, 54.345772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644272, 40.101234, 54.187759>,  <43.413567, 40.294678, 53.924408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644272, 40.101234, 54.187759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778476, 0.081068, -0.622417,
		0.247633, 0.871521, 0.423236,
		0.576760, -0.483610, 0.658383,
		43.817299, 39.956150, 54.385273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089336, 40.636585, 53.873276>,  <43.413567, 40.294678, 53.924408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089336, 40.636585, 53.873276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149155, 40.285339, 54.055069>,  <44.185047, 40.074593, 54.164143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149155, 40.285339, 54.055069>,  <44.089336, 40.636585, 53.873276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149155, 40.285339, 54.055069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842236, -0.127650, -0.523779,
		0.517952, 0.461110, 0.720489,
		0.149549, -0.878114, 0.454480,
		44.194019, 40.021904, 54.191414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776558, 40.690868, 54.095581>,  <44.089336, 40.636585, 53.873276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776558, 40.690868, 54.095581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668633, 40.307129, 54.062477>,  <44.603878, 40.076885, 54.042614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668633, 40.307129, 54.062477>,  <44.776558, 40.690868, 54.095581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668633, 40.307129, 54.062477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775407, -0.165515, -0.609384,
		0.570915, -0.228590, 0.788545,
		-0.269815, -0.959350, -0.082755,
		44.587688, 40.019325, 54.037651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390335, 40.393223, 54.164310>,  <44.776558, 40.690868, 54.095581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390335, 40.393223, 54.164310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162910, 40.119713, 53.981361>,  <45.026455, 39.955608, 53.871590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162910, 40.119713, 53.981361>,  <45.390335, 40.393223, 54.164310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162910, 40.119713, 53.981361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748370, -0.199048, -0.632711,
		0.341592, -0.702019, 0.624887,
		-0.568557, -0.683776, -0.457377,
		44.992344, 39.914581, 53.844147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819530, 39.840870, 54.091480>,  <45.390335, 40.393223, 54.164310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819530, 39.840870, 54.091480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538963, 39.768303, 53.815769>,  <45.370625, 39.724762, 53.650345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538963, 39.768303, 53.815769>,  <45.819530, 39.840870, 54.091480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538963, 39.768303, 53.815769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712539, -0.202096, -0.671897,
		-0.017403, -0.962415, 0.271023,
		-0.701416, -0.181422, -0.689276,
		45.328537, 39.713875, 53.608986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065331, 39.171528, 53.731544>,  <45.819530, 39.840870, 54.091480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065331, 39.171528, 53.731544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798889, 39.357643, 53.498371>,  <45.639027, 39.469315, 53.358467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.798889, 39.357643, 53.498371>,  <46.065331, 39.171528, 53.731544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.798889, 39.357643, 53.498371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590605, -0.148284, -0.793220,
		-0.455519, -0.872648, -0.176032,
		-0.666099, 0.465292, -0.582937,
		45.599060, 39.497231, 53.323490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231766, 38.815655, 53.141865>,  <46.065331, 39.171528, 53.731544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.231766, 38.815655, 53.141865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024399, 39.136818, 53.024170>,  <45.899979, 39.329517, 52.953552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024399, 39.136818, 53.024170>,  <46.231766, 38.815655, 53.141865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024399, 39.136818, 53.024170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509384, 0.013581, -0.860432,
		-0.686853, -0.595947, -0.416030,
		-0.518421, 0.802909, -0.294238,
		45.868874, 39.377689, 52.935898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919464, 38.666775, 52.474510>,  <46.231766, 38.815655, 53.141865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919464, 38.666775, 52.474510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978043, 39.062111, 52.491207>,  <46.013191, 39.299313, 52.501225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978043, 39.062111, 52.491207>,  <45.919464, 38.666775, 52.474510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978043, 39.062111, 52.491207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377053, -0.016755, -0.926040,
		-0.914540, 0.151357, -0.375110,
		0.146448, 0.988337, 0.041746,
		46.021976, 39.358612, 52.503731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780910, 38.965584, 51.789936>,  <45.919464, 38.666775, 52.474510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780910, 38.965584, 51.789936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955627, 39.283585, 51.958313>,  <46.060459, 39.474384, 52.059338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955627, 39.283585, 51.958313>,  <45.780910, 38.965584, 51.789936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955627, 39.283585, 51.958313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437202, 0.221344, -0.871701,
		-0.786172, 0.564788, -0.250893,
		0.436793, 0.794998, 0.420941,
		46.086666, 39.522083, 52.084595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515907, 39.621719, 51.441319>,  <45.780910, 38.965584, 51.789936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515907, 39.621719, 51.441319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876846, 39.684464, 51.601898>,  <46.093410, 39.722111, 51.698246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876846, 39.684464, 51.601898>,  <45.515907, 39.621719, 51.441319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876846, 39.684464, 51.601898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353838, 0.262238, -0.897792,
		-0.246100, 0.952170, 0.181128,
		0.902349, 0.156856, 0.401451,
		46.147552, 39.731522, 51.722332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706837, 40.309776, 51.196754>,  <45.515907, 39.621719, 51.441319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706837, 40.309776, 51.196754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051903, 40.129562, 51.288689>,  <46.258942, 40.021435, 51.343849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051903, 40.129562, 51.288689>,  <45.706837, 40.309776, 51.196754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051903, 40.129562, 51.288689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313723, 0.120226, -0.941872,
		0.396718, 0.884624, 0.245060,
		0.862666, -0.450539, 0.229831,
		46.310703, 39.994400, 51.357639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222935, 40.668350, 50.759064>,  <45.706837, 40.309776, 51.196754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222935, 40.668350, 50.759064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434448, 40.352104, 50.882553>,  <46.561356, 40.162357, 50.956650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434448, 40.352104, 50.882553>,  <46.222935, 40.668350, 50.759064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.434448, 40.352104, 50.882553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581016, 0.072024, -0.810699,
		0.618718, 0.608058, 0.497447,
		0.528780, -0.790619, 0.308728,
		46.593082, 40.114918, 50.975170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949402, 40.874115, 50.803612>,  <46.222935, 40.668350, 50.759064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949402, 40.874115, 50.803612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937599, 40.474594, 50.788002>,  <46.930519, 40.234882, 50.778637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937599, 40.474594, 50.788002>,  <46.949402, 40.874115, 50.803612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937599, 40.474594, 50.788002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531102, 0.017410, -0.847129,
		0.846794, -0.045723, 0.529952,
		-0.029507, -0.998802, -0.039027,
		46.928745, 40.174953, 50.776295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.673893, 40.652203, 50.687138>,  <46.949402, 40.874115, 50.803612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.673893, 40.652203, 50.687138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419617, 40.368553, 50.565125>,  <47.267052, 40.198364, 50.491917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419617, 40.368553, 50.565125>,  <47.673893, 40.652203, 50.687138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.419617, 40.368553, 50.565125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434431, -0.001996, -0.900703,
		0.638100, -0.705082, 0.309334,
		-0.635687, -0.709123, -0.305036,
		47.228912, 40.155815, 50.473614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.120068, 40.196110, 50.341370>,  <47.673893, 40.652203, 50.687138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.120068, 40.196110, 50.341370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753098, 40.136467, 50.193802>,  <47.532917, 40.100681, 50.105263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753098, 40.136467, 50.193802>,  <48.120068, 40.196110, 50.341370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753098, 40.136467, 50.193802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383665, -0.085627, -0.919494,
		0.105518, -0.985106, 0.135765,
		-0.917424, -0.149111, -0.368916,
		47.477871, 40.091732, 50.083126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.259438, 39.792515, 49.773682>,  <48.120068, 40.196110, 50.341370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.259438, 39.792515, 49.773682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881813, 39.894424, 49.689934>,  <47.655239, 39.955570, 49.639687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881813, 39.894424, 49.689934>,  <48.259438, 39.792515, 49.773682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.881813, 39.894424, 49.689934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256304, 0.167408, -0.951989,
		-0.207489, -0.952400, -0.223342,
		-0.944064, 0.254770, -0.209369,
		47.598595, 39.970856, 49.627125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.999054, 39.391201, 49.176907>,  <48.259438, 39.792515, 49.773682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.999054, 39.391201, 49.176907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753250, 39.705566, 49.204391>,  <47.605770, 39.894184, 49.220882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753250, 39.705566, 49.204391>,  <47.999054, 39.391201, 49.176907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753250, 39.705566, 49.204391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085597, 0.153003, -0.984512,
		-0.784255, -0.599106, -0.161293,
		-0.614505, 0.785915, 0.068712,
		47.568897, 39.941341, 49.225006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571220, 39.315876, 48.567940>,  <47.999054, 39.391201, 49.176907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571220, 39.315876, 48.567940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539001, 39.698997, 48.678303>,  <47.519669, 39.928871, 48.744518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539001, 39.698997, 48.678303>,  <47.571220, 39.315876, 48.567940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539001, 39.698997, 48.678303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144236, 0.285092, -0.947585,
		-0.986259, -0.036534, -0.161115,
		-0.080552, 0.957804, 0.275906,
		47.514835, 39.986340, 48.761074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.055508, 39.575752, 48.174721>,  <47.571220, 39.315876, 48.567940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.055508, 39.575752, 48.174721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276672, 39.889877, 48.286137>,  <47.409370, 40.078350, 48.352985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276672, 39.889877, 48.286137>,  <47.055508, 39.575752, 48.174721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276672, 39.889877, 48.286137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092519, 0.390075, -0.916123,
		-0.828090, 0.480762, 0.288332,
		0.552908, 0.785308, 0.278537,
		47.442543, 40.125469, 48.369698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728138, 40.035591, 47.868950>,  <47.055508, 39.575752, 48.174721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728138, 40.035591, 47.868950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084343, 40.202896, 47.940540>,  <47.298065, 40.303280, 47.983494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084343, 40.202896, 47.940540>,  <46.728138, 40.035591, 47.868950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.084343, 40.202896, 47.940540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089966, 0.547530, -0.831936,
		-0.445967, 0.724751, 0.525215,
		0.890517, 0.418267, 0.178978,
		47.351498, 40.328377, 47.994232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656826, 40.719257, 47.892929>,  <46.728138, 40.035591, 47.868950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656826, 40.719257, 47.892929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.046883, 40.693787, 47.808029>,  <47.280914, 40.678505, 47.757088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.046883, 40.693787, 47.808029>,  <46.656826, 40.719257, 47.892929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.046883, 40.693787, 47.808029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135153, 0.588145, -0.797383,
		0.175612, 0.806245, 0.564916,
		0.975138, -0.063680, -0.212252,
		47.339424, 40.674683, 47.744354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.883640, 41.400410, 47.746872>,  <46.656826, 40.719257, 47.892929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.883640, 41.400410, 47.746872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115204, 41.128624, 47.566566>,  <47.254143, 40.965553, 47.458382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115204, 41.128624, 47.566566>,  <46.883640, 41.400410, 47.746872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.115204, 41.128624, 47.566566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097320, 0.491292, -0.865541,
		0.809561, 0.544941, 0.218290,
		0.578913, -0.679464, -0.450765,
		47.288879, 40.924786, 47.431335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.478680, 41.602661, 47.476154>,  <46.883640, 41.400410, 47.746872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.478680, 41.602661, 47.476154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477081, 41.887939, 47.195774>,  <47.476124, 42.059109, 47.027546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477081, 41.887939, 47.195774>,  <47.478680, 41.602661, 47.476154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.477081, 41.887939, 47.195774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408778, 0.638551, 0.652038,
		0.912625, 0.289138, 0.288990,
		-0.003994, 0.713199, -0.700950,
		47.475883, 42.101898, 46.985489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668510, 42.182056, 47.936897>,  <47.478680, 41.602661, 47.476154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668510, 42.182056, 47.936897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512878, 42.287621, 47.583862>,  <47.419498, 42.350960, 47.372040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512878, 42.287621, 47.583862>,  <47.668510, 42.182056, 47.936897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.512878, 42.287621, 47.583862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437288, 0.790347, 0.429104,
		0.810798, 0.552903, -0.192105,
		-0.389082, 0.263912, -0.882590,
		47.396152, 42.366795, 47.319084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.823433, 42.889660, 47.604916>,  <47.668510, 42.182056, 47.936897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.823433, 42.889660, 47.604916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.463348, 42.767982, 47.480282>,  <47.247295, 42.694977, 47.405502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.463348, 42.767982, 47.480282>,  <47.823433, 42.889660, 47.604916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.463348, 42.767982, 47.480282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435380, 0.615984, 0.656512,
		-0.007773, 0.726658, -0.686955,
		-0.900213, -0.304189, -0.311584,
		47.193283, 42.676727, 47.386806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.508839, 43.497715, 47.535770>,  <47.823433, 42.889660, 47.604916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.508839, 43.497715, 47.535770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221390, 43.219727, 47.545586>,  <47.048920, 43.052933, 47.551476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221390, 43.219727, 47.545586>,  <47.508839, 43.497715, 47.535770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221390, 43.219727, 47.545586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566758, 0.605759, 0.558428,
		-0.402953, 0.387391, -0.829190,
		-0.718620, -0.694970, 0.024536,
		47.005802, 43.011234, 47.552948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962185, 43.960022, 47.592003>,  <47.508839, 43.497715, 47.535770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962185, 43.960022, 47.592003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.813004, 43.601334, 47.687332>,  <46.723495, 43.386120, 47.744530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.813004, 43.601334, 47.687332>,  <46.962185, 43.960022, 47.592003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.813004, 43.601334, 47.687332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666467, 0.437601, 0.603595,
		-0.645546, 0.066279, -0.760840,
		-0.372950, -0.896723, 0.238319,
		46.701118, 43.332317, 47.758827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303810, 43.948032, 47.611912>,  <46.962185, 43.960022, 47.592003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303810, 43.948032, 47.611912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396675, 43.641769, 47.851868>,  <46.452396, 43.458012, 47.995842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396675, 43.641769, 47.851868>,  <46.303810, 43.948032, 47.611912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396675, 43.641769, 47.851868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691911, 0.303472, 0.655107,
		-0.683637, -0.567164, -0.459310,
		0.232166, -0.765656, 0.599891,
		46.466324, 43.412071, 48.031834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666058, 43.659592, 47.779903>,  <46.303810, 43.948032, 47.611912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666058, 43.659592, 47.779903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914101, 43.512238, 48.056961>,  <46.062927, 43.423824, 48.223198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914101, 43.512238, 48.056961>,  <45.666058, 43.659592, 47.779903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914101, 43.512238, 48.056961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700650, 0.137129, 0.700203,
		-0.352924, -0.919506, -0.173072,
		0.620108, -0.368382, 0.692648,
		46.100132, 43.401722, 48.264755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238049, 43.222675, 48.165588>,  <45.666058, 43.659592, 47.779903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238049, 43.222675, 48.165588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549736, 43.274712, 48.410828>,  <45.736748, 43.305935, 48.557972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.549736, 43.274712, 48.410828>,  <45.238049, 43.222675, 48.165588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549736, 43.274712, 48.410828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621636, 0.035683, 0.782493,
		0.079925, -0.990858, 0.108681,
		0.779218, 0.130101, 0.613101,
		45.783501, 43.313740, 48.594757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111450, 42.766506, 48.801224>,  <45.238049, 43.222675, 48.165588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111450, 42.766506, 48.801224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389961, 43.026733, 48.922523>,  <45.557068, 43.182869, 48.995304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389961, 43.026733, 48.922523>,  <45.111450, 42.766506, 48.801224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389961, 43.026733, 48.922523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375370, -0.030064, 0.926387,
		0.611791, -0.758856, 0.223269,
		0.696282, 0.650564, 0.303245,
		45.598846, 43.221901, 49.013496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386635, 42.511261, 49.392471>,  <45.111450, 42.766506, 48.801224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386635, 42.511261, 49.392471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433060, 42.908524, 49.387291>,  <45.460915, 43.146881, 49.384182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433060, 42.908524, 49.387291>,  <45.386635, 42.511261, 49.392471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433060, 42.908524, 49.387291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462810, 0.065614, 0.884026,
		0.878826, -0.096612, 0.467259,
		0.116066, 0.993157, -0.012950,
		45.467880, 43.206470, 49.383408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601696, 42.753456, 50.017727>,  <45.386635, 42.511261, 49.392471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601696, 42.753456, 50.017727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504814, 43.109749, 49.863876>,  <45.446686, 43.323524, 49.771564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504814, 43.109749, 49.863876>,  <45.601696, 42.753456, 50.017727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504814, 43.109749, 49.863876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399528, 0.269695, 0.876152,
		0.884145, 0.365882, 0.290548,
		-0.242209, 0.890727, -0.384629,
		45.432152, 43.376968, 49.748489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861813, 43.248711, 50.456028>,  <45.601696, 42.753456, 50.017727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861813, 43.248711, 50.456028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550690, 43.427483, 50.279266>,  <45.364017, 43.534744, 50.173210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550690, 43.427483, 50.279266>,  <45.861813, 43.248711, 50.456028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550690, 43.427483, 50.279266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312257, 0.335394, 0.888823,
		0.545449, 0.829318, -0.121315,
		-0.777805, 0.446926, -0.441901,
		45.317348, 43.561562, 50.146698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826527, 43.900280, 50.784634>,  <45.861813, 43.248711, 50.456028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826527, 43.900280, 50.784634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466858, 43.831299, 50.623756>,  <45.251057, 43.789909, 50.527229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466858, 43.831299, 50.623756>,  <45.826527, 43.900280, 50.784634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466858, 43.831299, 50.623756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437597, 0.348861, 0.828737,
		-0.002607, 0.921171, -0.389148,
		-0.899167, -0.172451, -0.402192,
		45.197109, 43.779564, 50.503098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434216, 44.395245, 51.035538>,  <45.826527, 43.900280, 50.784634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434216, 44.395245, 51.035538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180225, 44.114357, 50.906731>,  <45.027832, 43.945824, 50.829449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180225, 44.114357, 50.906731>,  <45.434216, 44.395245, 51.035538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180225, 44.114357, 50.906731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431902, -0.022915, 0.901629,
		-0.640521, 0.711591, -0.288740,
		-0.634975, -0.702220, -0.322015,
		44.989735, 43.903690, 50.810127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783352, 44.665089, 51.276215>,  <45.434216, 44.395245, 51.035538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783352, 44.665089, 51.276215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702854, 44.277420, 51.219360>,  <44.654556, 44.044819, 51.185246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702854, 44.277420, 51.219360>,  <44.783352, 44.665089, 51.276215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702854, 44.277420, 51.219360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456144, -0.035692, 0.889190,
		-0.866853, 0.243780, -0.434900,
		-0.201245, -0.969174, -0.142139,
		44.642483, 43.986668, 51.176720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041203, 44.533993, 51.515961>,  <44.783352, 44.665089, 51.276215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041203, 44.533993, 51.515961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229031, 44.180931, 51.524261>,  <44.341728, 43.969093, 51.529243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229031, 44.180931, 51.524261>,  <44.041203, 44.533993, 51.515961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229031, 44.180931, 51.524261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523960, -0.259669, 0.811195,
		-0.710615, -0.391784, -0.584407,
		0.469566, -0.882653, 0.020755,
		44.369900, 43.916134, 51.530487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506107, 44.011040, 51.593571>,  <44.041203, 44.533993, 51.515961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506107, 44.011040, 51.593571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832893, 43.819679, 51.722382>,  <44.028965, 43.704865, 51.799667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832893, 43.819679, 51.722382>,  <43.506107, 44.011040, 51.593571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832893, 43.819679, 51.722382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521466, -0.374390, 0.766750,
		-0.246250, -0.794334, -0.555333,
		0.816966, -0.478400, 0.322024,
		44.077984, 43.676159, 51.818989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310574, 43.264500, 51.730495>,  <43.506107, 44.011040, 51.593571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310574, 43.264500, 51.730495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650291, 43.314400, 51.935680>,  <43.854122, 43.344337, 52.058792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650291, 43.314400, 51.935680>,  <43.310574, 43.264500, 51.730495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650291, 43.314400, 51.935680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388335, -0.510601, 0.767126,
		0.357616, -0.850720, -0.385209,
		0.849298, 0.124746, 0.512964,
		43.905083, 43.351822, 52.089569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387085, 42.671055, 52.106777>,  <43.310574, 43.264500, 51.730495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387085, 42.671055, 52.106777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606613, 42.938766, 52.307121>,  <43.738331, 43.099392, 52.427326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606613, 42.938766, 52.307121>,  <43.387085, 42.671055, 52.106777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606613, 42.938766, 52.307121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277582, -0.419252, 0.864393,
		0.788505, -0.613429, -0.044316,
		0.548823, 0.669277, 0.500860,
		43.771259, 43.139549, 52.457378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654930, 42.277500, 52.643642>,  <43.387085, 42.671055, 52.106777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654930, 42.277500, 52.643642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688854, 42.658943, 52.759182>,  <43.709209, 42.887810, 52.828506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688854, 42.658943, 52.759182>,  <43.654930, 42.277500, 52.643642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688854, 42.658943, 52.759182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349631, -0.242977, 0.904831,
		0.933041, -0.177727, 0.312806,
		0.084809, 0.953612, 0.288846,
		43.714298, 42.945026, 52.845837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007885, 42.259087, 53.326344>,  <43.654930, 42.277500, 52.643642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007885, 42.259087, 53.326344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796883, 42.596191, 53.283482>,  <43.670280, 42.798454, 53.257763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796883, 42.596191, 53.283482>,  <44.007885, 42.259087, 53.326344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796883, 42.596191, 53.283482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379991, -0.121246, 0.917009,
		0.759831, 0.524448, 0.384201,
		-0.527506, 0.842766, -0.107159,
		43.638630, 42.849022, 53.251335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045963, 42.543015, 53.932011>,  <44.007885, 42.259087, 53.326344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045963, 42.543015, 53.932011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721275, 42.724403, 53.784779>,  <43.526463, 42.833237, 53.696442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721275, 42.724403, 53.784779>,  <44.045963, 42.543015, 53.932011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721275, 42.724403, 53.784779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476008, -0.148471, 0.866818,
		0.338429, 0.878817, 0.336373,
		-0.811716, 0.453472, -0.368077,
		43.477760, 42.860447, 53.674355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709339, 43.015171, 54.494194>,  <44.045963, 42.543015, 53.932011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709339, 43.015171, 54.494194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425728, 42.937096, 54.223145>,  <43.255562, 42.890251, 54.060513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425728, 42.937096, 54.223145>,  <43.709339, 43.015171, 54.494194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425728, 42.937096, 54.223145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684642, -0.039669, 0.727799,
		-0.168937, 0.979964, -0.105505,
		-0.709031, -0.195185, -0.677626,
		43.213020, 42.878540, 54.019855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126911, 43.256252, 54.789654>,  <43.709339, 43.015171, 54.494194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126911, 43.256252, 54.789654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976746, 43.035500, 54.491798>,  <42.886646, 42.903049, 54.313084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976746, 43.035500, 54.491798>,  <43.126911, 43.256252, 54.789654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976746, 43.035500, 54.491798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843193, -0.130208, 0.521605,
		-0.384822, 0.823695, -0.416460,
		-0.375416, -0.551881, -0.744641,
		42.864120, 42.869934, 54.268406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409843, 43.489071, 54.727295>,  <43.126911, 43.256252, 54.789654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409843, 43.489071, 54.727295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440945, 43.129227, 54.555405>,  <42.459606, 42.913322, 54.452271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440945, 43.129227, 54.555405>,  <42.409843, 43.489071, 54.727295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440945, 43.129227, 54.555405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934728, -0.215696, 0.282416,
		-0.346753, 0.379715, -0.857659,
		0.077756, -0.899607, -0.429724,
		42.464272, 42.859344, 54.426487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905312, 43.410839, 54.243198>,  <42.409843, 43.489071, 54.727295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905312, 43.410839, 54.243198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012283, 43.053482, 54.387604>,  <42.076466, 42.839069, 54.474247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012283, 43.053482, 54.387604>,  <41.905312, 43.410839, 54.243198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012283, 43.053482, 54.387604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939969, -0.159452, 0.301719,
		-0.211989, -0.420029, -0.882404,
		0.267431, -0.893393, 0.361012,
		42.092514, 42.785465, 54.495907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273628, 43.059437, 54.278038>,  <41.905312, 43.410839, 54.243198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273628, 43.059437, 54.278038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491287, 42.798706, 54.489330>,  <41.621883, 42.642269, 54.616104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491287, 42.798706, 54.489330>,  <41.273628, 43.059437, 54.278038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491287, 42.798706, 54.489330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838985, -0.425091, 0.339708,
		0.003116, -0.628030, -0.778183,
		0.544146, -0.651825, 0.528232,
		41.654530, 42.603157, 54.647800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890244, 42.518532, 54.262581>,  <41.273628, 43.059437, 54.278038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890244, 42.518532, 54.262581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140686, 42.439804, 54.564377>,  <41.290951, 42.392567, 54.745453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140686, 42.439804, 54.564377>,  <40.890244, 42.518532, 54.262581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140686, 42.439804, 54.564377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753182, -0.403033, 0.519886,
		0.201761, -0.893771, -0.400581,
		0.626106, -0.196818, 0.754489,
		41.328518, 42.380756, 54.790722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816681, 41.783817, 54.496357>,  <40.890244, 42.518532, 54.262581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816681, 41.783817, 54.496357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947632, 41.974442, 54.822723>,  <41.026203, 42.088814, 55.018543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947632, 41.974442, 54.822723>,  <40.816681, 41.783817, 54.496357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947632, 41.974442, 54.822723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734879, -0.414372, 0.536888,
		0.593950, -0.775364, 0.214556,
		0.327378, 0.476557, 0.815915,
		41.045845, 42.117409, 55.067497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431335, 41.497158, 54.966400>,  <40.816681, 41.783817, 54.496357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431335, 41.497158, 54.966400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587486, 41.779854, 55.202408>,  <40.681175, 41.949471, 55.344013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587486, 41.779854, 55.202408>,  <40.431335, 41.497158, 54.966400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587486, 41.779854, 55.202408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685521, -0.204652, 0.698698,
		0.614546, -0.677229, 0.404592,
		0.390378, 0.706738, 0.590022,
		40.704601, 41.991875, 55.379414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555405, 41.201706, 55.543739>,  <40.431335, 41.497158, 54.966400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555405, 41.201706, 55.543739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522636, 41.591049, 55.629398>,  <40.502975, 41.824657, 55.680794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522636, 41.591049, 55.629398>,  <40.555405, 41.201706, 55.543739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522636, 41.591049, 55.629398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642567, -0.215829, 0.735205,
		0.761838, -0.077376, 0.643130,
		-0.081919, 0.973361, 0.214146,
		40.498062, 41.883057, 55.693642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599827, 41.214741, 56.247898>,  <40.555405, 41.201706, 55.543739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599827, 41.214741, 56.247898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420120, 41.555443, 56.140068>,  <40.312294, 41.759865, 56.075371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420120, 41.555443, 56.140068>,  <40.599827, 41.214741, 56.247898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420120, 41.555443, 56.140068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661775, -0.114577, 0.740896,
		0.600176, 0.511257, 0.615146,
		-0.449270, 0.851756, -0.269571,
		40.285339, 41.810970, 56.059196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368385, 41.661404, 56.921391>,  <40.599827, 41.214741, 56.247898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368385, 41.661404, 56.921391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152008, 41.826645, 56.628345>,  <40.022179, 41.925789, 56.452518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152008, 41.826645, 56.628345>,  <40.368385, 41.661404, 56.921391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152008, 41.826645, 56.628345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741411, 0.177039, 0.647276,
		0.397095, 0.893308, 0.210514,
		-0.540948, 0.413107, -0.732610,
		39.989723, 41.950577, 56.408562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151787, 42.381828, 57.151882>,  <40.368385, 41.661404, 56.921391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151787, 42.381828, 57.151882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907547, 42.240280, 56.868492>,  <39.761002, 42.155350, 56.698460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907547, 42.240280, 56.868492>,  <40.151787, 42.381828, 57.151882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907547, 42.240280, 56.868492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791062, 0.314559, 0.524665,
		0.037191, 0.880810, -0.472007,
		-0.610604, -0.353874, -0.708474,
		39.724365, 42.134117, 56.655949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674164, 42.919277, 57.037815>,  <40.151787, 42.381828, 57.151882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674164, 42.919277, 57.037815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482891, 42.593010, 56.907562>,  <39.368130, 42.397251, 56.829411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482891, 42.593010, 56.907562>,  <39.674164, 42.919277, 57.037815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482891, 42.593010, 56.907562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792582, 0.241045, 0.560098,
		-0.378362, 0.525914, -0.761745,
		-0.478179, -0.815666, -0.325628,
		39.339436, 42.348309, 56.809875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026165, 43.145061, 56.816383>,  <39.674164, 42.919277, 57.037815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026165, 43.145061, 56.816383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977577, 42.755371, 56.892410>,  <38.948425, 42.521557, 56.938026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977577, 42.755371, 56.892410>,  <39.026165, 43.145061, 56.816383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977577, 42.755371, 56.892410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849297, 0.201124, 0.488101,
		-0.513749, -0.102134, -0.851839,
		-0.121474, -0.974227, 0.190069,
		38.941135, 42.463104, 56.949432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299400, 43.138420, 56.635483>,  <39.026165, 43.145061, 56.816383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299400, 43.138420, 56.635483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423576, 42.828049, 56.855141>,  <38.498081, 42.641827, 56.986935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423576, 42.828049, 56.855141>,  <38.299400, 43.138420, 56.635483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423576, 42.828049, 56.855141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678405, 0.223824, 0.699764,
		-0.665880, -0.589777, -0.456910,
		0.310437, -0.775929, 0.549147,
		38.516708, 42.595268, 57.019886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773342, 42.549156, 56.691162>,  <38.299400, 43.138420, 56.635483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773342, 42.549156, 56.691162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015537, 42.621468, 57.001183>,  <38.160854, 42.664852, 57.187195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015537, 42.621468, 57.001183>,  <37.773342, 42.549156, 56.691162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015537, 42.621468, 57.001183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778751, 0.335381, 0.530156,
		-0.164099, -0.924576, 0.343848,
		0.605490, 0.180774, 0.775050,
		38.197186, 42.675701, 57.233696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251026, 43.128559, 56.831596>,  <37.773342, 42.549156, 56.691162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251026, 43.128559, 56.831596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935867, 43.374466, 56.817268>,  <36.746773, 43.522011, 56.808670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935867, 43.374466, 56.817268>,  <37.251026, 43.128559, 56.831596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935867, 43.374466, 56.817268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112093, 0.085979, -0.989971,
		-0.605522, -0.784008, -0.136653,
		-0.787895, 0.614767, -0.035820,
		36.699497, 43.558895, 56.806522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873096, 42.947392, 56.225964>,  <37.251026, 43.128559, 56.831596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873096, 42.947392, 56.225964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775578, 43.324249, 56.317989>,  <36.717064, 43.550362, 56.373203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775578, 43.324249, 56.317989>,  <36.873096, 42.947392, 56.225964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775578, 43.324249, 56.317989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308379, 0.300219, -0.902646,
		-0.919491, -0.149119, -0.363731,
		-0.243801, 0.942142, 0.230064,
		36.702438, 43.606892, 56.387009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547852, 43.177811, 55.612682>,  <36.873096, 42.947392, 56.225964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547852, 43.177811, 55.612682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671352, 43.497978, 55.818207>,  <36.745453, 43.690079, 55.941521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671352, 43.497978, 55.818207>,  <36.547852, 43.177811, 55.612682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671352, 43.497978, 55.818207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330502, 0.416258, -0.847053,
		-0.891876, 0.431342, -0.136021,
		0.308749, 0.800421, 0.513809,
		36.763977, 43.738106, 55.972351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425831, 43.784523, 55.115589>,  <36.547852, 43.177811, 55.612682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425831, 43.784523, 55.115589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697113, 43.906326, 55.383114>,  <36.859882, 43.979408, 55.543629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697113, 43.906326, 55.383114>,  <36.425831, 43.784523, 55.115589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697113, 43.906326, 55.383114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519134, 0.445625, -0.729327,
		-0.520126, 0.841838, 0.144145,
		0.678210, 0.304511, 0.668808,
		36.900578, 43.997681, 55.583755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674183, 44.470203, 54.907642>,  <36.425831, 43.784523, 55.115589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674183, 44.470203, 54.907642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969875, 44.371162, 55.158157>,  <37.147289, 44.311737, 55.308468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969875, 44.371162, 55.158157>,  <36.674183, 44.470203, 54.907642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969875, 44.371162, 55.158157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668240, 0.385207, -0.636452,
		-0.083664, 0.888993, 0.450213,
		0.739227, -0.247602, 0.626288,
		37.191643, 44.296883, 55.346043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111973, 45.040730, 54.871025>,  <36.674183, 44.470203, 54.907642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111973, 45.040730, 54.871025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318729, 44.729820, 55.014511>,  <37.442783, 44.543274, 55.100601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318729, 44.729820, 55.014511>,  <37.111973, 45.040730, 54.871025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318729, 44.729820, 55.014511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799139, 0.287881, -0.527732,
		0.306924, 0.559440, 0.769951,
		0.516889, -0.777272, 0.358713,
		37.473797, 44.496639, 55.122124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811161, 45.284996, 54.917221>,  <37.111973, 45.040730, 54.871025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811161, 45.284996, 54.917221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842762, 44.886505, 54.931568>,  <37.861721, 44.647411, 54.940178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842762, 44.886505, 54.931568>,  <37.811161, 45.284996, 54.917221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842762, 44.886505, 54.931568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725577, 0.032790, -0.687359,
		0.683591, 0.080327, 0.725432,
		0.079000, -0.996229, 0.035869,
		37.866463, 44.587635, 54.942329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503155, 45.130474, 55.057697>,  <37.811161, 45.284996, 54.917221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503155, 45.130474, 55.057697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360374, 44.801994, 54.879608>,  <38.274704, 44.604908, 54.772755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360374, 44.801994, 54.879608>,  <38.503155, 45.130474, 55.057697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360374, 44.801994, 54.879608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756626, 0.025337, -0.653357,
		0.547816, -0.570081, 0.612296,
		-0.356952, -0.821198, -0.445218,
		38.253288, 44.555634, 54.746044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095356, 44.788242, 54.971165>,  <38.503155, 45.130474, 55.057697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095356, 44.788242, 54.971165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836304, 44.635910, 54.707184>,  <38.680874, 44.544510, 54.548794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836304, 44.635910, 54.707184>,  <39.095356, 44.788242, 54.971165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836304, 44.635910, 54.707184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724461, -0.039415, -0.688188,
		0.236073, -0.923803, 0.301426,
		-0.647631, -0.380834, -0.659954,
		38.642014, 44.521660, 54.509197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506222, 44.409782, 54.658401>,  <39.095356, 44.788242, 54.971165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506222, 44.409782, 54.658401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200768, 44.416512, 54.400230>,  <39.017494, 44.420547, 54.245327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200768, 44.416512, 54.400230>,  <39.506222, 44.409782, 54.658401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200768, 44.416512, 54.400230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617960, -0.270551, -0.738193,
		-0.187036, -0.962559, 0.196209,
		-0.763638, 0.016820, -0.645426,
		38.971676, 44.421558, 54.206604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681046, 43.933079, 54.199409>,  <39.506222, 44.409782, 54.658401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681046, 43.933079, 54.199409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390511, 44.138062, 54.016182>,  <39.216190, 44.261051, 53.906246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390511, 44.138062, 54.016182>,  <39.681046, 43.933079, 54.199409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390511, 44.138062, 54.016182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450565, -0.148295, -0.880341,
		-0.519063, -0.845813, -0.123182,
		-0.726337, 0.512454, -0.458068,
		39.172611, 44.291798, 53.878761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441700, 43.576302, 53.675476>,  <39.681046, 43.933079, 54.199409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441700, 43.576302, 53.675476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340942, 43.950218, 53.575306>,  <39.280487, 44.174568, 53.515202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340942, 43.950218, 53.575306>,  <39.441700, 43.576302, 53.675476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340942, 43.950218, 53.575306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305215, -0.168830, -0.937198,
		-0.918366, -0.312505, -0.242786,
		-0.251889, 0.934793, -0.250429,
		39.265377, 44.230656, 53.500175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044510, 43.644001, 53.041664>,  <39.441700, 43.576302, 53.675476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044510, 43.644001, 53.041664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185596, 44.015808, 53.084736>,  <39.270248, 44.238892, 53.110577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185596, 44.015808, 53.084736>,  <39.044510, 43.644001, 53.041664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185596, 44.015808, 53.084736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083955, 0.083171, -0.992992,
		-0.931955, 0.359288, -0.048701,
		0.352720, 0.929513, 0.107676,
		39.291412, 44.294662, 53.117039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875847, 44.073166, 52.465973>,  <39.044510, 43.644001, 53.041664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875847, 44.073166, 52.465973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210159, 44.224876, 52.624779>,  <39.410748, 44.315903, 52.720062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210159, 44.224876, 52.624779>,  <38.875847, 44.073166, 52.465973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210159, 44.224876, 52.624779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414508, 0.038340, -0.909238,
		-0.360074, 0.924489, -0.125169,
		0.835781, 0.379277, 0.397013,
		39.460892, 44.338661, 52.743881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193371, 44.351353, 51.925247>,  <38.875847, 44.073166, 52.465973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193371, 44.351353, 51.925247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488689, 44.403015, 52.190044>,  <39.665882, 44.434013, 52.348923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488689, 44.403015, 52.190044>,  <39.193371, 44.351353, 51.925247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488689, 44.403015, 52.190044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597376, 0.330460, -0.730711,
		-0.313135, 0.934941, 0.166827,
		0.738301, 0.129153, 0.661990,
		39.710178, 44.441761, 52.388641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528309, 45.054768, 51.739285>,  <39.193371, 44.351353, 51.925247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528309, 45.054768, 51.739285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765465, 44.795403, 51.930298>,  <39.907757, 44.639782, 52.044907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765465, 44.795403, 51.930298>,  <39.528309, 45.054768, 51.739285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765465, 44.795403, 51.930298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711640, 0.144333, -0.687558,
		0.376899, 0.747480, 0.547011,
		0.592888, -0.648415, 0.477538,
		39.943333, 44.600880, 52.073559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207657, 45.298027, 51.677456>,  <39.528309, 45.054768, 51.739285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207657, 45.298027, 51.677456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298164, 44.921616, 51.778072>,  <40.352470, 44.695770, 51.838444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298164, 44.921616, 51.778072>,  <40.207657, 45.298027, 51.677456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298164, 44.921616, 51.778072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865140, 0.075486, -0.495817,
		0.447588, 0.329810, 0.831198,
		0.226270, -0.941025, 0.251545,
		40.366047, 44.639309, 51.853535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921341, 45.336910, 51.849869>,  <40.207657, 45.298027, 51.677456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921341, 45.336910, 51.849869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828247, 44.956894, 51.766674>,  <40.772388, 44.728886, 51.716759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828247, 44.956894, 51.766674>,  <40.921341, 45.336910, 51.849869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828247, 44.956894, 51.766674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828174, -0.081488, -0.554515,
		0.509863, -0.301306, 0.805763,
		-0.232738, -0.950039, -0.207986,
		40.758427, 44.671883, 51.704277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566593, 45.187431, 51.888550>,  <40.921341, 45.336910, 51.849869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566593, 45.187431, 51.888550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385422, 44.876930, 51.713146>,  <41.276718, 44.690632, 51.607903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385422, 44.876930, 51.713146>,  <41.566593, 45.187431, 51.888550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385422, 44.876930, 51.713146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752336, -0.068863, -0.655171,
		0.478378, -0.626654, 0.615190,
		-0.452929, -0.776249, -0.438512,
		41.249542, 44.644054, 51.581593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099098, 44.733044, 51.741138>,  <41.566593, 45.187431, 51.888550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099098, 44.733044, 51.741138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813274, 44.614243, 51.487778>,  <41.641781, 44.542961, 51.335762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813274, 44.614243, 51.487778>,  <42.099098, 44.733044, 51.741138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813274, 44.614243, 51.487778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693429, -0.180941, -0.697436,
		0.092532, -0.937577, 0.335242,
		-0.714559, -0.297002, -0.633400,
		41.598907, 44.525143, 51.297756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219280, 44.064976, 51.509052>,  <42.099098, 44.733044, 51.741138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219280, 44.064976, 51.509052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000648, 44.246651, 51.227638>,  <41.869469, 44.355656, 51.058792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000648, 44.246651, 51.227638>,  <42.219280, 44.064976, 51.509052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000648, 44.246651, 51.227638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680013, -0.249557, -0.689422,
		-0.488702, -0.855237, -0.172453,
		-0.546583, 0.454193, -0.703532,
		41.836674, 44.382908, 51.016579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244694, 43.590275, 50.934341>,  <42.219280, 44.064976, 51.509052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244694, 43.590275, 50.934341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118526, 43.938309, 50.782837>,  <42.042828, 44.147129, 50.691933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118526, 43.938309, 50.782837>,  <42.244694, 43.590275, 50.934341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118526, 43.938309, 50.782837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688055, -0.065186, -0.722725,
		-0.653522, -0.488572, -0.578105,
		-0.315419, 0.870085, -0.378765,
		42.023899, 44.199333, 50.669209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172340, 43.458698, 50.146622>,  <42.244694, 43.590275, 50.934341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172340, 43.458698, 50.146622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157486, 43.853371, 50.209957>,  <42.148571, 44.090176, 50.247959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157486, 43.853371, 50.209957>,  <42.172340, 43.458698, 50.146622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157486, 43.853371, 50.209957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626405, 0.146444, -0.765618,
		-0.778612, 0.070752, -0.623504,
		-0.037139, 0.986686, 0.158342,
		42.146343, 44.149376, 50.257462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882393, 43.797977, 49.582211>,  <42.172340, 43.458698, 50.146622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882393, 43.797977, 49.582211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108517, 44.068535, 49.771069>,  <42.244190, 44.230869, 49.884384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108517, 44.068535, 49.771069>,  <41.882393, 43.797977, 49.582211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108517, 44.068535, 49.771069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386062, 0.288877, -0.876074,
		-0.728961, 0.677530, -0.097824,
		0.565307, 0.676390, 0.472149,
		42.278111, 44.271450, 49.912712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912834, 44.199440, 49.017101>,  <41.882393, 43.797977, 49.582211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912834, 44.199440, 49.017101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177986, 44.358177, 49.271065>,  <42.337078, 44.453419, 49.423443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177986, 44.358177, 49.271065>,  <41.912834, 44.199440, 49.017101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177986, 44.358177, 49.271065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579820, 0.264436, -0.770638,
		-0.473712, 0.878973, -0.054806,
		0.662877, 0.396838, 0.634912,
		42.376850, 44.477230, 49.461540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106071, 44.873791, 48.780987>,  <41.912834, 44.199440, 49.017101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106071, 44.873791, 48.780987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401566, 44.730827, 49.009560>,  <42.578861, 44.645050, 49.146702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401566, 44.730827, 49.009560>,  <42.106071, 44.873791, 48.780987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401566, 44.730827, 49.009560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652721, 0.168019, -0.738732,
		0.168019, 0.918710, 0.357411,
		0.738732, -0.357411, 0.571430,
		42.623184, 44.623604, 49.180988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620548, 45.364918, 48.798656>,  <42.106071, 44.873791, 48.780987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620548, 45.364918, 48.798656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838417, 45.053787, 48.924080>,  <42.969139, 44.867107, 48.999332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838417, 45.053787, 48.924080>,  <42.620548, 45.364918, 48.798656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838417, 45.053787, 48.924080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744567, 0.276438, -0.607620,
		0.385946, 0.564415, 0.729713,
		0.544670, -0.777829, 0.313554,
		43.001820, 44.820438, 49.018147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301872, 45.653404, 48.991570>,  <42.620548, 45.364918, 48.798656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301872, 45.653404, 48.991570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325394, 45.266258, 48.893764>,  <43.339504, 45.033970, 48.835083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325394, 45.266258, 48.893764>,  <43.301872, 45.653404, 48.991570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325394, 45.266258, 48.893764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705731, 0.213535, -0.675534,
		0.706036, -0.132836, 0.695606,
		0.058801, -0.967862, -0.244510,
		43.343033, 44.975899, 48.820412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010113, 45.594513, 48.738270>,  <43.301872, 45.653404, 48.991570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010113, 45.594513, 48.738270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817341, 45.266495, 48.614811>,  <43.701679, 45.069683, 48.540737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817341, 45.266495, 48.614811>,  <44.010113, 45.594513, 48.738270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817341, 45.266495, 48.614811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702787, -0.151396, -0.695104,
		0.523292, -0.551903, 0.649283,
		-0.481929, -0.820050, -0.308646,
		43.672764, 45.020481, 48.522217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572632, 45.096127, 48.520485>,  <44.010113, 45.594513, 48.738270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572632, 45.096127, 48.520485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238846, 44.966187, 48.342438>,  <44.038574, 44.888222, 48.235607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238846, 44.966187, 48.342438>,  <44.572632, 45.096127, 48.520485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238846, 44.966187, 48.342438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450279, 0.063679, -0.890614,
		0.317664, -0.943618, 0.093136,
		-0.834469, -0.324854, -0.445120,
		43.988506, 44.868729, 48.208900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949547, 44.588322, 48.148064>,  <44.572632, 45.096127, 48.520485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949547, 44.588322, 48.148064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583878, 44.632263, 47.992001>,  <44.364475, 44.658630, 47.898365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583878, 44.632263, 47.992001>,  <44.949547, 44.588322, 48.148064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583878, 44.632263, 47.992001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370364, -0.164680, -0.914172,
		-0.164680, -0.980210, 0.109858,
		0.914172, -0.109858, 0.390154,
		44.309628, 44.665222, 47.874954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761707, 43.949116, 47.753971>,  <44.949547, 44.588322, 48.148064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761707, 43.949116, 47.753971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599480, 44.292603, 47.628677>,  <44.502144, 44.498695, 47.553501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599480, 44.292603, 47.628677>,  <44.761707, 43.949116, 47.753971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599480, 44.292603, 47.628677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331698, -0.181059, -0.925848,
		-0.851755, -0.479397, -0.211403,
		-0.405573, 0.858718, -0.313233,
		44.477806, 44.550217, 47.534706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859703, 43.911148, 46.962879>,  <44.761707, 43.949116, 47.753971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859703, 43.911148, 46.962879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700417, 44.275284, 47.007950>,  <44.604843, 44.493767, 47.034992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700417, 44.275284, 47.007950>,  <44.859703, 43.911148, 46.962879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700417, 44.275284, 47.007950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182319, 0.198931, -0.962905,
		-0.898989, -0.362906, -0.245191,
		-0.398220, 0.910344, 0.112672,
		44.580952, 44.548386, 47.041752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263420, 44.024220, 46.434364>,  <44.859703, 43.911148, 46.962879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263420, 44.024220, 46.434364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398933, 44.377449, 46.564228>,  <44.480244, 44.589386, 46.642147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398933, 44.377449, 46.564228>,  <44.263420, 44.024220, 46.434364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398933, 44.377449, 46.564228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177050, 0.279061, -0.943810,
		-0.924054, 0.377231, -0.061806,
		0.338787, 0.883075, 0.324657,
		44.500568, 44.642372, 46.661625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003651, 44.488579, 45.977924>,  <44.263420, 44.024220, 46.434364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003651, 44.488579, 45.977924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296467, 44.708000, 46.139519>,  <44.472157, 44.839653, 46.236477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296467, 44.708000, 46.139519>,  <44.003651, 44.488579, 45.977924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296467, 44.708000, 46.139519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224808, 0.365273, -0.903348,
		-0.643096, 0.752110, 0.144077,
		0.732045, 0.548549, 0.403986,
		44.516079, 44.872566, 46.260715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894569, 45.226280, 45.746666>,  <44.003651, 44.488579, 45.977924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894569, 45.226280, 45.746666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274967, 45.163361, 45.853149>,  <44.503204, 45.125610, 45.917042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274967, 45.163361, 45.853149>,  <43.894569, 45.226280, 45.746666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274967, 45.163361, 45.853149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306955, 0.584061, -0.751433,
		-0.037285, 0.796323, 0.603722,
		0.950994, -0.157298, 0.266212,
		44.560265, 45.116173, 45.933014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253914, 45.823162, 45.447212>,  <43.894569, 45.226280, 45.746666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253914, 45.823162, 45.447212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555862, 45.605194, 45.593216>,  <44.737030, 45.474411, 45.680817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555862, 45.605194, 45.593216>,  <44.253914, 45.823162, 45.447212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555862, 45.605194, 45.593216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655327, 0.603889, -0.453723,
		0.026819, 0.581702, 0.812959,
		0.754869, -0.544923, 0.365010,
		44.782322, 45.441719, 45.702721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735844, 46.223347, 45.659706>,  <44.253914, 45.823162, 45.447212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735844, 46.223347, 45.659706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931877, 45.879128, 45.604160>,  <45.049496, 45.672596, 45.570835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931877, 45.879128, 45.604160>,  <44.735844, 46.223347, 45.659706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931877, 45.879128, 45.604160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704647, 0.484888, -0.518031,
		0.513122, 0.156029, 0.844015,
		0.490080, -0.860546, -0.138861,
		45.078899, 45.620964, 45.562504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420303, 46.265179, 45.864140>,  <44.735844, 46.223347, 45.659706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420303, 46.265179, 45.864140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370209, 45.990799, 45.577423>,  <45.340153, 45.826172, 45.405396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370209, 45.990799, 45.577423>,  <45.420303, 46.265179, 45.864140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370209, 45.990799, 45.577423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602725, 0.521267, -0.604155,
		0.788060, -0.507689, 0.348158,
		-0.125239, -0.685954, -0.716786,
		45.332638, 45.785011, 45.362389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149284, 46.010845, 45.611649>,  <45.420303, 46.265179, 45.864140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149284, 46.010845, 45.611649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892372, 45.900002, 45.325798>,  <45.738224, 45.833496, 45.154289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892372, 45.900002, 45.325798>,  <46.149284, 46.010845, 45.611649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892372, 45.900002, 45.325798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688694, 0.200589, -0.696753,
		0.336423, -0.939667, 0.062010,
		-0.642278, -0.277110, -0.714626,
		45.699688, 45.816868, 45.111412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.685516, 40.329937, 51.737686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901863, 40.021423, 51.871902>,  <39.031670, 39.836315, 51.952435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901863, 40.021423, 51.871902>,  <38.685516, 40.329937, 51.737686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901863, 40.021423, 51.871902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565641, 0.038282, -0.823762,
		0.622508, 0.635341, 0.456974,
		0.540864, -0.771282, 0.335545,
		39.064121, 39.790039, 51.972565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379894, 40.453224, 51.588543>,  <38.685516, 40.329937, 51.737686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379894, 40.453224, 51.588543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369408, 40.053619, 51.602898>,  <39.363117, 39.813858, 51.611511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369408, 40.053619, 51.602898>,  <39.379894, 40.453224, 51.588543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369408, 40.053619, 51.602898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724876, -0.043720, -0.687490,
		0.688380, 0.007994, 0.725306,
		-0.026214, -0.999012, 0.035891,
		39.361542, 39.753918, 51.613667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043182, 40.160847, 51.617523>,  <39.379894, 40.453224, 51.588543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043182, 40.160847, 51.617523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835510, 39.845245, 51.486122>,  <39.710907, 39.655884, 51.407280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835510, 39.845245, 51.486122>,  <40.043182, 40.160847, 51.617523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835510, 39.845245, 51.486122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598393, -0.061145, -0.798866,
		0.610223, -0.611336, 0.503881,
		-0.519185, -0.789006, -0.328507,
		39.679756, 39.608543, 51.387569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611847, 39.708096, 51.456623>,  <40.043182, 40.160847, 51.617523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611847, 39.708096, 51.456623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280594, 39.586021, 51.268555>,  <40.081841, 39.512775, 51.155712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280594, 39.586021, 51.268555>,  <40.611847, 39.708096, 51.456623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280594, 39.586021, 51.268555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542697, -0.226618, -0.808779,
		0.140281, -0.924935, 0.353294,
		-0.828131, -0.305188, -0.470169,
		40.032154, 39.494465, 51.127502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723038, 39.088459, 51.091034>,  <40.611847, 39.708096, 51.456623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723038, 39.088459, 51.091034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.389961, 39.212830, 50.907753>,  <40.190117, 39.287453, 50.797783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.389961, 39.212830, 50.907753>,  <40.723038, 39.088459, 51.091034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389961, 39.212830, 50.907753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433710, -0.148240, -0.888775,
		-0.344266, -0.938803, -0.011413,
		-0.832692, 0.310925, -0.458202,
		40.140152, 39.306107, 50.770290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603508, 38.539879, 50.600815>,  <40.723038, 39.088459, 51.091034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603508, 38.539879, 50.600815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.414352, 38.867622, 50.471180>,  <40.300861, 39.064266, 50.393398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.414352, 38.867622, 50.471180>,  <40.603508, 38.539879, 50.600815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414352, 38.867622, 50.471180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418690, -0.114680, -0.900859,
		-0.775292, -0.561696, -0.288825,
		-0.472887, 0.819357, -0.324087,
		40.272488, 39.113430, 50.373955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406422, 38.471664, 49.852879>,  <40.603508, 38.539879, 50.600815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406422, 38.471664, 49.852879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392765, 38.869125, 49.895748>,  <40.384571, 39.107601, 49.921471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392765, 38.869125, 49.895748>,  <40.406422, 38.471664, 49.852879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392765, 38.869125, 49.895748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563287, 0.107712, -0.819211,
		-0.825556, 0.032397, -0.563390,
		-0.034144, 0.993654, 0.107171,
		40.382523, 39.167221, 49.927898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412678, 38.674236, 49.152061>,  <40.406422, 38.471664, 49.852879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412678, 38.674236, 49.152061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.502140, 39.007248, 49.354794>,  <40.555817, 39.207054, 49.476433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.502140, 39.007248, 49.354794>,  <40.412678, 38.674236, 49.152061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502140, 39.007248, 49.354794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514046, 0.341048, -0.787047,
		-0.828092, 0.436558, -0.351682,
		0.223652, 0.832528, 0.506830,
		40.569237, 39.257008, 49.506844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215557, 39.261433, 48.687359>,  <40.412678, 38.674236, 49.152061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215557, 39.261433, 48.687359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.489861, 39.374344, 48.955704>,  <40.654442, 39.442089, 49.116711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.489861, 39.374344, 48.955704>,  <40.215557, 39.261433, 48.687359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489861, 39.374344, 48.955704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474035, 0.526207, -0.705972,
		-0.552293, 0.802138, 0.227041,
		0.685757, 0.282278, 0.670862,
		40.695587, 39.459026, 49.156963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386959, 39.952583, 48.470936>,  <40.215557, 39.261433, 48.687359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386959, 39.952583, 48.470936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.710381, 39.880157, 48.694885>,  <40.904434, 39.836700, 48.829254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.710381, 39.880157, 48.694885>,  <40.386959, 39.952583, 48.470936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710381, 39.880157, 48.694885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519745, 0.665851, -0.535264,
		-0.275872, 0.723780, 0.632485,
		0.808554, -0.181067, 0.559871,
		40.952946, 39.825836, 48.862846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630253, 40.613125, 48.666203>,  <40.386959, 39.952583, 48.470936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630253, 40.613125, 48.666203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935822, 40.358414, 48.708027>,  <41.119164, 40.205589, 48.733124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935822, 40.358414, 48.708027>,  <40.630253, 40.613125, 48.666203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935822, 40.358414, 48.708027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558988, 0.572038, -0.600254,
		0.322412, 0.517000, 0.792944,
		0.763926, -0.636776, 0.104565,
		41.165001, 40.167381, 48.739395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171379, 41.053917, 48.703236>,  <40.630253, 40.613125, 48.666203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171379, 41.053917, 48.703236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.325966, 40.692879, 48.627373>,  <41.418716, 40.476257, 48.581856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.325966, 40.692879, 48.627373>,  <41.171379, 41.053917, 48.703236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325966, 40.692879, 48.627373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625231, 0.407561, -0.665568,
		0.678033, 0.138642, 0.721838,
		0.386469, -0.902592, -0.189656,
		41.441906, 40.422100, 48.570477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961700, 41.087959, 48.724693>,  <41.171379, 41.053917, 48.703236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961700, 41.087959, 48.724693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.872398, 40.768570, 48.501053>,  <41.818817, 40.576935, 48.366867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.872398, 40.768570, 48.501053>,  <41.961700, 41.087959, 48.724693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872398, 40.768570, 48.501053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693029, 0.273329, -0.667084,
		0.685470, -0.536401, 0.492347,
		-0.223252, -0.798477, -0.559100,
		41.805424, 40.529026, 48.333324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611027, 41.003952, 48.391243>,  <41.961700, 41.087959, 48.724693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611027, 41.003952, 48.391243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.337261, 40.800110, 48.182671>,  <42.173004, 40.677807, 48.057529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.337261, 40.800110, 48.182671>,  <42.611027, 41.003952, 48.391243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337261, 40.800110, 48.182671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506956, 0.181370, -0.842675,
		0.524002, -0.841076, 0.134215,
		-0.684411, -0.509604, -0.521427,
		42.131939, 40.647228, 48.026241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987453, 40.544598, 47.928898>,  <42.611027, 41.003952, 48.391243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987453, 40.544598, 47.928898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.622955, 40.648399, 47.800968>,  <42.404255, 40.710682, 47.724213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.622955, 40.648399, 47.800968>,  <42.987453, 40.544598, 47.928898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622955, 40.648399, 47.800968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388264, 0.282192, -0.877279,
		-0.137411, -0.923592, -0.357905,
		-0.911246, 0.259509, -0.319821,
		42.349583, 40.726254, 47.705021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061047, 40.261799, 47.285065>,  <42.987453, 40.544598, 47.928898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061047, 40.261799, 47.285065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.747276, 40.508293, 47.256973>,  <42.559013, 40.656189, 47.240120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.747276, 40.508293, 47.256973>,  <43.061047, 40.261799, 47.285065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747276, 40.508293, 47.256973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405454, 0.423818, -0.809929,
		-0.469344, -0.663802, -0.582308,
		-0.784425, 0.616235, -0.070225,
		42.511948, 40.693165, 47.235905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925320, 40.209431, 46.594330>,  <43.061047, 40.261799, 47.285065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925320, 40.209431, 46.594330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.764843, 40.547020, 46.736744>,  <42.668556, 40.749573, 46.822193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.764843, 40.547020, 46.736744>,  <42.925320, 40.209431, 46.594330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764843, 40.547020, 46.736744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332872, 0.496445, -0.801710,
		-0.853371, -0.203124, -0.480103,
		-0.401191, 0.843969, 0.356037,
		42.644485, 40.800209, 46.843555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619892, 40.511620, 46.005283>,  <42.925320, 40.209431, 46.594330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619892, 40.511620, 46.005283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.668800, 40.819031, 46.256493>,  <42.698143, 41.003479, 46.407219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.668800, 40.819031, 46.256493>,  <42.619892, 40.511620, 46.005283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668800, 40.819031, 46.256493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328804, 0.565673, -0.756243,
		-0.936450, 0.298959, -0.183533,
		0.122266, 0.768530, 0.628023,
		42.705479, 41.049591, 46.444901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291500, 40.994209, 45.651489>,  <42.619892, 40.511620, 46.005283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291500, 40.994209, 45.651489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.546570, 41.163696, 45.908810>,  <42.699612, 41.265388, 46.063202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.546570, 41.163696, 45.908810>,  <42.291500, 40.994209, 45.651489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546570, 41.163696, 45.908810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332404, 0.602010, -0.726011,
		-0.694898, 0.676793, 0.243039,
		0.637671, 0.423716, 0.643304,
		42.737869, 41.290810, 46.101803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285954, 41.697094, 45.477802>,  <42.291500, 40.994209, 45.651489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285954, 41.697094, 45.477802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.639671, 41.656052, 45.660007>,  <42.851902, 41.631428, 45.769329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.639671, 41.656052, 45.660007>,  <42.285954, 41.697094, 45.477802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639671, 41.656052, 45.660007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405361, 0.652865, -0.639882,
		-0.231730, 0.750493, 0.618920,
		0.884298, -0.102606, 0.455509,
		42.904961, 41.625271, 45.796661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471703, 42.284805, 45.416031>,  <42.285954, 41.697094, 45.477802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471703, 42.284805, 45.416031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.813324, 42.103142, 45.517490>,  <43.018295, 41.994144, 45.578365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.813324, 42.103142, 45.517490>,  <42.471703, 42.284805, 45.416031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813324, 42.103142, 45.517490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495465, 0.561658, -0.662612,
		0.158472, 0.691576, 0.704705,
		0.854050, -0.454162, 0.253644,
		43.069538, 41.966892, 45.593582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930328, 42.813301, 45.578659>,  <42.471703, 42.284805, 45.416031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930328, 42.813301, 45.578659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.146996, 42.489868, 45.486763>,  <43.276997, 42.295807, 45.431625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.146996, 42.489868, 45.486763>,  <42.930328, 42.813301, 45.578659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146996, 42.489868, 45.486763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431739, 0.502119, -0.749318,
		0.721244, 0.306698, 0.621082,
		0.541671, -0.808587, -0.229737,
		43.309498, 42.247292, 45.417843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454575, 42.895184, 44.965790>,  <42.930328, 42.813301, 45.578659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454575, 42.895184, 44.965790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.414093, 43.293091, 44.971432>,  <43.389805, 43.531834, 44.974815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.414093, 43.293091, 44.971432>,  <43.454575, 42.895184, 44.965790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414093, 43.293091, 44.971432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767009, -0.087043, 0.635705,
		0.633605, 0.053519, 0.771803,
		-0.101202, 0.994766, 0.014101,
		43.383732, 43.591522, 44.975662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633732, 43.152775, 45.666176>,  <43.454575, 42.895184, 44.965790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633732, 43.152775, 45.666176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.389626, 43.415932, 45.489655>,  <43.243164, 43.573826, 45.383739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.389626, 43.415932, 45.489655>,  <43.633732, 43.152775, 45.666176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389626, 43.415932, 45.489655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625156, -0.057782, 0.778358,
		0.486579, 0.750889, 0.446550,
		-0.610263, 0.657896, -0.441307,
		43.206547, 43.613300, 45.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454697, 43.629158, 46.196915>,  <43.633732, 43.152775, 45.666176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454697, 43.629158, 46.196915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.174313, 43.684227, 45.917000>,  <43.006084, 43.717266, 45.749050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.174313, 43.684227, 45.917000>,  <43.454697, 43.629158, 46.196915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174313, 43.684227, 45.917000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665473, 0.226667, 0.711174,
		0.256527, 0.964193, -0.067269,
		-0.700957, 0.137669, -0.699790,
		42.964027, 43.725529, 45.707062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122643, 44.135429, 46.517467>,  <43.454697, 43.629158, 46.196915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122643, 44.135429, 46.517467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.855934, 43.997139, 46.253380>,  <42.695911, 43.914165, 46.094925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.855934, 43.997139, 46.253380>,  <43.122643, 44.135429, 46.517467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855934, 43.997139, 46.253380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744209, 0.261740, 0.614528,
		-0.039654, 0.901090, -0.431815,
		-0.666768, -0.345729, -0.660221,
		42.655903, 43.893421, 46.055313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415329, 44.555832, 46.566986>,  <43.122643, 44.135429, 46.517467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415329, 44.555832, 46.566986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.330406, 44.194733, 46.417336>,  <42.279449, 43.978073, 46.327545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.330406, 44.194733, 46.417336>,  <42.415329, 44.555832, 46.566986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330406, 44.194733, 46.417336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698217, -0.127717, 0.704402,
		-0.683679, 0.410774, -0.603197,
		-0.212312, -0.902747, -0.374127,
		42.266712, 43.923908, 46.305096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682877, 44.517265, 46.647129>,  <42.415329, 44.555832, 46.566986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682877, 44.517265, 46.647129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.798271, 44.134995, 46.623589>,  <41.867508, 43.905632, 46.609463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.798271, 44.134995, 46.623589>,  <41.682877, 44.517265, 46.647129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798271, 44.134995, 46.623589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697592, -0.251887, 0.670759,
		-0.655850, -0.152452, -0.739337,
		0.288488, -0.955673, -0.058851,
		41.884819, 43.848293, 46.605934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069164, 44.096493, 46.745068>,  <41.682877, 44.517265, 46.647129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069164, 44.096493, 46.745068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.367985, 43.832985, 46.780685>,  <41.547276, 43.674881, 46.802055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.367985, 43.832985, 46.780685>,  <41.069164, 44.096493, 46.745068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367985, 43.832985, 46.780685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516655, -0.491090, 0.701354,
		-0.418302, -0.569956, -0.707229,
		0.747055, -0.658772, 0.089047,
		41.592102, 43.635353, 46.807400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822590, 43.463993, 46.588181>,  <41.069164, 44.096493, 46.745068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822590, 43.463993, 46.588181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.134956, 43.414886, 46.833164>,  <41.322376, 43.385422, 46.980152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.134956, 43.414886, 46.833164>,  <40.822590, 43.463993, 46.588181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134956, 43.414886, 46.833164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575224, -0.523568, 0.628486,
		0.243504, -0.843092, -0.479480,
		0.780912, -0.122770, 0.612458,
		41.369228, 43.378056, 47.016903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565800, 42.881332, 46.914558>,  <40.822590, 43.463993, 46.588181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565800, 42.881332, 46.914558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.889610, 42.987495, 47.124027>,  <41.083897, 43.051193, 47.249710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.889610, 42.987495, 47.124027>,  <40.565800, 42.881332, 46.914558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889610, 42.987495, 47.124027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336320, -0.521469, 0.784193,
		0.481210, -0.810943, -0.332879,
		0.809522, 0.265408, 0.523672,
		41.132465, 43.067116, 47.281128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862907, 42.242504, 47.168430>,  <40.565800, 42.881332, 46.914558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862907, 42.242504, 47.168430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.962345, 42.566490, 47.380901>,  <41.022007, 42.760883, 47.508385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.962345, 42.566490, 47.380901>,  <40.862907, 42.242504, 47.168430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962345, 42.566490, 47.380901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161098, -0.506179, 0.847249,
		0.955116, -0.296196, 0.004649,
		0.248598, 0.809969, 0.531176,
		41.036926, 42.809483, 47.540253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069073, 41.930561, 47.838863>,  <40.862907, 42.242504, 47.168430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069073, 41.930561, 47.838863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.984985, 42.315804, 47.906067>,  <40.934532, 42.546951, 47.946388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.984985, 42.315804, 47.906067>,  <41.069073, 41.930561, 47.838863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984985, 42.315804, 47.906067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402958, -0.241932, 0.882663,
		0.890749, 0.117851, 0.438951,
		-0.210219, 0.963110, 0.168011,
		40.921921, 42.604736, 47.956470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347980, 42.006397, 48.520088>,  <41.069073, 41.930561, 47.838863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347980, 42.006397, 48.520088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092133, 42.307327, 48.456989>,  <40.938622, 42.487885, 48.419132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.092133, 42.307327, 48.456989>,  <41.347980, 42.006397, 48.520088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092133, 42.307327, 48.456989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361510, -0.113308, 0.925457,
		0.678375, 0.648970, 0.344449,
		-0.639623, 0.752329, -0.157744,
		40.900246, 42.533028, 48.409668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445007, 42.537624, 49.091637>,  <41.347980, 42.006397, 48.520088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445007, 42.537624, 49.091637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.074928, 42.527176, 48.940205>,  <40.852879, 42.520908, 48.849346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.074928, 42.527176, 48.940205>,  <41.445007, 42.537624, 49.091637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074928, 42.527176, 48.940205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366722, -0.194923, 0.909681,
		-0.097556, 0.980471, 0.170763,
		-0.925202, -0.026122, -0.378576,
		40.797367, 42.519341, 48.826633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021950, 43.047997, 49.413712>,  <41.445007, 42.537624, 49.091637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021950, 43.047997, 49.413712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.746078, 42.794968, 49.272747>,  <40.580555, 42.643150, 49.188168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.746078, 42.794968, 49.272747>,  <41.021950, 43.047997, 49.413712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746078, 42.794968, 49.272747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429326, -0.034702, 0.902483,
		-0.583118, 0.773721, -0.247648,
		-0.689676, -0.632576, -0.352413,
		40.539177, 42.605194, 49.167023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469818, 43.338547, 49.666279>,  <41.021950, 43.047997, 49.413712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469818, 43.338547, 49.666279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353577, 42.964630, 49.584579>,  <40.283833, 42.740280, 49.535561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353577, 42.964630, 49.584579>,  <40.469818, 43.338547, 49.666279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353577, 42.964630, 49.584579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593911, 0.008858, 0.804482,
		-0.750212, 0.355094, -0.557755,
		-0.290607, -0.934789, -0.204248,
		40.266396, 42.684193, 49.523304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833271, 43.363529, 49.557541>,  <40.469818, 43.338547, 49.666279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833271, 43.363529, 49.557541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905579, 42.978035, 49.636063>,  <39.948963, 42.746738, 49.683174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905579, 42.978035, 49.636063>,  <39.833271, 43.363529, 49.557541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905579, 42.978035, 49.636063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702416, 0.013202, 0.711644,
		-0.688429, -0.266530, -0.674557,
		0.180769, -0.963736, 0.196303,
		39.959808, 42.688915, 49.694954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178192, 43.011868, 49.565857>,  <39.833271, 43.363529, 49.557541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178192, 43.011868, 49.565857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441673, 42.785370, 49.764038>,  <39.599762, 42.649471, 49.882946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441673, 42.785370, 49.764038>,  <39.178192, 43.011868, 49.565857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441673, 42.785370, 49.764038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669342, -0.140261, 0.729594,
		-0.343639, -0.812213, -0.471404,
		0.658705, -0.566248, 0.495450,
		39.639286, 42.615498, 49.912674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796665, 42.420029, 49.791550>,  <39.178192, 43.011868, 49.565857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796665, 42.420029, 49.791550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.114029, 42.476120, 50.028477>,  <39.304447, 42.509777, 50.170631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.114029, 42.476120, 50.028477>,  <38.796665, 42.420029, 49.791550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114029, 42.476120, 50.028477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567943, -0.179490, 0.803258,
		0.218957, -0.973714, -0.062766,
		0.793409, 0.140231, 0.592315,
		39.352051, 42.518188, 50.206173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.838802, 41.803894, 50.298164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051979, 42.088028, 50.482079>,  <39.179886, 42.258507, 50.592426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051979, 42.088028, 50.482079>,  <38.838802, 41.803894, 50.298164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051979, 42.088028, 50.482079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296887, -0.351861, 0.887723,
		0.792358, -0.609608, 0.023368,
		0.532941, 0.710332, 0.459785,
		39.211861, 42.301128, 50.620014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194427, 41.509590, 50.743923>,  <38.838802, 41.803894, 50.298164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194427, 41.509590, 50.743923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.180939, 41.885292, 50.880547>,  <39.172848, 42.110714, 50.962521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.180939, 41.885292, 50.880547>,  <39.194427, 41.509590, 50.743923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180939, 41.885292, 50.880547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361927, -0.330037, 0.871828,
		0.931596, -0.094223, 0.351070,
		-0.033720, 0.939254, 0.341563,
		39.170822, 42.167068, 50.983017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421261, 41.502872, 51.417725>,  <39.194427, 41.509590, 50.743923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421261, 41.502872, 51.417725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233559, 41.855949, 51.427879>,  <39.120937, 42.067795, 51.433971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.233559, 41.855949, 51.427879>,  <39.421261, 41.502872, 51.417725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233559, 41.855949, 51.427879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530083, -0.304562, 0.791362,
		0.706265, 0.357894, 0.610820,
		-0.469257, 0.882697, 0.025388,
		39.092781, 42.120758, 51.435497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340874, 41.601707, 52.117569>,  <39.421261, 41.502872, 51.417725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340874, 41.601707, 52.117569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084866, 41.869011, 51.965881>,  <38.931259, 42.029392, 51.874870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084866, 41.869011, 51.965881>,  <39.340874, 41.601707, 52.117569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084866, 41.869011, 51.965881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668977, -0.241875, 0.702828,
		0.377948, 0.703511, 0.601855,
		-0.640020, 0.668259, -0.379216,
		38.892860, 42.069489, 51.852116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177685, 42.032948, 52.626869>,  <39.340874, 41.601707, 52.117569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177685, 42.032948, 52.626869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878830, 42.080780, 52.365341>,  <38.699516, 42.109478, 52.208424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878830, 42.080780, 52.365341>,  <39.177685, 42.032948, 52.626869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878830, 42.080780, 52.365341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664491, -0.157160, 0.730583,
		-0.015392, 0.980307, 0.196880,
		-0.747138, 0.119580, -0.653824,
		38.654690, 42.116653, 52.169193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637947, 42.474228, 52.901661>,  <39.177685, 42.032948, 52.626869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637947, 42.474228, 52.901661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432693, 42.283455, 52.616219>,  <38.309544, 42.168991, 52.444954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432693, 42.283455, 52.616219>,  <38.637947, 42.474228, 52.901661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432693, 42.283455, 52.616219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754920, -0.144819, 0.639628,
		-0.408405, 0.866925, -0.285737,
		-0.513129, -0.476936, -0.713604,
		38.278755, 42.140373, 52.402138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877445, 42.820667, 52.917454>,  <38.637947, 42.474228, 52.901661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877445, 42.820667, 52.917454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876968, 42.467400, 52.729832>,  <37.876682, 42.255440, 52.617256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876968, 42.467400, 52.729832>,  <37.877445, 42.820667, 52.917454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876968, 42.467400, 52.729832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818848, -0.268383, 0.507405,
		-0.574010, 0.384692, -0.722859,
		-0.001192, -0.883167, -0.469058,
		37.876610, 42.202450, 52.589115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191067, 42.710697, 52.806564>,  <37.877445, 42.820667, 52.917454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191067, 42.710697, 52.806564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322815, 42.334724, 52.770679>,  <37.401863, 42.109142, 52.749149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322815, 42.334724, 52.770679>,  <37.191067, 42.710697, 52.806564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322815, 42.334724, 52.770679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802019, -0.328652, 0.498751,
		-0.498276, -0.092320, -0.862089,
		0.329372, -0.939928, -0.089717,
		37.421627, 42.052746, 52.743763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535816, 42.318989, 52.544258>,  <37.191067, 42.710697, 52.806564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535816, 42.318989, 52.544258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800892, 42.062645, 52.699257>,  <36.959938, 41.908840, 52.792255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800892, 42.062645, 52.699257>,  <36.535816, 42.318989, 52.544258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800892, 42.062645, 52.699257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732163, -0.445636, 0.515117,
		-0.157433, -0.625071, -0.764526,
		0.662686, -0.640854, 0.387496,
		36.999699, 41.870388, 52.815506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124508, 41.667797, 52.541943>,  <36.535816, 42.318989, 52.544258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124508, 41.667797, 52.541943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419823, 41.638527, 52.810143>,  <36.597012, 41.620964, 52.971062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419823, 41.638527, 52.810143>,  <36.124508, 41.667797, 52.541943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419823, 41.638527, 52.810143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653042, -0.326222, 0.683459,
		0.168723, -0.942457, -0.288631,
		0.738288, -0.073173, 0.670504,
		36.641308, 41.616573, 53.011295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901409, 41.045979, 52.943890>,  <36.124508, 41.667797, 52.541943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901409, 41.045979, 52.943890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178371, 41.247276, 53.150703>,  <36.344547, 41.368053, 53.274792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178371, 41.247276, 53.150703>,  <35.901409, 41.045979, 52.943890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178371, 41.247276, 53.150703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484349, -0.206943, 0.850047,
		0.534777, -0.839000, 0.100457,
		0.692401, 0.503242, 0.517038,
		36.386093, 41.398251, 53.305817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943691, 40.623348, 53.556492>,  <35.901409, 41.045979, 52.943890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943691, 40.623348, 53.556492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120441, 40.970009, 53.649155>,  <36.226494, 41.178005, 53.704754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120441, 40.970009, 53.649155>,  <35.943691, 40.623348, 53.556492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120441, 40.970009, 53.649155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287967, -0.107539, 0.951583,
		0.849599, -0.487194, 0.202047,
		0.441878, 0.866647, 0.231661,
		36.253006, 41.230003, 53.718655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452850, 40.520687, 54.104946>,  <35.943691, 40.623348, 53.556492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452850, 40.520687, 54.104946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337772, 40.903770, 54.107224>,  <36.268726, 41.133621, 54.108589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337772, 40.903770, 54.107224>,  <36.452850, 40.520687, 54.104946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337772, 40.903770, 54.107224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299475, -0.095610, 0.949302,
		0.909696, 0.271402, 0.314315,
		-0.287694, 0.957706, 0.005698,
		36.251465, 41.191082, 54.108932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598854, 40.806847, 54.798965>,  <36.452850, 40.520687, 54.104946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598854, 40.806847, 54.798965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314178, 41.043358, 54.647232>,  <36.143375, 41.185265, 54.556190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.314178, 41.043358, 54.647232>,  <36.598854, 40.806847, 54.798965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314178, 41.043358, 54.647232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448898, 0.032585, 0.892988,
		0.540363, 0.805811, 0.242232,
		-0.711686, 0.591276, -0.379335,
		36.100674, 41.220741, 54.533432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418293, 41.170998, 55.272266>,  <36.598854, 40.806847, 54.798965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418293, 41.170998, 55.272266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096210, 41.288452, 55.066189>,  <35.902962, 41.358925, 54.942543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096210, 41.288452, 55.066189>,  <36.418293, 41.170998, 55.272266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096210, 41.288452, 55.066189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481206, 0.184155, 0.857046,
		0.346538, 0.938010, -0.006982,
		-0.805204, 0.293639, -0.515192,
		35.854649, 41.376545, 54.911633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262772, 41.815331, 55.504967>,  <36.418293, 41.170998, 55.272266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262772, 41.815331, 55.504967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925339, 41.703743, 55.321430>,  <35.722878, 41.636791, 55.211308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925339, 41.703743, 55.321430>,  <36.262772, 41.815331, 55.504967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925339, 41.703743, 55.321430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535963, 0.384468, 0.751617,
		-0.033269, 0.879977, -0.473850,
		-0.843586, -0.278971, -0.458844,
		35.672264, 41.620052, 55.183777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825386, 42.425407, 55.581715>,  <36.262772, 41.815331, 55.504967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825386, 42.425407, 55.581715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602684, 42.104317, 55.496246>,  <35.469063, 41.911663, 55.444965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602684, 42.104317, 55.496246>,  <35.825386, 42.425407, 55.581715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602684, 42.104317, 55.496246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660254, 0.271551, 0.700232,
		-0.504074, 0.530932, -0.681191,
		-0.556753, -0.802727, -0.213668,
		35.435658, 41.863499, 55.432144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077679, 42.676559, 55.493626>,  <35.825386, 42.425407, 55.581715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077679, 42.676559, 55.493626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113026, 42.290062, 55.590427>,  <35.134235, 42.058163, 55.648510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113026, 42.290062, 55.590427>,  <35.077679, 42.676559, 55.493626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113026, 42.290062, 55.590427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525397, 0.161199, 0.835448,
		-0.846256, -0.200975, -0.493416,
		0.088366, -0.966242, 0.242008,
		35.139534, 42.000191, 55.663029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412560, 42.541069, 55.815010>,  <35.077679, 42.676559, 55.493626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412560, 42.541069, 55.815010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665436, 42.251785, 55.926220>,  <34.817162, 42.078217, 55.992947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665436, 42.251785, 55.926220>,  <34.412560, 42.541069, 55.815010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665436, 42.251785, 55.926220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451658, -0.052418, 0.890650,
		-0.629553, -0.688636, -0.359782,
		0.632193, -0.723210, 0.278029,
		34.855095, 42.034821, 56.009628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022026, 42.010246, 56.012573>,  <34.412560, 42.541069, 55.815010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022026, 42.010246, 56.012573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377930, 41.940262, 56.181198>,  <34.591473, 41.898270, 56.282375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377930, 41.940262, 56.181198>,  <34.022026, 42.010246, 56.012573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377930, 41.940262, 56.181198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425940, 0.013631, 0.904649,
		-0.164025, -0.984481, -0.062395,
		0.889759, -0.174961, 0.421566,
		34.644859, 41.887775, 56.307667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842110, 41.784275, 56.657467>,  <34.022026, 42.010246, 56.012573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842110, 41.784275, 56.657467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.234558, 41.824356, 56.723640>,  <34.470028, 41.848404, 56.763344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.234558, 41.824356, 56.723640>,  <33.842110, 41.784275, 56.657467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234558, 41.824356, 56.723640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167413, 0.011585, 0.985819,
		0.096860, -0.994900, 0.028140,
		0.981117, 0.100198, 0.165437,
		34.528893, 41.854416, 56.773273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968765, 41.258625, 57.007175>,  <33.842110, 41.784275, 56.657467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968765, 41.258625, 57.007175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249077, 41.528587, 57.099617>,  <34.417263, 41.690567, 57.155083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249077, 41.528587, 57.099617>,  <33.968765, 41.258625, 57.007175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249077, 41.528587, 57.099617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349576, 0.042488, 0.935944,
		0.621859, -0.736676, 0.265707,
		0.700777, 0.674910, 0.231103,
		34.459309, 41.731060, 57.168949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444294, 41.032993, 57.610344>,  <33.968765, 41.258625, 57.007175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444294, 41.032993, 57.610344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376514, 41.424118, 57.561073>,  <34.335846, 41.658794, 57.531513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376514, 41.424118, 57.561073>,  <34.444294, 41.032993, 57.610344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376514, 41.424118, 57.561073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509184, 0.020147, 0.860421,
		0.843811, 0.208516, 0.494472,
		-0.169450, 0.977811, -0.123174,
		34.325680, 41.717461, 57.524120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343227, 40.424309, 57.428928>,  <34.444294, 41.032993, 57.610344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343227, 40.424309, 57.428928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515900, 40.385223, 57.787613>,  <34.619503, 40.361771, 58.002823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515900, 40.385223, 57.787613>,  <34.343227, 40.424309, 57.428928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515900, 40.385223, 57.787613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883632, -0.153918, -0.442159,
		0.181227, 0.983240, 0.019902,
		0.431685, -0.097717, 0.896716,
		34.645405, 40.355907, 58.056629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123432, 40.593979, 57.341377>,  <34.343227, 40.424309, 57.428928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123432, 40.593979, 57.341377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.072174, 40.366409, 57.666317>,  <35.041420, 40.229870, 57.861279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.072174, 40.366409, 57.666317>,  <35.123432, 40.593979, 57.341377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072174, 40.366409, 57.666317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874964, -0.450490, -0.177477,
		0.466924, 0.688032, 0.555513,
		-0.128143, -0.568921, 0.812347,
		35.033730, 40.195732, 57.910023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806011, 40.609009, 57.682301>,  <35.123432, 40.593979, 57.341377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806011, 40.609009, 57.682301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581497, 40.291809, 57.777054>,  <35.446789, 40.101490, 57.833904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581497, 40.291809, 57.777054>,  <35.806011, 40.609009, 57.682301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581497, 40.291809, 57.777054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733448, -0.609209, -0.301528,
		0.383420, 0.004495, 0.923563,
		-0.561287, -0.792997, 0.236879,
		35.413113, 40.053909, 57.848118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321743, 40.120831, 58.001575>,  <35.806011, 40.609009, 57.682301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321743, 40.120831, 58.001575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.998726, 39.899002, 57.921253>,  <35.804916, 39.765903, 57.873062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.998726, 39.899002, 57.921253>,  <36.321743, 40.120831, 58.001575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998726, 39.899002, 57.921253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589731, -0.764703, -0.259705,
		-0.009527, -0.328142, 0.944580,
		-0.807543, -0.554574, -0.200801,
		35.756462, 39.732632, 57.861012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435097, 39.432438, 58.297810>,  <36.321743, 40.120831, 58.001575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435097, 39.432438, 58.297810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159233, 39.409401, 58.009071>,  <35.993717, 39.395580, 57.835827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159233, 39.409401, 58.009071>,  <36.435097, 39.432438, 58.297810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159233, 39.409401, 58.009071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488797, -0.772500, -0.405366,
		-0.534280, -0.632398, 0.560909,
		-0.689655, -0.057591, -0.721845,
		35.952335, 39.392124, 57.792519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494343, 38.690243, 58.087070>,  <36.435097, 39.432438, 58.297810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494343, 38.690243, 58.087070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290482, 38.857979, 57.786560>,  <36.168167, 38.958622, 57.606255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290482, 38.857979, 57.786560>,  <36.494343, 38.690243, 58.087070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290482, 38.857979, 57.786560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538226, -0.525846, -0.658634,
		-0.671246, -0.740027, 0.042297,
		-0.509649, 0.419340, -0.751274,
		36.137589, 38.983780, 57.561176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269947, 38.196835, 57.612354>,  <36.494343, 38.690243, 58.087070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269947, 38.196835, 57.612354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295326, 38.543320, 57.414101>,  <36.310555, 38.751209, 57.295147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295326, 38.543320, 57.414101>,  <36.269947, 38.196835, 57.612354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295326, 38.543320, 57.414101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731480, -0.378213, -0.567356,
		-0.678905, -0.326547, -0.657613,
		0.063449, 0.866211, -0.495633,
		36.314362, 38.803185, 57.265411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239380, 37.980476, 56.872070>,  <36.269947, 38.196835, 57.612354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239380, 37.980476, 56.872070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425285, 38.334534, 56.862957>,  <36.536827, 38.546967, 56.857491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425285, 38.334534, 56.862957>,  <36.239380, 37.980476, 56.872070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425285, 38.334534, 56.862957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677219, -0.371927, -0.634858,
		-0.570415, 0.279627, -0.772293,
		0.464759, 0.885144, -0.022784,
		36.564713, 38.600079, 56.856121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341270, 38.097385, 56.272964>,  <36.239380, 37.980476, 56.872070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341270, 38.097385, 56.272964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554012, 38.422775, 56.367104>,  <36.681656, 38.618008, 56.423588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554012, 38.422775, 56.367104>,  <36.341270, 38.097385, 56.272964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554012, 38.422775, 56.367104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347110, 0.044083, -0.936788,
		-0.772429, 0.579926, -0.258920,
		0.531854, 0.813475, 0.235349,
		36.713570, 38.666817, 56.437710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086555, 38.675198, 55.795738>,  <36.341270, 38.097385, 56.272964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086555, 38.675198, 55.795738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457691, 38.729362, 55.934753>,  <36.680374, 38.761860, 56.018162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457691, 38.729362, 55.934753>,  <36.086555, 38.675198, 55.795738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457691, 38.729362, 55.934753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329462, 0.139246, -0.933844,
		-0.174844, 0.980956, 0.084585,
		0.927838, 0.135410, 0.347534,
		36.736042, 38.769985, 56.039013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301426, 39.290771, 55.508564>,  <36.086555, 38.675198, 55.795738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301426, 39.290771, 55.508564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644783, 39.134659, 55.641735>,  <36.850800, 39.040993, 55.721638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644783, 39.134659, 55.641735>,  <36.301426, 39.290771, 55.508564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644783, 39.134659, 55.641735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459689, 0.297144, -0.836893,
		0.227692, 0.871429, 0.434474,
		0.858395, -0.390277, 0.332929,
		36.902302, 39.017574, 55.741615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819901, 39.831181, 55.329609>,  <36.301426, 39.290771, 55.508564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819901, 39.831181, 55.329609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986591, 39.470238, 55.373581>,  <37.086605, 39.253674, 55.399963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986591, 39.470238, 55.373581>,  <36.819901, 39.831181, 55.329609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986591, 39.470238, 55.373581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630881, 0.200029, -0.749652,
		0.654466, 0.381757, 0.652638,
		0.416731, -0.902358, 0.109931,
		37.111610, 39.199532, 55.406559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557335, 39.947670, 55.385761>,  <36.819901, 39.831181, 55.329609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557335, 39.947670, 55.385761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500469, 39.568184, 55.272812>,  <37.466351, 39.340492, 55.205044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500469, 39.568184, 55.272812>,  <37.557335, 39.947670, 55.385761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500469, 39.568184, 55.272812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555023, 0.159802, -0.816341,
		0.819596, -0.272780, 0.503839,
		-0.142167, -0.948712, -0.282372,
		37.457821, 39.283569, 55.188099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259808, 39.674809, 55.289772>,  <37.557335, 39.947670, 55.385761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259808, 39.674809, 55.289772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998718, 39.458946, 55.077087>,  <37.842064, 39.329430, 54.949474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998718, 39.458946, 55.077087>,  <38.259808, 39.674809, 55.289772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998718, 39.458946, 55.077087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527769, 0.179616, -0.830180,
		0.543519, -0.822499, 0.167577,
		-0.652722, -0.539660, -0.531714,
		37.802902, 39.297047, 54.917572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673607, 39.413841, 54.788197>,  <38.259808, 39.674809, 55.289772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673607, 39.413841, 54.788197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305229, 39.358315, 54.642548>,  <38.084202, 39.324997, 54.555157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305229, 39.358315, 54.642548>,  <38.673607, 39.413841, 54.788197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305229, 39.358315, 54.642548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358998, 0.061242, -0.931327,
		0.151589, -0.988422, -0.006564,
		-0.920946, -0.138822, -0.364125,
		38.028946, 39.316669, 54.533310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756390, 38.911690, 54.276985>,  <38.673607, 39.413841, 54.788197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756390, 38.911690, 54.276985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396233, 39.067238, 54.198929>,  <38.180138, 39.160568, 54.152096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396233, 39.067238, 54.198929>,  <38.756390, 38.911690, 54.276985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396233, 39.067238, 54.198929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243695, 0.079201, -0.966613,
		-0.360430, -0.917883, -0.166077,
		-0.900390, 0.388869, -0.195137,
		38.126114, 39.183899, 54.140388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393772, 38.471073, 53.773796>,  <38.756390, 38.911690, 54.276985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393772, 38.471073, 53.773796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220024, 38.828896, 53.731670>,  <38.115776, 39.043591, 53.706394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220024, 38.828896, 53.731670>,  <38.393772, 38.471073, 53.773796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220024, 38.828896, 53.731670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360907, 0.065723, -0.930283,
		-0.825268, -0.442099, -0.351399,
		-0.434373, 0.894555, -0.105318,
		38.089714, 39.097263, 53.700073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118992, 38.462372, 53.218449>,  <38.393772, 38.471073, 53.773796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118992, 38.462372, 53.218449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146172, 38.858574, 53.266254>,  <38.162479, 39.096294, 53.294937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146172, 38.858574, 53.266254>,  <38.118992, 38.462372, 53.218449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146172, 38.858574, 53.266254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476611, 0.073008, -0.876077,
		-0.876484, 0.116491, -0.467125,
		0.067951, 0.990505, 0.119512,
		38.166557, 39.155724, 53.302109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930050, 38.705414, 52.594524>,  <38.118992, 38.462372, 53.218449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930050, 38.705414, 52.594524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143269, 39.001976, 52.757587>,  <38.271198, 39.179913, 52.855427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143269, 39.001976, 52.757587>,  <37.930050, 38.705414, 52.594524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143269, 39.001976, 52.757587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417353, 0.188717, -0.888933,
		-0.735989, 0.643979, -0.208832,
		0.533044, 0.741402, 0.407660,
		38.303181, 39.224396, 52.879887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953266, 39.162434, 52.160213>,  <37.930050, 38.705414, 52.594524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953266, 39.162434, 52.160213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261436, 39.276535, 52.388275>,  <38.446339, 39.344997, 52.525112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261436, 39.276535, 52.388275>,  <37.953266, 39.162434, 52.160213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261436, 39.276535, 52.388275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542643, 0.176009, -0.821315,
		-0.334637, 0.942152, -0.019190,
		0.770426, 0.285256, 0.570151,
		38.492565, 39.362110, 52.559322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179192, 39.685936, 51.893097>,  <37.953266, 39.162434, 52.160213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179192, 39.685936, 51.893097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497917, 39.595268, 52.117134>,  <38.689152, 39.540867, 52.251556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497917, 39.595268, 52.117134>,  <38.179192, 39.685936, 51.893097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497917, 39.595268, 52.117134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603061, 0.240839, -0.760470,
		0.037482, 0.943725, 0.328600,
		0.796814, -0.226670, 0.560097,
		38.736961, 39.527267, 52.285164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.152885, 43.567577, 48.249912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364700, 43.232010, 48.300205>,  <40.491787, 43.030670, 48.330379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364700, 43.232010, 48.300205>,  <40.152885, 43.567577, 48.249912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364700, 43.232010, 48.300205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609429, 0.273126, -0.744311,
		0.590075, 0.470764, 0.655890,
		0.529535, -0.838918, 0.125732,
		40.523560, 42.980335, 48.337925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843765, 43.845078, 48.311764>,  <40.152885, 43.567577, 48.249912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843765, 43.845078, 48.311764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.860138, 43.461769, 48.198601>,  <40.869961, 43.231785, 48.130703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.860138, 43.461769, 48.198601>,  <40.843765, 43.845078, 48.311764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860138, 43.461769, 48.198601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634957, 0.243564, -0.733148,
		0.771462, -0.149625, 0.618432,
		0.040930, -0.958274, -0.282906,
		40.872417, 43.174286, 48.113728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519802, 43.784111, 48.287838>,  <40.843765, 43.845078, 48.311764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519802, 43.784111, 48.287838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362541, 43.490150, 48.066803>,  <41.268185, 43.313774, 47.934181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362541, 43.490150, 48.066803>,  <41.519802, 43.784111, 48.287838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362541, 43.490150, 48.066803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637338, 0.215364, -0.739877,
		0.662743, -0.643071, 0.383708,
		-0.393157, -0.734900, -0.552584,
		41.244595, 43.269680, 47.901028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057373, 43.457848, 48.137131>,  <41.519802, 43.784111, 48.287838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057373, 43.457848, 48.137131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.787460, 43.356956, 47.859699>,  <41.625511, 43.296421, 47.693241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.787460, 43.356956, 47.859699>,  <42.057373, 43.457848, 48.137131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787460, 43.356956, 47.859699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697860, 0.087702, -0.710844,
		0.240125, -0.963684, 0.116843,
		-0.674782, -0.252232, -0.693576,
		41.585026, 43.281288, 47.651627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416824, 43.000225, 47.642723>,  <42.057373, 43.457848, 48.137131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416824, 43.000225, 47.642723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083965, 43.120010, 47.456028>,  <41.884251, 43.191883, 47.344009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083965, 43.120010, 47.456028>,  <42.416824, 43.000225, 47.642723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083965, 43.120010, 47.456028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541745, 0.259163, -0.799591,
		-0.118488, -0.918235, -0.377897,
		-0.832149, 0.299466, -0.466742,
		41.834320, 43.209850, 47.316006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618935, 42.818241, 46.996384>,  <42.416824, 43.000225, 47.642723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618935, 42.818241, 46.996384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.318993, 43.078857, 46.950401>,  <42.139027, 43.235229, 46.922813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.318993, 43.078857, 46.950401>,  <42.618935, 42.818241, 46.996384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318993, 43.078857, 46.950401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387095, 0.291144, -0.874867,
		-0.536546, -0.700518, -0.470524,
		-0.749851, 0.651544, -0.114955,
		42.094036, 43.274319, 46.915916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302284, 42.607929, 46.350552>,  <42.618935, 42.818241, 46.996384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302284, 42.607929, 46.350552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205193, 42.986374, 46.436291>,  <42.146938, 43.213440, 46.487732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205193, 42.986374, 46.436291>,  <42.302284, 42.607929, 46.350552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205193, 42.986374, 46.436291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057249, 0.234540, -0.970419,
		-0.968402, -0.223282, -0.111095,
		-0.242734, 0.946116, 0.214346,
		42.132374, 43.270210, 46.500595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897556, 42.850212, 45.769024>,  <42.302284, 42.607929, 46.350552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897556, 42.850212, 45.769024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.025269, 43.184464, 45.947815>,  <42.101894, 43.385014, 46.055088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.025269, 43.184464, 45.947815>,  <41.897556, 42.850212, 45.769024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025269, 43.184464, 45.947815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402938, 0.307195, -0.862132,
		-0.857732, 0.455361, -0.238627,
		0.319277, 0.835630, 0.446973,
		42.121052, 43.435154, 46.081905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827446, 43.418407, 45.234600>,  <41.897556, 42.850212, 45.769024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827446, 43.418407, 45.234600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.088112, 43.573593, 45.495312>,  <42.244511, 43.666706, 45.651741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.088112, 43.573593, 45.495312>,  <41.827446, 43.418407, 45.234600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088112, 43.573593, 45.495312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578001, 0.302440, -0.757921,
		-0.491171, 0.870640, -0.027154,
		0.651664, 0.387964, 0.651781,
		42.283611, 43.689983, 45.690845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073997, 43.977062, 44.857471>,  <41.827446, 43.418407, 45.234600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073997, 43.977062, 44.857471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368454, 43.916168, 45.121265>,  <42.545128, 43.879631, 45.279541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368454, 43.916168, 45.121265>,  <42.073997, 43.977062, 44.857471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368454, 43.916168, 45.121265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671525, 0.286013, -0.683558,
		-0.084559, 0.946056, 0.312776,
		0.736142, -0.152235, 0.659485,
		42.589298, 43.870499, 45.319111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508957, 44.552452, 44.813305>,  <42.073997, 43.977062, 44.857471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508957, 44.552452, 44.813305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728966, 44.267960, 44.988407>,  <42.860970, 44.097263, 45.093468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.728966, 44.267960, 44.988407>,  <42.508957, 44.552452, 44.813305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728966, 44.267960, 44.988407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737571, 0.167809, -0.654086,
		0.391745, 0.682638, 0.616880,
		0.550022, -0.711228, 0.437756,
		42.893970, 44.054592, 45.119736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193428, 44.881401, 44.903397>,  <42.508957, 44.552452, 44.813305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193428, 44.881401, 44.903397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234383, 44.483788, 44.918434>,  <43.258957, 44.245220, 44.927456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234383, 44.483788, 44.918434>,  <43.193428, 44.881401, 44.903397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234383, 44.483788, 44.918434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845682, 0.067085, -0.529454,
		0.523773, 0.086000, 0.847505,
		0.102388, -0.994034, 0.037591,
		43.265099, 44.185577, 44.929710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925758, 44.795189, 45.006153>,  <43.193428, 44.881401, 44.903397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925758, 44.795189, 45.006153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769371, 44.457474, 44.859550>,  <43.675537, 44.254845, 44.771591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.769371, 44.457474, 44.859550>,  <43.925758, 44.795189, 45.006153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769371, 44.457474, 44.859550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786519, -0.099651, -0.609473,
		0.478046, -0.526549, 0.703006,
		-0.390973, -0.844284, -0.366504,
		43.652081, 44.204189, 44.749599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.234444, 45.295071, 44.711536>,  <43.925758, 44.795189, 45.006153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.234444, 45.295071, 44.711536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011852, 45.062729, 44.473904>,  <43.878296, 44.923325, 44.331322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011852, 45.062729, 44.473904>,  <44.234444, 45.295071, 44.711536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011852, 45.062729, 44.473904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212739, 0.790799, -0.573916,
		0.803173, -0.192978, -0.563624,
		-0.556466, -0.580859, -0.594095,
		43.844910, 44.888474, 44.295677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819992, 45.505756, 44.240860>,  <44.234444, 45.295071, 44.711536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819992, 45.505756, 44.240860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101189, 45.614487, 44.503742>,  <45.269905, 45.679726, 44.661472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101189, 45.614487, 44.503742>,  <44.819992, 45.505756, 44.240860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101189, 45.614487, 44.503742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355799, -0.665708, 0.655927,
		0.615803, -0.694942, -0.371271,
		0.702989, 0.271824, 0.657205,
		45.312084, 45.696033, 44.700905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097912, 44.878510, 44.424324>,  <44.819992, 45.505756, 44.240860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097912, 44.878510, 44.424324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171364, 45.160988, 44.697838>,  <45.215435, 45.330475, 44.861946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171364, 45.160988, 44.697838>,  <45.097912, 44.878510, 44.424324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171364, 45.160988, 44.697838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074354, -0.683642, 0.726020,
		0.980180, -0.184160, -0.073027,
		0.183628, 0.706200, 0.683785,
		45.226452, 45.372849, 44.902973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474354, 44.482792, 45.025875>,  <45.097912, 44.878510, 44.424324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474354, 44.482792, 45.025875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.323456, 44.826401, 45.164307>,  <45.232918, 45.032566, 45.247364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.323456, 44.826401, 45.164307>,  <45.474354, 44.482792, 45.025875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323456, 44.826401, 45.164307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002647, -0.374685, 0.927149,
		0.926108, 0.348849, 0.143623,
		-0.377248, 0.859020, 0.346075,
		45.210281, 45.084106, 45.268127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671291, 44.541382, 45.720955>,  <45.474354, 44.482792, 45.025875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671291, 44.541382, 45.720955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.400269, 44.833916, 45.689819>,  <45.237656, 45.009438, 45.671139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.400269, 44.833916, 45.689819>,  <45.671291, 44.541382, 45.720955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400269, 44.833916, 45.689819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198065, -0.079521, 0.976958,
		0.708296, 0.677364, 0.198732,
		-0.677559, 0.731338, -0.077838,
		45.197002, 45.053318, 45.666470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793354, 44.915352, 46.282684>,  <45.671291, 44.541382, 45.720955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793354, 44.915352, 46.282684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419151, 45.012451, 46.180000>,  <45.194630, 45.070709, 46.118389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419151, 45.012451, 46.180000>,  <45.793354, 44.915352, 46.282684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419151, 45.012451, 46.180000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283664, -0.082919, 0.955332,
		0.210618, 0.966539, 0.146430,
		-0.935508, 0.242747, -0.256708,
		45.138500, 45.085274, 46.102989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568192, 45.406487, 46.761433>,  <45.793354, 44.915352, 46.282684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568192, 45.406487, 46.761433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.234367, 45.261230, 46.595711>,  <45.034073, 45.174076, 46.496277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.234367, 45.261230, 46.595711>,  <45.568192, 45.406487, 46.761433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234367, 45.261230, 46.595711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435616, -0.025421, 0.899774,
		-0.337275, 0.931388, -0.136974,
		-0.834556, -0.363140, -0.414301,
		44.984001, 45.152290, 46.471420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045795, 45.780228, 47.144550>,  <45.568192, 45.406487, 46.761433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045795, 45.780228, 47.144550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897102, 45.440681, 46.994225>,  <44.807884, 45.236954, 46.904030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897102, 45.440681, 46.994225>,  <45.045795, 45.780228, 47.144550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897102, 45.440681, 46.994225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539463, -0.131930, 0.831610,
		-0.755509, 0.511874, -0.408890,
		-0.371735, -0.848869, -0.375812,
		44.785583, 45.186020, 46.881481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375450, 45.905178, 47.094154>,  <45.045795, 45.780228, 47.144550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375450, 45.905178, 47.094154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443035, 45.511604, 47.117233>,  <44.483585, 45.275459, 47.131081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443035, 45.511604, 47.117233>,  <44.375450, 45.905178, 47.094154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443035, 45.511604, 47.117233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609463, -0.058297, 0.790668,
		-0.774600, -0.168757, -0.609520,
		0.168964, -0.983932, 0.057694,
		44.493725, 45.216423, 47.134541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775101, 45.604355, 47.189457>,  <44.375450, 45.905178, 47.094154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775101, 45.604355, 47.189457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990707, 45.287163, 47.303047>,  <44.120071, 45.096848, 47.371201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990707, 45.287163, 47.303047>,  <43.775101, 45.604355, 47.189457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990707, 45.287163, 47.303047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630898, -0.156719, 0.759873,
		-0.558062, -0.588742, -0.584765,
		0.539013, -0.792983, 0.283976,
		44.152412, 45.049267, 47.388241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295258, 45.030865, 47.133640>,  <43.775101, 45.604355, 47.189457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295258, 45.030865, 47.133640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583076, 44.903801, 47.380653>,  <43.755768, 44.827564, 47.528862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583076, 44.903801, 47.380653>,  <43.295258, 45.030865, 47.133640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583076, 44.903801, 47.380653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686360, -0.190047, 0.701992,
		-0.105630, -0.928966, -0.354773,
		0.719551, -0.317653, 0.617530,
		43.798943, 44.808502, 47.565910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024288, 44.414890, 47.547932>,  <43.295258, 45.030865, 47.133640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024288, 44.414890, 47.547932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338005, 44.550644, 47.755661>,  <43.526234, 44.632095, 47.880299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338005, 44.550644, 47.755661>,  <43.024288, 44.414890, 47.547932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338005, 44.550644, 47.755661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449109, -0.266910, 0.852678,
		0.428002, -0.901984, -0.056913,
		0.784293, 0.339388, 0.519327,
		43.573292, 44.652462, 47.911461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040569, 43.972244, 48.109585>,  <43.024288, 44.414890, 47.547932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040569, 43.972244, 48.109585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.264427, 44.281891, 48.227936>,  <43.398743, 44.467678, 48.298946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.264427, 44.281891, 48.227936>,  <43.040569, 43.972244, 48.109585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264427, 44.281891, 48.227936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330794, -0.118683, 0.936210,
		0.759854, -0.621815, 0.189654,
		0.559641, 0.774119, 0.295874,
		43.432320, 44.514126, 48.316696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428532, 43.653450, 48.670883>,  <43.040569, 43.972244, 48.109585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428532, 43.653450, 48.670883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418259, 44.052032, 48.702927>,  <43.412094, 44.291183, 48.722153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418259, 44.052032, 48.702927>,  <43.428532, 43.653450, 48.670883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418259, 44.052032, 48.702927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339863, -0.084065, 0.936710,
		0.940124, -0.003166, 0.340817,
		-0.025685, 0.996455, 0.080108,
		43.410553, 44.350967, 48.726959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695000, 43.719284, 49.267513>,  <43.428532, 43.653450, 48.670883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695000, 43.719284, 49.267513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481194, 44.047043, 49.184673>,  <43.352909, 44.243698, 49.134972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481194, 44.047043, 49.184673>,  <43.695000, 43.719284, 49.267513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481194, 44.047043, 49.184673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414074, -0.040278, 0.909351,
		0.736777, 0.571812, 0.360820,
		-0.534511, 0.819395, -0.207097,
		43.320839, 44.292862, 49.122543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262806, 44.028423, 49.545094>,  <43.695000, 43.719284, 49.267513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262806, 44.028423, 49.545094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583160, 43.888924, 49.739803>,  <44.775372, 43.805225, 49.856628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583160, 43.888924, 49.739803>,  <44.262806, 44.028423, 49.545094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583160, 43.888924, 49.739803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549355, 0.104412, -0.829040,
		0.238302, 0.931381, 0.275210,
		0.800888, -0.348750, 0.486778,
		44.823425, 43.784298, 49.885838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894306, 44.397202, 49.232277>,  <44.262806, 44.028423, 49.545094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894306, 44.397202, 49.232277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051270, 44.075058, 49.410000>,  <45.145447, 43.881771, 49.516632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051270, 44.075058, 49.410000>,  <44.894306, 44.397202, 49.232277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051270, 44.075058, 49.410000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712143, -0.039690, -0.700911,
		0.582120, 0.591457, 0.557956,
		0.392413, -0.805359, 0.444306,
		45.168995, 43.833450, 49.543293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626366, 44.500240, 49.348030>,  <44.894306, 44.397202, 49.232277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626366, 44.500240, 49.348030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.595886, 44.102249, 49.373970>,  <45.577599, 43.863453, 49.389534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.595886, 44.102249, 49.373970>,  <45.626366, 44.500240, 49.348030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595886, 44.102249, 49.373970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699218, -0.099692, -0.707923,
		0.710835, -0.008599, 0.703306,
		-0.076202, -0.994981, 0.064852,
		45.573025, 43.803753, 49.393425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311241, 44.178345, 49.442688>,  <45.626366, 44.500240, 49.348030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.311241, 44.178345, 49.442688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.088440, 43.882080, 49.292397>,  <45.954758, 43.704323, 49.202221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.088440, 43.882080, 49.292397>,  <46.311241, 44.178345, 49.442688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.088440, 43.882080, 49.292397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751697, -0.257247, -0.607269,
		0.353126, -0.620682, 0.700040,
		-0.557004, -0.740660, -0.375724,
		45.921337, 43.659882, 49.179680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.698448, 43.519424, 49.449558>,  <46.311241, 44.178345, 49.442688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.698448, 43.519424, 49.449558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.417923, 43.441322, 49.175323>,  <46.249607, 43.394463, 49.010780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.417923, 43.441322, 49.175323>,  <46.698448, 43.519424, 49.449558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417923, 43.441322, 49.175323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691931, -0.417755, -0.588823,
		-0.171438, -0.887331, 0.428081,
		-0.701314, -0.195256, -0.685590,
		46.207527, 43.382748, 48.969646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.812222, 42.886967, 49.233780>,  <46.698448, 43.519424, 49.449558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.812222, 42.886967, 49.233780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.589180, 43.034096, 48.936115>,  <46.455353, 43.122372, 48.757515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.589180, 43.034096, 48.936115>,  <46.812222, 42.886967, 49.233780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589180, 43.034096, 48.936115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626497, -0.401649, -0.667966,
		-0.544587, -0.838679, -0.006479,
		-0.557607, 0.367824, -0.744163,
		46.421898, 43.144444, 48.712868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660225, 42.273808, 48.656921>,  <46.812222, 42.886967, 49.233780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660225, 42.273808, 48.656921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.603821, 42.629341, 48.482525>,  <46.569981, 42.842663, 48.377888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.603821, 42.629341, 48.482525>,  <46.660225, 42.273808, 48.656921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603821, 42.629341, 48.482525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380473, -0.357918, -0.852723,
		-0.913979, -0.286123, -0.287709,
		-0.141008, 0.888836, -0.435991,
		46.561520, 42.895992, 48.351727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.340645, 42.166996, 48.128490>,  <46.660225, 42.273808, 48.656921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.340645, 42.166996, 48.128490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479042, 42.524834, 48.015358>,  <46.562080, 42.739536, 47.947479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479042, 42.524834, 48.015358>,  <46.340645, 42.166996, 48.128490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479042, 42.524834, 48.015358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252542, -0.379121, -0.890219,
		-0.903612, 0.236579, -0.357095,
		0.345989, 0.894593, -0.282832,
		46.582840, 42.793213, 47.930508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019615, 42.175674, 47.492107>,  <46.340645, 42.166996, 48.128490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019615, 42.175674, 47.492107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322044, 42.437225, 47.503429>,  <46.503502, 42.594154, 47.510223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322044, 42.437225, 47.503429>,  <46.019615, 42.175674, 47.492107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322044, 42.437225, 47.503429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324732, -0.337240, -0.883639,
		-0.568246, 0.677285, -0.467312,
		0.756072, 0.653876, 0.028300,
		46.548866, 42.633389, 47.511921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076759, 42.479313, 46.796314>,  <46.019615, 42.175674, 47.492107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076759, 42.479313, 46.796314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.428207, 42.515244, 46.983913>,  <46.639076, 42.536800, 47.096474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.428207, 42.515244, 46.983913>,  <46.076759, 42.479313, 46.796314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428207, 42.515244, 46.983913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458640, -0.432195, -0.776438,
		0.132957, 0.897296, -0.420931,
		0.878619, 0.089824, 0.468999,
		46.691792, 42.542191, 47.124615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515232, 42.583736, 46.244740>,  <46.076759, 42.479313, 46.796314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515232, 42.583736, 46.244740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.737480, 42.507812, 46.568531>,  <46.870831, 42.462257, 46.762806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.737480, 42.507812, 46.568531>,  <46.515232, 42.583736, 46.244740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737480, 42.507812, 46.568531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553221, -0.642391, -0.530359,
		0.620668, 0.742500, -0.251921,
		0.555623, -0.189809, 0.809478,
		46.904167, 42.450871, 46.811375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306435, 42.616535, 46.149204>,  <46.515232, 42.583736, 46.244740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306435, 42.616535, 46.149204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.248505, 42.354172, 46.445530>,  <47.213745, 42.196754, 46.623325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.248505, 42.354172, 46.445530>,  <47.306435, 42.616535, 46.149204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.248505, 42.354172, 46.445530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420337, -0.718578, -0.554042,
		0.895735, 0.231153, 0.379772,
		-0.144827, -0.655908, 0.740817,
		47.205055, 42.157398, 46.667774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.084721, 43.988766, 53.343933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259537, 43.631294, 53.303276>,  <43.364426, 43.416809, 53.278881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259537, 43.631294, 53.303276>,  <43.084721, 43.988766, 53.343933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259537, 43.631294, 53.303276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658913, 0.395036, -0.640141,
		0.612236, 0.212790, 0.761504,
		0.437036, -0.893682, -0.101645,
		43.390648, 43.363190, 53.272781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814278, 44.189297, 53.269878>,  <43.084721, 43.988766, 53.343933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814278, 44.189297, 53.269878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774223, 43.813522, 53.138767>,  <43.750191, 43.588058, 53.060101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774223, 43.813522, 53.138767>,  <43.814278, 44.189297, 53.269878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774223, 43.813522, 53.138767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619208, 0.199029, -0.759584,
		0.778816, -0.279026, 0.561774,
		-0.100134, -0.939432, -0.327782,
		43.744183, 43.531693, 53.040432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518070, 44.044090, 53.038437>,  <43.814278, 44.189297, 53.269878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518070, 44.044090, 53.038437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298744, 43.754044, 52.871796>,  <44.167149, 43.580017, 52.771809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298744, 43.754044, 52.871796>,  <44.518070, 44.044090, 53.038437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298744, 43.754044, 52.871796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503418, 0.111597, -0.856806,
		0.667776, -0.679523, 0.303847,
		-0.548311, -0.725117, -0.416606,
		44.134251, 43.536510, 52.746815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951580, 43.565491, 52.750904>,  <44.518070, 44.044090, 53.038437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951580, 43.565491, 52.750904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631195, 43.470657, 52.530994>,  <44.438965, 43.413757, 52.399048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631195, 43.470657, 52.530994>,  <44.951580, 43.565491, 52.750904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631195, 43.470657, 52.530994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558048, 0.037045, -0.828981,
		0.216908, -0.970782, 0.102634,
		-0.800958, -0.237087, -0.549779,
		44.390907, 43.399532, 52.366062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112938, 43.033741, 52.212219>,  <44.951580, 43.565491, 52.750904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112938, 43.033741, 52.212219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794464, 43.237762, 52.082031>,  <44.603378, 43.360176, 52.003918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794464, 43.237762, 52.082031>,  <45.112938, 43.033741, 52.212219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794464, 43.237762, 52.082031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414413, 0.067776, -0.907562,
		-0.440851, -0.857465, -0.265337,
		-0.796186, 0.510059, -0.325466,
		44.555607, 43.390781, 51.984390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003212, 42.739967, 51.598995>,  <45.112938, 43.033741, 52.212219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003212, 42.739967, 51.598995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814461, 43.092102, 51.579689>,  <44.701210, 43.303383, 51.568108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814461, 43.092102, 51.579689>,  <45.003212, 42.739967, 51.598995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814461, 43.092102, 51.579689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260277, 0.086797, -0.961625,
		-0.842367, -0.466335, -0.270090,
		-0.471883, 0.880339, -0.048261,
		44.672897, 43.356205, 51.565212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579739, 42.716694, 51.031406>,  <45.003212, 42.739967, 51.598995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579739, 42.716694, 51.031406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571461, 43.113853, 51.078266>,  <44.566494, 43.352150, 51.106380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571461, 43.113853, 51.078266>,  <44.579739, 42.716694, 51.031406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571461, 43.113853, 51.078266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180005, 0.118958, -0.976446,
		-0.983448, 0.000881, -0.181189,
		-0.020694, 0.992899, 0.117147,
		44.565254, 43.411724, 51.113411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193638, 42.956947, 50.442825>,  <44.579739, 42.716694, 51.031406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193638, 42.956947, 50.442825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461769, 43.228310, 50.563107>,  <44.622650, 43.391125, 50.635277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461769, 43.228310, 50.563107>,  <44.193638, 42.956947, 50.442825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461769, 43.228310, 50.563107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292419, 0.130951, -0.947282,
		-0.682017, 0.722926, -0.110598,
		0.670332, 0.678403, 0.300708,
		44.662868, 43.431831, 50.653320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055317, 43.495510, 49.999645>,  <44.193638, 42.956947, 50.442825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055317, 43.495510, 49.999645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421692, 43.549767, 50.150730>,  <44.641518, 43.582321, 50.241383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421692, 43.549767, 50.150730>,  <44.055317, 43.495510, 49.999645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421692, 43.549767, 50.150730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335287, 0.258628, -0.905922,
		-0.220567, 0.956407, 0.191407,
		0.915933, 0.135640, 0.377716,
		44.696472, 43.590458, 50.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662956, 44.225094, 49.859848>,  <44.055317, 43.495510, 49.999645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662956, 44.225094, 49.859848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338955, 44.348885, 49.660603>,  <43.144554, 44.423157, 49.541054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338955, 44.348885, 49.660603>,  <43.662956, 44.225094, 49.859848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338955, 44.348885, 49.660603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525096, -0.004572, 0.851031,
		0.261095, 0.950897, 0.166207,
		-0.810002, 0.309475, -0.498118,
		43.095955, 44.441727, 49.511166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410690, 44.878265, 50.202114>,  <43.662956, 44.225094, 49.859848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410690, 44.878265, 50.202114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094658, 44.738701, 50.000507>,  <42.905041, 44.654961, 49.879543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094658, 44.738701, 50.000507>,  <43.410690, 44.878265, 50.202114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094658, 44.738701, 50.000507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558610, 0.071185, 0.826370,
		-0.252453, 0.934448, -0.251148,
		-0.790078, -0.348913, -0.504021,
		42.857635, 44.634026, 49.849300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854607, 45.179569, 50.614735>,  <43.410690, 44.878265, 50.202114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854607, 45.179569, 50.614735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699387, 44.899925, 50.374512>,  <42.606255, 44.732140, 50.230377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699387, 44.899925, 50.374512>,  <42.854607, 45.179569, 50.614735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699387, 44.899925, 50.374512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867249, 0.056452, 0.494663,
		-0.311920, 0.712786, -0.628206,
		-0.388052, -0.699106, -0.600555,
		42.582970, 44.690193, 50.194344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266685, 45.424355, 50.490776>,  <42.854607, 45.179569, 50.614735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266685, 45.424355, 50.490776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218193, 45.036911, 50.403965>,  <42.189098, 44.804447, 50.351879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218193, 45.036911, 50.403965>,  <42.266685, 45.424355, 50.490776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218193, 45.036911, 50.403965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773315, -0.044915, 0.632429,
		-0.622323, 0.244506, -0.743593,
		-0.121234, -0.968607, -0.217032,
		42.181824, 44.746330, 50.338856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527760, 45.299568, 50.239765>,  <42.266685, 45.424355, 50.490776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527760, 45.299568, 50.239765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697506, 44.959808, 50.365261>,  <41.799355, 44.755951, 50.440559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697506, 44.959808, 50.365261>,  <41.527760, 45.299568, 50.239765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697506, 44.959808, 50.365261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791542, -0.179712, 0.584093,
		-0.439748, -0.496204, -0.748601,
		0.424362, -0.849403, 0.313738,
		41.824814, 44.704987, 50.459381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027863, 44.820686, 50.081131>,  <41.527760, 45.299568, 50.239765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027863, 44.820686, 50.081131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275528, 44.687523, 50.365612>,  <41.424126, 44.607624, 50.536301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275528, 44.687523, 50.365612>,  <41.027863, 44.820686, 50.081131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275528, 44.687523, 50.365612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767061, -0.062545, 0.638518,
		-0.168087, -0.940882, -0.294088,
		0.619164, -0.332910, 0.711201,
		41.461277, 44.587650, 50.578972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643681, 44.231422, 50.458546>,  <41.027863, 44.820686, 50.081131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643681, 44.231422, 50.458546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945438, 44.278343, 50.716888>,  <41.126492, 44.306496, 50.871895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945438, 44.278343, 50.716888>,  <40.643681, 44.231422, 50.458546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945438, 44.278343, 50.716888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641618, -0.076022, 0.763248,
		0.138628, -0.990183, 0.017911,
		0.754393, 0.117300, 0.645857,
		41.171757, 44.313534, 50.910645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656570, 43.713829, 50.901226>,  <40.643681, 44.231422, 50.458546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656570, 43.713829, 50.901226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829918, 44.008514, 51.108860>,  <40.933926, 44.185326, 51.233440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829918, 44.008514, 51.108860>,  <40.656570, 43.713829, 50.901226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829918, 44.008514, 51.108860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636869, -0.157176, 0.754781,
		0.637642, -0.657689, 0.401072,
		0.433372, 0.736709, 0.519083,
		40.959930, 44.229527, 51.264584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714920, 43.383240, 51.608150>,  <40.656570, 43.713829, 50.901226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714920, 43.383240, 51.608150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742970, 43.780632, 51.644100>,  <40.759800, 44.019066, 51.665668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742970, 43.780632, 51.644100>,  <40.714920, 43.383240, 51.608150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742970, 43.780632, 51.644100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701669, -0.014917, 0.712347,
		0.709044, -0.113014, 0.696049,
		0.070122, 0.993481, 0.089875,
		40.764008, 44.078678, 51.671062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710674, 43.486275, 52.362286>,  <40.714920, 43.383240, 51.608150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710674, 43.486275, 52.362286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593937, 43.839539, 52.215401>,  <40.523895, 44.051498, 52.127270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593937, 43.839539, 52.215401>,  <40.710674, 43.486275, 52.362286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593937, 43.839539, 52.215401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560421, 0.153229, 0.813910,
		0.775084, 0.443330, 0.450225,
		-0.291844, 0.883164, -0.367217,
		40.506382, 44.104488, 52.105236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630547, 43.924564, 52.945808>,  <40.710674, 43.486275, 52.362286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630547, 43.924564, 52.945808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455376, 44.163712, 52.677250>,  <40.350273, 44.307201, 52.516117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455376, 44.163712, 52.677250>,  <40.630547, 43.924564, 52.945808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455376, 44.163712, 52.677250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734399, 0.192841, 0.650746,
		0.518534, 0.778051, 0.354626,
		-0.437927, 0.597871, -0.671395,
		40.323997, 44.343071, 52.475830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572178, 44.533730, 53.328926>,  <40.630547, 43.924564, 52.945808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572178, 44.533730, 53.328926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314209, 44.507011, 53.024395>,  <40.159428, 44.490982, 52.841675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314209, 44.507011, 53.024395>,  <40.572178, 44.533730, 53.328926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314209, 44.507011, 53.024395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764249, 0.058754, 0.642240,
		0.001834, 0.996035, -0.088938,
		-0.644919, -0.066793, -0.761327,
		40.120735, 44.486973, 52.795998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254318, 45.196758, 53.257252>,  <40.572178, 44.533730, 53.328926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254318, 45.196758, 53.257252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010033, 44.916191, 53.110260>,  <39.863461, 44.747849, 53.022064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010033, 44.916191, 53.110260>,  <40.254318, 45.196758, 53.257252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010033, 44.916191, 53.110260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721362, 0.301407, 0.623531,
		-0.326598, 0.645880, -0.690052,
		-0.610713, -0.701422, -0.367475,
		39.826820, 44.705765, 53.000019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719711, 45.527786, 53.368305>,  <40.254318, 45.196758, 53.257252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719711, 45.527786, 53.368305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594574, 45.156845, 53.286179>,  <39.519493, 44.934280, 53.236904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594574, 45.156845, 53.286179>,  <39.719711, 45.527786, 53.368305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594574, 45.156845, 53.286179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639238, 0.045692, 0.767650,
		-0.702498, 0.371399, -0.607091,
		-0.312844, -0.927349, -0.205314,
		39.500721, 44.878639, 53.224583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.251640, 37.055317, 54.371292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445625, 37.394844, 54.455505>,  <40.562016, 37.598560, 54.506031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.445625, 37.394844, 54.455505>,  <40.251640, 37.055317, 54.371292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445625, 37.394844, 54.455505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406768, -0.005827, -0.913513,
		-0.774176, 0.528659, -0.348096,
		0.484965, 0.848814, 0.210531,
		40.591114, 37.649487, 54.518665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152180, 37.468811, 53.794312>,  <40.251640, 37.055317, 54.371292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152180, 37.468811, 53.794312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463425, 37.640945, 53.977333>,  <40.650169, 37.744225, 54.087147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463425, 37.640945, 53.977333>,  <40.152180, 37.468811, 53.794312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463425, 37.640945, 53.977333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395702, 0.229898, -0.889138,
		-0.487818, 0.872903, 0.008602,
		0.778109, 0.430334, 0.457558,
		40.696857, 37.770046, 54.114601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193653, 38.148651, 53.550537>,  <40.152180, 37.468811, 53.794312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193653, 38.148651, 53.550537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.555977, 38.029953, 53.671501>,  <40.773373, 37.958733, 53.744080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.555977, 38.029953, 53.671501>,  <40.193653, 38.148651, 53.550537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555977, 38.029953, 53.671501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367997, 0.197301, -0.908653,
		0.209972, 0.934353, 0.287919,
		0.905809, -0.296745, 0.302411,
		40.827721, 37.940929, 53.762226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564884, 38.668781, 53.431911>,  <40.193653, 38.148651, 53.550537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564884, 38.668781, 53.431911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.831100, 38.372925, 53.471878>,  <40.990829, 38.195412, 53.495857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.831100, 38.372925, 53.471878>,  <40.564884, 38.668781, 53.431911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831100, 38.372925, 53.471878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451220, 0.292100, -0.843255,
		0.594519, 0.606307, 0.528146,
		0.665543, -0.739641, 0.099919,
		41.030762, 38.151031, 53.501854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237625, 38.988766, 53.374760>,  <40.564884, 38.668781, 53.431911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237625, 38.988766, 53.374760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.310661, 38.603096, 53.297791>,  <41.354485, 38.371693, 53.251610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.310661, 38.603096, 53.297791>,  <41.237625, 38.988766, 53.374760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310661, 38.603096, 53.297791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538748, 0.261835, -0.800745,
		0.822443, 0.042539, 0.567255,
		0.182590, -0.964175, -0.192427,
		41.365437, 38.313843, 53.240063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040199, 39.043537, 53.132980>,  <41.237625, 38.988766, 53.374760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040199, 39.043537, 53.132980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.899864, 38.690872, 53.006752>,  <41.815662, 38.479275, 52.931015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.899864, 38.690872, 53.006752>,  <42.040199, 39.043537, 53.132980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899864, 38.690872, 53.006752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595825, 0.049807, -0.801568,
		0.722429, -0.469250, 0.507840,
		-0.350841, -0.881660, -0.315573,
		41.794613, 38.426373, 52.912079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581886, 38.498676, 52.991043>,  <42.040199, 39.043537, 53.132980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581886, 38.498676, 52.991043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.261814, 38.420174, 52.764347>,  <42.069771, 38.373074, 52.628330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.261814, 38.420174, 52.764347>,  <42.581886, 38.498676, 52.991043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261814, 38.420174, 52.764347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585286, -0.049210, -0.809332,
		0.130947, -0.979317, 0.154242,
		-0.800183, -0.196255, -0.566737,
		42.021759, 38.361298, 52.594326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825508, 38.034695, 52.511044>,  <42.581886, 38.498676, 52.991043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825508, 38.034695, 52.511044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.478786, 38.143463, 52.343845>,  <42.270756, 38.208725, 52.243526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.478786, 38.143463, 52.343845>,  <42.825508, 38.034695, 52.511044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478786, 38.143463, 52.343845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378530, -0.186866, -0.906530,
		-0.324611, -0.944003, 0.059047,
		-0.866800, 0.271918, -0.417992,
		42.218746, 38.225040, 52.218449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777439, 37.672165, 51.934025>,  <42.825508, 38.034695, 52.511044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777439, 37.672165, 51.934025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.513176, 37.958458, 51.843464>,  <42.354618, 38.130234, 51.789127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.513176, 37.958458, 51.843464>,  <42.777439, 37.672165, 51.934025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513176, 37.958458, 51.843464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430316, 0.113955, -0.895457,
		-0.615105, -0.689018, -0.383275,
		-0.660661, 0.715730, -0.226401,
		42.314976, 38.173176, 51.775543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618454, 37.598839, 51.322269>,  <42.777439, 37.672165, 51.934025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618454, 37.598839, 51.322269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.484703, 37.974556, 51.353069>,  <42.404453, 38.199986, 51.371548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.484703, 37.974556, 51.353069>,  <42.618454, 37.598839, 51.322269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484703, 37.974556, 51.353069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266064, 0.172459, -0.948403,
		-0.904103, -0.296638, -0.307578,
		-0.334377, 0.939289, 0.076996,
		42.384392, 38.256344, 51.376167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210869, 37.677223, 50.760082>,  <42.618454, 37.598839, 51.322269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210869, 37.677223, 50.760082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.297760, 38.059700, 50.838581>,  <42.349895, 38.289185, 50.885681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.297760, 38.059700, 50.838581>,  <42.210869, 37.677223, 50.760082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297760, 38.059700, 50.838581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008440, 0.202881, -0.979167,
		-0.976085, 0.211043, 0.052141,
		0.217224, 0.956190, 0.196248,
		42.362926, 38.346558, 50.897457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006264, 37.984661, 50.159676>,  <42.210869, 37.677223, 50.760082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006264, 37.984661, 50.159676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.241600, 38.248817, 50.346325>,  <42.382801, 38.407310, 50.458317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.241600, 38.248817, 50.346325>,  <42.006264, 37.984661, 50.159676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241600, 38.248817, 50.346325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293518, 0.363297, -0.884230,
		-0.753462, 0.657191, 0.019905,
		0.588339, 0.660391, 0.466627,
		42.418102, 38.446934, 50.486313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042252, 38.507339, 49.747601>,  <42.006264, 37.984661, 50.159676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042252, 38.507339, 49.747601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.351498, 38.599983, 49.983788>,  <42.537045, 38.655567, 50.125500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.351498, 38.599983, 49.983788>,  <42.042252, 38.507339, 49.747601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351498, 38.599983, 49.983788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493460, 0.365240, -0.789365,
		-0.398482, 0.901643, 0.168085,
		0.773117, 0.231605, 0.590466,
		42.583431, 38.669464, 50.160927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317802, 39.075638, 49.489666>,  <42.042252, 38.507339, 49.747601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317802, 39.075638, 49.489666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.631592, 38.952644, 49.705090>,  <42.819866, 38.878849, 49.834343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.631592, 38.952644, 49.705090>,  <42.317802, 39.075638, 49.489666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631592, 38.952644, 49.705090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610838, 0.233118, -0.756660,
		0.107115, 0.922555, 0.370700,
		0.784477, -0.307487, 0.538561,
		42.866936, 38.860397, 49.866657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019150, 39.774151, 49.550831>,  <42.317802, 39.075638, 49.489666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019150, 39.774151, 49.550831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683670, 39.757790, 49.333611>,  <41.482380, 39.747971, 49.203278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683670, 39.757790, 49.333611>,  <42.019150, 39.774151, 49.550831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683670, 39.757790, 49.333611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536643, -0.107627, 0.836917,
		-0.092681, 0.993349, 0.068315,
		-0.838704, -0.040906, -0.543049,
		41.432060, 39.745518, 49.170696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561367, 40.023647, 50.014973>,  <42.019150, 39.774151, 49.550831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561367, 40.023647, 50.014973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321274, 39.856560, 49.742142>,  <41.177219, 39.756306, 49.578442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321274, 39.856560, 49.742142>,  <41.561367, 40.023647, 50.014973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321274, 39.856560, 49.742142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735788, -0.045976, 0.675650,
		-0.313591, 0.907412, -0.279756,
		-0.600231, -0.417719, -0.682081,
		41.141205, 39.731243, 49.537518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994099, 40.372108, 50.055534>,  <41.561367, 40.023647, 50.014973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994099, 40.372108, 50.055534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.863522, 40.024841, 49.906013>,  <40.785175, 39.816483, 49.816303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.863522, 40.024841, 49.906013>,  <40.994099, 40.372108, 50.055534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863522, 40.024841, 49.906013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720715, -0.027251, 0.692696,
		-0.611561, 0.495527, -0.616803,
		-0.326441, -0.868165, -0.373799,
		40.765591, 39.764393, 49.793873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330082, 40.407429, 50.214733>,  <40.994099, 40.372108, 50.055534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330082, 40.407429, 50.214733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.368690, 40.023239, 50.110294>,  <40.391853, 39.792725, 50.047630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.368690, 40.023239, 50.110294>,  <40.330082, 40.407429, 50.214733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368690, 40.023239, 50.110294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779954, -0.235952, 0.579653,
		-0.618349, 0.147698, -0.771900,
		0.096518, -0.960475, -0.261099,
		40.397644, 39.735096, 50.031963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545536, 40.252460, 50.142876>,  <40.330082, 40.407429, 50.214733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545536, 40.252460, 50.142876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755211, 39.916702, 50.200348>,  <39.881016, 39.715248, 50.234829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755211, 39.916702, 50.200348>,  <39.545536, 40.252460, 50.142876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755211, 39.916702, 50.200348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684350, -0.314791, 0.657702,
		-0.506842, -0.443086, -0.739449,
		0.524191, -0.839393, 0.143676,
		39.912468, 39.664883, 50.243450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077660, 39.662563, 50.125019>,  <39.545536, 40.252460, 50.142876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077660, 39.662563, 50.125019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405052, 39.564430, 50.332825>,  <39.601490, 39.505550, 50.457508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405052, 39.564430, 50.332825>,  <39.077660, 39.662563, 50.125019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405052, 39.564430, 50.332825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568236, -0.212208, 0.795032,
		-0.084804, -0.945927, -0.313097,
		0.818484, -0.245335, 0.519514,
		39.650597, 39.490829, 50.488678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883911, 39.092892, 50.568012>,  <39.077660, 39.662563, 50.125019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883911, 39.092892, 50.568012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.220711, 39.223976, 50.739426>,  <39.422791, 39.302628, 50.842274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.220711, 39.223976, 50.739426>,  <38.883911, 39.092892, 50.568012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220711, 39.223976, 50.739426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393226, -0.171008, 0.903399,
		0.369333, -0.929174, -0.015126,
		0.842001, 0.327707, 0.428535,
		39.473312, 39.322289, 50.867985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161453, 38.484730, 51.075733>,  <38.883911, 39.092892, 50.568012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161453, 38.484730, 51.075733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301804, 38.846077, 51.174370>,  <39.386013, 39.062885, 51.233551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.301804, 38.846077, 51.174370>,  <39.161453, 38.484730, 51.075733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301804, 38.846077, 51.174370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460141, -0.063017, 0.885607,
		0.815571, -0.424204, 0.393567,
		0.350877, 0.903371, 0.246588,
		39.407066, 39.117088, 51.248344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337990, 38.471622, 51.771896>,  <39.161453, 38.484730, 51.075733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337990, 38.471622, 51.771896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.336216, 38.866280, 51.706768>,  <39.335152, 39.103073, 51.667690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.336216, 38.866280, 51.706768>,  <39.337990, 38.471622, 51.771896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336216, 38.866280, 51.706768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266386, 0.155777, 0.951195,
		0.963856, 0.047595, 0.262137,
		-0.004437, 0.986645, -0.162825,
		39.334885, 39.162273, 51.657921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657269, 38.734360, 52.423824>,  <39.337990, 38.471622, 51.771896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657269, 38.734360, 52.423824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480423, 39.055428, 52.263699>,  <39.374313, 39.248070, 52.167622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480423, 39.055428, 52.263699>,  <39.657269, 38.734360, 52.423824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480423, 39.055428, 52.263699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466042, 0.175762, 0.867129,
		0.766380, 0.569936, 0.296371,
		-0.442117, 0.802671, -0.400314,
		39.347790, 39.296230, 52.143604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818916, 39.302769, 52.902969>,  <39.657269, 38.734360, 52.423824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818916, 39.302769, 52.902969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474266, 39.373688, 52.712738>,  <39.267475, 39.416237, 52.598598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474266, 39.373688, 52.712738>,  <39.818916, 39.302769, 52.902969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474266, 39.373688, 52.712738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463365, 0.107610, 0.879610,
		0.207127, 0.978257, -0.010567,
		-0.861622, 0.177294, -0.475579,
		39.215778, 39.426876, 52.570065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448307, 39.852932, 53.300507>,  <39.818916, 39.302769, 52.902969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448307, 39.852932, 53.300507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.153717, 39.736694, 53.056160>,  <38.976963, 39.666954, 52.909554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.153717, 39.736694, 53.056160>,  <39.448307, 39.852932, 53.300507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153717, 39.736694, 53.056160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660098, 0.111297, 0.742889,
		-0.147890, 0.950352, -0.273787,
		-0.736478, -0.290592, -0.610866,
		38.932774, 39.649517, 52.872902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884872, 40.238247, 53.494488>,  <39.448307, 39.852932, 53.300507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884872, 40.238247, 53.494488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745857, 39.913330, 53.307129>,  <38.662449, 39.718380, 53.194714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745857, 39.913330, 53.307129>,  <38.884872, 40.238247, 53.494488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745857, 39.913330, 53.307129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838009, 0.044970, 0.543800,
		-0.420662, 0.581510, -0.696340,
		-0.347539, -0.812296, -0.468393,
		38.641594, 39.669640, 53.166611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232410, 40.454937, 53.367428>,  <38.884872, 40.238247, 53.494488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232410, 40.454937, 53.367428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207756, 40.055962, 53.352859>,  <38.192963, 39.816578, 53.344120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207756, 40.055962, 53.352859>,  <38.232410, 40.454937, 53.367428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207756, 40.055962, 53.352859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527531, 0.001582, 0.849535,
		-0.847297, 0.071575, -0.526274,
		-0.061638, -0.997434, -0.036417,
		38.189266, 39.756733, 53.341934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846577, 40.847443, 52.771351>,  <38.232410, 40.454937, 53.367428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846577, 40.847443, 52.771351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706978, 41.221794, 52.752010>,  <37.623219, 41.446404, 52.740406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706978, 41.221794, 52.752010>,  <37.846577, 40.847443, 52.771351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706978, 41.221794, 52.752010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548306, 0.162084, -0.820420,
		-0.759975, -0.312833, -0.569713,
		-0.348996, 0.935876, -0.048349,
		37.602280, 41.502556, 52.737507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814095, 40.980221, 52.033760>,  <37.846577, 40.847443, 52.771351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814095, 40.980221, 52.033760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803265, 41.351418, 52.182404>,  <37.796768, 41.574135, 52.271591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803265, 41.351418, 52.182404>,  <37.814095, 40.980221, 52.033760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803265, 41.351418, 52.182404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631057, 0.304171, -0.713615,
		-0.775264, 0.215189, -0.593851,
		-0.027070, 0.927994, 0.371610,
		37.795143, 41.629814, 52.293888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678963, 41.501434, 51.437828>,  <37.814095, 40.980221, 52.033760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678963, 41.501434, 51.437828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.850510, 41.696602, 51.741936>,  <37.953438, 41.813702, 51.924400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.850510, 41.696602, 51.741936>,  <37.678963, 41.501434, 51.437828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850510, 41.696602, 51.741936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588614, 0.487493, -0.644890,
		-0.685281, 0.724076, -0.078127,
		0.428863, 0.487918, 0.760271,
		37.979168, 41.842976, 51.970016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660877, 42.285881, 51.312321>,  <37.678963, 41.501434, 51.437828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660877, 42.285881, 51.312321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.962772, 42.214012, 51.564701>,  <38.143909, 42.170891, 51.716129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.962772, 42.214012, 51.564701>,  <37.660877, 42.285881, 51.312321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962772, 42.214012, 51.564701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598370, 0.582812, -0.549803,
		-0.268942, 0.792496, 0.547376,
		0.754734, -0.179668, 0.630948,
		38.189194, 42.160110, 51.753986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026321, 42.986107, 51.368538>,  <37.660877, 42.285881, 51.312321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026321, 42.986107, 51.368538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.297688, 42.727486, 51.508091>,  <38.460506, 42.572315, 51.591824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.297688, 42.727486, 51.508091>,  <38.026321, 42.986107, 51.368538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297688, 42.727486, 51.508091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716759, 0.478245, -0.507481,
		0.161260, 0.594351, 0.787872,
		0.678418, -0.646551, 0.348885,
		38.501213, 42.533520, 51.612755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643490, 43.335625, 51.468346>,  <38.026321, 42.986107, 51.368538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643490, 43.335625, 51.468346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771828, 42.958557, 51.431625>,  <38.848831, 42.732315, 51.409592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771828, 42.958557, 51.431625>,  <38.643490, 43.335625, 51.468346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771828, 42.958557, 51.431625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675915, 0.295786, -0.675018,
		0.663476, 0.154522, 0.732067,
		0.320841, -0.942674, -0.091803,
		38.868080, 42.675755, 51.404083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390999, 43.355507, 51.446648>,  <38.643490, 43.335625, 51.468346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390999, 43.355507, 51.446648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.290123, 43.005318, 51.281750>,  <39.229599, 42.795204, 51.182812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.290123, 43.005318, 51.281750>,  <39.390999, 43.355507, 51.446648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290123, 43.005318, 51.281750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722539, 0.113026, -0.682029,
		0.643693, -0.469863, 0.604060,
		-0.252185, -0.875474, -0.412248,
		39.214466, 42.742676, 51.158077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989750, 43.187580, 51.153465>,  <39.390999, 43.355507, 51.446648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989750, 43.187580, 51.153465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.752747, 42.903465, 51.001453>,  <39.610542, 42.732998, 50.910248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.752747, 42.903465, 51.001453>,  <39.989750, 43.187580, 51.153465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752747, 42.903465, 51.001453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612556, -0.090883, -0.785185,
		0.523169, -0.698020, 0.488939,
		-0.592511, -0.710287, -0.380029,
		39.574993, 42.690380, 50.887444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392746, 42.704865, 50.967182>,  <39.989750, 43.187580, 51.153465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392746, 42.704865, 50.967182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069794, 42.634949, 50.741760>,  <39.876022, 42.592999, 50.606506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069794, 42.634949, 50.741760>,  <40.392746, 42.704865, 50.967182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069794, 42.634949, 50.741760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588886, -0.179086, -0.788126,
		0.036830, -0.968183, 0.247520,
		-0.807377, -0.174788, -0.563553,
		39.827579, 42.582512, 50.572693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500343, 41.973763, 50.633766>,  <40.392746, 42.704865, 50.967182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500343, 41.973763, 50.633766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.232582, 42.172035, 50.412430>,  <40.071926, 42.291000, 50.279629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.232582, 42.172035, 50.412430>,  <40.500343, 41.973763, 50.633766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232582, 42.172035, 50.412430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525258, -0.210936, -0.824384,
		-0.525355, -0.842498, -0.119160,
		-0.669407, 0.495685, -0.553346,
		40.031761, 42.320740, 50.246426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367336, 41.523533, 50.060211>,  <40.500343, 41.973763, 50.633766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367336, 41.523533, 50.060211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.251610, 41.895210, 49.968212>,  <40.182175, 42.118217, 49.913013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.251610, 41.895210, 49.968212>,  <40.367336, 41.523533, 50.060211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251610, 41.895210, 49.968212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360510, -0.116815, -0.925411,
		-0.886751, -0.350655, -0.301186,
		-0.289317, 0.929191, -0.230001,
		40.164814, 42.173969, 49.899212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919453, 41.393890, 49.314182>,  <40.367336, 41.523533, 50.060211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919453, 41.393890, 49.314182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.029640, 41.773399, 49.376080>,  <40.095753, 42.001106, 49.413219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.029640, 41.773399, 49.376080>,  <39.919453, 41.393890, 49.314182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029640, 41.773399, 49.376080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379901, 0.040427, -0.924143,
		-0.883059, 0.313359, -0.349304,
		0.275467, 0.948774, 0.154745,
		40.112282, 42.058033, 49.422504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635990, 41.740791, 48.723526>,  <39.919453, 41.393890, 49.314182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635990, 41.740791, 48.723526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912811, 41.997925, 48.854866>,  <40.078903, 42.152206, 48.933670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912811, 41.997925, 48.854866>,  <39.635990, 41.740791, 48.723526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912811, 41.997925, 48.854866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262226, 0.199917, -0.944071,
		-0.672529, 0.739454, -0.030215,
		0.692057, 0.642838, 0.328354,
		40.120430, 42.190777, 48.953373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541252, 42.401478, 48.431656>,  <39.635990, 41.740791, 48.723526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541252, 42.401478, 48.431656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.928768, 42.393616, 48.530491>,  <40.161278, 42.388901, 48.589790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.928768, 42.393616, 48.530491>,  <39.541252, 42.401478, 48.431656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928768, 42.393616, 48.530491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240592, 0.314308, -0.918328,
		-0.059616, 0.949118, 0.309227,
		0.968794, -0.019651, 0.247088,
		40.219406, 42.387722, 48.604618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.789864, 45.453472, 53.219795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.922607, 45.085442, 53.303059>,  <39.002254, 44.864624, 53.353016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.922607, 45.085442, 53.303059>,  <38.789864, 45.453472, 53.219795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922607, 45.085442, 53.303059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764189, -0.132841, 0.631165,
		-0.553068, -0.368528, -0.747196,
		0.331860, -0.920076, 0.208155,
		39.022167, 44.809418, 53.365505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233456, 45.062168, 53.354477>,  <38.789864, 45.453472, 53.219795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233456, 45.062168, 53.354477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507687, 44.803627, 53.488464>,  <38.672226, 44.648502, 53.568855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.507687, 44.803627, 53.488464>,  <38.233456, 45.062168, 53.354477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507687, 44.803627, 53.488464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639792, -0.315415, 0.700842,
		-0.347350, -0.694783, -0.629781,
		0.685576, -0.646366, 0.334957,
		38.713360, 44.609718, 53.588955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890617, 44.430313, 53.432613>,  <38.233456, 45.062168, 53.354477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890617, 44.430313, 53.432613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218819, 44.391327, 53.657921>,  <38.415741, 44.367935, 53.793106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218819, 44.391327, 53.657921>,  <37.890617, 44.430313, 53.432613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218819, 44.391327, 53.657921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552480, -0.388188, 0.737615,
		0.146762, -0.916412, -0.372358,
		0.820504, -0.097467, 0.563270,
		38.464970, 44.362087, 53.826900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705673, 43.812992, 53.834526>,  <37.890617, 44.430313, 53.432613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705673, 43.812992, 53.834526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985893, 44.023674, 54.027111>,  <38.154026, 44.150082, 54.142662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985893, 44.023674, 54.027111>,  <37.705673, 43.812992, 53.834526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985893, 44.023674, 54.027111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407395, -0.258737, 0.875834,
		0.585878, -0.809714, 0.033317,
		0.700554, 0.526705, 0.481462,
		38.196060, 44.181686, 54.171551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869831, 43.429146, 54.322704>,  <37.705673, 43.812992, 53.834526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869831, 43.429146, 54.322704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980827, 43.797325, 54.432808>,  <38.047424, 44.018234, 54.498871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.980827, 43.797325, 54.432808>,  <37.869831, 43.429146, 54.322704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980827, 43.797325, 54.432808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462068, -0.123325, 0.878228,
		0.842312, -0.370889, 0.391090,
		0.277494, 0.920452, 0.275255,
		38.064075, 44.073460, 54.515385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044720, 43.297234, 55.022991>,  <37.869831, 43.429146, 54.322704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044720, 43.297234, 55.022991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.996223, 43.692444, 54.984829>,  <37.967125, 43.929569, 54.961933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.996223, 43.692444, 54.984829>,  <38.044720, 43.297234, 55.022991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996223, 43.692444, 54.984829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390653, 0.040861, 0.919631,
		0.912520, 0.148762, 0.381022,
		-0.121237, 0.988028, -0.095401,
		37.959854, 43.988853, 54.956207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165485, 43.516140, 55.593880>,  <38.044720, 43.297234, 55.022991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165485, 43.516140, 55.593880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.964691, 43.837090, 55.464752>,  <37.844215, 44.029659, 55.387276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.964691, 43.837090, 55.464752>,  <38.165485, 43.516140, 55.593880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964691, 43.837090, 55.464752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522920, 0.015727, 0.852236,
		0.688885, 0.596621, 0.411681,
		-0.501987, 0.802369, -0.322819,
		37.814095, 44.077801, 55.367905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149414, 43.961197, 56.123367>,  <38.165485, 43.516140, 55.593880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149414, 43.961197, 56.123367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848282, 44.070351, 55.883774>,  <37.667603, 44.135845, 55.740017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848282, 44.070351, 55.883774>,  <38.149414, 43.961197, 56.123367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848282, 44.070351, 55.883774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624124, -0.006861, 0.781295,
		0.209096, 0.962021, 0.175481,
		-0.752827, 0.272888, -0.598986,
		37.622433, 44.152218, 55.704079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774570, 44.467476, 56.546608>,  <38.149414, 43.961197, 56.123367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774570, 44.467476, 56.546608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.535473, 44.330353, 56.256729>,  <37.392014, 44.248081, 56.082802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.535473, 44.330353, 56.256729>,  <37.774570, 44.467476, 56.546608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535473, 44.330353, 56.256729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699764, -0.218000, 0.680299,
		-0.391194, 0.913762, -0.109574,
		-0.597744, -0.342804, -0.724698,
		37.356148, 44.227512, 56.039318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122467, 44.758175, 56.692150>,  <37.774570, 44.467476, 56.546608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122467, 44.758175, 56.692150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003433, 44.450798, 56.465546>,  <36.932014, 44.266373, 56.329582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003433, 44.450798, 56.465546>,  <37.122467, 44.758175, 56.692150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003433, 44.450798, 56.465546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800933, -0.121990, 0.586195,
		-0.519567, 0.628181, -0.579170,
		-0.297584, -0.768445, -0.566513,
		36.914158, 44.220264, 56.295593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341328, 44.821774, 56.662708>,  <37.122467, 44.758175, 56.692150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341328, 44.821774, 56.662708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.436253, 44.439201, 56.594673>,  <36.493210, 44.209660, 56.553852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.436253, 44.439201, 56.594673>,  <36.341328, 44.821774, 56.662708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436253, 44.439201, 56.594673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733497, -0.291217, 0.614145,
		-0.636917, -0.020987, -0.770646,
		0.237314, -0.956427, -0.170088,
		36.507446, 44.152275, 56.543648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723225, 44.390091, 56.586178>,  <36.341328, 44.821774, 56.662708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723225, 44.390091, 56.586178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.034351, 44.157692, 56.682045>,  <36.221027, 44.018253, 56.739567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.034351, 44.157692, 56.682045>,  <35.723225, 44.390091, 56.586178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034351, 44.157692, 56.682045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484453, -0.311312, 0.817551,
		-0.400385, -0.752013, -0.523611,
		0.777815, -0.581000, 0.239670,
		36.267696, 43.983391, 56.753948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462280, 43.760578, 56.955383>,  <35.723225, 44.390091, 56.586178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462280, 43.760578, 56.955383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842438, 43.799065, 57.073704>,  <36.070534, 43.822155, 57.144695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842438, 43.799065, 57.073704>,  <35.462280, 43.760578, 56.955383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842438, 43.799065, 57.073704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278177, -0.162598, 0.946668,
		0.139181, -0.981990, -0.127767,
		0.950393, 0.096216, 0.295797,
		36.127556, 43.827930, 57.162441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227898, 43.417240, 57.606888>,  <35.462280, 43.760578, 56.955383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227898, 43.417240, 57.606888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.615776, 43.501625, 57.656181>,  <35.848503, 43.552258, 57.685757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.615776, 43.501625, 57.656181>,  <35.227898, 43.417240, 57.606888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615776, 43.501625, 57.656181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057731, -0.292263, 0.954594,
		0.237403, -0.932779, -0.271227,
		0.969694, 0.210965, 0.123235,
		35.906685, 43.564915, 57.693153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331768, 42.697132, 57.335518>,  <35.227898, 43.417240, 57.606888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331768, 42.697132, 57.335518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065052, 42.403038, 57.286827>,  <34.905022, 42.226582, 57.257614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.065052, 42.403038, 57.286827>,  <35.331768, 42.697132, 57.335518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065052, 42.403038, 57.286827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350878, -0.165626, -0.921658,
		0.657474, -0.657265, 0.368416,
		-0.666792, -0.735235, -0.121725,
		34.865013, 42.182468, 57.250309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693283, 42.411823, 56.879250>,  <35.331768, 42.697132, 57.335518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693283, 42.411823, 56.879250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361153, 42.189255, 56.866852>,  <35.161877, 42.055714, 56.859413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361153, 42.189255, 56.866852>,  <35.693283, 42.411823, 56.879250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361153, 42.189255, 56.866852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333071, -0.450903, -0.828100,
		0.446799, -0.697912, 0.559723,
		-0.830322, -0.556421, -0.030991,
		35.112057, 42.022327, 56.857555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759769, 41.689693, 56.885307>,  <35.693283, 42.411823, 56.879250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759769, 41.689693, 56.885307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404110, 41.740074, 56.709332>,  <35.190716, 41.770302, 56.603745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404110, 41.740074, 56.709332>,  <35.759769, 41.689693, 56.885307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404110, 41.740074, 56.709332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359070, -0.403972, -0.841353,
		-0.283690, -0.906059, 0.313969,
		-0.889151, 0.125947, -0.439941,
		35.137363, 41.777859, 56.577351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662334, 41.172050, 56.463776>,  <35.759769, 41.689693, 56.885307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662334, 41.172050, 56.463776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399361, 41.440346, 56.326439>,  <35.241577, 41.601322, 56.244038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399361, 41.440346, 56.326439>,  <35.662334, 41.172050, 56.463776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399361, 41.440346, 56.326439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264058, -0.221677, -0.938686,
		-0.705726, -0.707790, -0.031376,
		-0.657437, 0.670740, -0.343341,
		35.202129, 41.641567, 56.223438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175011, 40.789291, 56.037632>,  <35.662334, 41.172050, 56.463776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175011, 40.789291, 56.037632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.186943, 41.173470, 55.926884>,  <35.194103, 41.403976, 55.860435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.186943, 41.173470, 55.926884>,  <35.175011, 40.789291, 56.037632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186943, 41.173470, 55.926884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095449, -0.278463, -0.955692,
		-0.994987, 0.002085, -0.099981,
		0.029833, 0.960444, -0.276869,
		35.195892, 41.461601, 55.843822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778782, 40.735527, 55.353901>,  <35.175011, 40.789291, 56.037632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778782, 40.735527, 55.353901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975906, 41.082802, 55.377174>,  <35.094181, 41.291168, 55.391140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975906, 41.082802, 55.377174>,  <34.778782, 40.735527, 55.353901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975906, 41.082802, 55.377174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302932, -0.108499, -0.946816,
		-0.815700, 0.484230, -0.316472,
		0.492813, 0.868187, 0.058187,
		35.123749, 41.343258, 55.394630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598621, 41.159519, 54.702888>,  <34.778782, 40.735527, 55.353901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598621, 41.159519, 54.702888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945168, 41.303352, 54.841515>,  <35.153095, 41.389652, 54.924690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.945168, 41.303352, 54.841515>,  <34.598621, 41.159519, 54.702888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945168, 41.303352, 54.841515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332480, 0.102509, -0.937523,
		-0.372643, 0.927465, -0.030744,
		0.866368, 0.359583, 0.346563,
		35.205078, 41.411228, 54.945484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789299, 41.710419, 54.230015>,  <34.598621, 41.159519, 54.702888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789299, 41.710419, 54.230015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.122643, 41.627144, 54.434822>,  <35.322647, 41.577179, 54.557709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.122643, 41.627144, 54.434822>,  <34.789299, 41.710419, 54.230015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122643, 41.627144, 54.434822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511497, -0.060602, -0.857145,
		0.209480, 0.976209, 0.055986,
		0.833360, -0.208191, 0.512023,
		35.372650, 41.564686, 54.588428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302113, 42.099354, 53.956123>,  <34.789299, 41.710419, 54.230015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302113, 42.099354, 53.956123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539825, 41.840347, 54.146931>,  <35.682453, 41.684944, 54.261414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539825, 41.840347, 54.146931>,  <35.302113, 42.099354, 53.956123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539825, 41.840347, 54.146931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630817, 0.007367, -0.775897,
		0.498894, 0.762013, 0.412845,
		0.594285, -0.647519, 0.477015,
		35.718109, 41.646091, 54.290035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814465, 42.397285, 53.973236>,  <35.302113, 42.099354, 53.956123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814465, 42.397285, 53.973236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.950829, 42.023277, 54.012260>,  <36.032646, 41.798874, 54.035675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.950829, 42.023277, 54.012260>,  <35.814465, 42.397285, 53.973236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950829, 42.023277, 54.012260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609833, 0.140974, -0.779890,
		0.715458, 0.325372, 0.618266,
		0.340914, -0.935018, 0.097561,
		36.053104, 41.742771, 54.041531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600349, 42.475353, 53.993587>,  <35.814465, 42.397285, 53.973236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600349, 42.475353, 53.993587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473473, 42.102364, 53.924438>,  <36.397346, 41.878571, 53.882950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473473, 42.102364, 53.924438>,  <36.600349, 42.475353, 53.993587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473473, 42.102364, 53.924438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614594, -0.063293, -0.786300,
		0.722261, -0.355654, 0.593168,
		-0.317194, -0.932472, -0.172869,
		36.378315, 41.822620, 53.872578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238316, 42.087761, 54.040276>,  <36.600349, 42.475353, 53.993587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238316, 42.087761, 54.040276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.977188, 41.862213, 53.837936>,  <36.820511, 41.726887, 53.716534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.977188, 41.862213, 53.837936>,  <37.238316, 42.087761, 54.040276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977188, 41.862213, 53.837936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656188, -0.087303, -0.749530,
		0.378472, -0.821239, 0.426995,
		-0.652821, -0.563866, -0.505845,
		36.781342, 41.693054, 53.686184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703602, 41.599022, 53.784248>,  <37.238316, 42.087761, 54.040276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703602, 41.599022, 53.784248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.368103, 41.607353, 53.566597>,  <37.166805, 41.612350, 53.436008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.368103, 41.607353, 53.566597>,  <37.703602, 41.599022, 53.784248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368103, 41.607353, 53.566597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544522, 0.030083, -0.838207,
		-0.001087, -0.999330, -0.036572,
		-0.838746, 0.020826, -0.544125,
		37.116478, 41.613602, 53.403358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685471, 40.937016, 53.488346>,  <37.703602, 41.599022, 53.784248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685471, 40.937016, 53.488346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.493332, 41.213654, 53.272583>,  <37.378048, 41.379639, 53.143124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.493332, 41.213654, 53.272583>,  <37.685471, 40.937016, 53.488346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493332, 41.213654, 53.272583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764773, 0.029165, -0.643640,
		-0.429409, -0.721693, -0.542925,
		-0.480345, 0.691599, -0.539407,
		37.349228, 41.421135, 53.110760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449543, 40.229977, 53.590408>,  <37.685471, 40.937016, 53.488346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449543, 40.229977, 53.590408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.642189, 39.880112, 53.612370>,  <37.757778, 39.670193, 53.625546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.642189, 39.880112, 53.612370>,  <37.449543, 40.229977, 53.590408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642189, 39.880112, 53.612370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522930, -0.236537, 0.818898,
		-0.703271, -0.423107, -0.571306,
		0.481617, -0.874660, 0.054906,
		37.786674, 39.617714, 53.628841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017033, 39.786510, 53.862545>,  <37.449543, 40.229977, 53.590408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017033, 39.786510, 53.862545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.352242, 39.580368, 53.934250>,  <37.553368, 39.456684, 53.977272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.352242, 39.580368, 53.934250>,  <37.017033, 39.786510, 53.862545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352242, 39.580368, 53.934250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386829, -0.329419, 0.861305,
		-0.384827, -0.791132, -0.475414,
		0.838016, -0.515358, 0.179263,
		37.603645, 39.425762, 53.988029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845200, 39.059029, 54.054924>,  <37.017033, 39.786510, 53.862545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845200, 39.059029, 54.054924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195908, 39.155975, 54.221073>,  <37.406334, 39.214142, 54.320763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195908, 39.155975, 54.221073>,  <36.845200, 39.059029, 54.054924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195908, 39.155975, 54.221073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287179, -0.428949, 0.856464,
		0.385748, -0.870209, -0.306488,
		0.876771, 0.242363, 0.415372,
		37.458939, 39.228683, 54.345684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076000, 38.429741, 54.306492>,  <36.845200, 39.059029, 54.054924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076000, 38.429741, 54.306492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.301929, 38.695686, 54.502018>,  <37.437489, 38.855251, 54.619331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.301929, 38.695686, 54.502018>,  <37.076000, 38.429741, 54.306492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301929, 38.695686, 54.502018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128362, -0.514352, 0.847918,
		0.815168, -0.541668, -0.205175,
		0.564822, 0.664859, 0.488813,
		37.471375, 38.895145, 54.648663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618065, 38.068180, 54.775642>,  <37.076000, 38.429741, 54.306492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618065, 38.068180, 54.775642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.528015, 38.429909, 54.920708>,  <37.473984, 38.646946, 55.007748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.528015, 38.429909, 54.920708>,  <37.618065, 38.068180, 54.775642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528015, 38.429909, 54.920708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084670, -0.388969, 0.917351,
		0.970643, 0.175814, 0.164137,
		-0.225128, 0.904319, 0.362664,
		37.460476, 38.701206, 55.029507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663147, 37.982288, 55.480114>,  <37.618065, 38.068180, 54.775642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663147, 37.982288, 55.480114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499363, 38.347160, 55.473633>,  <37.401093, 38.566086, 55.469746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499363, 38.347160, 55.473633>,  <37.663147, 37.982288, 55.480114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499363, 38.347160, 55.473633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113785, -0.033439, 0.992942,
		0.905204, 0.408415, 0.117485,
		-0.409461, 0.912183, -0.016202,
		37.376526, 38.620815, 55.468773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852463, 38.251942, 56.140884>,  <37.663147, 37.982288, 55.480114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852463, 38.251942, 56.140884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.575783, 38.509117, 56.009319>,  <37.409775, 38.663422, 55.930382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.575783, 38.509117, 56.009319>,  <37.852463, 38.251942, 56.140884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575783, 38.509117, 56.009319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283688, 0.176936, 0.942451,
		0.664134, 0.745202, 0.060007,
		-0.691699, 0.642937, -0.328914,
		37.368275, 38.702000, 55.910645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526596, 38.682602, 56.135109>,  <37.852463, 38.251942, 56.140884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526596, 38.682602, 56.135109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793182, 38.531807, 56.392387>,  <38.953136, 38.441330, 56.546753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793182, 38.531807, 56.392387>,  <38.526596, 38.682602, 56.135109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793182, 38.531807, 56.392387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623196, -0.191828, -0.758175,
		0.409203, 0.906137, 0.107088,
		0.666468, -0.376984, 0.643198,
		38.993122, 38.418713, 56.585346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155571, 38.994099, 56.030148>,  <38.526596, 38.682602, 56.135109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155571, 38.994099, 56.030148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263954, 38.660820, 56.222969>,  <39.328983, 38.460854, 56.338661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263954, 38.660820, 56.222969>,  <39.155571, 38.994099, 56.030148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263954, 38.660820, 56.222969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785650, -0.097931, -0.610871,
		0.556181, 0.544242, 0.628063,
		0.270955, -0.833193, 0.482051,
		39.345242, 38.410862, 56.367584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950188, 39.051178, 56.178070>,  <39.155571, 38.994099, 56.030148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950188, 39.051178, 56.178070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871246, 38.659622, 56.199352>,  <39.823879, 38.424690, 56.212124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871246, 38.659622, 56.199352>,  <39.950188, 39.051178, 56.178070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871246, 38.659622, 56.199352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776944, -0.189281, -0.600443,
		0.597837, -0.077162, 0.797895,
		-0.197358, -0.978887, 0.053208,
		39.812038, 38.365955, 56.215313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566483, 38.853580, 56.090546>,  <39.950188, 39.051178, 56.178070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566483, 38.853580, 56.090546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.351662, 38.517036, 56.066246>,  <40.222771, 38.315109, 56.051666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.351662, 38.517036, 56.066246>,  <40.566483, 38.853580, 56.090546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351662, 38.517036, 56.066246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744768, -0.439112, -0.502496,
		0.396103, -0.315110, 0.862443,
		-0.537050, -0.841360, -0.060750,
		40.190548, 38.264629, 56.048019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038841, 38.267811, 56.242535>,  <40.566483, 38.853580, 56.090546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038841, 38.267811, 56.242535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721756, 38.161362, 56.023159>,  <40.531506, 38.097492, 55.891533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721756, 38.161362, 56.023159>,  <41.038841, 38.267811, 56.242535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721756, 38.161362, 56.023159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607547, -0.418590, -0.675032,
		-0.049930, -0.868309, 0.493503,
		-0.792713, -0.266122, -0.548439,
		40.483944, 38.081524, 55.858627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261665, 37.647766, 56.011887>,  <41.038841, 38.267811, 56.242535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261665, 37.647766, 56.011887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.954910, 37.728134, 55.768082>,  <40.770855, 37.776356, 55.621799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.954910, 37.728134, 55.768082>,  <41.261665, 37.647766, 56.011887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954910, 37.728134, 55.768082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418234, -0.563905, -0.712104,
		-0.486782, -0.801027, 0.348424,
		-0.766892, 0.200917, -0.609515,
		40.724842, 37.788410, 55.585228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961552, 37.026413, 55.635067>,  <41.261665, 37.647766, 56.011887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961552, 37.026413, 55.635067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898880, 37.355568, 55.416595>,  <40.861275, 37.553059, 55.285511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898880, 37.355568, 55.416595>,  <40.961552, 37.026413, 55.635067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898880, 37.355568, 55.416595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634311, -0.340041, -0.694278,
		-0.757034, -0.455228, -0.468686,
		-0.156683, 0.822885, -0.546179,
		40.851875, 37.602432, 55.252743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.821518, 41.980770, 58.163826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567490, 42.008423, 57.856087>,  <38.415073, 42.025013, 57.671444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567490, 42.008423, 57.856087>,  <38.821518, 41.980770, 58.163826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567490, 42.008423, 57.856087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768901, -0.038808, -0.638189,
		-0.073977, -0.996852, -0.028510,
		-0.635074, 0.069133, -0.769351,
		38.376968, 42.029163, 57.625282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776634, 41.407661, 57.651291>,  <38.821518, 41.980770, 58.163826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776634, 41.407661, 57.651291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.690521, 41.741333, 57.448196>,  <38.638855, 41.941536, 57.326340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.690521, 41.741333, 57.448196>,  <38.776634, 41.407661, 57.651291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690521, 41.741333, 57.448196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734246, -0.204525, -0.647343,
		-0.643845, -0.512166, -0.568462,
		-0.215282, 0.834180, -0.507738,
		38.625938, 41.991589, 57.295876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838608, 41.197231, 56.960194>,  <38.776634, 41.407661, 57.651291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838608, 41.197231, 56.960194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.831829, 41.597115, 56.953217>,  <38.827763, 41.837044, 56.949032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.831829, 41.597115, 56.953217>,  <38.838608, 41.197231, 56.960194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831829, 41.597115, 56.953217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688241, -0.000990, -0.725481,
		-0.725284, -0.024300, -0.688021,
		-0.016948, 0.999704, -0.017442,
		38.826744, 41.897026, 56.947983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749889, 41.417446, 56.203770>,  <38.838608, 41.197231, 56.960194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749889, 41.417446, 56.203770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.932575, 41.709091, 56.407658>,  <39.042187, 41.884079, 56.529991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.932575, 41.709091, 56.407658>,  <38.749889, 41.417446, 56.203770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932575, 41.709091, 56.407658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743392, 0.001932, -0.668853,
		-0.488652, 0.684394, -0.541132,
		0.456713, 0.729110, 0.509717,
		39.069588, 41.927826, 56.560574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883007, 41.860352, 55.660404>,  <38.749889, 41.417446, 56.203770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883007, 41.860352, 55.660404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137810, 41.905540, 55.965416>,  <39.290691, 41.932655, 56.148422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137810, 41.905540, 55.965416>,  <38.883007, 41.860352, 55.660404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137810, 41.905540, 55.965416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760259, 0.071379, -0.645687,
		-0.127374, 0.991031, -0.040420,
		0.637010, 0.112973, 0.762532,
		39.328915, 41.939434, 56.194176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250858, 42.395313, 55.415497>,  <38.883007, 41.860352, 55.660404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250858, 42.395313, 55.415497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469810, 42.236900, 55.710396>,  <39.601181, 42.141853, 55.887337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469810, 42.236900, 55.710396>,  <39.250858, 42.395313, 55.415497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469810, 42.236900, 55.710396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826775, 0.119376, -0.549721,
		0.129696, 0.910445, 0.392771,
		0.547378, -0.396029, 0.737250,
		39.634026, 42.118092, 55.931572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717289, 42.921658, 55.633286>,  <39.250858, 42.395313, 55.415497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717289, 42.921658, 55.633286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.882286, 42.582451, 55.766380>,  <39.981285, 42.378925, 55.846237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.882286, 42.582451, 55.766380>,  <39.717289, 42.921658, 55.633286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882286, 42.582451, 55.766380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842941, 0.216831, -0.492376,
		0.345398, 0.483578, 0.804272,
		0.412493, -0.848019, 0.332735,
		40.006035, 42.328045, 55.866199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411507, 43.178314, 55.984421>,  <39.717289, 42.921658, 55.633286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411507, 43.178314, 55.984421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.432693, 42.789658, 55.892231>,  <40.445404, 42.556465, 55.836918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.432693, 42.789658, 55.892231>,  <40.411507, 43.178314, 55.984421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432693, 42.789658, 55.892231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854435, 0.163549, -0.493145,
		0.516851, -0.170803, 0.838863,
		0.052965, -0.971637, -0.230471,
		40.448582, 42.498165, 55.823090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120125, 43.000019, 56.104179>,  <40.411507, 43.178314, 55.984421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120125, 43.000019, 56.104179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.005142, 42.681152, 55.891808>,  <40.936153, 42.489830, 55.764385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.005142, 42.681152, 55.891808>,  <41.120125, 43.000019, 56.104179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005142, 42.681152, 55.891808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915261, -0.065273, -0.397538,
		0.282250, -0.600216, 0.748382,
		-0.287457, -0.797170, -0.530931,
		40.918903, 42.442001, 55.732529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728020, 42.630184, 55.986961>,  <41.120125, 43.000019, 56.104179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728020, 42.630184, 55.986961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.511330, 42.453033, 55.701195>,  <41.381317, 42.346741, 55.529736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.511330, 42.453033, 55.701195>,  <41.728020, 42.630184, 55.986961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511330, 42.453033, 55.701195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790498, 0.020493, -0.612121,
		0.285738, -0.896346, 0.338996,
		-0.541725, -0.442882, -0.714416,
		41.348812, 42.320168, 55.486870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124264, 42.164234, 55.754875>,  <41.728020, 42.630184, 55.986961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124264, 42.164234, 55.754875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.874146, 42.217201, 55.447247>,  <41.724075, 42.248981, 55.262669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.874146, 42.217201, 55.447247>,  <42.124264, 42.164234, 55.754875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874146, 42.217201, 55.447247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779453, 0.057750, -0.623793,
		-0.038187, -0.989510, -0.139323,
		-0.625296, 0.132417, -0.769071,
		41.686558, 42.256927, 55.216526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118134, 41.583775, 55.241966>,  <42.124264, 42.164234, 55.754875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118134, 41.583775, 55.241966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.010052, 41.909996, 55.037273>,  <41.945202, 42.105728, 54.914459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.010052, 41.909996, 55.037273>,  <42.118134, 41.583775, 55.241966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010052, 41.909996, 55.037273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816935, -0.087070, -0.570120,
		-0.509518, -0.572099, -0.642724,
		-0.270203, 0.815550, -0.511731,
		41.928989, 42.154659, 54.883755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146385, 40.949631, 55.516682>,  <42.118134, 41.583775, 55.241966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146385, 40.949631, 55.516682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.390236, 40.695587, 55.706417>,  <42.536545, 40.543163, 55.820259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.390236, 40.695587, 55.706417>,  <42.146385, 40.949631, 55.516682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390236, 40.695587, 55.706417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567231, 0.068485, 0.820706,
		-0.553721, -0.769383, -0.318502,
		0.609624, -0.635106, 0.474340,
		42.573124, 40.505054, 55.848721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720600, 40.380516, 55.887901>,  <42.146385, 40.949631, 55.516682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720600, 40.380516, 55.887901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.058750, 40.397438, 56.100899>,  <42.261642, 40.407593, 56.228699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.058750, 40.397438, 56.100899>,  <41.720600, 40.380516, 55.887901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058750, 40.397438, 56.100899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531063, -0.040801, 0.846350,
		0.057531, -0.998271, -0.012025,
		0.845377, 0.042305, 0.532492,
		42.312363, 40.410130, 56.260647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631390, 39.855793, 56.396919>,  <41.720600, 40.380516, 55.887901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631390, 39.855793, 56.396919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921135, 40.077507, 56.560905>,  <42.094982, 40.210537, 56.659298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921135, 40.077507, 56.560905>,  <41.631390, 39.855793, 56.396919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921135, 40.077507, 56.560905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486438, -0.010476, 0.873652,
		0.488546, -0.832261, 0.262037,
		0.724362, 0.554285, 0.409962,
		42.138443, 40.243793, 56.683895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740490, 39.607437, 57.018620>,  <41.631390, 39.855793, 56.396919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740490, 39.607437, 57.018620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.934105, 39.953964, 57.067932>,  <42.050274, 40.161880, 57.097519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.934105, 39.953964, 57.067932>,  <41.740490, 39.607437, 57.018620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934105, 39.953964, 57.067932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385274, 0.084493, 0.918926,
		0.785668, -0.492289, 0.374669,
		0.484034, 0.866321, 0.123283,
		42.079315, 40.213860, 57.104916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176785, 39.606667, 57.705956>,  <41.740490, 39.607437, 57.018620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176785, 39.606667, 57.705956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.101276, 39.991096, 57.625252>,  <42.055973, 40.221752, 57.576828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.101276, 39.991096, 57.625252>,  <42.176785, 39.606667, 57.705956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101276, 39.991096, 57.625252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285895, 0.142772, 0.947565,
		0.939484, 0.236556, 0.247815,
		-0.188771, 0.961071, -0.201762,
		42.044643, 40.279419, 57.564724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269444, 39.924622, 58.346638>,  <42.176785, 39.606667, 57.705956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269444, 39.924622, 58.346638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032352, 40.167526, 58.135017>,  <41.890099, 40.313271, 58.008045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032352, 40.167526, 58.135017>,  <42.269444, 39.924622, 58.346638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032352, 40.167526, 58.135017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570184, 0.147537, 0.808160,
		0.568822, 0.780681, 0.258803,
		-0.592732, 0.607265, -0.529054,
		41.854534, 40.349705, 57.976299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111618, 40.456039, 58.839195>,  <42.269444, 39.924622, 58.346638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111618, 40.456039, 58.839195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.847603, 40.446198, 58.538864>,  <41.689194, 40.440292, 58.358665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.847603, 40.446198, 58.538864>,  <42.111618, 40.456039, 58.839195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847603, 40.446198, 58.538864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748401, -0.065171, 0.660037,
		-0.065171, 0.997571, 0.024603,
		-0.660037, -0.024603, -0.750830,
		41.649593, 40.438816, 58.313614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603519, 40.843433, 59.064270>,  <42.111618, 40.456039, 58.839195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603519, 40.843433, 59.064270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.410019, 40.631126, 58.785912>,  <41.293919, 40.503742, 58.618896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.410019, 40.631126, 58.785912>,  <41.603519, 40.843433, 59.064270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410019, 40.631126, 58.785912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835115, 0.042037, 0.548466,
		-0.261854, 0.846475, -0.463587,
		-0.483751, -0.530767, -0.695896,
		41.264893, 40.471897, 58.577141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993801, 41.234787, 58.898487>,  <41.603519, 40.843433, 59.064270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993801, 41.234787, 58.898487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.870380, 40.868591, 58.795197>,  <40.796329, 40.648872, 58.733223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.870380, 40.868591, 58.795197>,  <40.993801, 41.234787, 58.898487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870380, 40.868591, 58.795197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891450, 0.183601, 0.414255,
		-0.331836, 0.358009, -0.872762,
		-0.308547, -0.915489, -0.258222,
		40.777817, 40.593945, 58.717731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217003, 41.317097, 58.774956>,  <40.993801, 41.234787, 58.898487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217003, 41.317097, 58.774956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.255173, 40.921852, 58.823181>,  <40.278072, 40.684708, 58.852116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.255173, 40.921852, 58.823181>,  <40.217003, 41.317097, 58.774956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255173, 40.921852, 58.823181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949025, -0.053751, 0.310582,
		-0.300409, -0.144052, -0.942870,
		0.095421, -0.988110, 0.120562,
		40.283798, 40.625420, 58.859348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722015, 41.025864, 58.381245>,  <40.217003, 41.317097, 58.774956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722015, 41.025864, 58.381245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.816010, 40.746017, 58.651154>,  <39.872406, 40.578110, 58.813099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.816010, 40.746017, 58.651154>,  <39.722015, 41.025864, 58.381245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816010, 40.746017, 58.651154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967637, -0.102672, 0.230516,
		-0.091992, -0.707105, -0.701099,
		0.234982, -0.699615, 0.674775,
		39.886505, 40.536133, 58.853584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192673, 40.497864, 58.392712>,  <39.722015, 41.025864, 58.381245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192673, 40.497864, 58.392712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.351120, 40.463226, 58.758354>,  <39.446186, 40.442444, 58.977741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.351120, 40.463226, 58.758354>,  <39.192673, 40.497864, 58.392712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351120, 40.463226, 58.758354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914092, 0.056891, 0.401495,
		-0.086771, -0.994618, -0.056618,
		0.396114, -0.086592, 0.914109,
		39.469955, 40.437248, 59.032585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786598, 40.114468, 58.792316>,  <39.192673, 40.497864, 58.392712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786598, 40.114468, 58.792316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.999084, 40.275414, 59.090553>,  <39.126575, 40.371983, 59.269497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.999084, 40.275414, 59.090553>,  <38.786598, 40.114468, 58.792316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999084, 40.275414, 59.090553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846194, 0.208308, 0.490472,
		0.042036, -0.891465, 0.451136,
		0.531214, 0.402366, 0.745596,
		39.158447, 40.396126, 59.314232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431812, 39.932423, 59.340092>,  <38.786598, 40.114468, 58.792316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431812, 39.932423, 59.340092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.674202, 40.224350, 59.466686>,  <38.819637, 40.399506, 59.542641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.674202, 40.224350, 59.466686>,  <38.431812, 39.932423, 59.340092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674202, 40.224350, 59.466686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777959, 0.460658, 0.427286,
		0.166049, -0.505136, 0.846915,
		0.605976, 0.729816, 0.316484,
		38.855995, 40.443295, 59.561630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024479, 39.623211, 59.477390>,  <38.431812, 39.932423, 59.340092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024479, 39.623211, 59.477390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677109, 39.432587, 59.422661>,  <38.468685, 39.318211, 59.389824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677109, 39.432587, 59.422661>,  <39.024479, 39.623211, 59.477390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677109, 39.432587, 59.422661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362864, -0.422831, -0.830388,
		0.337878, -0.770780, 0.540126,
		-0.868429, -0.476562, -0.136823,
		38.416580, 39.289619, 59.381615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301861, 38.920425, 59.336571>,  <39.024479, 39.623211, 59.477390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301861, 38.920425, 59.336571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.923771, 38.961845, 59.212753>,  <38.696915, 38.986698, 59.138462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.923771, 38.961845, 59.212753>,  <39.301861, 38.920425, 59.336571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923771, 38.961845, 59.212753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268941, -0.290340, -0.918354,
		-0.184966, -0.951305, 0.246590,
		-0.945229, 0.103546, -0.309547,
		38.640202, 38.992908, 59.119888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147125, 38.313477, 58.990265>,  <39.301861, 38.920425, 59.336571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147125, 38.313477, 58.990265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.884689, 38.563049, 58.820438>,  <38.727226, 38.712795, 58.718544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.884689, 38.563049, 58.820438>,  <39.147125, 38.313477, 58.990265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884689, 38.563049, 58.820438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236808, -0.363955, -0.900810,
		-0.716568, -0.691552, 0.091034,
		-0.656089, 0.623934, -0.424563,
		38.687862, 38.750229, 58.693069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767021, 37.882950, 58.583443>,  <39.147125, 38.313477, 58.990265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767021, 37.882950, 58.583443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698353, 38.225792, 58.389164>,  <38.657150, 38.431496, 58.272598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698353, 38.225792, 58.389164>,  <38.767021, 37.882950, 58.583443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698353, 38.225792, 58.389164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126844, -0.469677, -0.873678,
		-0.976954, -0.211595, -0.028087,
		-0.171674, 0.857106, -0.485693,
		38.646851, 38.482925, 58.243458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259602, 37.747520, 58.072422>,  <38.767021, 37.882950, 58.583443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259602, 37.747520, 58.072422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.424278, 38.092918, 57.955883>,  <38.523083, 38.300159, 57.885960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.424278, 38.092918, 57.955883>,  <38.259602, 37.747520, 58.072422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424278, 38.092918, 57.955883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013744, -0.313777, -0.949397,
		-0.911222, 0.394859, -0.117310,
		0.411687, 0.863499, -0.291348,
		38.547783, 38.351967, 57.868481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013279, 37.888992, 57.449364>,  <38.259602, 37.747520, 58.072422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013279, 37.888992, 57.449364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.329193, 38.134094, 57.438244>,  <38.518742, 38.281155, 57.431572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.329193, 38.134094, 57.438244>,  <38.013279, 37.888992, 57.449364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329193, 38.134094, 57.438244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212750, -0.316159, -0.924544,
		-0.575307, 0.724276, -0.380061,
		0.789784, 0.612755, -0.027799,
		38.566128, 38.317921, 57.429905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995808, 38.195274, 56.855053>,  <38.013279, 37.888992, 57.449364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995808, 38.195274, 56.855053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.378407, 38.256004, 56.954704>,  <38.607967, 38.292442, 57.014496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.378407, 38.256004, 56.954704>,  <37.995808, 38.195274, 56.855053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378407, 38.256004, 56.954704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285673, -0.314071, -0.905400,
		-0.059214, 0.937182, -0.343779,
		0.956496, 0.151821, 0.249130,
		38.665356, 38.301552, 57.029442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912716, 38.901176, 56.616596>,  <37.995808, 38.195274, 56.855053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912716, 38.901176, 56.616596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.566696, 38.903839, 56.415939>,  <37.359085, 38.905437, 56.295547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.566696, 38.903839, 56.415939>,  <37.912716, 38.901176, 56.616596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566696, 38.903839, 56.415939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489948, 0.203812, 0.847591,
		0.107879, 0.978988, -0.173048,
		-0.865051, 0.006653, -0.501640,
		37.307182, 38.905834, 56.265446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591309, 39.538517, 56.759464>,  <37.912716, 38.901176, 56.616596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591309, 39.538517, 56.759464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.307224, 39.277092, 56.654808>,  <37.136772, 39.120235, 56.592014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.307224, 39.277092, 56.654808>,  <37.591309, 39.538517, 56.759464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307224, 39.277092, 56.654808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576844, 0.327221, 0.748450,
		-0.403546, 0.682483, -0.609400,
		-0.710212, -0.653563, -0.261638,
		37.094162, 39.081024, 56.576317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001423, 39.860840, 56.670811>,  <37.591309, 39.538517, 56.759464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001423, 39.860840, 56.670811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864655, 39.490166, 56.733231>,  <36.782593, 39.267761, 56.770683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864655, 39.490166, 56.733231>,  <37.001423, 39.860840, 56.670811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864655, 39.490166, 56.733231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764259, 0.370841, 0.527623,
		-0.546807, 0.061143, -0.835023,
		-0.341921, -0.926682, 0.156049,
		36.762077, 39.212162, 56.780045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293739, 39.950447, 56.676025>,  <37.001423, 39.860840, 56.670811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293739, 39.950447, 56.676025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.316040, 39.585846, 56.839027>,  <36.329422, 39.367085, 56.936829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.316040, 39.585846, 56.839027>,  <36.293739, 39.950447, 56.676025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316040, 39.585846, 56.839027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758873, 0.226546, 0.610565,
		-0.648848, -0.343286, -0.679081,
		0.055755, -0.911500, 0.407504,
		36.332767, 39.312397, 56.961277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670876, 39.644272, 56.533390>,  <36.293739, 39.950447, 56.676025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670876, 39.644272, 56.533390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.845879, 39.471107, 56.848648>,  <35.950882, 39.367210, 57.037804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.845879, 39.471107, 56.848648>,  <35.670876, 39.644272, 56.533390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845879, 39.471107, 56.848648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719974, 0.356456, 0.595464,
		-0.538721, -0.827965, -0.155732,
		0.437512, -0.432912, 0.788144,
		35.977131, 39.341232, 57.085091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139252, 39.142681, 56.815060>,  <35.670876, 39.644272, 56.533390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139252, 39.142681, 56.815060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379097, 39.236290, 57.121181>,  <35.523003, 39.292454, 57.304855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379097, 39.236290, 57.121181>,  <35.139252, 39.142681, 56.815060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379097, 39.236290, 57.121181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790443, 0.322726, 0.520622,
		-0.125150, -0.917106, 0.378490,
		0.599614, 0.234020, 0.765309,
		35.558983, 39.306496, 57.350773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822613, 38.947342, 57.469090>,  <35.139252, 39.142681, 56.815060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822613, 38.947342, 57.469090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.091187, 39.214485, 57.597549>,  <35.252331, 39.374771, 57.674625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.091187, 39.214485, 57.597549>,  <34.822613, 38.947342, 57.469090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091187, 39.214485, 57.597549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691592, 0.409023, 0.595316,
		0.266228, -0.621823, 0.736518,
		0.671434, 0.667860, 0.321155,
		35.292618, 39.414845, 57.693893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674030, 39.034767, 58.158501>,  <34.822613, 38.947342, 57.469090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674030, 39.034767, 58.158501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921799, 39.340294, 58.085945>,  <35.070461, 39.523609, 58.042412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921799, 39.340294, 58.085945>,  <34.674030, 39.034767, 58.158501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921799, 39.340294, 58.085945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642488, 0.625986, 0.441984,
		0.451139, -0.157236, 0.878493,
		0.619421, 0.763818, -0.181385,
		35.107624, 39.569439, 58.031528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840218, 39.258957, 58.816040>,  <34.674030, 39.034767, 58.158501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840218, 39.258957, 58.816040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.881325, 39.557442, 58.552948>,  <34.905991, 39.736534, 58.395092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.881325, 39.557442, 58.552948>,  <34.840218, 39.258957, 58.816040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881325, 39.557442, 58.552948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574310, 0.584394, 0.573282,
		0.812162, 0.318823, 0.488615,
		0.102767, 0.746214, -0.657726,
		34.912155, 39.781307, 58.355629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.025188, 41.222382, 45.085281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.826851, 41.551689, 45.195827>,  <43.707848, 41.749271, 45.262154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.826851, 41.551689, 45.195827>,  <44.025188, 41.222382, 45.085281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826851, 41.551689, 45.195827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309882, -0.465023, 0.829293,
		0.811242, 0.325559, 0.485693,
		-0.495842, 0.823265, 0.276362,
		43.678097, 41.798668, 45.278736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128765, 41.320534, 45.855869>,  <44.025188, 41.222382, 45.085281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128765, 41.320534, 45.855869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.800232, 41.532257, 45.770782>,  <43.603111, 41.659290, 45.719730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.800232, 41.532257, 45.770782>,  <44.128765, 41.320534, 45.855869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800232, 41.532257, 45.770782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356875, -0.185846, 0.915479,
		0.445039, 0.827824, 0.341539,
		-0.821328, 0.529310, -0.212721,
		43.553833, 41.691051, 45.706966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982056, 41.611984, 46.445438>,  <44.128765, 41.320534, 45.855869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982056, 41.611984, 46.445438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.634327, 41.626419, 46.248264>,  <43.425690, 41.635078, 46.129959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.634327, 41.626419, 46.248264>,  <43.982056, 41.611984, 46.445438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634327, 41.626419, 46.248264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477663, -0.317577, 0.819136,
		-0.126984, 0.947546, 0.293313,
		-0.869318, 0.036088, -0.492934,
		43.373531, 41.637245, 46.100384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572571, 41.850964, 46.907772>,  <43.982056, 41.611984, 46.445438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572571, 41.850964, 46.907772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.309753, 41.690186, 46.652668>,  <43.152065, 41.593719, 46.499607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.309753, 41.690186, 46.652668>,  <43.572571, 41.850964, 46.907772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309753, 41.690186, 46.652668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593148, -0.246489, 0.766432,
		-0.465267, 0.881862, -0.076462,
		-0.657040, -0.401949, -0.637758,
		43.112640, 41.569599, 46.461342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906475, 42.033321, 47.214005>,  <43.572571, 41.850964, 46.907772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906475, 42.033321, 47.214005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.857513, 41.709015, 46.985031>,  <42.828136, 41.514431, 46.847649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.857513, 41.709015, 46.985031>,  <42.906475, 42.033321, 47.214005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857513, 41.709015, 46.985031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567126, -0.416189, 0.710743,
		-0.814484, 0.411642, -0.408860,
		-0.122408, -0.810764, -0.572432,
		42.820789, 41.465786, 46.813301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109150, 41.912804, 47.218601>,  <42.906475, 42.033321, 47.214005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109150, 41.912804, 47.218601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.296089, 41.572952, 47.120846>,  <42.408253, 41.369041, 47.062195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.296089, 41.572952, 47.120846>,  <42.109150, 41.912804, 47.218601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296089, 41.572952, 47.120846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631204, -0.514217, 0.580657,
		-0.619009, -0.117110, -0.776604,
		0.467343, -0.849627, -0.244385,
		42.436291, 41.318066, 47.047531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488853, 41.537281, 47.246166>,  <42.109150, 41.912804, 47.218601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488853, 41.537281, 47.246166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.799088, 41.284790, 47.247833>,  <41.985229, 41.133293, 47.248833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.799088, 41.284790, 47.247833>,  <41.488853, 41.537281, 47.246166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799088, 41.284790, 47.247833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512498, -0.625823, 0.587956,
		-0.368529, -0.458144, -0.808882,
		0.775585, -0.631229, 0.004163,
		42.031765, 41.095421, 47.249081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162651, 40.835278, 47.266102>,  <41.488853, 41.537281, 47.246166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162651, 40.835278, 47.266102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.541775, 40.797081, 47.387779>,  <41.769249, 40.774162, 47.460785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.541775, 40.797081, 47.387779>,  <41.162651, 40.835278, 47.266102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541775, 40.797081, 47.387779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297070, -0.610902, 0.733858,
		0.115755, -0.785926, -0.607388,
		0.947813, -0.095489, 0.304190,
		41.826118, 40.768433, 47.479034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320423, 40.081863, 47.210648>,  <41.162651, 40.835278, 47.266102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320423, 40.081863, 47.210648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.555977, 40.273575, 47.470959>,  <41.697311, 40.388599, 47.627144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.555977, 40.273575, 47.470959>,  <41.320423, 40.081863, 47.210648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555977, 40.273575, 47.470959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179463, -0.707556, 0.683489,
		0.788039, -0.519287, -0.330658,
		0.588886, 0.479275, 0.650775,
		41.732643, 40.417358, 47.666191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718407, 39.496258, 47.574162>,  <41.320423, 40.081863, 47.210648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718407, 39.496258, 47.574162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.700455, 39.828758, 47.795795>,  <41.689682, 40.028259, 47.928776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.700455, 39.828758, 47.795795>,  <41.718407, 39.496258, 47.574162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700455, 39.828758, 47.795795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183224, -0.552085, 0.813407,
		0.982046, -0.065014, 0.177084,
		-0.044883, 0.831250, 0.554084,
		41.686989, 40.078133, 47.962021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923321, 39.263992, 48.210110>,  <41.718407, 39.496258, 47.574162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923321, 39.263992, 48.210110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.800602, 39.623009, 48.336784>,  <41.726971, 39.838421, 48.412788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.800602, 39.623009, 48.336784>,  <41.923321, 39.263992, 48.210110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800602, 39.623009, 48.336784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259474, -0.398998, 0.879474,
		0.915724, 0.187649, 0.355301,
		-0.306796, 0.897546, 0.316682,
		41.708565, 39.892273, 48.431789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256184, 39.453259, 48.870510>,  <41.923321, 39.263992, 48.210110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256184, 39.453259, 48.870510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.906090, 39.641098, 48.824127>,  <41.696033, 39.753799, 48.796299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.906090, 39.641098, 48.824127>,  <42.256184, 39.453259, 48.870510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906090, 39.641098, 48.824127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279399, -0.295126, 0.913694,
		0.394845, 0.832094, 0.389509,
		-0.875233, 0.469596, -0.115957,
		41.643520, 39.781979, 48.789341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769600, 39.641132, 49.462112>,  <42.256184, 39.453259, 48.870510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769600, 39.641132, 49.462112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.977745, 39.311111, 49.550217>,  <43.102631, 39.113098, 49.603077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.977745, 39.311111, 49.550217>,  <42.769600, 39.641132, 49.462112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977745, 39.311111, 49.550217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717293, 0.282339, -0.637006,
		0.463375, 0.489463, 0.738722,
		0.520360, -0.825052, 0.220259,
		43.133854, 39.063595, 49.616295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500496, 39.833954, 49.665512>,  <42.769600, 39.641132, 49.462112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500496, 39.833954, 49.665512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.502609, 39.459175, 49.525734>,  <43.503876, 39.234310, 49.441868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.502609, 39.459175, 49.525734>,  <43.500496, 39.833954, 49.665512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502609, 39.459175, 49.525734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669287, 0.262950, -0.694919,
		0.742985, -0.230205, 0.628473,
		0.005283, -0.936943, -0.349441,
		43.504192, 39.178093, 49.420902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195385, 39.644226, 49.611115>,  <43.500496, 39.833954, 49.665512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195385, 39.644226, 49.611115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.001160, 39.380013, 49.382057>,  <43.884624, 39.221485, 49.244621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.001160, 39.380013, 49.382057>,  <44.195385, 39.644226, 49.611115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001160, 39.380013, 49.382057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671093, 0.138142, -0.728390,
		0.560233, -0.737977, 0.376203,
		-0.485566, -0.660535, -0.572643,
		43.855492, 39.181850, 49.210266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730953, 39.504578, 49.195442>,  <44.195385, 39.644226, 49.611115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730953, 39.504578, 49.195442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.422905, 39.331451, 49.008003>,  <44.238075, 39.227577, 48.895538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.422905, 39.331451, 49.008003>,  <44.730953, 39.504578, 49.195442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422905, 39.331451, 49.008003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521355, -0.003784, -0.853332,
		0.367560, -0.901476, 0.228564,
		-0.770123, -0.432813, -0.468597,
		44.191868, 39.201607, 48.867424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022396, 38.904369, 48.776756>,  <44.730953, 39.504578, 49.195442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022396, 38.904369, 48.776756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.671173, 39.000191, 48.611046>,  <44.460438, 39.057682, 48.511620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.671173, 39.000191, 48.611046>,  <45.022396, 38.904369, 48.776756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671173, 39.000191, 48.611046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425672, -0.004579, -0.904866,
		-0.218658, -0.970873, -0.097949,
		-0.878061, 0.239551, -0.414275,
		44.407753, 39.072056, 48.486763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022778, 38.416508, 48.300449>,  <45.022396, 38.904369, 48.776756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022778, 38.416508, 48.300449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.762253, 38.687012, 48.162773>,  <44.605938, 38.849316, 48.080170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.762253, 38.687012, 48.162773>,  <45.022778, 38.416508, 48.300449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762253, 38.687012, 48.162773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373789, -0.108807, -0.921109,
		-0.660362, -0.728581, -0.181912,
		-0.651309, 0.676262, -0.344188,
		44.566860, 38.889889, 48.059517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744236, 38.146435, 47.746124>,  <45.022778, 38.416508, 48.300449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744236, 38.146435, 47.746124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.683044, 38.537727, 47.690037>,  <44.646328, 38.772503, 47.656384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.683044, 38.537727, 47.690037>,  <44.744236, 38.146435, 47.746124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683044, 38.537727, 47.690037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460738, -0.054919, -0.885835,
		-0.874252, -0.200119, -0.442306,
		-0.152981, 0.978231, -0.140215,
		44.637150, 38.831196, 47.647972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562634, 38.215721, 46.946850>,  <44.744236, 38.146435, 47.746124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562634, 38.215721, 46.946850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.679077, 38.570602, 47.090031>,  <44.748943, 38.783531, 47.175938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.679077, 38.570602, 47.090031>,  <44.562634, 38.215721, 46.946850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679077, 38.570602, 47.090031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691605, 0.063353, -0.719492,
		-0.661012, 0.457010, -0.595151,
		0.291111, 0.887203, 0.357947,
		44.766411, 38.836761, 47.197414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617722, 38.670567, 46.277180>,  <44.562634, 38.215721, 46.946850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617722, 38.670567, 46.277180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.809021, 38.880150, 46.559101>,  <44.923801, 39.005901, 46.728252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.809021, 38.880150, 46.559101>,  <44.617722, 38.670567, 46.277180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809021, 38.880150, 46.559101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624839, 0.360935, -0.692316,
		-0.617133, 0.771487, -0.154773,
		0.478250, 0.523959, 0.704800,
		44.952496, 39.037338, 46.770542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634357, 39.258175, 45.973152>,  <44.617722, 38.670567, 46.277180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634357, 39.258175, 45.973152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.894897, 39.270546, 46.276409>,  <45.051220, 39.277969, 46.458363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.894897, 39.270546, 46.276409>,  <44.634357, 39.258175, 45.973152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894897, 39.270546, 46.276409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687178, 0.399657, -0.606680,
		-0.321760, 0.916143, 0.239066,
		0.651350, 0.030924, 0.758147,
		45.090302, 39.279823, 46.503853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786671, 39.899296, 46.038979>,  <44.634357, 39.258175, 45.973152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786671, 39.899296, 46.038979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.113312, 39.714294, 46.177109>,  <45.309296, 39.603294, 46.259987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.113312, 39.714294, 46.177109>,  <44.786671, 39.899296, 46.038979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113312, 39.714294, 46.177109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534848, 0.381373, -0.753984,
		0.217022, 0.800403, 0.558799,
		0.816602, -0.462504, 0.345328,
		45.358292, 39.575542, 46.280708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373657, 40.373550, 45.959023>,  <44.786671, 39.899296, 46.038979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373657, 40.373550, 45.959023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.598389, 40.053185, 46.041862>,  <45.733227, 39.860966, 46.091568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.598389, 40.053185, 46.041862>,  <45.373657, 40.373550, 45.959023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598389, 40.053185, 46.041862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704115, 0.331553, -0.627929,
		0.434252, 0.498609, 0.750209,
		0.561825, -0.800913, 0.207101,
		45.766937, 39.812912, 46.103992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970207, 40.565056, 46.322575>,  <45.373657, 40.373550, 45.959023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970207, 40.565056, 46.322575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.041130, 40.245407, 46.092804>,  <46.083683, 40.053616, 45.954941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.041130, 40.245407, 46.092804>,  <45.970207, 40.565056, 46.322575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041130, 40.245407, 46.092804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803451, 0.454612, -0.384441,
		0.568355, -0.393356, 0.722664,
		0.177309, -0.799124, -0.574423,
		46.094322, 40.005669, 45.920475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742855, 40.372856, 46.417488>,  <45.970207, 40.565056, 46.322575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742855, 40.372856, 46.417488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.651176, 40.211639, 46.063080>,  <46.596169, 40.114910, 45.850437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.651176, 40.211639, 46.063080>,  <46.742855, 40.372856, 46.417488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651176, 40.211639, 46.063080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924739, 0.193991, -0.327454,
		0.303858, -0.894384, 0.328249,
		-0.229192, -0.403044, -0.886017,
		46.582420, 40.090725, 45.797276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.205265, 39.804890, 46.153290>,  <46.742855, 40.372856, 46.417488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.205265, 39.804890, 46.153290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.057526, 39.992615, 45.832458>,  <46.968880, 40.105247, 45.639961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.057526, 39.992615, 45.832458>,  <47.205265, 39.804890, 46.153290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057526, 39.992615, 45.832458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911064, 0.012776, -0.412066,
		-0.183140, -0.882940, -0.432292,
		-0.369353, 0.469311, -0.802076,
		46.946720, 40.133408, 45.591835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.562992, 40.008404, 46.735786>,  <47.205265, 39.804890, 46.153290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.562992, 40.008404, 46.735786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.583389, 40.402420, 46.801624>,  <47.595627, 40.638832, 46.841125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.583389, 40.402420, 46.801624>,  <47.562992, 40.008404, 46.735786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583389, 40.402420, 46.801624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274829, -0.172282, 0.945932,
		0.960140, -0.002999, -0.279503,
		0.050990, 0.985043, 0.164591,
		47.598686, 40.697933, 46.851002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.262173, 40.195606, 46.993851>,  <47.562992, 40.008404, 46.735786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.262173, 40.195606, 46.993851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.959641, 40.430817, 47.108532>,  <47.778122, 40.571941, 47.177341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.959641, 40.430817, 47.108532>,  <48.262173, 40.195606, 46.993851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.959641, 40.430817, 47.108532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220089, -0.183990, 0.957971,
		0.616059, 0.787640, 0.009739,
		-0.756328, 0.588023, 0.286700,
		47.732742, 40.607224, 47.194542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.571304, 40.457607, 47.599220>,  <48.262173, 40.195606, 46.993851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.571304, 40.457607, 47.599220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.180397, 40.533142, 47.637775>,  <47.945854, 40.578465, 47.660908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.180397, 40.533142, 47.637775>,  <48.571304, 40.457607, 47.599220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.180397, 40.533142, 47.637775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057608, -0.201017, 0.977892,
		0.204042, 0.961213, 0.185568,
		-0.977266, 0.188841, 0.096389,
		47.887218, 40.589794, 47.666691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.559505, 40.793747, 48.222565>,  <48.571304, 40.457607, 47.599220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.559505, 40.793747, 48.222565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.197975, 40.635422, 48.157539>,  <47.981056, 40.540428, 48.118523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.197975, 40.635422, 48.157539>,  <48.559505, 40.793747, 48.222565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.197975, 40.635422, 48.157539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053395, -0.272623, 0.960638,
		-0.424551, 0.876932, 0.225270,
		-0.903828, -0.395811, -0.162566,
		47.926826, 40.516678, 48.108768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.069500, 41.165585, 48.749657>,  <48.559505, 40.793747, 48.222565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.069500, 41.165585, 48.749657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.893517, 40.831772, 48.617001>,  <47.787926, 40.631485, 48.537407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.893517, 40.831772, 48.617001>,  <48.069500, 41.165585, 48.749657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.893517, 40.831772, 48.617001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394410, -0.152200, 0.906242,
		-0.806767, 0.529514, -0.262187,
		-0.439963, -0.834536, -0.331636,
		47.761528, 40.581409, 48.517509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.413761, 41.272114, 48.943417>,  <48.069500, 41.165585, 48.749657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.413761, 41.272114, 48.943417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.449539, 40.876099, 48.899914>,  <47.471004, 40.638489, 48.873814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.449539, 40.876099, 48.899914>,  <47.413761, 41.272114, 48.943417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.449539, 40.876099, 48.899914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238120, -0.127285, 0.962859,
		-0.967108, -0.060226, -0.247132,
		0.089445, -0.990036, -0.108757,
		47.476372, 40.579086, 48.867287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778828, 40.960213, 49.349712>,  <47.413761, 41.272114, 48.943417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778828, 40.960213, 49.349712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.029396, 40.654808, 49.286919>,  <47.179737, 40.471565, 49.249245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.029396, 40.654808, 49.286919>,  <46.778828, 40.960213, 49.349712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029396, 40.654808, 49.286919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061782, -0.249389, 0.966431,
		-0.777033, -0.595693, -0.203393,
		0.626420, -0.763515, -0.156981,
		47.217323, 40.425755, 49.239826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392117, 40.410839, 49.513031>,  <46.778828, 40.960213, 49.349712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392117, 40.410839, 49.513031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.766731, 40.271660, 49.530140>,  <46.991501, 40.188152, 49.540405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.766731, 40.271660, 49.530140>,  <46.392117, 40.410839, 49.513031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.766731, 40.271660, 49.530140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199040, -0.427322, 0.881918,
		-0.288577, -0.834465, -0.469458,
		0.936539, -0.347942, 0.042777,
		47.047691, 40.167278, 49.542973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382057, 39.752563, 49.559692>,  <46.392117, 40.410839, 49.513031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382057, 39.752563, 49.559692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.729729, 39.830688, 49.741409>,  <46.938332, 39.877563, 49.850441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.729729, 39.830688, 49.741409>,  <46.382057, 39.752563, 49.559692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729729, 39.830688, 49.741409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362639, -0.372813, 0.854110,
		0.336188, -0.907117, -0.253211,
		0.869178, 0.195317, 0.454291,
		46.990482, 39.889282, 49.877697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.465797, 39.176037, 50.087654>,  <46.382057, 39.752563, 49.559692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.465797, 39.176037, 50.087654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.719139, 39.463303, 50.202969>,  <46.871143, 39.635662, 50.272156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.719139, 39.463303, 50.202969>,  <46.465797, 39.176037, 50.087654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719139, 39.463303, 50.202969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358608, -0.057745, 0.931700,
		0.685761, -0.693473, 0.220967,
		0.633350, 0.718165, 0.288284,
		46.909145, 39.678753, 50.289455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.937653, 38.900620, 50.617466>,  <46.465797, 39.176037, 50.087654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.937653, 38.900620, 50.617466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.901276, 39.294456, 50.677200>,  <46.879448, 39.530758, 50.713043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.901276, 39.294456, 50.677200>,  <46.937653, 38.900620, 50.617466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.901276, 39.294456, 50.677200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351179, -0.172033, 0.920368,
		0.931881, 0.031256, 0.361415,
		-0.090942, 0.984595, 0.149338,
		46.873993, 39.589836, 50.722000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.311657, 39.081886, 51.233509>,  <46.937653, 38.900620, 50.617466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.311657, 39.081886, 51.233509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.065689, 39.387840, 51.156761>,  <46.918106, 39.571415, 51.110714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.065689, 39.387840, 51.156761>,  <47.311657, 39.081886, 51.233509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.065689, 39.387840, 51.156761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246463, 0.044709, 0.968121,
		0.749083, 0.642609, 0.161024,
		-0.614923, 0.764889, -0.191870,
		46.881210, 39.617306, 51.099201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394981, 39.475819, 51.812698>,  <47.311657, 39.081886, 51.233509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.394981, 39.475819, 51.812698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.057579, 39.624916, 51.658005>,  <46.855137, 39.714375, 51.565189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.057579, 39.624916, 51.658005>,  <47.394981, 39.475819, 51.812698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057579, 39.624916, 51.658005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384206, 0.084432, 0.919379,
		0.375343, 0.924086, 0.071991,
		-0.843506, 0.372742, -0.386730,
		46.804527, 39.736740, 51.541985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.299095, 39.989384, 52.333065>,  <47.394981, 39.475819, 51.812698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.299095, 39.989384, 52.333065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.949394, 39.912666, 52.154671>,  <46.739574, 39.866634, 52.047634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.949394, 39.912666, 52.154671>,  <47.299095, 39.989384, 52.333065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.949394, 39.912666, 52.154671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460642, 0.037672, 0.886786,
		-0.153279, 0.980712, -0.121283,
		-0.874251, -0.191794, -0.445983,
		46.687119, 39.855129, 52.020874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763695, 40.358555, 52.781063>,  <47.299095, 39.989384, 52.333065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763695, 40.358555, 52.781063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.535065, 40.146881, 52.530220>,  <46.397884, 40.019878, 52.379715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.535065, 40.146881, 52.530220>,  <46.763695, 40.358555, 52.781063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.535065, 40.146881, 52.530220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685963, -0.111232, 0.719084,
		-0.450281, 0.841186, -0.299422,
		-0.571578, -0.529182, -0.627108,
		46.363590, 39.988125, 52.342087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048054, 40.701244, 52.674778>,  <46.763695, 40.358555, 52.781063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048054, 40.701244, 52.674778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.041451, 40.306801, 52.608677>,  <46.037491, 40.070133, 52.569016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.041451, 40.306801, 52.608677>,  <46.048054, 40.701244, 52.674778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041451, 40.306801, 52.608677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589652, -0.123875, 0.798101,
		-0.807489, 0.110615, -0.579419,
		-0.016506, -0.986114, -0.165252,
		46.036499, 40.010967, 52.559101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298912, 40.508533, 52.689312>,  <46.048054, 40.701244, 52.674778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298912, 40.508533, 52.689312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.453438, 40.143372, 52.742012>,  <45.546154, 39.924274, 52.773632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.453438, 40.143372, 52.742012>,  <45.298912, 40.508533, 52.689312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453438, 40.143372, 52.742012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669419, -0.179230, 0.720940,
		-0.634538, -0.366708, -0.680358,
		0.386315, -0.912908, 0.131753,
		45.569332, 39.869499, 52.781540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753819, 40.067883, 52.561234>,  <45.298912, 40.508533, 52.689312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753819, 40.067883, 52.561234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.012962, 39.862419, 52.786243>,  <45.168449, 39.739140, 52.921249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.012962, 39.862419, 52.786243>,  <44.753819, 40.067883, 52.561234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012962, 39.862419, 52.786243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702509, -0.117333, 0.701936,
		-0.294555, -0.849932, -0.436867,
		0.647857, -0.513661, 0.562524,
		45.207321, 39.708321, 52.955002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423439, 39.442005, 52.726852>,  <44.753819, 40.067883, 52.561234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423439, 39.442005, 52.726852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.700169, 39.528465, 53.002434>,  <44.866207, 39.580341, 53.167782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.700169, 39.528465, 53.002434>,  <44.423439, 39.442005, 52.726852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700169, 39.528465, 53.002434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655559, -0.211954, 0.724788,
		0.302688, -0.953077, -0.004937,
		0.691825, 0.216149, 0.688954,
		44.907715, 39.593311, 53.209122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284107, 38.977268, 53.275597>,  <44.423439, 39.442005, 52.726852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284107, 38.977268, 53.275597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.486332, 39.266083, 53.464520>,  <44.607666, 39.439373, 53.577873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.486332, 39.266083, 53.464520>,  <44.284107, 38.977268, 53.275597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486332, 39.266083, 53.464520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575909, -0.125202, 0.807869,
		0.642444, -0.680433, 0.352530,
		0.505564, 0.722036, 0.472303,
		44.638000, 39.482693, 53.606209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283356, 38.707680, 53.960018>,  <44.284107, 38.977268, 53.275597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283356, 38.707680, 53.960018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.373306, 39.096436, 53.987926>,  <44.427277, 39.329689, 54.004673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.373306, 39.096436, 53.987926>,  <44.283356, 38.707680, 53.960018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373306, 39.096436, 53.987926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575061, 0.074572, 0.814705,
		0.786597, -0.223332, 0.575663,
		0.224878, 0.971886, 0.069772,
		44.440769, 39.388000, 54.008858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429234, 38.821121, 54.665092>,  <44.283356, 38.707680, 53.960018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429234, 38.821121, 54.665092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.333183, 39.177528, 54.510990>,  <44.275555, 39.391373, 54.418530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.333183, 39.177528, 54.510990>,  <44.429234, 38.821121, 54.665092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333183, 39.177528, 54.510990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386834, 0.276168, 0.879824,
		0.890337, 0.360298, 0.278362,
		-0.240124, 0.891020, -0.385258,
		44.261147, 39.444836, 54.395412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632874, 39.351078, 55.163368>,  <44.429234, 38.821121, 54.665092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632874, 39.351078, 55.163368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.362576, 39.528526, 54.927891>,  <44.200397, 39.634995, 54.786602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.362576, 39.528526, 54.927891>,  <44.632874, 39.351078, 55.163368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362576, 39.528526, 54.927891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429986, 0.411456, 0.803627,
		0.598733, 0.796179, -0.087287,
		-0.675745, 0.443625, -0.588698,
		44.159851, 39.661613, 54.751282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467388, 39.959137, 55.437504>,  <44.632874, 39.351078, 55.163368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467388, 39.959137, 55.437504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.149483, 39.939713, 55.195515>,  <43.958740, 39.928059, 55.050320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.149483, 39.939713, 55.195515>,  <44.467388, 39.959137, 55.437504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149483, 39.939713, 55.195515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523238, 0.559908, 0.642437,
		0.307535, 0.827130, -0.470402,
		-0.794761, -0.048560, -0.604977,
		43.911053, 39.925144, 55.014023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225948, 40.601284, 55.356808>,  <44.467388, 39.959137, 55.437504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225948, 40.601284, 55.356808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.919956, 40.366470, 55.250832>,  <43.736362, 40.225582, 55.187244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.919956, 40.366470, 55.250832>,  <44.225948, 40.601284, 55.356808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919956, 40.366470, 55.250832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572159, 0.430553, 0.698039,
		-0.295700, 0.685576, -0.665242,
		-0.764981, -0.587034, -0.264944,
		43.690460, 40.190361, 55.171349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568348, 40.998268, 55.296276>,  <44.225948, 40.601284, 55.356808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568348, 40.998268, 55.296276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.416573, 40.630829, 55.340466>,  <43.325508, 40.410366, 55.366978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.416573, 40.630829, 55.340466>,  <43.568348, 40.998268, 55.296276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416573, 40.630829, 55.340466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658182, 0.351914, 0.665548,
		-0.650246, 0.179827, -0.738134,
		-0.379443, -0.918596, 0.110472,
		43.302738, 40.355251, 55.373608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784760, 41.110085, 55.260777>,  <43.568348, 40.998268, 55.296276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784760, 41.110085, 55.260777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.829376, 40.751236, 55.431767>,  <42.856144, 40.535927, 55.534359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.829376, 40.751236, 55.431767>,  <42.784760, 41.110085, 55.260777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829376, 40.751236, 55.431767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568815, 0.295087, 0.767706,
		-0.814867, -0.328780, -0.477384,
		0.111537, -0.897122, 0.427472,
		42.862839, 40.482098, 55.560009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576111, 41.549446, 54.649750>,  <42.784760, 41.110085, 55.260777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576111, 41.549446, 54.649750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.406334, 41.906403, 54.588444>,  <42.304470, 42.120575, 54.551659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.406334, 41.906403, 54.588444>,  <42.576111, 41.549446, 54.649750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406334, 41.906403, 54.588444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691912, 0.210475, -0.690621,
		-0.584047, -0.399171, -0.706790,
		-0.424438, 0.892392, -0.153263,
		42.279003, 42.174122, 54.542465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484509, 41.629074, 53.899513>,  <42.576111, 41.549446, 54.649750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484509, 41.629074, 53.899513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.452003, 41.999680, 54.046463>,  <42.432503, 42.222042, 54.134632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.452003, 41.999680, 54.046463>,  <42.484509, 41.629074, 53.899513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452003, 41.999680, 54.046463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588293, 0.342121, -0.732710,
		-0.804555, 0.156582, -0.572865,
		-0.081260, 0.926518, 0.367371,
		42.427624, 42.277634, 54.156673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203529, 42.099201, 53.340954>,  <42.484509, 41.629074, 53.899513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203529, 42.099201, 53.340954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.416748, 42.295822, 53.616413>,  <42.544682, 42.413795, 53.781689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.416748, 42.295822, 53.616413>,  <42.203529, 42.099201, 53.340954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416748, 42.295822, 53.616413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591099, 0.365989, -0.718787,
		-0.605360, 0.790206, -0.095467,
		0.533050, 0.491555, 0.688645,
		42.576664, 42.443287, 53.823006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321144, 42.772541, 53.063992>,  <42.203529, 42.099201, 53.340954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321144, 42.772541, 53.063992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.599186, 42.768173, 53.351524>,  <42.766010, 42.765553, 53.524044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.599186, 42.768173, 53.351524>,  <42.321144, 42.772541, 53.063992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599186, 42.768173, 53.351524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685838, 0.309867, -0.658490,
		-0.215551, 0.950717, 0.222878,
		0.695100, -0.010920, 0.718830,
		42.807716, 42.764896, 53.567173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451580, 43.452175, 53.220551>,  <42.321144, 42.772541, 53.063992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451580, 43.452175, 53.220551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.788868, 43.281082, 53.350796>,  <42.991241, 43.178425, 53.428944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.788868, 43.281082, 53.350796>,  <42.451580, 43.452175, 53.220551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788868, 43.281082, 53.350796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497596, 0.391845, -0.773858,
		0.203414, 0.814557, 0.543249,
		0.843221, -0.427732, 0.325613,
		43.041836, 43.152763, 53.448479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
