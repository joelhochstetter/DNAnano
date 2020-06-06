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
	<43.499722, 32.266453, 23.299143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138996, 32.340611, 23.455276>,  <42.922562, 32.385105, 23.548956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138996, 32.340611, 23.455276>,  <43.499722, 32.266453, 23.299143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138996, 32.340611, 23.455276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412629, -0.637706, -0.650438,
		0.128330, -0.747637, 0.651591,
		-0.901814, 0.185395, 0.390333,
		42.868450, 32.396229, 23.572376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284691, 32.877567, 22.891237>,  <43.499722, 32.266453, 23.299143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284691, 32.877567, 22.891237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340527, 33.007057, 22.516918>,  <43.374027, 33.084751, 22.292326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340527, 33.007057, 22.516918>,  <43.284691, 32.877567, 22.891237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340527, 33.007057, 22.516918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989203, -0.002972, 0.146522,
		0.044652, -0.946146, -0.320647,
		0.139585, 0.323727, -0.935797,
		43.382401, 33.104176, 22.236179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832172, 32.325897, 22.742851>,  <43.284691, 32.877567, 22.891237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832172, 32.325897, 22.742851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035580, 31.988495, 22.812027>,  <43.157623, 31.786053, 22.853533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035580, 31.988495, 22.812027>,  <42.832172, 32.325897, 22.742851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035580, 31.988495, 22.812027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043734, 0.225887, 0.973171,
		-0.859942, -0.487309, 0.151757,
		0.508515, -0.843508, 0.172937,
		43.188133, 31.735443, 22.863909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407761, 31.966644, 23.147907>,  <42.832172, 32.325897, 22.742851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407761, 31.966644, 23.147907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788906, 31.890301, 23.242245>,  <43.017593, 31.844494, 23.298847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788906, 31.890301, 23.242245>,  <42.407761, 31.966644, 23.147907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788906, 31.890301, 23.242245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180375, 0.268683, 0.946189,
		-0.243958, -0.944130, 0.221591,
		0.952864, -0.190860, 0.235845,
		43.074764, 31.833042, 23.312998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471539, 31.548725, 23.787149>,  <42.407761, 31.966644, 23.147907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471539, 31.548725, 23.787149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123554, 31.745941, 23.790672>,  <41.914764, 31.864271, 23.792786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123554, 31.745941, 23.790672>,  <42.471539, 31.548725, 23.787149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123554, 31.745941, 23.790672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065381, 0.097624, 0.993074,
		0.488765, 0.864512, -0.117165,
		-0.869962, 0.493040, 0.008807,
		41.862564, 31.893854, 23.793314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495899, 32.187981, 24.167107>,  <42.471539, 31.548725, 23.787149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495899, 32.187981, 24.167107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101288, 32.123043, 24.159073>,  <41.864521, 32.084080, 24.154253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101288, 32.123043, 24.159073>,  <42.495899, 32.187981, 24.167107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101288, 32.123043, 24.159073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047775, 0.168510, 0.984541,
		-0.156447, 0.972240, -0.173996,
		-0.986530, -0.162341, -0.020086,
		41.805328, 32.074341, 24.153048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219170, 32.691837, 24.606201>,  <42.495899, 32.187981, 24.167107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219170, 32.691837, 24.606201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953648, 32.394432, 24.573803>,  <41.794334, 32.215988, 24.554365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953648, 32.394432, 24.573803>,  <42.219170, 32.691837, 24.606201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953648, 32.394432, 24.573803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046389, -0.149016, 0.987746,
		-0.746467, 0.651912, 0.133408,
		-0.663804, -0.743509, -0.080994,
		41.754505, 32.171379, 24.549505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900749, 32.931740, 25.210772>,  <42.219170, 32.691837, 24.606201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900749, 32.931740, 25.210772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781071, 32.556881, 25.138950>,  <41.709263, 32.331966, 25.095858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781071, 32.556881, 25.138950>,  <41.900749, 32.931740, 25.210772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781071, 32.556881, 25.138950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022943, -0.195184, 0.980498,
		-0.953917, 0.289239, 0.079899,
		-0.299194, -0.937147, -0.179553,
		41.691311, 32.275738, 25.085085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422665, 32.783531, 25.725246>,  <41.900749, 32.931740, 25.210772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422665, 32.783531, 25.725246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572880, 32.449856, 25.563702>,  <41.663010, 32.249649, 25.466776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572880, 32.449856, 25.563702>,  <41.422665, 32.783531, 25.725246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572880, 32.449856, 25.563702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108978, -0.392988, 0.913063,
		-0.920379, -0.386898, -0.056672,
		0.375534, -0.834189, -0.403861,
		41.685539, 32.199600, 25.442543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118858, 32.222980, 26.095119>,  <41.422665, 32.783531, 25.725246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118858, 32.222980, 26.095119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464592, 32.094719, 25.940140>,  <41.672031, 32.017761, 25.847153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464592, 32.094719, 25.940140>,  <41.118858, 32.222980, 26.095119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464592, 32.094719, 25.940140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263164, -0.368148, 0.891747,
		-0.428579, -0.872726, -0.233817,
		0.864329, -0.320652, -0.387450,
		41.723892, 31.998524, 25.823904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168007, 31.506039, 26.294724>,  <41.118858, 32.222980, 26.095119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168007, 31.506039, 26.294724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536106, 31.604252, 26.172829>,  <41.756966, 31.663179, 26.099691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536106, 31.604252, 26.172829>,  <41.168007, 31.506039, 26.294724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536106, 31.604252, 26.172829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358239, -0.215075, 0.908519,
		0.157530, -0.945228, -0.285882,
		0.920244, 0.245533, -0.304737,
		41.812180, 31.677912, 26.081408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589725, 30.991304, 26.623299>,  <41.168007, 31.506039, 26.294724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589725, 30.991304, 26.623299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850494, 31.284565, 26.545849>,  <42.006954, 31.460522, 26.499378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850494, 31.284565, 26.545849>,  <41.589725, 30.991304, 26.623299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850494, 31.284565, 26.545849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406448, -0.122283, 0.905454,
		0.640158, -0.668981, -0.377707,
		0.651919, 0.733151, -0.193626,
		42.046070, 31.504511, 26.487761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306698, 30.714695, 26.871357>,  <41.589725, 30.991304, 26.623299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306698, 30.714695, 26.871357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309772, 31.113796, 26.844730>,  <42.311615, 31.353256, 26.828754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309772, 31.113796, 26.844730>,  <42.306698, 30.714695, 26.871357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309772, 31.113796, 26.844730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558114, 0.050957, 0.828198,
		0.829729, -0.043514, -0.556468,
		0.007682, 0.997752, -0.066566,
		42.312077, 31.413122, 26.824760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000187, 30.900732, 27.006683>,  <42.306698, 30.714695, 26.871357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000187, 30.900732, 27.006683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796856, 31.239792, 27.067467>,  <42.674858, 31.443228, 27.103937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796856, 31.239792, 27.067467>,  <43.000187, 30.900732, 27.006683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796856, 31.239792, 27.067467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303594, 0.011264, 0.952735,
		0.805872, 0.530439, -0.263067,
		-0.508331, 0.847648, 0.151961,
		42.644356, 31.494087, 27.113054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443893, 31.303574, 27.354650>,  <43.000187, 30.900732, 27.006683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443893, 31.303574, 27.354650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083099, 31.462631, 27.421947>,  <42.866623, 31.558065, 27.462326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083099, 31.462631, 27.421947>,  <43.443893, 31.303574, 27.354650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083099, 31.462631, 27.421947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273313, 0.224181, 0.935437,
		0.334255, 0.889731, -0.310889,
		-0.901983, 0.397645, 0.168242,
		42.812504, 31.581924, 27.472420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627102, 31.873686, 27.744116>,  <43.443893, 31.303574, 27.354650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627102, 31.873686, 27.744116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242611, 31.799088, 27.825363>,  <43.011917, 31.754330, 27.874111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242611, 31.799088, 27.825363>,  <43.627102, 31.873686, 27.744116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242611, 31.799088, 27.825363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177643, 0.144577, 0.973417,
		-0.210903, 0.971760, -0.105842,
		-0.961230, -0.186494, 0.203119,
		42.954243, 31.743139, 27.886299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464039, 32.290939, 28.324987>,  <43.627102, 31.873686, 27.744116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464039, 32.290939, 28.324987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185436, 32.005295, 28.353054>,  <43.018276, 31.833908, 28.369894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185436, 32.005295, 28.353054>,  <43.464039, 32.290939, 28.324987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185436, 32.005295, 28.353054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322932, -0.224636, 0.919377,
		-0.640777, 0.663010, 0.387070,
		-0.696505, -0.714113, 0.070166,
		42.976486, 31.791061, 28.374104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287361, 32.243378, 29.038973>,  <43.464039, 32.290939, 28.324987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287361, 32.243378, 29.038973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129215, 31.904655, 28.896648>,  <43.034328, 31.701422, 28.811253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129215, 31.904655, 28.896648>,  <43.287361, 32.243378, 29.038973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129215, 31.904655, 28.896648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078681, -0.417173, 0.905415,
		-0.915147, 0.329975, 0.231564,
		-0.395367, -0.846807, -0.355812,
		43.010605, 31.650614, 28.789906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719234, 32.035263, 29.502554>,  <43.287361, 32.243378, 29.038973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719234, 32.035263, 29.502554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860535, 31.709610, 29.318207>,  <42.945316, 31.514217, 29.207600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860535, 31.709610, 29.318207>,  <42.719234, 32.035263, 29.502554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860535, 31.709610, 29.318207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047798, -0.476278, 0.877994,
		-0.934306, -0.332183, -0.129333,
		0.353253, -0.814134, -0.460867,
		42.966511, 31.465370, 29.179947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345844, 31.533337, 29.862986>,  <42.719234, 32.035263, 29.502554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345844, 31.533337, 29.862986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631298, 31.320759, 29.680428>,  <42.802570, 31.193213, 29.570892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631298, 31.320759, 29.680428>,  <42.345844, 31.533337, 29.862986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631298, 31.320759, 29.680428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059005, -0.694793, 0.716785,
		-0.698051, -0.484576, -0.527173,
		0.713613, -0.531458, -0.456409,
		42.845387, 31.161325, 29.543509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186760, 30.872780, 29.986816>,  <42.345844, 31.533337, 29.862986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186760, 30.872780, 29.986816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569126, 30.824795, 29.879608>,  <42.798546, 30.796003, 29.815283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569126, 30.824795, 29.879608>,  <42.186760, 30.872780, 29.986816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569126, 30.824795, 29.879608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121251, -0.670039, 0.732356,
		-0.267437, -0.732568, -0.625956,
		0.955916, -0.119962, -0.268018,
		42.855900, 30.788807, 29.799202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266693, 30.167948, 29.844376>,  <42.186760, 30.872780, 29.986816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266693, 30.167948, 29.844376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607700, 30.346252, 29.953564>,  <42.812305, 30.453236, 30.019077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607700, 30.346252, 29.953564>,  <42.266693, 30.167948, 29.844376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607700, 30.346252, 29.953564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102945, -0.655189, 0.748418,
		0.512465, -0.609937, -0.604447,
		0.852515, 0.445763, 0.272971,
		42.863457, 30.479980, 30.035456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641491, 29.642467, 30.125433>,  <42.266693, 30.167948, 29.844376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641491, 29.642467, 30.125433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861763, 29.946507, 30.263420>,  <42.993927, 30.128929, 30.346212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861763, 29.946507, 30.263420>,  <42.641491, 29.642467, 30.125433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861763, 29.946507, 30.263420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217077, -0.529463, 0.820089,
		0.805994, -0.376725, -0.456565,
		0.550682, 0.760097, 0.344966,
		43.026966, 30.174536, 30.366909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220390, 29.373852, 30.426247>,  <42.641491, 29.642467, 30.125433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220390, 29.373852, 30.426247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173012, 29.732384, 30.597157>,  <43.144585, 29.947502, 30.699703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173012, 29.732384, 30.597157>,  <43.220390, 29.373852, 30.426247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173012, 29.732384, 30.597157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123216, -0.440246, 0.889382,
		0.985286, 0.052695, 0.162587,
		-0.118444, 0.896330, 0.427276,
		43.137478, 30.001282, 30.725340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672955, 29.423559, 30.926247>,  <43.220390, 29.373852, 30.426247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672955, 29.423559, 30.926247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399715, 29.704185, 31.007423>,  <43.235771, 29.872561, 31.056129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399715, 29.704185, 31.007423>,  <43.672955, 29.423559, 30.926247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399715, 29.704185, 31.007423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216104, -0.459600, 0.861433,
		0.697623, 0.544585, 0.465562,
		-0.683096, 0.701566, 0.202941,
		43.194786, 29.914656, 31.068306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814781, 29.792843, 31.612066>,  <43.672955, 29.423559, 30.926247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814781, 29.792843, 31.612066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421413, 29.793320, 31.539524>,  <43.185394, 29.793606, 31.495998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421413, 29.793320, 31.539524>,  <43.814781, 29.792843, 31.612066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421413, 29.793320, 31.539524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165749, -0.411811, 0.896068,
		-0.073616, 0.911268, 0.405180,
		-0.983416, 0.001193, -0.181358,
		43.126389, 29.793678, 31.485117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326004, 30.134369, 32.164021>,  <43.814781, 29.792843, 31.612066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326004, 30.134369, 32.164021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091187, 29.867577, 31.980488>,  <42.950298, 29.707502, 31.870369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091187, 29.867577, 31.980488>,  <43.326004, 30.134369, 32.164021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091187, 29.867577, 31.980488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316723, -0.332370, 0.888379,
		-0.745031, 0.666835, -0.016133,
		-0.587040, -0.666979, -0.458828,
		42.915073, 29.667482, 31.842840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507664, 30.055632, 32.432693>,  <43.326004, 30.134369, 32.164021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507664, 30.055632, 32.432693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629276, 29.697277, 32.303108>,  <42.702244, 29.482265, 32.225357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629276, 29.697277, 32.303108>,  <42.507664, 30.055632, 32.432693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629276, 29.697277, 32.303108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312181, -0.414981, 0.854596,
		-0.900059, -0.158689, -0.405846,
		0.304034, -0.895884, -0.323968,
		42.720486, 29.428513, 32.205917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922764, 29.542854, 32.498131>,  <42.507664, 30.055632, 32.432693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922764, 29.542854, 32.498131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283916, 29.371479, 32.512260>,  <42.500607, 29.268654, 32.520737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283916, 29.371479, 32.512260>,  <41.922764, 29.542854, 32.498131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283916, 29.371479, 32.512260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302856, -0.575614, 0.759570,
		-0.305095, -0.696499, -0.649466,
		0.902882, -0.428436, 0.035322,
		42.554779, 29.242949, 32.522858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797176, 28.725325, 32.414867>,  <41.922764, 29.542854, 32.498131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797176, 28.725325, 32.414867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119408, 28.809952, 32.636242>,  <42.312744, 28.860729, 32.769066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119408, 28.809952, 32.636242>,  <41.797176, 28.725325, 32.414867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119408, 28.809952, 32.636242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279967, -0.687291, 0.670261,
		0.522176, -0.694888, -0.494432,
		0.805575, 0.211570, 0.553432,
		42.361080, 28.873423, 32.802273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166134, 28.035738, 32.660408>,  <41.797176, 28.725325, 32.414867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166134, 28.035738, 32.660408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192936, 28.318169, 32.942390>,  <42.209015, 28.487627, 33.111580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192936, 28.318169, 32.942390>,  <42.166134, 28.035738, 32.660408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192936, 28.318169, 32.942390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266881, -0.668121, 0.694542,
		0.961398, -0.234676, 0.143672,
		0.067002, 0.706075, 0.704961,
		42.213036, 28.529991, 33.153877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531185, 27.719919, 32.839153>,  <42.166134, 28.035738, 32.660408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531185, 27.719919, 32.839153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148418, 27.827431, 32.883099>,  <40.918758, 27.891937, 32.909466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148418, 27.827431, 32.883099>,  <41.531185, 27.719919, 32.839153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148418, 27.827431, 32.883099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137991, -0.088056, -0.986511,
		-0.255481, -0.959168, 0.121351,
		-0.956916, 0.268780, 0.109860,
		40.861343, 27.908064, 32.916058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115627, 27.250734, 32.472401>,  <41.531185, 27.719919, 32.839153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115627, 27.250734, 32.472401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886269, 27.571411, 32.539940>,  <40.748653, 27.763817, 32.580463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886269, 27.571411, 32.539940>,  <41.115627, 27.250734, 32.472401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886269, 27.571411, 32.539940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270661, 0.009157, -0.962631,
		-0.773281, -0.597665, 0.211736,
		-0.573392, 0.801694, 0.168846,
		40.714252, 27.811918, 32.590595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422256, 27.127123, 32.196964>,  <41.115627, 27.250734, 32.472401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422256, 27.127123, 32.196964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470158, 27.523785, 32.216068>,  <40.498898, 27.761782, 32.227531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470158, 27.523785, 32.216068>,  <40.422256, 27.127123, 32.196964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470158, 27.523785, 32.216068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193525, 0.070495, -0.978559,
		-0.973760, 0.107940, 0.200352,
		0.119750, 0.991655, 0.047756,
		40.506081, 27.821281, 32.230396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289127, 27.314728, 31.557163>,  <40.422256, 27.127123, 32.196964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289127, 27.314728, 31.557163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411449, 27.686497, 31.639778>,  <40.484844, 27.909557, 31.689348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411449, 27.686497, 31.639778>,  <40.289127, 27.314728, 31.557163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411449, 27.686497, 31.639778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080267, 0.241326, -0.967119,
		-0.948704, 0.279173, 0.148401,
		0.305806, 0.929421, 0.206539,
		40.503193, 27.965322, 31.701740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847927, 27.694935, 31.169785>,  <40.289127, 27.314728, 31.557163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847927, 27.694935, 31.169785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156799, 27.936733, 31.248093>,  <40.342121, 28.081812, 31.295078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156799, 27.936733, 31.248093>,  <39.847927, 27.694935, 31.169785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156799, 27.936733, 31.248093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115317, 0.436307, -0.892378,
		-0.624856, 0.666498, 0.406615,
		0.772177, 0.604497, 0.195771,
		40.388451, 28.118082, 31.306824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651440, 28.400225, 31.175339>,  <39.847927, 27.694935, 31.169785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651440, 28.400225, 31.175339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039734, 28.382431, 31.080940>,  <40.272709, 28.371756, 31.024302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039734, 28.382431, 31.080940>,  <39.651440, 28.400225, 31.175339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039734, 28.382431, 31.080940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138260, 0.699982, -0.700649,
		0.196360, 0.712774, 0.673347,
		0.970735, -0.044482, -0.235997,
		40.330956, 28.369087, 31.010141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813824, 29.061069, 31.207802>,  <39.651440, 28.400225, 31.175339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813824, 29.061069, 31.207802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064056, 28.854385, 30.973995>,  <40.214195, 28.730375, 30.833712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064056, 28.854385, 30.973995>,  <39.813824, 29.061069, 31.207802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064056, 28.854385, 30.973995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226709, 0.596496, -0.769932,
		0.746493, 0.614170, 0.256014,
		0.625580, -0.516709, -0.584518,
		40.251732, 28.699373, 30.798639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356667, 29.588278, 30.876812>,  <39.813824, 29.061069, 31.207802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356667, 29.588278, 30.876812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313206, 29.253315, 30.662544>,  <40.287128, 29.052338, 30.533983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313206, 29.253315, 30.662544>,  <40.356667, 29.588278, 30.876812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313206, 29.253315, 30.662544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002110, 0.538664, -0.842518,
		0.994078, -0.092671, -0.056759,
		-0.108652, -0.837408, -0.535670,
		40.280609, 29.002092, 30.501842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681065, 29.762991, 30.376101>,  <40.356667, 29.588278, 30.876812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681065, 29.762991, 30.376101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512295, 29.434448, 30.222553>,  <40.411034, 29.237322, 30.130424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512295, 29.434448, 30.222553>,  <40.681065, 29.762991, 30.376101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512295, 29.434448, 30.222553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178645, 0.339783, -0.923382,
		0.888858, -0.458169, 0.003370,
		-0.421920, -0.821358, -0.383869,
		40.385719, 29.188042, 30.107393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083572, 29.674377, 29.724442>,  <40.681065, 29.762991, 30.376101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083572, 29.674377, 29.724442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738029, 29.483391, 29.660225>,  <40.530704, 29.368799, 29.621695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738029, 29.483391, 29.660225>,  <41.083572, 29.674377, 29.724442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738029, 29.483391, 29.660225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030851, 0.368257, -0.929212,
		0.502790, -0.797754, -0.332852,
		-0.863858, -0.477467, -0.160544,
		40.478870, 29.340151, 29.612062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113239, 29.415627, 29.026768>,  <41.083572, 29.674377, 29.724442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113239, 29.415627, 29.026768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734192, 29.421673, 29.154392>,  <40.506763, 29.425301, 29.230967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734192, 29.421673, 29.154392>,  <41.113239, 29.415627, 29.026768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734192, 29.421673, 29.154392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281102, 0.434896, -0.855481,
		-0.151690, -0.900354, -0.407864,
		-0.947614, 0.015116, 0.319061,
		40.449909, 29.426208, 29.250111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693386, 28.953505, 28.574467>,  <41.113239, 29.415627, 29.026768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693386, 28.953505, 28.574467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469086, 29.239414, 28.741634>,  <40.334507, 29.410959, 28.841936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469086, 29.239414, 28.741634>,  <40.693386, 28.953505, 28.574467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469086, 29.239414, 28.741634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278740, 0.312318, -0.908164,
		-0.779656, -0.625744, 0.024104,
		-0.560750, 0.714774, 0.417920,
		40.300861, 29.453846, 28.867010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145515, 29.022449, 28.149427>,  <40.693386, 28.953505, 28.574467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145515, 29.022449, 28.149427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056263, 29.336552, 28.380455>,  <40.002712, 29.525013, 28.519072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056263, 29.336552, 28.380455>,  <40.145515, 29.022449, 28.149427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056263, 29.336552, 28.380455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366642, 0.481390, -0.796139,
		-0.903209, -0.389404, 0.180495,
		-0.223131, 0.785257, 0.577567,
		39.989323, 29.572128, 28.553724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485798, 29.088596, 28.069195>,  <40.145515, 29.022449, 28.149427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485798, 29.088596, 28.069195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629383, 29.440678, 28.193382>,  <39.715534, 29.651926, 28.267895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629383, 29.440678, 28.193382>,  <39.485798, 29.088596, 28.069195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629383, 29.440678, 28.193382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485798, 0.460226, -0.743096,
		-0.796960, 0.115920, 0.592804,
		0.358964, 0.880201, 0.310469,
		39.737072, 29.704739, 28.286522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979904, 29.524698, 27.989992>,  <39.485798, 29.088596, 28.069195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979904, 29.524698, 27.989992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294167, 29.772148, 27.992847>,  <39.482723, 29.920618, 27.994560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294167, 29.772148, 27.992847>,  <38.979904, 29.524698, 27.989992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294167, 29.772148, 27.992847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403422, 0.521028, -0.752184,
		-0.469039, 0.588077, 0.658914,
		0.785655, 0.618624, 0.007139,
		39.529861, 29.957735, 27.994989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796383, 30.373739, 27.847309>,  <38.979904, 29.524698, 27.989992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796383, 30.373739, 27.847309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179428, 30.354603, 27.733685>,  <39.409256, 30.343121, 27.665510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179428, 30.354603, 27.733685>,  <38.796383, 30.373739, 27.847309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179428, 30.354603, 27.733685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224806, 0.492481, -0.840788,
		0.180119, 0.869007, 0.460850,
		0.957611, -0.047840, -0.284063,
		39.466713, 30.340250, 27.648466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828468, 31.092693, 27.598024>,  <38.796383, 30.373739, 27.847309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828468, 31.092693, 27.598024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154873, 30.903954, 27.464466>,  <39.350716, 30.790710, 27.384331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154873, 30.903954, 27.464466>,  <38.828468, 31.092693, 27.598024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154873, 30.903954, 27.464466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014560, 0.560673, -0.827910,
		0.577854, 0.680444, 0.450644,
		0.816010, -0.471849, -0.333894,
		39.399677, 30.762400, 27.364298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217514, 31.556723, 27.265572>,  <38.828468, 31.092693, 27.598024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217514, 31.556723, 27.265572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363983, 31.205597, 27.142052>,  <39.451866, 30.994921, 27.067940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363983, 31.205597, 27.142052>,  <39.217514, 31.556723, 27.265572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363983, 31.205597, 27.142052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112184, 0.371069, -0.921804,
		0.923759, 0.302898, 0.234353,
		0.366174, -0.877816, -0.308798,
		39.473835, 30.942253, 27.049412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810913, 31.627449, 26.843197>,  <39.217514, 31.556723, 27.265572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810913, 31.627449, 26.843197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653534, 31.278408, 26.727428>,  <39.559109, 31.068983, 26.657969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653534, 31.278408, 26.727428>,  <39.810913, 31.627449, 26.843197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653534, 31.278408, 26.727428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011159, 0.319319, -0.947581,
		0.919280, -0.369591, -0.135372,
		-0.393445, -0.872604, -0.289420,
		39.535500, 31.016626, 26.640602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203148, 31.449148, 26.319027>,  <39.810913, 31.627449, 26.843197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203148, 31.449148, 26.319027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874531, 31.228951, 26.259674>,  <39.677361, 31.096832, 26.224062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874531, 31.228951, 26.259674>,  <40.203148, 31.449148, 26.319027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874531, 31.228951, 26.259674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064801, 0.168407, -0.983585,
		0.566448, -0.817675, -0.102682,
		-0.821546, -0.550496, -0.148380,
		39.628067, 31.063801, 26.215160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348705, 31.172031, 25.687410>,  <40.203148, 31.449148, 26.319027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348705, 31.172031, 25.687410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952675, 31.131870, 25.726757>,  <39.715057, 31.107775, 25.750364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952675, 31.131870, 25.726757>,  <40.348705, 31.172031, 25.687410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952675, 31.131870, 25.726757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128380, 0.361045, -0.923669,
		0.057222, -0.927128, -0.370350,
		-0.990072, -0.100400, 0.098365,
		39.655655, 31.101749, 25.756266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135124, 31.050896, 25.038509>,  <40.348705, 31.172031, 25.687410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135124, 31.050896, 25.038509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794800, 31.174343, 25.208626>,  <39.590603, 31.248411, 25.310696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794800, 31.174343, 25.208626>,  <40.135124, 31.050896, 25.038509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794800, 31.174343, 25.208626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224567, 0.518166, -0.825272,
		-0.475063, -0.797659, -0.371558,
		-0.850814, 0.308617, 0.425289,
		39.539555, 31.266928, 25.336212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585438, 30.870319, 24.544777>,  <40.135124, 31.050896, 25.038509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585438, 30.870319, 24.544777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439480, 31.160286, 24.778477>,  <39.351906, 31.334267, 24.918697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439480, 31.160286, 24.778477>,  <39.585438, 30.870319, 24.544777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439480, 31.160286, 24.778477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237461, 0.534304, -0.811253,
		-0.900258, -0.434759, -0.022825,
		-0.364895, 0.724917, 0.584249,
		39.330009, 31.377762, 24.953751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842957, 31.062361, 24.288181>,  <39.585438, 30.870319, 24.544777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842957, 31.062361, 24.288181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000126, 31.362881, 24.500278>,  <39.094429, 31.543194, 24.627537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000126, 31.362881, 24.500278>,  <38.842957, 31.062361, 24.288181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000126, 31.362881, 24.500278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292138, 0.648733, -0.702709,
		-0.871932, 0.121208, 0.474387,
		0.392925, 0.751301, 0.530242,
		39.118004, 31.588270, 24.659351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383629, 31.630320, 24.041374>,  <38.842957, 31.062361, 24.288181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383629, 31.630320, 24.041374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720062, 31.792023, 24.185131>,  <38.921921, 31.889044, 24.271385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720062, 31.792023, 24.185131>,  <38.383629, 31.630320, 24.041374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720062, 31.792023, 24.185131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114843, 0.782730, -0.611674,
		-0.528580, 0.473192, 0.704764,
		0.841079, 0.404256, 0.359393,
		38.972385, 31.913300, 24.292950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203571, 32.308250, 24.185698>,  <38.383629, 31.630320, 24.041374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203571, 32.308250, 24.185698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603230, 32.312668, 24.169762>,  <38.843025, 32.315319, 24.160200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603230, 32.312668, 24.169762>,  <38.203571, 32.308250, 24.185698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603230, 32.312668, 24.169762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037391, 0.652559, -0.756814,
		0.017639, 0.757657, 0.652414,
		0.999145, 0.011045, -0.039840,
		38.902973, 32.315983, 24.157810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454285, 32.983910, 24.170992>,  <38.203571, 32.308250, 24.185698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454285, 32.983910, 24.170992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724724, 32.748005, 23.994324>,  <38.886986, 32.606461, 23.888323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724724, 32.748005, 23.994324>,  <38.454285, 32.983910, 24.170992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724724, 32.748005, 23.994324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010806, 0.607303, -0.794397,
		0.736733, 0.532317, 0.416969,
		0.676097, -0.589764, -0.441668,
		38.927551, 32.571075, 23.861824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810295, 32.933052, 24.498823>,  <38.454285, 32.983910, 24.170992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810295, 32.933052, 24.498823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502262, 32.886398, 24.247948>,  <37.317444, 32.858406, 24.097422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502262, 32.886398, 24.247948>,  <37.810295, 32.933052, 24.498823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502262, 32.886398, 24.247948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473719, -0.553927, 0.684657,
		-0.427274, 0.824355, 0.371317,
		-0.770083, -0.116636, -0.627191,
		37.271236, 32.851406, 24.059790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104328, 33.248344, 24.637518>,  <37.810295, 32.933052, 24.498823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104328, 33.248344, 24.637518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074135, 32.900841, 24.441738>,  <37.056019, 32.692337, 24.324270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074135, 32.900841, 24.441738>,  <37.104328, 33.248344, 24.637518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074135, 32.900841, 24.441738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674091, -0.317244, 0.667051,
		-0.734781, 0.380283, -0.561677,
		-0.075479, -0.868758, -0.489450,
		37.051491, 32.640213, 24.294903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386745, 33.129791, 24.648714>,  <37.104328, 33.248344, 24.637518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386745, 33.129791, 24.648714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572468, 32.777222, 24.614033>,  <36.683903, 32.565681, 24.593224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572468, 32.777222, 24.614033>,  <36.386745, 33.129791, 24.648714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572468, 32.777222, 24.614033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653934, -0.407194, 0.637623,
		-0.597318, -0.239355, -0.765454,
		0.464307, -0.881420, -0.086702,
		36.711761, 32.512794, 24.588022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909721, 32.564137, 24.533064>,  <36.386745, 33.129791, 24.648714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909721, 32.564137, 24.533064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228001, 32.369415, 24.677227>,  <36.418968, 32.252583, 24.763725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228001, 32.369415, 24.677227>,  <35.909721, 32.564137, 24.533064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228001, 32.369415, 24.677227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580207, -0.441796, 0.684234,
		-0.173860, -0.753553, -0.633980,
		0.795696, -0.486801, 0.360407,
		36.466709, 32.223373, 24.785349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779449, 31.945627, 24.514666>,  <35.909721, 32.564137, 24.533064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779449, 31.945627, 24.514666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042377, 31.960361, 24.815750>,  <36.200134, 31.969202, 24.996401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042377, 31.960361, 24.815750>,  <35.779449, 31.945627, 24.514666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042377, 31.960361, 24.815750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604555, -0.570554, 0.555861,
		0.449937, -0.820433, -0.352769,
		0.657321, 0.036834, 0.752710,
		36.239574, 31.971411, 25.041563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233105, 31.327559, 24.649771>,  <35.779449, 31.945627, 24.514666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233105, 31.327559, 24.649771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142242, 31.539093, 24.976875>,  <36.087727, 31.666014, 25.173138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142242, 31.539093, 24.976875>,  <36.233105, 31.327559, 24.649771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142242, 31.539093, 24.976875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636732, -0.716016, 0.286169,
		0.736868, -0.455691, 0.499371,
		-0.227153, 0.528834, 0.817763,
		36.074097, 31.697742, 25.222204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771980, 30.841850, 24.918121>,  <36.233105, 31.327559, 24.649771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771980, 30.841850, 24.918121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799690, 31.110817, 25.212891>,  <35.816319, 31.272196, 25.389753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799690, 31.110817, 25.212891>,  <35.771980, 30.841850, 24.918121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799690, 31.110817, 25.212891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460594, -0.633693, 0.621519,
		0.884903, -0.382480, 0.265810,
		0.069277, 0.672415, 0.736925,
		35.820473, 31.312542, 25.433968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128017, 30.631285, 25.530151>,  <35.771980, 30.841850, 24.918121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128017, 30.631285, 25.530151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839844, 30.891277, 25.626900>,  <35.666939, 31.047272, 25.684948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839844, 30.891277, 25.626900>,  <36.128017, 30.631285, 25.530151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839844, 30.891277, 25.626900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486843, -0.722362, 0.491097,
		0.493922, 0.236050, 0.836852,
		-0.720434, 0.649979, 0.241871,
		35.623714, 31.086271, 25.699461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898113, 30.351217, 26.067587>,  <36.128017, 30.631285, 25.530151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898113, 30.351217, 26.067587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613464, 30.630360, 26.035130>,  <35.442673, 30.797846, 26.015656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613464, 30.630360, 26.035130>,  <35.898113, 30.351217, 26.067587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613464, 30.630360, 26.035130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679719, -0.654673, 0.330736,
		0.177686, 0.290513, 0.940229,
		-0.711625, 0.697858, -0.081141,
		35.399979, 30.839718, 26.010788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549160, 30.425774, 26.726797>,  <35.898113, 30.351217, 26.067587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549160, 30.425774, 26.726797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295635, 30.568066, 26.452065>,  <35.143520, 30.653440, 26.287226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295635, 30.568066, 26.452065>,  <35.549160, 30.425774, 26.726797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295635, 30.568066, 26.452065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722692, -0.588834, 0.361928,
		-0.275681, 0.725762, 0.630293,
		-0.633812, 0.355731, -0.686832,
		35.105492, 30.674786, 26.246016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007938, 30.462044, 27.183554>,  <35.549160, 30.425774, 26.726797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007938, 30.462044, 27.183554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881836, 30.449760, 26.804150>,  <34.806175, 30.442390, 26.576508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881836, 30.449760, 26.804150>,  <35.007938, 30.462044, 27.183554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881836, 30.449760, 26.804150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792219, -0.541767, 0.280852,
		-0.522495, 0.839968, 0.146469,
		-0.315259, -0.030709, -0.948509,
		34.787258, 30.440548, 26.519596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299534, 30.697504, 27.144903>,  <35.007938, 30.462044, 27.183554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299534, 30.697504, 27.144903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346703, 30.496098, 26.802544>,  <34.375004, 30.375254, 26.597128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346703, 30.496098, 26.802544>,  <34.299534, 30.697504, 27.144903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346703, 30.496098, 26.802544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664466, -0.680532, 0.308806,
		-0.737957, 0.532304, -0.414816,
		0.117917, -0.503517, -0.855901,
		34.382076, 30.345043, 26.545773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673706, 30.651865, 26.838100>,  <34.299534, 30.697504, 27.144903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673706, 30.651865, 26.838100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902164, 30.354000, 26.699963>,  <34.039242, 30.175282, 26.617079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902164, 30.354000, 26.699963>,  <33.673706, 30.651865, 26.838100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902164, 30.354000, 26.699963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682486, -0.664562, 0.304254,
		-0.456071, 0.061918, -0.887787,
		0.571150, -0.744664, -0.345345,
		34.073509, 30.130602, 26.596359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275047, 30.187454, 26.477552>,  <33.673706, 30.651865, 26.838100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275047, 30.187454, 26.477552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594795, 29.965103, 26.568775>,  <33.786644, 29.831692, 26.623508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594795, 29.965103, 26.568775>,  <33.275047, 30.187454, 26.477552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594795, 29.965103, 26.568775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600503, -0.751843, 0.272265,
		0.020116, -0.354588, -0.934806,
		0.799370, -0.555877, 0.228056,
		33.834606, 29.798340, 26.637192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914265, 29.640341, 26.197639>,  <33.275047, 30.187454, 26.477552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914265, 29.640341, 26.197639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227196, 29.563972, 26.434795>,  <33.414955, 29.518152, 26.577089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227196, 29.563972, 26.434795>,  <32.914265, 29.640341, 26.197639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227196, 29.563972, 26.434795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469751, -0.805915, 0.360326,
		0.409025, -0.560402, -0.720172,
		0.782325, -0.190919, 0.592889,
		33.461895, 29.506697, 26.612661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882492, 28.972860, 26.209629>,  <32.914265, 29.640341, 26.197639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882492, 28.972860, 26.209629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119854, 29.031986, 26.526115>,  <33.262272, 29.067461, 26.716007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119854, 29.031986, 26.526115>,  <32.882492, 28.972860, 26.209629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119854, 29.031986, 26.526115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512979, -0.688045, 0.513270,
		0.620261, -0.710454, -0.332464,
		0.593405, 0.147814, 0.791215,
		33.297874, 29.076330, 26.763479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220722, 28.238001, 26.449427>,  <32.882492, 28.972860, 26.209629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220722, 28.238001, 26.449427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207489, 28.509872, 26.742531>,  <33.199551, 28.672997, 26.918394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207489, 28.509872, 26.742531>,  <33.220722, 28.238001, 26.449427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207489, 28.509872, 26.742531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521723, -0.637087, 0.567385,
		0.852473, -0.363530, 0.375680,
		-0.033079, 0.679681, 0.732761,
		33.197567, 28.713778, 26.962358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334019, 27.798786, 27.071133>,  <33.220722, 28.238001, 26.449427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334019, 27.798786, 27.071133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222286, 28.138527, 27.250275>,  <33.155247, 28.342371, 27.357759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222286, 28.138527, 27.250275>,  <33.334019, 27.798786, 27.071133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222286, 28.138527, 27.250275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400080, -0.526959, 0.749833,
		0.872874, 0.030276, 0.487006,
		-0.279334, 0.849351, 0.447856,
		33.138485, 28.393332, 27.384632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331928, 27.666243, 27.758116>,  <33.334019, 27.798786, 27.071133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331928, 27.666243, 27.758116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089043, 27.982861, 27.730553>,  <32.943310, 28.172831, 27.714014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089043, 27.982861, 27.730553>,  <33.331928, 27.666243, 27.758116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089043, 27.982861, 27.730553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551042, -0.357059, 0.754229,
		0.572400, 0.495952, 0.652985,
		-0.607216, 0.791543, -0.068910,
		32.906879, 28.220324, 27.709879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372688, 27.993128, 28.409229>,  <33.331928, 27.666243, 27.758116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372688, 27.993128, 28.409229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035156, 28.061378, 28.205727>,  <32.832638, 28.102329, 28.083624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035156, 28.061378, 28.205727>,  <33.372688, 27.993128, 28.409229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035156, 28.061378, 28.205727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531418, -0.397281, 0.748173,
		-0.074460, 0.901695, 0.425913,
		-0.843831, 0.170629, -0.508758,
		32.782005, 28.112568, 28.053099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882755, 28.344477, 28.947435>,  <33.372688, 27.993128, 28.409229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882755, 28.344477, 28.947435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633282, 28.206398, 28.666904>,  <32.483597, 28.123550, 28.498587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633282, 28.206398, 28.666904>,  <32.882755, 28.344477, 28.947435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633282, 28.206398, 28.666904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618974, -0.329839, 0.712795,
		-0.477381, 0.878660, -0.007954,
		-0.623681, -0.345199, -0.701327,
		32.446178, 28.102839, 28.456507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222649, 28.366714, 29.268517>,  <32.882755, 28.344477, 28.947435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222649, 28.366714, 29.268517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167355, 28.112667, 28.964539>,  <32.134178, 27.960239, 28.782152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167355, 28.112667, 28.964539>,  <32.222649, 28.366714, 29.268517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167355, 28.112667, 28.964539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700841, -0.479434, 0.528171,
		-0.699794, 0.605613, -0.378841,
		-0.138238, -0.635118, -0.759944,
		32.125881, 27.922132, 28.736555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481768, 28.176325, 29.287403>,  <32.222649, 28.366714, 29.268517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481768, 28.176325, 29.287403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692205, 27.902386, 29.085728>,  <31.818468, 27.738022, 28.964722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692205, 27.902386, 29.085728>,  <31.481768, 28.176325, 29.287403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692205, 27.902386, 29.085728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347398, -0.714212, 0.607632,
		-0.776235, -0.144516, -0.613657,
		0.526094, -0.684848, -0.504191,
		31.850035, 27.696932, 28.934471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084723, 27.664143, 29.315977>,  <31.481768, 28.176325, 29.287403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084723, 27.664143, 29.315977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441763, 27.521091, 29.206165>,  <31.655987, 27.435261, 29.140278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441763, 27.521091, 29.206165>,  <31.084723, 27.664143, 29.315977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441763, 27.521091, 29.206165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140543, -0.799295, 0.584273,
		-0.428384, -0.482939, -0.763713,
		0.892600, -0.357627, -0.274531,
		31.709543, 27.413803, 29.123806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944956, 26.990988, 29.261011>,  <31.084723, 27.664143, 29.315977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944956, 26.990988, 29.261011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344622, 27.002106, 29.272995>,  <31.584421, 27.008776, 29.280186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344622, 27.002106, 29.272995>,  <30.944956, 26.990988, 29.261011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344622, 27.002106, 29.272995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008193, -0.854485, 0.519411,
		0.040037, -0.518732, -0.853999,
		0.999165, 0.027793, 0.029961,
		31.644371, 27.010443, 29.281982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240288, 26.274813, 29.111675>,  <30.944956, 26.990988, 29.261011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240288, 26.274813, 29.111675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526381, 26.480797, 29.300674>,  <31.698036, 26.604387, 29.414074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526381, 26.480797, 29.300674>,  <31.240288, 26.274813, 29.111675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526381, 26.480797, 29.300674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162977, -0.780332, 0.603755,
		0.679618, -0.354819, -0.642046,
		0.715233, 0.514962, 0.472500,
		31.740950, 26.635284, 29.442425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864897, 25.794573, 29.135897>,  <31.240288, 26.274813, 29.111675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864897, 25.794573, 29.135897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872614, 26.057678, 29.437088>,  <31.877245, 26.215542, 29.617802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872614, 26.057678, 29.437088>,  <31.864897, 25.794573, 29.135897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872614, 26.057678, 29.437088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134670, -0.747964, 0.649934,
		0.990703, 0.088865, -0.103011,
		0.019292, 0.657764, 0.752977,
		31.878401, 26.255007, 29.662981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279926, 25.475494, 29.482969>,  <31.864897, 25.794573, 29.135897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279926, 25.475494, 29.482969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146683, 25.749763, 29.741856>,  <32.066738, 25.914326, 29.897188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146683, 25.749763, 29.741856>,  <32.279926, 25.475494, 29.482969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146683, 25.749763, 29.741856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101516, -0.656349, 0.747596,
		0.937408, 0.314733, 0.149028,
		-0.333108, 0.685674, 0.647218,
		32.046749, 25.955465, 29.936022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804550, 25.539780, 30.021315>,  <32.279926, 25.475494, 29.482969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804550, 25.539780, 30.021315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459641, 25.655231, 30.187771>,  <32.252693, 25.724503, 30.287643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459641, 25.655231, 30.187771>,  <32.804550, 25.539780, 30.021315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459641, 25.655231, 30.187771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156917, -0.628995, 0.761408,
		0.481515, 0.721844, 0.497077,
		-0.862276, 0.288630, 0.416140,
		32.200958, 25.741821, 30.312613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926369, 25.734255, 30.728123>,  <32.804550, 25.539780, 30.021315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926369, 25.734255, 30.728123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533939, 25.663456, 30.696705>,  <32.298481, 25.620975, 30.677855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533939, 25.663456, 30.696705>,  <32.926369, 25.734255, 30.728123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533939, 25.663456, 30.696705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038636, -0.576371, 0.816274,
		-0.189749, 0.797789, 0.572300,
		-0.981072, -0.176999, -0.078543,
		32.239616, 25.610357, 30.673141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737099, 25.743753, 31.390285>,  <32.926369, 25.734255, 30.728123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737099, 25.743753, 31.390285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425411, 25.565922, 31.213573>,  <32.238400, 25.459223, 31.107546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425411, 25.565922, 31.213573>,  <32.737099, 25.743753, 31.390285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425411, 25.565922, 31.213573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149343, -0.552866, 0.819778,
		-0.608703, 0.704761, 0.364407,
		-0.779216, -0.444580, -0.441782,
		32.191647, 25.432549, 31.081039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359283, 25.573689, 31.977201>,  <32.737099, 25.743753, 31.390285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359283, 25.573689, 31.977201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191185, 25.367287, 31.678635>,  <32.090324, 25.243446, 31.499495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191185, 25.367287, 31.678635>,  <32.359283, 25.573689, 31.977201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191185, 25.367287, 31.678635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294609, -0.700428, 0.650081,
		-0.858254, 0.493094, 0.142333,
		-0.420245, -0.516002, -0.746415,
		32.065113, 25.212486, 31.454710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798418, 25.227882, 32.329182>,  <32.359283, 25.573689, 31.977201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798418, 25.227882, 32.329182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821096, 25.024612, 31.985428>,  <31.834703, 24.902651, 31.779175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821096, 25.024612, 31.985428>,  <31.798418, 25.227882, 32.329182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821096, 25.024612, 31.985428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291392, -0.831716, 0.472587,
		-0.954922, 0.223625, -0.195233,
		0.056696, -0.508174, -0.859386,
		31.838106, 24.872160, 31.727612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181438, 24.953959, 32.264847>,  <31.798418, 25.227882, 32.329182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181438, 24.953959, 32.264847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463120, 24.747242, 32.070107>,  <31.632128, 24.623211, 31.953262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463120, 24.747242, 32.070107>,  <31.181438, 24.953959, 32.264847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463120, 24.747242, 32.070107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210394, -0.806799, 0.552095,
		-0.678111, -0.286355, -0.676880,
		0.704202, -0.516793, -0.486852,
		31.674379, 24.592203, 31.924051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922043, 24.219950, 32.052559>,  <31.181438, 24.953959, 32.264847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922043, 24.219950, 32.052559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318731, 24.205143, 32.101742>,  <31.556744, 24.196259, 32.131252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318731, 24.205143, 32.101742>,  <30.922043, 24.219950, 32.052559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318731, 24.205143, 32.101742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091220, -0.877027, 0.471703,
		0.090375, -0.479014, -0.873143,
		0.991721, -0.037018, 0.122957,
		31.616247, 24.194038, 32.138630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232504, 23.539192, 31.766043>,  <30.922043, 24.219950, 32.052559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232504, 23.539192, 31.766043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457104, 23.673290, 32.068653>,  <31.591864, 23.753748, 32.250221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457104, 23.673290, 32.068653>,  <31.232504, 23.539192, 31.766043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457104, 23.673290, 32.068653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297880, -0.771071, 0.562777,
		0.772003, -0.541352, -0.333092,
		0.561497, 0.335244, 0.756526,
		31.625553, 23.773863, 32.295612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606834, 22.991982, 32.021000>,  <31.232504, 23.539192, 31.766043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606834, 22.991982, 32.021000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618889, 23.247520, 32.328499>,  <31.626122, 23.400845, 32.512997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618889, 23.247520, 32.328499>,  <31.606834, 22.991982, 32.021000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618889, 23.247520, 32.328499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458564, -0.674543, 0.578541,
		0.888150, -0.369954, 0.272623,
		0.030138, 0.638847, 0.768744,
		31.627930, 23.439175, 32.559120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023834, 22.761751, 32.522465>,  <31.606834, 22.991982, 32.021000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023834, 22.761751, 32.522465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732470, 22.986492, 32.679306>,  <31.557652, 23.121338, 32.773411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732470, 22.986492, 32.679306>,  <32.023834, 22.761751, 32.522465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732470, 22.986492, 32.679306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417603, -0.817778, 0.396038,
		0.543167, 0.124735, 0.830307,
		-0.728407, 0.561854, 0.392101,
		31.513947, 23.155048, 32.796936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856611, 22.354641, 33.145599>,  <32.023834, 22.761751, 32.522465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856611, 22.354641, 33.145599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599981, 22.655762, 33.204483>,  <31.446003, 22.836433, 33.239811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599981, 22.655762, 33.204483>,  <31.856611, 22.354641, 33.145599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599981, 22.655762, 33.204483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554498, -0.587769, 0.589118,
		0.530012, 0.296338, 0.794526,
		-0.641576, 0.752802, 0.147206,
		31.407509, 22.881603, 33.248646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748083, 22.392033, 33.854160>,  <31.856611, 22.354641, 33.145599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748083, 22.392033, 33.854160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406881, 22.562012, 33.732964>,  <31.202160, 22.664000, 33.660244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406881, 22.562012, 33.732964>,  <31.748083, 22.392033, 33.854160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406881, 22.562012, 33.732964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500485, -0.501417, 0.705759,
		0.147986, 0.753658, 0.640391,
		-0.853003, 0.424949, -0.302992,
		31.150980, 22.689497, 33.642067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446060, 22.676300, 34.426796>,  <31.748083, 22.392033, 33.854160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446060, 22.676300, 34.426796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151217, 22.620331, 34.162342>,  <30.974310, 22.586750, 34.003670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151217, 22.620331, 34.162342>,  <31.446060, 22.676300, 34.426796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151217, 22.620331, 34.162342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548608, -0.447352, 0.706332,
		-0.394589, 0.883345, 0.252985,
		-0.737108, -0.139921, -0.661130,
		30.930084, 22.578354, 33.964005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827684, 22.856726, 34.697662>,  <31.446060, 22.676300, 34.426796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827684, 22.856726, 34.697662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613424, 22.687515, 34.405327>,  <30.484869, 22.585989, 34.229927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613424, 22.687515, 34.405327>,  <30.827684, 22.856726, 34.697662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613424, 22.687515, 34.405327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570494, -0.456810, 0.682540,
		-0.622589, 0.782542, 0.003355,
		-0.535649, -0.423028, -0.730840,
		30.452730, 22.560606, 34.186073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156492, 23.072704, 34.734467>,  <30.827684, 22.856726, 34.697662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156492, 23.072704, 34.734467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132364, 22.740971, 34.512272>,  <30.117887, 22.541931, 34.378956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132364, 22.740971, 34.512272>,  <30.156492, 23.072704, 34.734467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132364, 22.740971, 34.512272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754194, -0.326680, 0.569623,
		-0.653875, 0.453305, -0.605774,
		-0.060319, -0.829334, -0.555488,
		30.114269, 22.492170, 34.345627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458115, 22.989002, 34.561729>,  <30.156492, 23.072704, 34.734467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458115, 22.989002, 34.561729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609804, 22.624352, 34.498329>,  <29.700819, 22.405561, 34.460289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609804, 22.624352, 34.498329>,  <29.458115, 22.989002, 34.561729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609804, 22.624352, 34.498329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703255, -0.395286, 0.590915,
		-0.601349, -0.112623, -0.791009,
		0.379226, -0.911628, -0.158502,
		29.723572, 22.350863, 34.450779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968922, 22.585350, 34.427475>,  <29.458115, 22.989002, 34.561729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968922, 22.585350, 34.427475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228388, 22.306087, 34.548679>,  <29.384068, 22.138531, 34.621403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228388, 22.306087, 34.548679>,  <28.968922, 22.585350, 34.427475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228388, 22.306087, 34.548679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703418, -0.397951, 0.588930,
		-0.290579, -0.595162, -0.749230,
		0.648666, -0.698153, 0.303011,
		29.422987, 22.096642, 34.639584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563765, 21.973167, 34.336948>,  <28.968922, 22.585350, 34.427475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563765, 21.973167, 34.336948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868080, 21.872162, 34.576092>,  <29.050671, 21.811560, 34.719578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868080, 21.872162, 34.576092>,  <28.563765, 21.973167, 34.336948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868080, 21.872162, 34.576092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644248, -0.405094, 0.648724,
		0.078379, -0.878713, -0.470872,
		0.760790, -0.252512, 0.597860,
		29.096317, 21.796408, 34.755451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331146, 21.355156, 34.683590>,  <28.563765, 21.973167, 34.336948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331146, 21.355156, 34.683590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658478, 21.434734, 34.899277>,  <28.854876, 21.482481, 35.028690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658478, 21.434734, 34.899277>,  <28.331146, 21.355156, 34.683590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658478, 21.434734, 34.899277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431217, -0.407743, 0.804859,
		0.379989, -0.891160, -0.247877,
		0.818327, 0.198949, 0.539221,
		28.903976, 21.494419, 35.061043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595451, 20.715235, 34.978992>,  <28.331146, 21.355156, 34.683590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595451, 20.715235, 34.978992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673676, 21.047745, 35.187122>,  <28.720610, 21.247250, 35.312000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673676, 21.047745, 35.187122>,  <28.595451, 20.715235, 34.978992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673676, 21.047745, 35.187122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581775, -0.328791, 0.743932,
		0.789489, -0.448197, 0.419316,
		0.195561, 0.831274, 0.520327,
		28.732344, 21.297127, 35.343220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808983, 20.606266, 35.644901>,  <28.595451, 20.715235, 34.978992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808983, 20.606266, 35.644901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664772, 20.977837, 35.678646>,  <28.578245, 21.200779, 35.698891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664772, 20.977837, 35.678646>,  <28.808983, 20.606266, 35.644901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664772, 20.977837, 35.678646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388765, -0.231861, 0.891685,
		0.847868, 0.288683, 0.444726,
		-0.360529, 0.928925, 0.084358,
		28.556614, 21.256514, 35.703953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756241, 20.771049, 36.327339>,  <28.808983, 20.606266, 35.644901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756241, 20.771049, 36.327339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564621, 21.092411, 36.185886>,  <28.449650, 21.285229, 36.101017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564621, 21.092411, 36.185886>,  <28.756241, 20.771049, 36.327339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564621, 21.092411, 36.185886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402052, 0.157297, 0.902004,
		0.780299, 0.574282, 0.247657,
		-0.479049, 0.803404, -0.353629,
		28.420906, 21.333433, 36.079796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910585, 21.190914, 36.891548>,  <28.756241, 20.771049, 36.327339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910585, 21.190914, 36.891548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571682, 21.311657, 36.716721>,  <28.368340, 21.384104, 36.611824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571682, 21.311657, 36.716721>,  <28.910585, 21.190914, 36.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571682, 21.311657, 36.716721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346224, 0.310196, 0.885386,
		0.402839, 0.901477, -0.158306,
		-0.847260, 0.301859, -0.437072,
		28.317505, 21.402214, 36.585598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720673, 21.939466, 37.007046>,  <28.910585, 21.190914, 36.891548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720673, 21.939466, 37.007046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419872, 21.680466, 36.957676>,  <28.239391, 21.525064, 36.928055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419872, 21.680466, 36.957676>,  <28.720673, 21.939466, 37.007046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419872, 21.680466, 36.957676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320131, 0.195082, 0.927070,
		-0.576204, 0.736669, -0.353988,
		-0.752001, -0.647504, -0.123424,
		28.194271, 21.486214, 36.920650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984255, 22.164606, 36.940266>,  <28.720673, 21.939466, 37.007046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984255, 22.164606, 36.940266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084578, 21.824646, 37.125637>,  <28.144772, 21.620670, 37.236858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084578, 21.824646, 37.125637>,  <27.984255, 22.164606, 36.940266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084578, 21.824646, 37.125637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053399, 0.465855, 0.883248,
		-0.966563, -0.246271, 0.071455,
		0.250806, -0.849900, 0.463429,
		28.159819, 21.569675, 37.264668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568741, 22.095150, 37.634697>,  <27.984255, 22.164606, 36.940266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568741, 22.095150, 37.634697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888176, 21.855247, 37.654903>,  <28.079836, 21.711306, 37.667027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888176, 21.855247, 37.654903>,  <27.568741, 22.095150, 37.634697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888176, 21.855247, 37.654903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067863, 0.173114, 0.982561,
		-0.598043, -0.781231, 0.178948,
		0.798585, -0.599758, 0.050513,
		28.127752, 21.675320, 37.670055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422384, 21.538404, 38.167614>,  <27.568741, 22.095150, 37.634697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422384, 21.538404, 38.167614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799700, 21.666378, 38.132172>,  <28.026089, 21.743162, 38.110909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799700, 21.666378, 38.132172>,  <27.422384, 21.538404, 38.167614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799700, 21.666378, 38.132172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009612, 0.293106, 0.956032,
		0.331843, -0.900959, 0.279557,
		0.943286, 0.319940, -0.088605,
		28.082685, 21.762358, 38.105591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752634, 22.136251, 38.445000>,  <27.422384, 21.538404, 38.167614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752634, 22.136251, 38.445000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608696, 22.506065, 38.495190>,  <27.522333, 22.727955, 38.525303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608696, 22.506065, 38.495190>,  <27.752634, 22.136251, 38.445000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608696, 22.506065, 38.495190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267064, -0.026788, 0.963306,
		0.893973, 0.380152, -0.237271,
		-0.359847, 0.924536, 0.125473,
		27.500742, 22.783426, 38.532833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224157, 22.734520, 38.650070>,  <27.752634, 22.136251, 38.445000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224157, 22.734520, 38.650070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857941, 22.833649, 38.776794>,  <27.638210, 22.893126, 38.852829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857941, 22.833649, 38.776794>,  <28.224157, 22.734520, 38.650070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857941, 22.833649, 38.776794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349694, 0.101233, 0.931378,
		0.198745, 0.963502, -0.179345,
		-0.915540, 0.247823, 0.316811,
		27.583279, 22.907995, 38.871838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202190, 22.790277, 37.859730>,  <28.224157, 22.734520, 38.650070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202190, 22.790277, 37.859730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583952, 22.672798, 37.881088>,  <28.813009, 22.602310, 37.893906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583952, 22.672798, 37.881088>,  <28.202190, 22.790277, 37.859730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583952, 22.672798, 37.881088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293109, 0.888120, -0.354019,
		0.056549, 0.353530, 0.933712,
		0.954405, -0.293699, 0.053401,
		28.870274, 22.584688, 37.897110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777853, 23.253948, 38.316383>,  <28.202190, 22.790277, 37.859730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777853, 23.253948, 38.316383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919502, 23.061813, 37.995419>,  <29.004492, 22.946531, 37.802837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919502, 23.061813, 37.995419>,  <28.777853, 23.253948, 38.316383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919502, 23.061813, 37.995419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272174, 0.873810, -0.402961,
		0.894717, -0.075700, 0.440172,
		0.354122, -0.480339, -0.802416,
		29.025740, 22.917711, 37.754692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464638, 23.582214, 38.171913>,  <28.777853, 23.253948, 38.316383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464638, 23.582214, 38.171913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301365, 23.418190, 37.845665>,  <29.203402, 23.319775, 37.649918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301365, 23.418190, 37.845665>,  <29.464638, 23.582214, 38.171913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301365, 23.418190, 37.845665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128685, 0.858672, -0.496107,
		0.903786, -0.307460, -0.297725,
		-0.408181, -0.410062, -0.815621,
		29.178909, 23.295172, 37.600979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957605, 23.662142, 37.603035>,  <29.464638, 23.582214, 38.171913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957605, 23.662142, 37.603035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608007, 23.594521, 37.420803>,  <29.398249, 23.553947, 37.311462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608007, 23.594521, 37.420803>,  <29.957605, 23.662142, 37.603035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608007, 23.594521, 37.420803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148091, 0.800275, -0.581059,
		0.462818, -0.575310, -0.674401,
		-0.873995, -0.169051, -0.455580,
		29.345808, 23.543806, 37.284130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142550, 23.758434, 36.952332>,  <29.957605, 23.662142, 37.603035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142550, 23.758434, 36.952332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745525, 23.806915, 36.956940>,  <29.507311, 23.836004, 36.959705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745525, 23.806915, 36.956940>,  <30.142550, 23.758434, 36.952332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745525, 23.806915, 36.956940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091834, 0.807443, -0.582755,
		-0.079930, -0.577362, -0.812567,
		-0.992561, 0.121200, 0.011517,
		29.447758, 23.843275, 36.960396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966711, 23.842932, 36.356834>,  <30.142550, 23.758434, 36.952332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966711, 23.842932, 36.356834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673973, 24.023029, 36.561451>,  <29.498329, 24.131088, 36.684223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673973, 24.023029, 36.561451>,  <29.966711, 23.842932, 36.356834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673973, 24.023029, 36.561451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197861, 0.858705, -0.472733,
		-0.652114, -0.244752, -0.717526,
		-0.731846, 0.450246, 0.511546,
		29.454420, 24.158104, 36.714916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604513, 24.190935, 35.876400>,  <29.966711, 23.842932, 36.356834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604513, 24.190935, 35.876400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499184, 24.350697, 36.227657>,  <29.435986, 24.446554, 36.438412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499184, 24.350697, 36.227657>,  <29.604513, 24.190935, 35.876400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499184, 24.350697, 36.227657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091142, 0.916498, -0.389519,
		-0.960392, -0.022534, -0.277739,
		-0.263325, 0.399405, 0.878143,
		29.420187, 24.470518, 36.491100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077013, 24.592699, 35.770885>,  <29.604513, 24.190935, 35.876400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077013, 24.592699, 35.770885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234343, 24.742771, 36.106632>,  <29.328739, 24.832813, 36.308079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234343, 24.742771, 36.106632>,  <29.077013, 24.592699, 35.770885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234343, 24.742771, 36.106632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092489, 0.924466, -0.369876,
		-0.914737, 0.067848, 0.398313,
		0.393322, 0.375178, 0.839368,
		29.352339, 24.855324, 36.358444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670204, 25.216047, 35.757431>,  <29.077013, 24.592699, 35.770885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670204, 25.216047, 35.757431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983046, 25.224751, 36.006538>,  <29.170750, 25.229973, 36.156002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983046, 25.224751, 36.006538>,  <28.670204, 25.216047, 35.757431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983046, 25.224751, 36.006538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157954, 0.959829, -0.231902,
		-0.602798, 0.279741, 0.747248,
		0.782103, 0.021759, 0.622769,
		29.217676, 25.231277, 36.193371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560343, 25.785635, 36.119831>,  <28.670204, 25.216047, 35.757431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560343, 25.785635, 36.119831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953033, 25.720779, 36.159679>,  <29.188648, 25.681866, 36.183590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953033, 25.720779, 36.159679>,  <28.560343, 25.785635, 36.119831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953033, 25.720779, 36.159679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180227, 0.960237, -0.213220,
		-0.061091, 0.227278, 0.971912,
		0.981726, -0.162139, 0.099624,
		29.247551, 25.672138, 36.189568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753618, 26.456274, 36.385326>,  <28.560343, 25.785635, 36.119831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753618, 26.456274, 36.385326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081379, 26.285973, 36.231800>,  <29.278034, 26.183792, 36.139683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081379, 26.285973, 36.231800>,  <28.753618, 26.456274, 36.385326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081379, 26.285973, 36.231800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221344, 0.852655, -0.473272,
		0.528764, 0.302843, 0.792903,
		0.819400, -0.425754, -0.383820,
		29.327198, 26.158247, 36.116653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309416, 26.941467, 36.478115>,  <28.753618, 26.456274, 36.385326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309416, 26.941467, 36.478115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419819, 26.706661, 36.173687>,  <29.486061, 26.565777, 35.991028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419819, 26.706661, 36.173687>,  <29.309416, 26.941467, 36.478115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419819, 26.706661, 36.173687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363822, 0.796720, -0.482567,
		0.889636, -0.143702, 0.433472,
		0.276010, -0.587015, -0.761073,
		29.502623, 26.530558, 35.945366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029890, 27.144962, 36.237480>,  <29.309416, 26.941467, 36.478115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029890, 27.144962, 36.237480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930950, 26.933380, 35.912758>,  <29.871586, 26.806431, 35.717926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930950, 26.933380, 35.912758>,  <30.029890, 27.144962, 36.237480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930950, 26.933380, 35.912758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486501, 0.656766, -0.576173,
		0.837934, -0.537459, 0.094886,
		-0.247352, -0.528957, -0.811801,
		29.856745, 26.774693, 35.669216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657269, 26.914362, 35.831280>,  <30.029890, 27.144962, 36.237480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657269, 26.914362, 35.831280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348143, 26.933872, 35.578178>,  <30.162668, 26.945580, 35.426315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348143, 26.933872, 35.578178>,  <30.657269, 26.914362, 35.831280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348143, 26.933872, 35.578178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540012, 0.574309, -0.615269,
		0.333387, -0.817184, -0.470173,
		-0.772813, 0.048776, -0.632757,
		30.116299, 26.948505, 35.388351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039572, 26.970068, 35.147221>,  <30.657269, 26.914362, 35.831280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039572, 26.970068, 35.147221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656616, 27.059467, 35.074062>,  <30.426842, 27.113106, 35.030167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656616, 27.059467, 35.074062>,  <31.039572, 26.970068, 35.147221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656616, 27.059467, 35.074062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275531, 0.517166, -0.810322,
		-0.086517, -0.826189, -0.556711,
		-0.957391, 0.223498, -0.182897,
		30.369398, 27.126516, 35.019192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170738, 26.978460, 34.470493>,  <31.039572, 26.970068, 35.147221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170738, 26.978460, 34.470493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823278, 27.160374, 34.549103>,  <30.614803, 27.269522, 34.596268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823278, 27.160374, 34.549103>,  <31.170738, 26.978460, 34.470493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823278, 27.160374, 34.549103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180659, 0.660125, -0.729107,
		-0.461316, -0.597834, -0.655578,
		-0.868648, 0.454785, 0.196522,
		30.562683, 27.296808, 34.608059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793875, 26.984053, 33.843590>,  <31.170738, 26.978460, 34.470493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793875, 26.984053, 33.843590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655212, 27.286743, 34.065292>,  <30.572014, 27.468357, 34.198315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655212, 27.286743, 34.065292>,  <30.793875, 26.984053, 33.843590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655212, 27.286743, 34.065292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207326, 0.638094, -0.741520,
		-0.914792, -0.142142, -0.378089,
		-0.346658, 0.756724, 0.554254,
		30.551214, 27.513760, 34.231567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385889, 27.335371, 33.396702>,  <30.793875, 26.984053, 33.843590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385889, 27.335371, 33.396702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516062, 27.567238, 33.695522>,  <30.594166, 27.706358, 33.874813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516062, 27.567238, 33.695522>,  <30.385889, 27.335371, 33.396702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516062, 27.567238, 33.695522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344671, 0.662974, -0.664580,
		-0.880509, 0.473761, 0.015958,
		0.325432, 0.579669, 0.747046,
		30.613691, 27.741138, 33.919636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236717, 27.985878, 33.312138>,  <30.385889, 27.335371, 33.396702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236717, 27.985878, 33.312138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543234, 28.048710, 33.561337>,  <30.727144, 28.086409, 33.710857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543234, 28.048710, 33.561337>,  <30.236717, 27.985878, 33.312138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543234, 28.048710, 33.561337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341698, 0.721518, -0.602208,
		-0.544098, 0.674342, 0.499219,
		0.766290, 0.157078, 0.622998,
		30.773121, 28.095833, 33.748238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270329, 28.663231, 33.327343>,  <30.236717, 27.985878, 33.312138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270329, 28.663231, 33.327343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633057, 28.558117, 33.459175>,  <30.850693, 28.495049, 33.538273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633057, 28.558117, 33.459175>,  <30.270329, 28.663231, 33.327343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633057, 28.558117, 33.459175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391079, 0.816242, -0.425214,
		-0.157275, 0.514483, 0.842954,
		0.906820, -0.262786, 0.329578,
		30.905102, 28.479280, 33.558048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565710, 29.262596, 33.748440>,  <30.270329, 28.663231, 33.327343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565710, 29.262596, 33.748440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873487, 29.048672, 33.608765>,  <31.058155, 28.920319, 33.524960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873487, 29.048672, 33.608765>,  <30.565710, 29.262596, 33.748440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873487, 29.048672, 33.608765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473535, 0.844541, -0.250031,
		0.428625, 0.027032, 0.903078,
		0.769445, -0.534809, -0.349191,
		31.104321, 28.888229, 33.504009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109501, 29.711699, 33.972050>,  <30.565710, 29.262596, 33.748440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109501, 29.711699, 33.972050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264694, 29.475063, 33.689350>,  <31.357811, 29.333082, 33.519730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264694, 29.475063, 33.689350>,  <31.109501, 29.711699, 33.972050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264694, 29.475063, 33.689350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552457, 0.763064, -0.335447,
		0.737739, -0.260299, 0.622885,
		0.387985, -0.591589, -0.706746,
		31.381090, 29.297586, 33.477325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733807, 29.920877, 33.916779>,  <31.109501, 29.711699, 33.972050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733807, 29.920877, 33.916779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711267, 29.724369, 33.569107>,  <31.697744, 29.606464, 33.360504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711267, 29.724369, 33.569107>,  <31.733807, 29.920877, 33.916779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711267, 29.724369, 33.569107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386962, 0.791773, -0.472606,
		0.920372, -0.362971, 0.145488,
		-0.056349, -0.491272, -0.869182,
		31.694363, 29.576988, 33.308353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334896, 30.114241, 33.567936>,  <31.733807, 29.920877, 33.916779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334896, 30.114241, 33.567936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111126, 29.943005, 33.284027>,  <31.976864, 29.840263, 33.113682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111126, 29.943005, 33.284027>,  <32.334896, 30.114241, 33.567936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111126, 29.943005, 33.284027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173787, 0.776697, -0.605425,
		0.810456, -0.462040, -0.360109,
		-0.559427, -0.428088, -0.709776,
		31.943298, 29.814579, 33.071095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812195, 30.044607, 32.963505>,  <32.334896, 30.114241, 33.567936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812195, 30.044607, 32.963505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439373, 30.038300, 32.818714>,  <32.215679, 30.034515, 32.731842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439373, 30.038300, 32.818714>,  <32.812195, 30.044607, 32.963505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439373, 30.038300, 32.818714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280061, 0.602478, -0.747386,
		0.229866, -0.797980, -0.557126,
		-0.932056, -0.015770, -0.361972,
		32.159756, 30.033569, 32.710121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859837, 30.000338, 32.248890>,  <32.812195, 30.044607, 32.963505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859837, 30.000338, 32.248890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494888, 30.152061, 32.310482>,  <32.275921, 30.243095, 32.347435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494888, 30.152061, 32.310482>,  <32.859837, 30.000338, 32.248890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494888, 30.152061, 32.310482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107828, 0.585514, -0.803459,
		-0.394917, -0.716446, -0.575105,
		-0.912367, 0.379312, 0.153977,
		32.221180, 30.265856, 32.356674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600075, 29.984583, 31.627712>,  <32.859837, 30.000338, 32.248890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600075, 29.984583, 31.627712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364033, 30.236355, 31.829937>,  <32.222408, 30.387419, 31.951271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364033, 30.236355, 31.829937>,  <32.600075, 29.984583, 31.627712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364033, 30.236355, 31.829937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028125, 0.609810, -0.792048,
		-0.806837, -0.481610, -0.342149,
		-0.590105, 0.629431, 0.505563,
		32.187000, 30.425184, 31.981606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965935, 30.059553, 31.304037>,  <32.600075, 29.984583, 31.627712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965935, 30.059553, 31.304037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960779, 30.395237, 31.521500>,  <31.957685, 30.596647, 31.651978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960779, 30.395237, 31.521500>,  <31.965935, 30.059553, 31.304037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960779, 30.395237, 31.521500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208434, 0.529501, -0.822304,
		-0.977951, -0.123916, 0.168095,
		-0.012890, 0.839210, 0.543655,
		31.956913, 30.646999, 31.684595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452566, 30.377274, 30.987579>,  <31.965935, 30.059553, 31.304037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452566, 30.377274, 30.987579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658094, 30.653915, 31.190624>,  <31.781412, 30.819901, 31.312450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658094, 30.653915, 31.190624>,  <31.452566, 30.377274, 30.987579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658094, 30.653915, 31.190624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086077, 0.630270, -0.771590,
		-0.853567, 0.352767, 0.383378,
		0.513823, 0.691603, 0.507613,
		31.812241, 30.861397, 31.342909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121622, 31.001810, 30.947180>,  <31.452566, 30.377274, 30.987579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121622, 31.001810, 30.947180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504499, 31.087841, 31.024658>,  <31.734226, 31.139460, 31.071146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504499, 31.087841, 31.024658>,  <31.121622, 31.001810, 30.947180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504499, 31.087841, 31.024658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066355, 0.488319, -0.870139,
		-0.281733, 0.845746, 0.453146,
		0.957196, 0.215078, 0.193696,
		31.791658, 31.152365, 31.082767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177885, 31.681360, 30.708216>,  <31.121622, 31.001810, 30.947180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177885, 31.681360, 30.708216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556211, 31.571907, 30.778141>,  <31.783207, 31.506235, 30.820095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556211, 31.571907, 30.778141>,  <31.177885, 31.681360, 30.708216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556211, 31.571907, 30.778141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294858, 0.498316, -0.815316,
		0.135985, 0.822683, 0.551997,
		0.945816, -0.273631, 0.174811,
		31.839956, 31.489819, 30.830584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530239, 32.239517, 30.773230>,  <31.177885, 31.681360, 30.708216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530239, 32.239517, 30.773230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811079, 31.974907, 30.667824>,  <31.979582, 31.816141, 30.604580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811079, 31.974907, 30.667824>,  <31.530239, 32.239517, 30.773230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811079, 31.974907, 30.667824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330682, 0.630640, -0.702099,
		0.630640, 0.405803, 0.661526,
		0.702099, -0.661526, -0.263515,
		32.021709, 31.776449, 30.588770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293198, 32.620216, 30.788546>,  <31.530239, 32.239517, 30.773230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293198, 32.620216, 30.788546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298592, 32.288906, 30.564484>,  <32.301826, 32.090118, 30.430046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298592, 32.288906, 30.564484>,  <32.293198, 32.620216, 30.788546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298592, 32.288906, 30.564484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511806, 0.486976, -0.707749,
		0.858995, -0.277148, 0.430484,
		0.013484, -0.828277, -0.560157,
		32.302635, 32.040424, 30.396437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002106, 32.545410, 30.469315>,  <32.293198, 32.620216, 30.788546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002106, 32.545410, 30.469315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767666, 32.310036, 30.246525>,  <32.627003, 32.168812, 30.112850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767666, 32.310036, 30.246525>,  <33.002106, 32.545410, 30.469315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767666, 32.310036, 30.246525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438603, 0.347573, -0.828746,
		0.681257, -0.730021, 0.054378,
		-0.586102, -0.588440, -0.556977,
		32.591835, 32.133503, 30.079432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370342, 32.679729, 29.924280>,  <33.002106, 32.545410, 30.469315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370342, 32.679729, 29.924280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055878, 32.467106, 29.798168>,  <32.867199, 32.339531, 29.722502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055878, 32.467106, 29.798168>,  <33.370342, 32.679729, 29.924280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055878, 32.467106, 29.798168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293151, 0.128366, -0.947409,
		0.544076, -0.837237, 0.054912,
		-0.786157, -0.531560, -0.315278,
		32.820030, 32.307636, 29.703585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547665, 31.938402, 29.560352>,  <33.370342, 32.679729, 29.924280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547665, 31.938402, 29.560352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206863, 32.107689, 29.437080>,  <33.002380, 32.209259, 29.363117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206863, 32.107689, 29.437080>,  <33.547665, 31.938402, 29.560352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206863, 32.107689, 29.437080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383978, 0.105016, -0.917351,
		-0.355875, -0.899922, -0.251980,
		-0.852006, 0.423217, -0.308177,
		32.951263, 32.234653, 29.344627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420929, 31.743408, 28.830927>,  <33.547665, 31.938402, 29.560352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420929, 31.743408, 28.830927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204494, 32.075718, 28.883129>,  <33.074635, 32.275105, 28.914452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204494, 32.075718, 28.883129>,  <33.420929, 31.743408, 28.830927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204494, 32.075718, 28.883129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242169, 0.302541, -0.921858,
		-0.805342, -0.467204, -0.364891,
		-0.541090, 0.830776, 0.130507,
		33.042168, 32.324951, 28.922281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026649, 31.776400, 28.219881>,  <33.420929, 31.743408, 28.830927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026649, 31.776400, 28.219881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020412, 32.146561, 28.371349>,  <33.016670, 32.368656, 28.462231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020412, 32.146561, 28.371349>,  <33.026649, 31.776400, 28.219881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020412, 32.146561, 28.371349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195264, 0.374240, -0.906541,
		-0.980627, 0.059808, -0.186532,
		-0.015589, 0.925401, 0.378669,
		33.015736, 32.424183, 28.484949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740479, 32.177097, 27.759581>,  <33.026649, 31.776400, 28.219881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740479, 32.177097, 27.759581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887722, 32.480915, 27.974091>,  <32.976067, 32.663204, 28.102797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887722, 32.480915, 27.974091>,  <32.740479, 32.177097, 27.759581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887722, 32.480915, 27.974091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076311, 0.550149, -0.831573,
		-0.926647, 0.347031, 0.144552,
		0.368106, 0.759544, 0.536276,
		32.998154, 32.708778, 28.134974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405674, 32.768276, 27.503021>,  <32.740479, 32.177097, 27.759581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405674, 32.768276, 27.503021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762108, 32.868225, 27.654560>,  <32.975967, 32.928192, 27.745483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762108, 32.868225, 27.654560>,  <32.405674, 32.768276, 27.503021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762108, 32.868225, 27.654560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231150, 0.468503, -0.852686,
		-0.390551, 0.847390, 0.359721,
		0.891089, 0.249868, 0.378849,
		33.029434, 32.943184, 27.768215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412529, 33.426746, 27.420040>,  <32.405674, 32.768276, 27.503021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412529, 33.426746, 27.420040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772530, 33.252419, 27.416954>,  <32.988529, 33.147823, 27.415102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772530, 33.252419, 27.416954>,  <32.412529, 33.426746, 27.420040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772530, 33.252419, 27.416954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158027, 0.342737, -0.926045,
		0.406231, 0.832223, 0.377335,
		0.900002, -0.435817, -0.007717,
		33.042530, 33.121674, 27.414639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983776, 34.012501, 27.585835>,  <32.412529, 33.426746, 27.420040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983776, 34.012501, 27.585835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712769, 34.304787, 27.552311>,  <31.550163, 34.480156, 27.532196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712769, 34.304787, 27.552311>,  <31.983776, 34.012501, 27.585835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712769, 34.304787, 27.552311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634519, -0.523064, 0.569025,
		0.371956, 0.438705, 0.818038,
		-0.677521, 0.730713, -0.083810,
		31.509512, 34.524002, 27.527168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715311, 34.325829, 28.317282>,  <31.983776, 34.012501, 27.585835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715311, 34.325829, 28.317282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442429, 34.296421, 28.026299>,  <31.278700, 34.278778, 27.851709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442429, 34.296421, 28.026299>,  <31.715311, 34.325829, 28.317282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442429, 34.296421, 28.026299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641640, -0.416835, 0.643853,
		-0.350565, 0.906004, 0.237194,
		-0.682204, -0.073519, -0.727456,
		31.237768, 34.274364, 27.808062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047417, 34.474232, 28.634129>,  <31.715311, 34.325829, 28.317282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047417, 34.474232, 28.634129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966774, 34.241718, 28.318798>,  <30.918388, 34.102211, 28.129599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966774, 34.241718, 28.318798>,  <31.047417, 34.474232, 28.634129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966774, 34.241718, 28.318798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518613, -0.619422, 0.589370,
		-0.830900, 0.527657, -0.176585,
		-0.201605, -0.581287, -0.788328,
		30.906292, 34.067333, 28.082300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371296, 34.267990, 28.814079>,  <31.047417, 34.474232, 28.634129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371296, 34.267990, 28.814079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440033, 34.037838, 28.494228>,  <30.481276, 33.899746, 28.302319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440033, 34.037838, 28.494228>,  <30.371296, 34.267990, 28.814079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440033, 34.037838, 28.494228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571960, -0.719155, 0.394561,
		-0.802080, 0.389553, -0.452677,
		0.171842, -0.575383, -0.799628,
		30.491585, 33.865223, 28.254339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696827, 34.187061, 28.520922>,  <30.371296, 34.267990, 28.814079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696827, 34.187061, 28.520922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941099, 33.897392, 28.392773>,  <30.087662, 33.723591, 28.315884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941099, 33.897392, 28.392773>,  <29.696827, 34.187061, 28.520922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941099, 33.897392, 28.392773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502834, -0.667166, 0.549588,
		-0.611740, -0.174529, -0.771566,
		0.610682, -0.724174, -0.320373,
		30.124304, 33.680141, 28.296661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294180, 33.689693, 28.210602>,  <29.696827, 34.187061, 28.520922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294180, 33.689693, 28.210602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628035, 33.497093, 28.317585>,  <29.828348, 33.381531, 28.381775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628035, 33.497093, 28.317585>,  <29.294180, 33.689693, 28.210602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628035, 33.497093, 28.317585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549778, -0.698744, 0.457713,
		-0.033507, -0.529067, -0.847918,
		0.834638, -0.481504, 0.267457,
		29.878426, 33.352642, 28.397821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107939, 33.007950, 28.050808>,  <29.294180, 33.689693, 28.210602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107939, 33.007950, 28.050808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388708, 33.001350, 28.335632>,  <29.557171, 32.997391, 28.506527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388708, 33.001350, 28.335632>,  <29.107939, 33.007950, 28.050808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388708, 33.001350, 28.335632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552926, -0.642808, 0.530160,
		0.448970, -0.765849, -0.460327,
		0.701925, -0.016501, 0.712060,
		29.599285, 32.996399, 28.549250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060722, 32.324413, 28.295383>,  <29.107939, 33.007950, 28.050808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060722, 32.324413, 28.295383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267658, 32.494144, 28.592651>,  <29.391819, 32.595985, 28.771013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267658, 32.494144, 28.592651>,  <29.060722, 32.324413, 28.295383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267658, 32.494144, 28.592651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332101, -0.700811, 0.631327,
		0.788713, -0.573418, -0.221637,
		0.517340, 0.424330, 0.743171,
		29.422861, 32.621445, 28.815603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602566, 31.819441, 28.585697>,  <29.060722, 32.324413, 28.295383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602566, 31.819441, 28.585697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529470, 32.082981, 28.877594>,  <29.485613, 32.241104, 29.052732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529470, 32.082981, 28.877594>,  <29.602566, 31.819441, 28.585697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529470, 32.082981, 28.877594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197722, -0.751702, 0.629166,
		0.963075, -0.029313, 0.267634,
		-0.182738, 0.658851, 0.729741,
		29.474649, 32.280636, 29.096516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001505, 31.604130, 29.257999>,  <29.602566, 31.819441, 28.585697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001505, 31.604130, 29.257999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703178, 31.846004, 29.369793>,  <29.524181, 31.991129, 29.436869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703178, 31.846004, 29.369793>,  <30.001505, 31.604130, 29.257999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703178, 31.846004, 29.369793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137960, -0.550664, 0.823247,
		0.651708, 0.575435, 0.494117,
		-0.745818, 0.604685, 0.279485,
		29.479433, 32.027409, 29.453638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156460, 31.837673, 29.968225>,  <30.001505, 31.604130, 29.257999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156460, 31.837673, 29.968225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763653, 31.903893, 29.931934>,  <29.527967, 31.943624, 29.910160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763653, 31.903893, 29.931934>,  <30.156460, 31.837673, 29.968225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763653, 31.903893, 29.931934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152794, -0.414747, 0.897017,
		0.110868, 0.894751, 0.432584,
		-0.982020, 0.165547, -0.090730,
		29.469048, 31.953556, 29.904715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979807, 32.119736, 30.587685>,  <30.156460, 31.837673, 29.968225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979807, 32.119736, 30.587685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636658, 31.985588, 30.431953>,  <29.430767, 31.905100, 30.338514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636658, 31.985588, 30.431953>,  <29.979807, 32.119736, 30.587685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636658, 31.985588, 30.431953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176105, -0.519893, 0.835882,
		-0.482739, 0.785645, 0.386943,
		-0.857875, -0.335370, -0.389329,
		29.379295, 31.884977, 30.315155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555500, 32.109444, 31.165449>,  <29.979807, 32.119736, 30.587685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555500, 32.109444, 31.165449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350719, 31.875107, 30.914150>,  <29.227852, 31.734505, 30.763371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350719, 31.875107, 30.914150>,  <29.555500, 32.109444, 31.165449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350719, 31.875107, 30.914150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307793, -0.557694, 0.770870,
		-0.801978, 0.588018, 0.105195,
		-0.511952, -0.585843, -0.628246,
		29.197134, 31.699354, 30.725676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811926, 32.135704, 31.318588>,  <29.555500, 32.109444, 31.165449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811926, 32.135704, 31.318588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884485, 31.788071, 31.134506>,  <28.928020, 31.579491, 31.024057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884485, 31.788071, 31.134506>,  <28.811926, 32.135704, 31.318588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884485, 31.788071, 31.134506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434626, -0.490636, 0.755233,
		-0.882153, 0.063018, -0.466728,
		0.181400, -0.869083, -0.460205,
		28.938906, 31.527346, 30.996445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289034, 31.728064, 31.515451>,  <28.811926, 32.135704, 31.318588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289034, 31.728064, 31.515451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518160, 31.432003, 31.374561>,  <28.655636, 31.254368, 31.290028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518160, 31.432003, 31.374561>,  <28.289034, 31.728064, 31.515451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518160, 31.432003, 31.374561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323674, -0.599032, 0.732391,
		-0.753074, -0.305516, -0.582700,
		0.572813, -0.740149, -0.352227,
		28.690004, 31.209959, 31.268892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872980, 31.079901, 31.486717>,  <28.289034, 31.728064, 31.515451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872980, 31.079901, 31.486717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252506, 30.953823, 31.478657>,  <28.480221, 30.878178, 31.473820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252506, 30.953823, 31.478657>,  <27.872980, 31.079901, 31.486717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252506, 30.953823, 31.478657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215152, -0.691742, 0.689349,
		-0.231218, -0.649728, -0.724149,
		0.948814, -0.315192, -0.020153,
		28.537151, 30.859266, 31.472610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831696, 30.339920, 31.613503>,  <27.872980, 31.079901, 31.486717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831696, 30.339920, 31.613503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211716, 30.432480, 31.697269>,  <28.439728, 30.488016, 31.747530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211716, 30.432480, 31.697269>,  <27.831696, 30.339920, 31.613503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211716, 30.432480, 31.697269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063418, -0.513878, 0.855516,
		0.305581, -0.826065, -0.473536,
		0.950052, 0.231398, 0.209419,
		28.496731, 30.501900, 31.760096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131527, 29.680599, 31.680122>,  <27.831696, 30.339920, 31.613503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131527, 29.680599, 31.680122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349321, 29.947456, 31.883476>,  <28.479998, 30.107571, 32.005489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349321, 29.947456, 31.883476>,  <28.131527, 29.680599, 31.680122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349321, 29.947456, 31.883476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053242, -0.632375, 0.772831,
		0.837078, -0.393728, -0.379840,
		0.544486, 0.667143, 0.508385,
		28.512667, 30.147600, 32.035992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748222, 29.262331, 31.869242>,  <28.131527, 29.680599, 31.680122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748222, 29.262331, 31.869242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701128, 29.589970, 32.093819>,  <28.672871, 29.786552, 32.228565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701128, 29.589970, 32.093819>,  <28.748222, 29.262331, 31.869242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701128, 29.589970, 32.093819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148920, -0.573544, 0.805525,
		0.981815, 0.011231, 0.189508,
		-0.117738, 0.819098, 0.561441,
		28.665806, 29.835699, 32.262253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102779, 29.098587, 32.412899>,  <28.748222, 29.262331, 31.869242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102779, 29.098587, 32.412899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900877, 29.419235, 32.541039>,  <28.779736, 29.611624, 32.617924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900877, 29.419235, 32.541039>,  <29.102779, 29.098587, 32.412899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900877, 29.419235, 32.541039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159734, -0.451414, 0.877901,
		0.848356, 0.391954, 0.355899,
		-0.504755, 0.801622, 0.320351,
		28.749451, 29.659721, 32.637142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358519, 29.314840, 33.024727>,  <29.102779, 29.098587, 32.412899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358519, 29.314840, 33.024727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985752, 29.459885, 33.022152>,  <28.762093, 29.546911, 33.020607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985752, 29.459885, 33.022152>,  <29.358519, 29.314840, 33.024727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985752, 29.459885, 33.022152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241399, -0.606962, 0.757181,
		0.270657, 0.707184, 0.653173,
		-0.931918, 0.362612, -0.006435,
		28.706177, 29.568668, 33.020222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137051, 29.714090, 33.714787>,  <29.358519, 29.314840, 33.024727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137051, 29.714090, 33.714787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806280, 29.580215, 33.534042>,  <28.607817, 29.499889, 33.425598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806280, 29.580215, 33.534042>,  <29.137051, 29.714090, 33.714787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806280, 29.580215, 33.534042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302657, -0.412330, 0.859292,
		-0.473910, 0.847330, 0.239671,
		-0.826927, -0.334688, -0.451857,
		28.558203, 29.479809, 33.398483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584593, 29.841785, 34.237309>,  <29.137051, 29.714090, 33.714787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584593, 29.841785, 34.237309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427540, 29.559845, 34.000996>,  <28.333309, 29.390680, 33.859207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427540, 29.559845, 34.000996>,  <28.584593, 29.841785, 34.237309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427540, 29.559845, 34.000996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330715, -0.491195, 0.805826,
		-0.858177, 0.511774, -0.040246,
		-0.392632, -0.704851, -0.590784,
		28.309750, 29.348391, 33.823761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192602, 29.532955, 34.729904>,  <28.584593, 29.841785, 34.237309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192602, 29.532955, 34.729904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192852, 29.281857, 34.418537>,  <28.193003, 29.131197, 34.231716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192852, 29.281857, 34.418537>,  <28.192602, 29.532955, 34.729904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192852, 29.281857, 34.418537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317137, -0.738362, 0.595186,
		-0.948380, 0.246493, -0.199543,
		0.000626, -0.627745, -0.778419,
		28.193039, 29.093533, 34.185013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459646, 29.077982, 34.714191>,  <28.192602, 29.532955, 34.729904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459646, 29.077982, 34.714191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740019, 28.884453, 34.504578>,  <27.908241, 28.768335, 34.378811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740019, 28.884453, 34.504578>,  <27.459646, 29.077982, 34.714191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740019, 28.884453, 34.504578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347540, -0.873296, 0.341425,
		-0.622826, -0.057193, -0.780267,
		0.700931, -0.483822, -0.524035,
		27.950298, 28.739305, 34.347366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168066, 28.492161, 34.314030>,  <27.459646, 29.077982, 34.714191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168066, 28.492161, 34.314030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554853, 28.390373, 34.308186>,  <27.786926, 28.329300, 34.304680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554853, 28.390373, 34.308186>,  <27.168066, 28.492161, 34.314030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554853, 28.390373, 34.308186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249392, -0.956405, 0.151966,
		-0.052641, -0.143304, -0.988278,
		0.966971, -0.254469, -0.014607,
		27.844944, 28.314034, 34.303802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309963, 27.924917, 33.810638>,  <27.168066, 28.492161, 34.314030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309963, 27.924917, 33.810638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604492, 27.914406, 34.081085>,  <27.781210, 27.908098, 34.243355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604492, 27.914406, 34.081085>,  <27.309963, 27.924917, 33.810638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604492, 27.914406, 34.081085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214710, -0.956677, 0.196645,
		0.641661, -0.289964, -0.710065,
		0.736323, -0.026279, 0.676120,
		27.825390, 27.906523, 34.283920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446177, 27.253134, 33.871723>,  <27.309963, 27.924917, 33.810638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446177, 27.253134, 33.871723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639133, 27.374496, 34.200417>,  <27.754908, 27.447313, 34.397633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639133, 27.374496, 34.200417>,  <27.446177, 27.253134, 33.871723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639133, 27.374496, 34.200417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265237, -0.843465, 0.467136,
		0.834833, -0.443297, -0.326407,
		0.482393, 0.303406, 0.821731,
		27.783852, 27.465519, 34.446938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923449, 26.749060, 34.044430>,  <27.446177, 27.253134, 33.871723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923449, 26.749060, 34.044430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830902, 26.954411, 34.374985>,  <27.775373, 27.077621, 34.573318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830902, 26.954411, 34.374985>,  <27.923449, 26.749060, 34.044430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830902, 26.954411, 34.374985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134289, -0.858155, 0.495515,
		0.963553, 0.003672, 0.267491,
		-0.231368, 0.513377, 0.826385,
		27.761492, 27.108423, 34.622902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282505, 26.407301, 34.502579>,  <27.923449, 26.749060, 34.044430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282505, 26.407301, 34.502579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000242, 26.604057, 34.706573>,  <27.830885, 26.722111, 34.828972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000242, 26.604057, 34.706573>,  <28.282505, 26.407301, 34.502579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000242, 26.604057, 34.706573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262885, -0.850145, 0.456230,
		0.657979, 0.187875, 0.729223,
		-0.705659, 0.491892, 0.509988,
		27.788544, 26.751625, 34.859570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385988, 26.373413, 35.238472>,  <28.282505, 26.407301, 34.502579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385988, 26.373413, 35.238472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996487, 26.455341, 35.198769>,  <27.762785, 26.504499, 35.174946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996487, 26.455341, 35.198769>,  <28.385988, 26.373413, 35.238472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996487, 26.455341, 35.198769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227363, -0.855195, 0.465777,
		0.010516, 0.476119, 0.879318,
		-0.973753, 0.204822, -0.099258,
		27.704361, 26.516788, 35.168991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037382, 26.289146, 35.935028>,  <28.385988, 26.373413, 35.238472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037382, 26.289146, 35.935028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753397, 26.261635, 35.654678>,  <27.583006, 26.245129, 35.486469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753397, 26.261635, 35.654678>,  <28.037382, 26.289146, 35.935028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753397, 26.261635, 35.654678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305058, -0.866966, 0.394093,
		-0.634737, 0.493598, 0.594533,
		-0.709964, -0.068778, -0.700871,
		27.540407, 26.241001, 35.444416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514071, 26.004988, 36.297176>,  <28.037382, 26.289146, 35.935028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514071, 26.004988, 36.297176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407574, 25.925373, 35.919922>,  <27.343676, 25.877605, 35.693569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407574, 25.925373, 35.919922>,  <27.514071, 26.004988, 36.297176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407574, 25.925373, 35.919922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240096, -0.933916, 0.264869,
		-0.933524, 0.296962, 0.200862,
		-0.266244, -0.199035, -0.943133,
		27.327700, 25.865662, 35.636982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801586, 25.768366, 36.320404>,  <27.514071, 26.004988, 36.297176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801586, 25.768366, 36.320404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935535, 25.639427, 35.966240>,  <27.015905, 25.562063, 35.753742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935535, 25.639427, 35.966240>,  <26.801586, 25.768366, 36.320404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935535, 25.639427, 35.966240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365472, -0.910537, 0.193268,
		-0.868499, 0.258872, -0.422724,
		0.334874, -0.322347, -0.885411,
		27.035997, 25.542723, 35.700615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241240, 25.364801, 36.028812>,  <26.801586, 25.768366, 36.320404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241240, 25.364801, 36.028812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586401, 25.256714, 35.857986>,  <26.793497, 25.191862, 35.755489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586401, 25.256714, 35.857986>,  <26.241240, 25.364801, 36.028812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586401, 25.256714, 35.857986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246802, -0.962747, 0.110485,
		-0.441009, 0.010062, -0.897446,
		0.862902, -0.270216, -0.427064,
		26.845272, 25.175650, 35.729866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070713, 24.838549, 35.535286>,  <26.241240, 25.364801, 36.028812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070713, 24.838549, 35.535286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454037, 24.794067, 35.640572>,  <26.684031, 24.767380, 35.703743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454037, 24.794067, 35.640572>,  <26.070713, 24.838549, 35.535286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454037, 24.794067, 35.640572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178392, -0.952423, 0.247117,
		0.223209, -0.283769, -0.932552,
		0.958308, -0.111201, 0.263212,
		26.741529, 24.760708, 35.719536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313658, 24.213642, 35.186069>,  <26.070713, 24.838549, 35.535286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313658, 24.213642, 35.186069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588717, 24.303738, 35.462158>,  <26.753752, 24.357794, 35.627811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588717, 24.303738, 35.462158>,  <26.313658, 24.213642, 35.186069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588717, 24.303738, 35.462158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172713, -0.872627, 0.456829,
		0.705202, -0.433348, -0.561159,
		0.687648, 0.225237, 0.690223,
		26.795012, 24.371309, 35.669224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719151, 23.588474, 35.254097>,  <26.313658, 24.213642, 35.186069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719151, 23.588474, 35.254097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848845, 23.776562, 35.582428>,  <26.926661, 23.889414, 35.779427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848845, 23.776562, 35.582428>,  <26.719151, 23.588474, 35.254097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848845, 23.776562, 35.582428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103831, -0.844775, 0.524951,
		0.940261, -0.255435, -0.225081,
		0.324234, 0.470221, 0.820832,
		26.946115, 23.917627, 35.828678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076887, 23.041945, 34.819866>,  <26.719151, 23.588474, 35.254097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076887, 23.041945, 34.819866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906105, 22.806801, 34.545021>,  <26.803635, 22.665714, 34.380112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906105, 22.806801, 34.545021>,  <27.076887, 23.041945, 34.819866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906105, 22.806801, 34.545021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410409, 0.551116, -0.726523,
		0.805774, -0.592193, 0.005960,
		-0.426958, -0.587859, -0.687116,
		26.778017, 22.630444, 34.338886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638798, 22.743727, 34.400299>,  <27.076887, 23.041945, 34.819866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638798, 22.743727, 34.400299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302353, 22.771072, 34.185692>,  <27.100485, 22.787479, 34.056927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302353, 22.771072, 34.185692>,  <27.638798, 22.743727, 34.400299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302353, 22.771072, 34.185692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495564, 0.494794, -0.713859,
		0.216665, -0.866317, -0.450057,
		-0.841113, 0.068364, -0.536520,
		27.050018, 22.791582, 34.024734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885714, 22.677128, 33.684128>,  <27.638798, 22.743727, 34.400299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885714, 22.677128, 33.684128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525196, 22.850304, 33.678001>,  <27.308886, 22.954210, 33.674324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525196, 22.850304, 33.678001>,  <27.885714, 22.677128, 33.684128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525196, 22.850304, 33.678001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314228, 0.628995, -0.711074,
		-0.298218, -0.645699, -0.702950,
		-0.901292, 0.432941, -0.015319,
		27.254808, 22.980186, 33.673405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634039, 22.644403, 33.000843>,  <27.885714, 22.677128, 33.684128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634039, 22.644403, 33.000843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414339, 22.939102, 33.158592>,  <27.282520, 23.115921, 33.253242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414339, 22.939102, 33.158592>,  <27.634039, 22.644403, 33.000843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414339, 22.939102, 33.158592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251198, 0.595664, -0.762944,
		-0.797011, -0.319980, -0.512236,
		-0.549248, 0.736747, 0.394373,
		27.249565, 23.160126, 33.276905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305086, 22.896484, 32.461246>,  <27.634039, 22.644403, 33.000843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305086, 22.896484, 32.461246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302624, 23.197853, 32.724251>,  <27.301146, 23.378675, 32.882053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302624, 23.197853, 32.724251>,  <27.305086, 22.896484, 32.461246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302624, 23.197853, 32.724251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024823, 0.657432, -0.753105,
		-0.999673, 0.011684, -0.022750,
		-0.006157, 0.753423, 0.657507,
		27.300777, 23.423880, 32.921501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810389, 23.314705, 32.267742>,  <27.305086, 22.896484, 32.461246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810389, 23.314705, 32.267742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035278, 23.547470, 32.502785>,  <27.170212, 23.687128, 32.643810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035278, 23.547470, 32.502785>,  <26.810389, 23.314705, 32.267742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035278, 23.547470, 32.502785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096792, 0.751962, -0.652062,
		-0.821300, 0.309730, 0.479096,
		0.562225, 0.581911, 0.587607,
		27.203945, 23.722044, 32.679066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429142, 24.050577, 32.414238>,  <26.810389, 23.314705, 32.267742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429142, 24.050577, 32.414238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816072, 24.091827, 32.506882>,  <27.048231, 24.116577, 32.562469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816072, 24.091827, 32.506882>,  <26.429142, 24.050577, 32.414238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816072, 24.091827, 32.506882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021841, 0.876244, -0.481372,
		-0.252587, 0.470703, 0.845363,
		0.967328, 0.103124, 0.231608,
		27.106272, 24.122765, 32.576363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515884, 24.723108, 32.616978>,  <26.429142, 24.050577, 32.414238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515884, 24.723108, 32.616978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894962, 24.612671, 32.552921>,  <27.122410, 24.546408, 32.514488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894962, 24.612671, 32.552921>,  <26.515884, 24.723108, 32.616978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894962, 24.612671, 32.552921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195495, 0.898716, -0.392545,
		0.252298, 0.340707, 0.905684,
		0.947696, -0.276095, -0.160138,
		27.179272, 24.529842, 32.504879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926168, 25.351315, 32.726868>,  <26.515884, 24.723108, 32.616978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926168, 25.351315, 32.726868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157141, 25.106514, 32.510708>,  <27.295723, 24.959633, 32.381012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157141, 25.106514, 32.510708>,  <26.926168, 25.351315, 32.726868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157141, 25.106514, 32.510708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411619, 0.789839, -0.454669,
		0.705086, 0.040101, 0.707987,
		0.577429, -0.612001, -0.540398,
		27.330370, 24.922913, 32.348587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571066, 25.616735, 32.729820>,  <26.926168, 25.351315, 32.726868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571066, 25.616735, 32.729820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574587, 25.393101, 32.398193>,  <27.576700, 25.258921, 32.199219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574587, 25.393101, 32.398193>,  <27.571066, 25.616735, 32.729820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574587, 25.393101, 32.398193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559405, 0.689974, -0.459349,
		0.828848, -0.459737, 0.318830,
		0.008805, -0.559086, -0.829063,
		27.577229, 25.225374, 32.149475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207582, 25.791056, 32.498962>,  <27.571066, 25.616735, 32.729820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207582, 25.791056, 32.498962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003191, 25.613579, 32.204472>,  <27.880556, 25.507092, 32.027775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003191, 25.613579, 32.204472>,  <28.207582, 25.791056, 32.498962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003191, 25.613579, 32.204472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524075, 0.518091, -0.675964,
		0.681355, -0.731244, -0.032205,
		-0.510980, -0.443693, -0.736231,
		27.849897, 25.480471, 31.983603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731066, 25.692646, 31.941998>,  <28.207582, 25.791056, 32.498962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731066, 25.692646, 31.941998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378790, 25.687355, 31.752594>,  <28.167425, 25.684181, 31.638952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378790, 25.687355, 31.752594>,  <28.731066, 25.692646, 31.941998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378790, 25.687355, 31.752594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332981, 0.693678, -0.638698,
		0.336910, -0.720164, -0.606511,
		-0.880691, -0.013228, -0.473508,
		28.114582, 25.683386, 31.610542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896139, 25.861883, 31.289274>,  <28.731066, 25.692646, 31.941998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896139, 25.861883, 31.289274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501484, 25.910240, 31.245575>,  <28.264690, 25.939255, 31.219355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501484, 25.910240, 31.245575>,  <28.896139, 25.861883, 31.289274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501484, 25.910240, 31.245575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162227, 0.791514, -0.589226,
		0.015239, -0.599075, -0.800548,
		-0.986636, 0.120891, -0.109248,
		28.205494, 25.946508, 31.212801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762440, 25.891617, 30.494343>,  <28.896139, 25.861883, 31.289274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762440, 25.891617, 30.494343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483229, 26.087059, 30.703732>,  <28.315702, 26.204325, 30.829365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483229, 26.087059, 30.703732>,  <28.762440, 25.891617, 30.494343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483229, 26.087059, 30.703732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121398, 0.801198, -0.585956,
		-0.705706, -0.345464, -0.618574,
		-0.698027, 0.488606, 0.523471,
		28.273821, 26.233641, 30.860773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327404, 26.186747, 30.057030>,  <28.762440, 25.891617, 30.494343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327404, 26.186747, 30.057030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264421, 26.404713, 30.386459>,  <28.226631, 26.535492, 30.584118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264421, 26.404713, 30.386459>,  <28.327404, 26.186747, 30.057030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264421, 26.404713, 30.386459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012903, 0.835043, -0.550034,
		-0.987441, -0.075981, -0.138516,
		-0.157458, 0.544914, 0.823575,
		28.217184, 26.568188, 30.633532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876875, 26.622839, 29.823784>,  <28.327404, 26.186747, 30.057030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876875, 26.622839, 29.823784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014635, 26.800968, 30.154377>,  <28.097290, 26.907846, 30.352734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014635, 26.800968, 30.154377>,  <27.876875, 26.622839, 29.823784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014635, 26.800968, 30.154377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025495, 0.884453, -0.465933,
		-0.938477, 0.139395, 0.315957,
		0.344398, 0.445323, 0.826485,
		28.117954, 26.934565, 30.402323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428200, 27.123014, 29.914495>,  <27.876875, 26.622839, 29.823784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428200, 27.123014, 29.914495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757994, 27.206203, 30.125008>,  <27.955870, 27.256117, 30.251316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757994, 27.206203, 30.125008>,  <27.428200, 27.123014, 29.914495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757994, 27.206203, 30.125008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065642, 0.958887, -0.276093,
		-0.562065, 0.193088, 0.804238,
		0.824484, 0.207974, 0.526282,
		28.005339, 27.268595, 30.282892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177237, 27.593021, 30.404621>,  <27.428200, 27.123014, 29.914495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177237, 27.593021, 30.404621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571531, 27.618649, 30.342377>,  <27.808109, 27.634026, 30.305031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571531, 27.618649, 30.342377>,  <27.177237, 27.593021, 30.404621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571531, 27.618649, 30.342377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109790, 0.945635, -0.306138,
		0.127537, 0.318857, 0.939183,
		0.985738, 0.064069, -0.155611,
		27.867252, 27.637869, 30.295694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457767, 28.279053, 30.719610>,  <27.177237, 27.593021, 30.404621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457767, 28.279053, 30.719610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738007, 28.175423, 30.453667>,  <27.906151, 28.113245, 30.294100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738007, 28.175423, 30.453667>,  <27.457767, 28.279053, 30.719610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738007, 28.175423, 30.453667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082285, 0.954876, -0.285380,
		0.708795, 0.145229, 0.690303,
		0.700599, -0.259077, -0.664861,
		27.948187, 28.097700, 30.254208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960884, 28.776972, 30.731262>,  <27.457767, 28.279053, 30.719610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960884, 28.776972, 30.731262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082920, 28.580612, 30.404842>,  <28.156141, 28.462795, 30.208990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082920, 28.580612, 30.404842>,  <27.960884, 28.776972, 30.731262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082920, 28.580612, 30.404842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081840, 0.867248, -0.491103,
		0.948800, 0.083045, 0.304765,
		0.305091, -0.490900, -0.816049,
		28.174448, 28.433342, 30.160028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666925, 29.071329, 30.561441>,  <27.960884, 28.776972, 30.731262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666925, 29.071329, 30.561441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498228, 28.917099, 30.233181>,  <28.397011, 28.824560, 30.036224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498228, 28.917099, 30.233181>,  <28.666925, 29.071329, 30.561441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498228, 28.917099, 30.233181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053299, 0.892972, -0.446946,
		0.905151, -0.232234, -0.356047,
		-0.421736, -0.385577, -0.820652,
		28.371706, 28.801426, 29.986986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992487, 29.384214, 29.937649>,  <28.666925, 29.071329, 30.561441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992487, 29.384214, 29.937649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637760, 29.249733, 29.810829>,  <28.424925, 29.169044, 29.734737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637760, 29.249733, 29.810829>,  <28.992487, 29.384214, 29.937649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637760, 29.249733, 29.810829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123358, 0.833410, -0.538712,
		0.445350, -0.438629, -0.780556,
		-0.886818, -0.336204, -0.317051,
		28.371716, 29.148872, 29.715714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021076, 29.606695, 29.260990>,  <28.992487, 29.384214, 29.937649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021076, 29.606695, 29.260990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637037, 29.515068, 29.325172>,  <28.406614, 29.460093, 29.363682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637037, 29.515068, 29.325172>,  <29.021076, 29.606695, 29.260990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637037, 29.515068, 29.325172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278581, 0.732643, -0.620988,
		0.024691, -0.640908, -0.767221,
		-0.960095, -0.229066, 0.160455,
		28.349009, 29.446348, 29.373308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756535, 29.588013, 28.590801>,  <29.021076, 29.606695, 29.260990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756535, 29.588013, 28.590801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418709, 29.591629, 28.804951>,  <28.216013, 29.593798, 28.933441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418709, 29.591629, 28.804951>,  <28.756535, 29.588013, 28.590801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418709, 29.591629, 28.804951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251920, 0.875577, -0.412191,
		-0.472487, -0.482994, -0.737205,
		-0.844566, 0.009039, 0.535375,
		28.165339, 29.594341, 28.965563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235231, 29.664251, 28.078657>,  <28.756535, 29.588013, 28.590801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235231, 29.664251, 28.078657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073450, 29.774529, 28.427464>,  <27.976381, 29.840694, 28.636747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073450, 29.774529, 28.427464>,  <28.235231, 29.664251, 28.078657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073450, 29.774529, 28.427464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575091, 0.664717, -0.476887,
		-0.711118, -0.694367, -0.110298,
		-0.404452, 0.275692, 0.872017,
		27.952114, 29.857237, 28.689068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560511, 29.792765, 27.888266>,  <28.235231, 29.664251, 28.078657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560511, 29.792765, 27.888266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592474, 30.017563, 28.217575>,  <27.611652, 30.152441, 28.415161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592474, 30.017563, 28.217575>,  <27.560511, 29.792765, 27.888266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592474, 30.017563, 28.217575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466181, 0.751094, -0.467476,
		-0.881073, -0.346439, 0.322009,
		0.079907, 0.561995, 0.823272,
		27.616446, 30.186161, 28.464556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891094, 30.052221, 28.108822>,  <27.560511, 29.792765, 27.888266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891094, 30.052221, 28.108822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132215, 30.319347, 28.283474>,  <27.276888, 30.479624, 28.388266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132215, 30.319347, 28.283474>,  <26.891094, 30.052221, 28.108822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132215, 30.319347, 28.283474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487897, 0.741519, -0.460550,
		-0.631334, 0.064591, 0.772817,
		0.602805, 0.667816, 0.436632,
		27.313057, 30.519691, 28.414463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434050, 30.666164, 28.128593>,  <26.891094, 30.052221, 28.108822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434050, 30.666164, 28.128593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804352, 30.797237, 28.204063>,  <27.026533, 30.875881, 28.249346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804352, 30.797237, 28.204063>,  <26.434050, 30.666164, 28.128593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804352, 30.797237, 28.204063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203080, 0.851792, -0.482917,
		-0.318957, 0.408747, 0.855098,
		0.925756, 0.327684, 0.188676,
		27.082079, 30.895542, 28.260666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323940, 31.302691, 28.305698>,  <26.434050, 30.666164, 28.128593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323940, 31.302691, 28.305698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713165, 31.300953, 28.213497>,  <26.946701, 31.299910, 28.158176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713165, 31.300953, 28.213497>,  <26.323940, 31.302691, 28.305698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713165, 31.300953, 28.213497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110918, 0.867679, -0.484592,
		0.202108, 0.497105, 0.843824,
		0.973062, -0.004345, -0.230503,
		27.005083, 31.299650, 28.144346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486599, 31.960279, 28.671103>,  <26.323940, 31.302691, 28.305698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486599, 31.960279, 28.671103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741556, 31.847363, 28.384315>,  <26.894531, 31.779613, 28.212244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741556, 31.847363, 28.384315>,  <26.486599, 31.960279, 28.671103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741556, 31.847363, 28.384315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174297, 0.853537, -0.491014,
		0.750567, 0.437934, 0.494836,
		0.637392, -0.282290, -0.716968,
		26.932774, 31.762676, 28.169226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795609, 32.606651, 28.444244>,  <26.486599, 31.960279, 28.671103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795609, 32.606651, 28.444244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922318, 32.351688, 28.163284>,  <26.998343, 32.198711, 27.994709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922318, 32.351688, 28.163284>,  <26.795609, 32.606651, 28.444244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922318, 32.351688, 28.163284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055308, 0.751690, -0.657194,
		0.946888, 0.169332, 0.273367,
		0.316772, -0.637408, -0.702400,
		27.017349, 32.160465, 27.952564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494549, 32.778461, 28.096727>,  <26.795609, 32.606651, 28.444244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494549, 32.778461, 28.096727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269613, 32.555714, 27.852215>,  <27.134651, 32.422066, 27.705507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269613, 32.555714, 27.852215>,  <27.494549, 32.778461, 28.096727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269613, 32.555714, 27.852215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141595, 0.793170, -0.592310,
		0.814694, -0.246524, -0.524881,
		-0.562339, -0.556872, -0.611284,
		27.100910, 32.388653, 27.668831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699224, 32.969105, 27.359806>,  <27.494549, 32.778461, 28.096727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699224, 32.969105, 27.359806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342621, 32.788433, 27.345936>,  <27.128658, 32.680031, 27.337614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342621, 32.788433, 27.345936>,  <27.699224, 32.969105, 27.359806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342621, 32.788433, 27.345936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304010, 0.653278, -0.693402,
		0.335848, -0.607631, -0.719716,
		-0.891507, -0.451678, -0.034676,
		27.075169, 32.652931, 27.335533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441711, 33.077484, 26.705183>,  <27.699224, 32.969105, 27.359806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441711, 33.077484, 26.705183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112383, 32.951530, 26.894070>,  <26.914785, 32.875957, 27.007402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112383, 32.951530, 26.894070>,  <27.441711, 33.077484, 26.705183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112383, 32.951530, 26.894070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565285, 0.529585, -0.632450,
		-0.050932, -0.787648, -0.614017,
		-0.823322, -0.314882, 0.472218,
		26.865387, 32.857067, 27.035734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043581, 32.693916, 26.297401>,  <27.441711, 33.077484, 26.705183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043581, 32.693916, 26.297401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776611, 32.816341, 26.568951>,  <26.616430, 32.889797, 26.731880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776611, 32.816341, 26.568951>,  <27.043581, 32.693916, 26.297401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776611, 32.816341, 26.568951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567981, 0.380356, -0.729882,
		-0.481604, -0.872728, -0.080020,
		-0.667424, 0.306064, 0.678874,
		26.576384, 32.908161, 26.772614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333712, 32.424374, 26.091898>,  <27.043581, 32.693916, 26.297401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333712, 32.424374, 26.091898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284016, 32.747059, 26.322994>,  <26.254198, 32.940670, 26.461651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284016, 32.747059, 26.322994>,  <26.333712, 32.424374, 26.091898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284016, 32.747059, 26.322994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653682, 0.371503, -0.659307,
		-0.746502, -0.459568, 0.481178,
		-0.124238, 0.806711, 0.577739,
		26.246744, 32.989071, 26.496315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607187, 32.561886, 25.929501>,  <26.333712, 32.424374, 26.091898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.607187, 32.561886, 25.929501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717751, 32.888599, 26.132072>,  <25.784088, 33.084625, 26.253616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717751, 32.888599, 26.132072>,  <25.607187, 32.561886, 25.929501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717751, 32.888599, 26.132072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750921, 0.512417, -0.416588,
		-0.599764, -0.265141, 0.754972,
		0.276406, 0.816779, 0.506430,
		25.800673, 33.133633, 26.284002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.994028, 32.812649, 26.356020>,  <25.607187, 32.561886, 25.929501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.994028, 32.812649, 26.356020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258667, 33.101254, 26.274330>,  <25.417450, 33.274418, 26.225315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258667, 33.101254, 26.274330>,  <24.994028, 32.812649, 26.356020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258667, 33.101254, 26.274330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669520, 0.445733, -0.594193,
		-0.337688, 0.529849, 0.777963,
		0.661596, 0.721514, -0.204226,
		25.457146, 33.317707, 26.213062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555250, 33.366447, 26.259157>,  <24.994028, 32.812649, 26.356020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555250, 33.366447, 26.259157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893824, 33.503868, 26.096420>,  <25.096968, 33.586323, 25.998779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893824, 33.503868, 26.096420>,  <24.555250, 33.366447, 26.259157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893824, 33.503868, 26.096420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529989, 0.469512, -0.706166,
		-0.051592, 0.813344, 0.579491,
		0.846434, 0.343556, -0.406840,
		25.147755, 33.606934, 25.974369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518791, 34.113636, 26.137150>,  <24.555250, 33.366447, 26.259157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518791, 34.113636, 26.137150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782497, 33.987495, 25.864117>,  <24.940722, 33.911812, 25.700296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782497, 33.987495, 25.864117>,  <24.518791, 34.113636, 26.137150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782497, 33.987495, 25.864117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505497, 0.486152, -0.712831,
		0.556632, 0.814990, 0.161095,
		0.659267, -0.315352, -0.682583,
		24.980278, 33.892891, 25.659342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455870, 34.646397, 25.742010>,  <24.518791, 34.113636, 26.137150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455870, 34.646397, 25.742010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634922, 34.347996, 25.544788>,  <24.742353, 34.168953, 25.426455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634922, 34.347996, 25.544788>,  <24.455870, 34.646397, 25.742010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634922, 34.347996, 25.544788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536572, 0.217007, -0.815474,
		0.715344, 0.629592, -0.303146,
		0.447631, -0.746004, -0.493056,
		24.769211, 34.124195, 25.396872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.855757, 35.031677, 25.666113>,  <24.455870, 34.646397, 25.742010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.855757, 35.031677, 25.666113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.015324, 35.398300, 25.677288>,  <24.111063, 35.618275, 25.683992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.015324, 35.398300, 25.677288>,  <23.855757, 35.031677, 25.666113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.015324, 35.398300, 25.677288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559965, 0.267614, -0.784105,
		-0.726157, 0.297149, 0.619998,
		0.398916, 0.916561, 0.027937,
		24.134998, 35.673267, 25.685669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.252754, 35.507725, 25.737204>,  <23.855757, 35.031677, 25.666113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.252754, 35.507725, 25.737204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.580662, 35.677715, 25.583645>,  <23.777407, 35.779709, 25.491510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.580662, 35.677715, 25.583645>,  <23.252754, 35.507725, 25.737204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.580662, 35.677715, 25.583645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481832, 0.149484, -0.863419,
		-0.309546, 0.892776, 0.327308,
		0.819768, 0.424976, -0.383897,
		23.826591, 35.805206, 25.468475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115427, 36.097542, 25.447733>,  <23.252754, 35.507725, 25.737204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115427, 36.097542, 25.447733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421316, 35.944412, 25.240410>,  <23.604851, 35.852535, 25.116016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421316, 35.944412, 25.240410>,  <23.115427, 36.097542, 25.447733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.421316, 35.944412, 25.240410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580841, -0.061309, -0.811705,
		0.278966, 0.921784, -0.269246,
		0.764724, -0.382827, -0.518306,
		23.650734, 35.829563, 25.084917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.302565, 36.436653, 24.744864>,  <23.115427, 36.097542, 25.447733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.302565, 36.436653, 24.744864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.359009, 36.040966, 24.729214>,  <23.392876, 35.803555, 24.719824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.359009, 36.040966, 24.729214>,  <23.302565, 36.436653, 24.744864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.359009, 36.040966, 24.729214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589943, -0.052286, -0.805750,
		0.795018, 0.136783, -0.590962,
		0.141112, -0.989220, -0.039126,
		23.401342, 35.744202, 24.717476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.641598, 36.062878, 24.766850>,  <23.302565, 36.436653, 24.744864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.641598, 36.062878, 24.766850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251787, 36.140495, 24.811832>,  <22.017900, 36.187065, 24.838823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251787, 36.140495, 24.811832>,  <22.641598, 36.062878, 24.766850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.251787, 36.140495, 24.811832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224271, -0.845948, -0.483812,
		0.001255, -0.496709, 0.867917,
		-0.974526, 0.194041, 0.112459,
		21.959429, 36.198708, 24.845570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309343, 35.451523, 25.026855>,  <22.641598, 36.062878, 24.766850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309343, 35.451523, 25.026855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067757, 35.679241, 24.803738>,  <21.922806, 35.815872, 24.669867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067757, 35.679241, 24.803738>,  <22.309343, 35.451523, 25.026855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.067757, 35.679241, 24.803738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281559, -0.807132, -0.518905,
		-0.745622, -0.156348, 0.647768,
		-0.603964, 0.569292, -0.557794,
		21.886568, 35.850029, 24.636400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.852030, 35.076828, 24.851694>,  <22.309343, 35.451523, 25.026855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.852030, 35.076828, 24.851694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781752, 35.369064, 24.587765>,  <21.739586, 35.544407, 24.429407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781752, 35.369064, 24.587765>,  <21.852030, 35.076828, 24.851694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781752, 35.369064, 24.587765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304029, -0.677756, -0.669488,
		-0.936321, 0.082981, 0.341199,
		-0.175694, 0.730590, -0.659826,
		21.729044, 35.588242, 24.389816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171120, 34.978909, 24.705206>,  <21.852030, 35.076828, 24.851694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.171120, 34.978909, 24.705206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351912, 35.199833, 24.425014>,  <21.460386, 35.332386, 24.256899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351912, 35.199833, 24.425014>,  <21.171120, 34.978909, 24.705206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.351912, 35.199833, 24.425014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044458, -0.798238, -0.600700,
		-0.890920, 0.240362, -0.385341,
		0.451979, 0.552307, -0.700480,
		21.487505, 35.365524, 24.214870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853945, 34.801052, 24.145456>,  <21.171120, 34.978909, 24.705206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853945, 34.801052, 24.145456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183638, 34.969944, 23.994534>,  <21.381453, 35.071281, 23.903980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183638, 34.969944, 23.994534>,  <20.853945, 34.801052, 24.145456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.183638, 34.969944, 23.994534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039330, -0.707403, -0.705715,
		-0.564885, 0.566833, -0.599671,
		0.824232, 0.422233, -0.377308,
		21.430906, 35.096615, 23.881342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984404, 34.515247, 23.512329>,  <20.853945, 34.801052, 24.145456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984404, 34.515247, 23.512329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.346977, 34.677761, 23.558475>,  <21.564522, 34.775269, 23.586164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.346977, 34.677761, 23.558475>,  <20.984404, 34.515247, 23.512329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.346977, 34.677761, 23.558475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381353, -0.669920, -0.637006,
		-0.181521, 0.621399, -0.762177,
		0.906433, 0.406288, 0.115368,
		21.618908, 34.799648, 23.593086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.158583, 34.691715, 22.856895>,  <20.984404, 34.515247, 23.512329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.158583, 34.691715, 22.856895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503298, 34.697445, 23.059723>,  <21.710127, 34.700882, 23.181419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503298, 34.697445, 23.059723>,  <21.158583, 34.691715, 22.856895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.503298, 34.697445, 23.059723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417721, -0.587175, -0.693350,
		0.287808, 0.809333, -0.512002,
		0.861786, 0.014323, 0.507069,
		21.761833, 34.701740, 23.211843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.663160, 34.867111, 22.398943>,  <21.158583, 34.691715, 22.856895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.663160, 34.867111, 22.398943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.883171, 34.683163, 22.677795>,  <22.015177, 34.572792, 22.845106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.883171, 34.683163, 22.677795>,  <21.663160, 34.867111, 22.398943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.883171, 34.683163, 22.677795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496138, -0.491548, -0.715701,
		0.671803, 0.739527, -0.042205,
		0.550025, -0.459871, 0.697130,
		22.048180, 34.545200, 22.886934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278927, 34.832020, 22.091290>,  <21.663160, 34.867111, 22.398943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278927, 34.832020, 22.091290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318390, 34.557491, 22.379520>,  <22.342068, 34.392776, 22.552460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318390, 34.557491, 22.379520>,  <22.278927, 34.832020, 22.091290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318390, 34.557491, 22.379520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556289, -0.562365, -0.611791,
		0.825111, 0.461208, 0.326310,
		0.098657, -0.686319, 0.720578,
		22.347986, 34.351597, 22.595694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.931059, 34.643257, 22.075418>,  <22.278927, 34.832020, 22.091290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.931059, 34.643257, 22.075418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.764385, 34.335365, 22.268867>,  <22.664381, 34.150631, 22.384937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.764385, 34.335365, 22.268867>,  <22.931059, 34.643257, 22.075418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.764385, 34.335365, 22.268867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569451, -0.635706, -0.521155,
		0.708590, 0.058241, 0.703213,
		-0.416684, -0.769731, 0.483621,
		22.639380, 34.104446, 22.413954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.395611, 34.182003, 22.255590>,  <22.931059, 34.643257, 22.075418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.395611, 34.182003, 22.255590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063204, 33.959602, 22.248966>,  <22.863760, 33.826164, 22.244991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063204, 33.959602, 22.248966>,  <23.395611, 34.182003, 22.255590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.063204, 33.959602, 22.248966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430099, -0.623393, -0.652990,
		0.352736, -0.549770, 0.757186,
		-0.831019, -0.555998, -0.016563,
		22.813898, 33.792805, 22.243998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.639019, 33.516174, 22.339849>,  <23.395611, 34.182003, 22.255590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.639019, 33.516174, 22.339849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285948, 33.472855, 22.156918>,  <23.074104, 33.446861, 22.047157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285948, 33.472855, 22.156918>,  <23.639019, 33.516174, 22.339849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.285948, 33.472855, 22.156918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413583, -0.641182, -0.646401,
		-0.223226, -0.759708, 0.610749,
		-0.882677, -0.108301, -0.457331,
		23.021145, 33.440365, 22.019718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.508574, 32.764908, 22.224632>,  <23.639019, 33.516174, 22.339849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.508574, 32.764908, 22.224632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.235447, 32.912891, 21.972633>,  <23.071571, 33.001682, 21.821434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.235447, 32.912891, 21.972633>,  <23.508574, 32.764908, 22.224632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.235447, 32.912891, 21.972633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233164, -0.706867, -0.667813,
		-0.692378, -0.602889, 0.396406,
		-0.682823, 0.369951, -0.629991,
		23.030602, 33.023880, 21.783634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.157738, 32.198086, 22.005186>,  <23.508574, 32.764908, 22.224632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.157738, 32.198086, 22.005186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.151972, 32.497036, 21.739491>,  <23.148512, 32.676407, 21.580072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.151972, 32.497036, 21.739491>,  <23.157738, 32.198086, 22.005186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.151972, 32.497036, 21.739491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369775, -0.613230, -0.698008,
		-0.929009, -0.255681, -0.267523,
		-0.014414, 0.747380, -0.664241,
		23.147648, 32.721249, 21.540218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.207216, 31.747143, 21.458603>,  <23.157738, 32.198086, 22.005186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.207216, 31.747143, 21.458603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254898, 32.115761, 21.310795>,  <23.283506, 32.336933, 21.222111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254898, 32.115761, 21.310795>,  <23.207216, 31.747143, 21.458603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.254898, 32.115761, 21.310795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331023, -0.387767, -0.860268,
		-0.936063, -0.019773, -0.351276,
		0.119203, 0.921545, -0.369520,
		23.290659, 32.392223, 21.199940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.055723, 31.693064, 20.765701>,  <23.207216, 31.747143, 21.458603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.055723, 31.693064, 20.765701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.280457, 32.021721, 20.804153>,  <23.415297, 32.218914, 20.827225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.280457, 32.021721, 20.804153>,  <23.055723, 31.693064, 20.765701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.280457, 32.021721, 20.804153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524512, -0.263955, -0.809454,
		-0.639710, 0.505200, -0.579262,
		0.561835, 0.821645, 0.096129,
		23.449007, 32.268215, 20.832993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.276739, 31.825947, 20.037981>,  <23.055723, 31.693064, 20.765701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.276739, 31.825947, 20.037981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.533520, 32.022491, 20.273426>,  <23.687588, 32.140419, 20.414692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.533520, 32.022491, 20.273426>,  <23.276739, 31.825947, 20.037981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.533520, 32.022491, 20.273426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756374, -0.279977, -0.591195,
		-0.125693, 0.824728, -0.551385,
		0.641950, 0.491362, 0.588612,
		23.726105, 32.169899, 20.450010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.786585, 32.224476, 19.578344>,  <23.276739, 31.825947, 20.037981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.786585, 32.224476, 19.578344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.966221, 32.193245, 19.934372>,  <24.074001, 32.174507, 20.147989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.966221, 32.193245, 19.934372>,  <23.786585, 32.224476, 19.578344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.966221, 32.193245, 19.934372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866711, -0.203978, -0.455197,
		0.217096, 0.975857, -0.023933,
		0.449089, -0.078079, 0.890069,
		24.100948, 32.169823, 20.201393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.470034, 32.422882, 19.350407>,  <23.786585, 32.224476, 19.578344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.470034, 32.422882, 19.350407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527784, 32.244190, 19.703583>,  <24.562435, 32.136974, 19.915489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527784, 32.244190, 19.703583>,  <24.470034, 32.422882, 19.350407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.527784, 32.244190, 19.703583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816403, -0.450425, -0.361391,
		0.559144, 0.773012, 0.299682,
		0.144375, -0.446731, 0.882942,
		24.571096, 32.110172, 19.968466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229994, 32.658985, 19.635593>,  <24.470034, 32.422882, 19.350407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229994, 32.658985, 19.635593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141371, 32.322964, 19.833672>,  <25.088198, 32.121349, 19.952518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141371, 32.322964, 19.833672>,  <25.229994, 32.658985, 19.635593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141371, 32.322964, 19.833672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912334, -0.357879, -0.198919,
		0.344323, 0.407712, 0.845702,
		-0.221558, -0.840056, 0.495196,
		25.074903, 32.070946, 19.982231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853338, 32.453987, 20.006823>,  <25.229994, 32.658985, 19.635593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853338, 32.453987, 20.006823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636398, 32.122128, 19.953857>,  <25.506233, 31.923012, 19.922079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636398, 32.122128, 19.953857>,  <25.853338, 32.453987, 20.006823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636398, 32.122128, 19.953857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837320, -0.520841, -0.166194,
		0.068918, -0.201006, 0.977163,
		-0.542352, -0.829651, -0.132412,
		25.473692, 31.873232, 19.914133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241766, 31.935545, 20.164976>,  <25.853338, 32.453987, 20.006823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241766, 31.935545, 20.164976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965832, 31.716003, 19.976131>,  <25.800272, 31.584278, 19.862823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965832, 31.716003, 19.976131>,  <26.241766, 31.935545, 20.164976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965832, 31.716003, 19.976131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718243, -0.600689, -0.351141,
		-0.090869, -0.581321, 0.808584,
		-0.689833, -0.548852, -0.472114,
		25.758883, 31.551348, 19.834497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359550, 31.224710, 20.337860>,  <26.241766, 31.935545, 20.164976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359550, 31.224710, 20.337860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158997, 31.236797, 19.991982>,  <26.038664, 31.244049, 19.784454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158997, 31.236797, 19.991982>,  <26.359550, 31.224710, 20.337860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158997, 31.236797, 19.991982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708052, -0.560049, -0.430126,
		-0.497271, -0.827909, 0.259403,
		-0.501383, 0.030218, -0.864698,
		26.008581, 31.245863, 19.732573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395061, 30.620863, 19.949429>,  <26.359550, 31.224710, 20.337860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395061, 30.620863, 19.949429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324883, 30.895988, 19.667683>,  <26.282774, 31.061064, 19.498636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324883, 30.895988, 19.667683>,  <26.395061, 30.620863, 19.949429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324883, 30.895988, 19.667683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775677, -0.344005, -0.529136,
		-0.606253, -0.639194, -0.473168,
		-0.175449, 0.687816, -0.704363,
		26.272247, 31.102333, 19.456373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438717, 30.326124, 19.221514>,  <26.395061, 30.620863, 19.949429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438717, 30.326124, 19.221514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511169, 30.718906, 19.199776>,  <26.554642, 30.954576, 19.186733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511169, 30.718906, 19.199776>,  <26.438717, 30.326124, 19.221514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511169, 30.718906, 19.199776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836024, -0.182844, -0.517332,
		-0.517934, 0.048271, -0.854058,
		0.181131, 0.981956, -0.054345,
		26.565508, 31.013493, 19.183472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568300, 30.494640, 18.498070>,  <26.438717, 30.326124, 19.221514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568300, 30.494640, 18.498070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786989, 30.754784, 18.709023>,  <26.918201, 30.910870, 18.835594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786989, 30.754784, 18.709023>,  <26.568300, 30.494640, 18.498070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786989, 30.754784, 18.709023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768637, -0.139998, -0.624178,
		-0.332106, 0.746616, -0.576428,
		0.546720, 0.650357, 0.527382,
		26.951006, 30.949890, 18.867237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939270, 30.912914, 18.117704>,  <26.568300, 30.494640, 18.498070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939270, 30.912914, 18.117704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158325, 30.926598, 18.452110>,  <27.289759, 30.934807, 18.652754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.158325, 30.926598, 18.452110>,  <26.939270, 30.912914, 18.117704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158325, 30.926598, 18.452110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822054, 0.164228, -0.545212,
		-0.155948, 0.985829, 0.061817,
		0.547638, 0.034208, 0.836016,
		27.322617, 30.936859, 18.702915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357157, 31.551958, 18.246872>,  <26.939270, 30.912914, 18.117704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357157, 31.551958, 18.246872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526320, 31.300686, 18.508110>,  <27.627817, 31.149921, 18.664854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526320, 31.300686, 18.508110>,  <27.357157, 31.551958, 18.246872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526320, 31.300686, 18.508110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884548, 0.129665, -0.448065,
		0.196783, 0.767186, 0.610494,
		0.422908, -0.628182, 0.653097,
		27.653193, 31.112230, 18.704039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430954, 32.262077, 17.937857>,  <27.357157, 31.551958, 18.246872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430954, 32.262077, 17.937857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356382, 32.205929, 17.548901>,  <27.311640, 32.172241, 17.315527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356382, 32.205929, 17.548901>,  <27.430954, 32.262077, 17.937857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356382, 32.205929, 17.548901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729155, 0.683109, 0.041185,
		0.658467, 0.716700, -0.229700,
		-0.186428, -0.140368, -0.972389,
		27.300453, 32.163818, 17.257183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521091, 32.853428, 17.463535>,  <27.430954, 32.262077, 17.937857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521091, 32.853428, 17.463535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236923, 32.628311, 17.294506>,  <27.066422, 32.493240, 17.193089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236923, 32.628311, 17.294506>,  <27.521091, 32.853428, 17.463535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236923, 32.628311, 17.294506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604340, 0.795538, -0.043509,
		0.360658, 0.224468, -0.905284,
		-0.710422, -0.562791, -0.422572,
		27.023796, 32.459473, 17.167734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256060, 33.240963, 16.877253>,  <27.521091, 32.853428, 17.463535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256060, 33.240963, 16.877253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973129, 33.001141, 17.027035>,  <26.803371, 32.857246, 17.116905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973129, 33.001141, 17.027035>,  <27.256060, 33.240963, 16.877253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973129, 33.001141, 17.027035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682081, 0.717977, -0.138830,
		-0.185615, -0.353609, -0.916792,
		-0.707327, -0.599558, 0.374457,
		26.760931, 32.821274, 17.139372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696348, 33.142368, 16.400665>,  <27.256060, 33.240963, 16.877253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696348, 33.142368, 16.400665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562069, 33.077835, 16.771885>,  <26.481501, 33.039116, 16.994617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562069, 33.077835, 16.771885>,  <26.696348, 33.142368, 16.400665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562069, 33.077835, 16.771885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735921, 0.659904, -0.151484,
		-0.587986, -0.733825, -0.340256,
		-0.335699, -0.161331, 0.928051,
		26.461359, 33.029434, 17.050301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912548, 33.495033, 16.464937>,  <26.696348, 33.142368, 16.400665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912548, 33.495033, 16.464937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979374, 33.339111, 16.827183>,  <26.019468, 33.245556, 17.044531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979374, 33.339111, 16.827183>,  <25.912548, 33.495033, 16.464937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979374, 33.339111, 16.827183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757627, 0.537044, 0.370925,
		-0.630945, -0.748086, -0.205610,
		0.167062, -0.389809, 0.905615,
		26.029493, 33.222168, 17.098867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355221, 33.116642, 16.748081>,  <25.912548, 33.495033, 16.464937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355221, 33.116642, 16.748081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571321, 33.210739, 17.071262>,  <25.700983, 33.267197, 17.265171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571321, 33.210739, 17.071262>,  <25.355221, 33.116642, 16.748081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571321, 33.210739, 17.071262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828502, 0.316817, 0.461749,
		-0.147348, -0.918850, 0.366065,
		0.540254, 0.235247, 0.807951,
		25.733398, 33.281315, 17.313648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022594, 32.983425, 17.322971>,  <25.355221, 33.116642, 16.748081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022594, 32.983425, 17.322971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264267, 33.263798, 17.474579>,  <25.409271, 33.432022, 17.565544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264267, 33.263798, 17.474579>,  <25.022594, 32.983425, 17.322971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264267, 33.263798, 17.474579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729957, 0.296092, 0.616029,
		0.319568, -0.648866, 0.690543,
		0.604185, 0.700930, 0.379023,
		25.445522, 33.474079, 17.588285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.679916, 33.097878, 17.992271>,  <25.022594, 32.983425, 17.322971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.679916, 33.097878, 17.992271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938162, 33.402519, 17.969868>,  <25.093109, 33.585304, 17.956425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938162, 33.402519, 17.969868>,  <24.679916, 33.097878, 17.992271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938162, 33.402519, 17.969868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524857, 0.495801, 0.691886,
		0.554717, -0.417292, 0.719830,
		0.645612, 0.761609, -0.056011,
		25.131845, 33.631001, 17.953066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930353, 33.316044, 18.764874>,  <24.679916, 33.097878, 17.992271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930353, 33.316044, 18.764874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984884, 33.611729, 18.501064>,  <25.017603, 33.789139, 18.342779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984884, 33.611729, 18.501064>,  <24.930353, 33.316044, 18.764874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984884, 33.611729, 18.501064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500595, 0.625895, 0.598047,
		0.854880, 0.248624, 0.455375,
		0.136329, 0.739217, -0.659525,
		25.025784, 33.833492, 18.303207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207851, 33.848724, 19.143490>,  <24.930353, 33.316044, 18.764874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207851, 33.848724, 19.143490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031500, 34.017601, 18.826660>,  <24.925690, 34.118927, 18.636562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031500, 34.017601, 18.826660>,  <25.207851, 33.848724, 19.143490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031500, 34.017601, 18.826660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450232, 0.659396, 0.602071,
		0.776478, 0.622058, -0.100631,
		-0.440878, 0.422187, -0.792076,
		24.899237, 34.144257, 18.589037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.282650, 34.565571, 19.347647>,  <25.207851, 33.848724, 19.143490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.282650, 34.565571, 19.347647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041342, 34.586044, 19.029289>,  <24.896557, 34.598328, 18.838276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041342, 34.586044, 19.029289>,  <25.282650, 34.565571, 19.347647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041342, 34.586044, 19.029289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533546, 0.715833, 0.450456,
		0.592784, 0.696392, -0.404530,
		-0.603270, 0.051188, -0.795892,
		24.860361, 34.601402, 18.790522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.090149, 35.350048, 19.200651>,  <25.282650, 34.565571, 19.347647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.090149, 35.350048, 19.200651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809229, 35.110645, 19.046474>,  <24.640676, 34.967003, 18.953968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809229, 35.110645, 19.046474>,  <25.090149, 35.350048, 19.200651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809229, 35.110645, 19.046474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708773, 0.537320, 0.457085,
		-0.066465, 0.594200, -0.801566,
		-0.702298, -0.598509, -0.385441,
		24.598539, 34.931091, 18.930841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.566130, 35.806335, 18.879066>,  <25.090149, 35.350048, 19.200651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.566130, 35.806335, 18.879066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382542, 35.456120, 18.939426>,  <24.272388, 35.245991, 18.975643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382542, 35.456120, 18.939426>,  <24.566130, 35.806335, 18.879066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382542, 35.456120, 18.939426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741119, 0.470969, 0.478467,
		-0.489988, 0.107766, -0.865042,
		-0.458970, -0.875542, 0.150902,
		24.244850, 35.193459, 18.984697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.891687, 35.900215, 18.809490>,  <24.566130, 35.806335, 18.879066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.891687, 35.900215, 18.809490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867630, 35.560543, 19.019360>,  <23.853195, 35.356739, 19.145281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.867630, 35.560543, 19.019360>,  <23.891687, 35.900215, 18.809490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.867630, 35.560543, 19.019360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739995, 0.390695, 0.547507,
		-0.669917, -0.355326, -0.651885,
		-0.060144, -0.849177, 0.524673,
		23.849586, 35.305790, 19.176762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.171795, 35.794476, 18.831749>,  <23.891687, 35.900215, 18.809490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.171795, 35.794476, 18.831749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.330935, 35.564953, 19.118095>,  <23.426418, 35.427238, 19.289904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.330935, 35.564953, 19.118095>,  <23.171795, 35.794476, 18.831749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.330935, 35.564953, 19.118095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636622, 0.389190, 0.665765,
		-0.660627, -0.720610, -0.210458,
		0.397849, -0.573805, 0.715866,
		23.450289, 35.392811, 19.332855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630493, 35.366493, 19.112371>,  <23.171795, 35.794476, 18.831749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630493, 35.366493, 19.112371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.907681, 35.376797, 19.400574>,  <23.073994, 35.382980, 19.573496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.907681, 35.376797, 19.400574>,  <22.630493, 35.366493, 19.112371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.907681, 35.376797, 19.400574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702331, 0.249869, 0.666556,
		-0.162861, -0.967937, 0.191244,
		0.692970, 0.025760, 0.720506,
		23.115572, 35.384525, 19.616726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309187, 35.064671, 19.718176>,  <22.630493, 35.366493, 19.112371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309187, 35.064671, 19.718176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.623857, 35.238934, 19.893147>,  <22.812660, 35.343491, 19.998129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.623857, 35.238934, 19.893147>,  <22.309187, 35.064671, 19.718176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.623857, 35.238934, 19.893147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586392, 0.305670, 0.750140,
		0.193093, -0.846623, 0.495928,
		0.786676, 0.435655, 0.437430,
		22.859859, 35.369629, 20.024376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.378477, 34.911739, 20.521816>,  <22.309187, 35.064671, 19.718176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.378477, 34.911739, 20.521816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.552698, 35.266094, 20.457954>,  <22.657230, 35.478706, 20.419638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.552698, 35.266094, 20.457954>,  <22.378477, 34.911739, 20.521816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.552698, 35.266094, 20.457954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590793, 0.415147, 0.691821,
		0.679159, -0.207001, 0.704197,
		0.435553, 0.885892, -0.159656,
		22.683365, 35.531860, 20.410057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.446808, 35.095509, 21.162138>,  <22.378477, 34.911739, 20.521816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.446808, 35.095509, 21.162138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.513596, 35.438866, 20.968117>,  <22.553669, 35.644882, 20.851704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.513596, 35.438866, 20.968117>,  <22.446808, 35.095509, 21.162138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.513596, 35.438866, 20.968117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527470, 0.493409, 0.691610,
		0.833005, 0.140373, 0.535162,
		0.166970, 0.858396, -0.485054,
		22.563686, 35.696384, 20.822601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770317, 35.512226, 21.595917>,  <22.446808, 35.095509, 21.162138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770317, 35.512226, 21.595917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602539, 35.756359, 21.327126>,  <22.501873, 35.902840, 21.165850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602539, 35.756359, 21.327126>,  <22.770317, 35.512226, 21.595917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.602539, 35.756359, 21.327126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392961, 0.545218, 0.740486,
		0.818321, 0.574653, 0.011150,
		-0.419443, 0.610337, -0.671980,
		22.476706, 35.939461, 21.125532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.747583, 36.167107, 21.958818>,  <22.770317, 35.512226, 21.595917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.747583, 36.167107, 21.958818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490017, 36.224541, 21.658218>,  <22.335476, 36.259003, 21.477858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490017, 36.224541, 21.658218>,  <22.747583, 36.167107, 21.958818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.490017, 36.224541, 21.658218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629539, 0.458763, 0.627070,
		0.434798, 0.876881, -0.205014,
		-0.643918, 0.143584, -0.751500,
		22.296841, 36.267616, 21.432768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471735, 36.879616, 22.021692>,  <22.747583, 36.167107, 21.958818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471735, 36.879616, 22.021692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206009, 36.679905, 21.799194>,  <22.046574, 36.560078, 21.665695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206009, 36.679905, 21.799194>,  <22.471735, 36.879616, 22.021692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.206009, 36.679905, 21.799194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742489, 0.526425, 0.414230,
		0.086006, 0.688185, -0.720419,
		-0.664314, -0.499277, -0.556246,
		22.006714, 36.530121, 21.632320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.931683, 37.362583, 21.743017>,  <22.471735, 36.879616, 22.021692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.931683, 37.362583, 21.743017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765701, 36.998863, 21.730381>,  <21.666113, 36.780632, 21.722799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765701, 36.998863, 21.730381>,  <21.931683, 37.362583, 21.743017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765701, 36.998863, 21.730381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829550, 0.363843, 0.423632,
		-0.373713, 0.201991, -0.905283,
		-0.414951, -0.909295, -0.031588,
		21.641216, 36.726074, 21.720905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.260235, 37.486404, 21.431591>,  <21.931683, 37.362583, 21.743017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.260235, 37.486404, 21.431591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.214931, 37.140778, 21.627777>,  <21.187750, 36.933403, 21.745489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.214931, 37.140778, 21.627777>,  <21.260235, 37.486404, 21.431591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.214931, 37.140778, 21.627777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834039, 0.350953, 0.425689,
		-0.539955, -0.360856, -0.760415,
		-0.113257, -0.864068, 0.490467,
		21.180954, 36.881557, 21.774918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.539593, 37.377365, 21.275118>,  <21.260235, 37.486404, 21.431591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.539593, 37.377365, 21.275118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.645315, 37.179539, 21.606308>,  <20.708748, 37.060841, 21.805021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.645315, 37.179539, 21.606308>,  <20.539593, 37.377365, 21.275118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.645315, 37.179539, 21.606308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829361, 0.321619, 0.456860,
		-0.492242, -0.807441, -0.325172,
		0.264305, -0.494571, 0.827975,
		20.724607, 37.031166, 21.854700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.911715, 37.057568, 21.513714>,  <20.539593, 37.377365, 21.275118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.911715, 37.057568, 21.513714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.148685, 37.039433, 21.835453>,  <20.290867, 37.028553, 22.028498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.148685, 37.039433, 21.835453>,  <19.911715, 37.057568, 21.513714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.148685, 37.039433, 21.835453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779740, 0.218786, 0.586632,
		-0.202577, -0.974719, 0.094262,
		0.592425, -0.045338, 0.804349,
		20.326412, 37.025829, 22.076757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646324, 36.595669, 22.047777>,  <19.911715, 37.057568, 21.513714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646324, 36.595669, 22.047777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860039, 36.899651, 22.195835>,  <19.988268, 37.082039, 22.284670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860039, 36.899651, 22.195835>,  <19.646324, 36.595669, 22.047777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860039, 36.899651, 22.195835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784803, 0.283278, 0.551215,
		0.314047, -0.584994, 0.747768,
		0.534284, 0.759958, 0.370142,
		20.020325, 37.127636, 22.306879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836401, 36.525288, 22.814962>,  <19.646324, 36.595669, 22.047777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836401, 36.525288, 22.814962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.764685, 36.882896, 22.650730>,  <19.721655, 37.097462, 22.552191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.764685, 36.882896, 22.650730>,  <19.836401, 36.525288, 22.814962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.764685, 36.882896, 22.650730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761240, 0.138297, 0.633552,
		0.623193, 0.426139, 0.655772,
		-0.179290, 0.894024, -0.410580,
		19.710897, 37.151104, 22.527555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.793669, 37.049236, 23.282904>,  <19.836401, 36.525288, 22.814962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.793669, 37.049236, 23.282904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558437, 37.171734, 22.983471>,  <19.417297, 37.245232, 22.803810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558437, 37.171734, 22.983471>,  <19.793669, 37.049236, 23.282904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558437, 37.171734, 22.983471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729469, 0.198935, 0.654446,
		0.349339, 0.930935, 0.106405,
		-0.588079, 0.306242, -0.748584,
		19.382013, 37.263607, 22.758896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.332430, 37.549168, 23.481682>,  <19.793669, 37.049236, 23.282904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.332430, 37.549168, 23.481682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.128500, 37.383137, 23.180275>,  <19.006142, 37.283516, 22.999432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.128500, 37.383137, 23.180275>,  <19.332430, 37.549168, 23.481682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.128500, 37.383137, 23.180275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826381, -0.007157, 0.563066,
		-0.239111, 0.909757, -0.339366,
		-0.509824, -0.415081, -0.753517,
		18.975554, 37.258614, 22.954220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605835, 37.673496, 23.666298>,  <19.332430, 37.549168, 23.481682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605835, 37.673496, 23.666298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.355267, 37.574219, 23.961864>,  <18.204926, 37.514652, 24.139204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.355267, 37.574219, 23.961864>,  <18.605835, 37.673496, 23.666298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.355267, 37.574219, 23.961864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078924, 0.963277, 0.256650,
		-0.775479, 0.102453, -0.623006,
		-0.626421, -0.248196, 0.738915,
		18.167339, 37.499760, 24.183538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.033882, 24.685879, 28.050774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.401793, 24.694736, 28.207500>,  <29.622540, 24.700052, 28.301537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.401793, 24.694736, 28.207500>,  <29.033882, 24.685879, 28.050774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401793, 24.694736, 28.207500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206964, 0.820908, -0.532237,
		-0.333434, 0.570631, 0.750467,
		0.919776, 0.022147, 0.391819,
		29.677725, 24.701380, 28.325047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153515, 25.260765, 28.023182>,  <29.033882, 24.685879, 28.050774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153515, 25.260765, 28.023182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.539778, 25.179184, 28.087563>,  <29.771536, 25.130236, 28.126192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.539778, 25.179184, 28.087563>,  <29.153515, 25.260765, 28.023182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539778, 25.179184, 28.087563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248487, 0.905917, -0.342883,
		-0.075878, 0.371103, 0.925486,
		0.965659, -0.203954, 0.160954,
		29.829475, 25.117998, 28.135849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544628, 25.794828, 28.346081>,  <29.153515, 25.260765, 28.023182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544628, 25.794828, 28.346081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.817364, 25.579594, 28.147865>,  <29.981005, 25.450453, 28.028936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.817364, 25.579594, 28.147865>,  <29.544628, 25.794828, 28.346081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817364, 25.579594, 28.147865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337498, 0.832421, -0.439511,
		0.648993, 0.132431, 0.749180,
		0.681838, -0.538086, -0.495540,
		30.021915, 25.418167, 27.999203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117533, 26.195829, 28.448320>,  <29.544628, 25.794828, 28.346081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117533, 26.195829, 28.448320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.184652, 25.960381, 28.132000>,  <30.224924, 25.819111, 27.942207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.184652, 25.960381, 28.132000>,  <30.117533, 26.195829, 28.448320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184652, 25.960381, 28.132000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497580, 0.743067, -0.447510,
		0.851033, -0.318395, 0.417574,
		0.167800, -0.588622, -0.790801,
		30.234993, 25.783794, 27.894760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840937, 26.380182, 28.230022>,  <30.117533, 26.195829, 28.448320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840937, 26.380182, 28.230022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.698612, 26.188915, 27.908836>,  <30.613218, 26.074154, 27.716125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.698612, 26.188915, 27.908836>,  <30.840937, 26.380182, 28.230022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698612, 26.188915, 27.908836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363050, 0.720989, -0.590229,
		0.861158, -0.501527, -0.082937,
		-0.355812, -0.478170, -0.802964,
		30.591869, 26.045464, 27.667948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333910, 26.428423, 27.663147>,  <30.840937, 26.380182, 28.230022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333910, 26.428423, 27.663147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998230, 26.345322, 27.462116>,  <30.796822, 26.295460, 27.341497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998230, 26.345322, 27.462116>,  <31.333910, 26.428423, 27.663147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998230, 26.345322, 27.462116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140560, 0.809886, -0.569498,
		0.525345, -0.548564, -0.650454,
		-0.839199, -0.207755, -0.502575,
		30.746469, 26.282995, 27.311344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440359, 26.617718, 26.964823>,  <31.333910, 26.428423, 27.663147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440359, 26.617718, 26.964823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.040453, 26.617336, 26.973503>,  <30.800510, 26.617107, 26.978712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.040453, 26.617336, 26.973503>,  <31.440359, 26.617718, 26.964823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040453, 26.617336, 26.973503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014650, 0.767231, -0.641204,
		-0.016041, -0.641371, -0.767063,
		-0.999764, -0.000952, 0.021703,
		30.740524, 26.617050, 26.980015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184254, 26.660357, 26.244493>,  <31.440359, 26.617718, 26.964823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184254, 26.660357, 26.244493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.897051, 26.815887, 26.475414>,  <30.724730, 26.909206, 26.613968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.897051, 26.815887, 26.475414>,  <31.184254, 26.660357, 26.244493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897051, 26.815887, 26.475414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040385, 0.804747, -0.592243,
		-0.694862, -0.448550, -0.562112,
		-0.718008, 0.388826, 0.577303,
		30.681648, 26.932535, 26.648605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764530, 26.964762, 25.779478>,  <31.184254, 26.660357, 26.244493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764530, 26.964762, 25.779478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.652382, 27.134415, 26.123920>,  <30.585093, 27.236206, 26.330585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.652382, 27.134415, 26.123920>,  <30.764530, 26.964762, 25.779478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652382, 27.134415, 26.123920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094943, 0.880433, -0.464567,
		-0.955185, -0.212007, -0.206580,
		-0.280372, 0.424134, 0.861105,
		30.568270, 27.261656, 26.382252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136478, 27.421389, 25.687620>,  <30.764530, 26.964762, 25.779478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136478, 27.421389, 25.687620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.307783, 27.577217, 26.013767>,  <30.410566, 27.670713, 26.209455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.307783, 27.577217, 26.013767>,  <30.136478, 27.421389, 25.687620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307783, 27.577217, 26.013767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243301, 0.918691, -0.311147,
		-0.870284, -0.065127, 0.488225,
		0.428264, 0.389572, 0.815367,
		30.436262, 27.694088, 26.258377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636251, 27.763208, 26.056055>,  <30.136478, 27.421389, 25.687620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636251, 27.763208, 26.056055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.984850, 27.916832, 26.178032>,  <30.194010, 28.009007, 26.251219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.984850, 27.916832, 26.178032>,  <29.636251, 27.763208, 26.056055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984850, 27.916832, 26.178032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268335, 0.893938, -0.358987,
		-0.410472, 0.231030, 0.882121,
		0.871498, 0.384058, 0.304943,
		30.246300, 28.032049, 26.269514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503235, 28.378981, 26.207861>,  <29.636251, 27.763208, 26.056055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503235, 28.378981, 26.207861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.899603, 28.431538, 26.219261>,  <30.137424, 28.463072, 26.226101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.899603, 28.431538, 26.219261>,  <29.503235, 28.378981, 26.207861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899603, 28.431538, 26.219261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114633, 0.936443, -0.331563,
		-0.070254, 0.325285, 0.943003,
		0.990921, 0.131393, 0.028501,
		30.196878, 28.470955, 26.227812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634745, 28.999166, 26.609112>,  <29.503235, 28.378981, 26.207861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634745, 28.999166, 26.609112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.973854, 28.950504, 26.402626>,  <30.177320, 28.921307, 26.278734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.973854, 28.950504, 26.402626>,  <29.634745, 28.999166, 26.609112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973854, 28.950504, 26.402626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113335, 0.992409, -0.047752,
		0.518106, -0.018023, 0.855126,
		0.847774, -0.121656, -0.516216,
		30.228186, 28.914007, 26.247761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106203, 29.530441, 26.945366>,  <29.634745, 28.999166, 26.609112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106203, 29.530441, 26.945366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.223709, 29.429249, 26.576649>,  <30.294212, 29.368532, 26.355419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.223709, 29.429249, 26.576649>,  <30.106203, 29.530441, 26.945366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223709, 29.429249, 26.576649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099306, 0.967201, -0.233796,
		0.950705, -0.022859, 0.309253,
		0.293765, -0.252982, -0.921793,
		30.311838, 29.353354, 26.300112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728628, 29.814142, 26.962196>,  <30.106203, 29.530441, 26.945366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728628, 29.814142, 26.962196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.608036, 29.768749, 26.583519>,  <30.535681, 29.741514, 26.356312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.608036, 29.768749, 26.583519>,  <30.728628, 29.814142, 26.962196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608036, 29.768749, 26.583519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093449, 0.984595, -0.147783,
		0.948882, -0.133021, -0.286232,
		-0.301480, -0.113480, -0.946695,
		30.517591, 29.734705, 26.299511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034250, 30.312948, 26.416965>,  <30.728628, 29.814142, 26.962196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034250, 30.312948, 26.416965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.734735, 30.192997, 26.180527>,  <30.555027, 30.121027, 26.038664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.734735, 30.192997, 26.180527>,  <31.034250, 30.312948, 26.416965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734735, 30.192997, 26.180527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102359, 0.933417, -0.343882,
		0.654861, -0.196990, -0.729625,
		-0.748786, -0.299878, -0.591095,
		30.510099, 30.103033, 26.003199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193659, 30.656925, 25.859270>,  <31.034250, 30.312948, 26.416965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193659, 30.656925, 25.859270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.807684, 30.556702, 25.827980>,  <30.576099, 30.496569, 25.809206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.807684, 30.556702, 25.827980>,  <31.193659, 30.656925, 25.859270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807684, 30.556702, 25.827980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209824, 0.915357, -0.343650,
		0.157710, -0.315187, -0.935834,
		-0.964936, -0.250557, -0.078227,
		30.518204, 30.481535, 25.804512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995108, 30.841722, 25.247807>,  <31.193659, 30.656925, 25.859270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995108, 30.841722, 25.247807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.640394, 30.809074, 25.429775>,  <30.427567, 30.789486, 25.538956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.640394, 30.809074, 25.429775>,  <30.995108, 30.841722, 25.247807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640394, 30.809074, 25.429775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334096, 0.793330, -0.508927,
		-0.319364, -0.603295, -0.730781,
		-0.886784, -0.081619, 0.454920,
		30.374359, 30.784588, 25.566252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458630, 30.906467, 24.764574>,  <30.995108, 30.841722, 25.247807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458630, 30.906467, 24.764574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.267757, 30.989220, 25.106216>,  <30.153234, 31.038872, 25.311201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.267757, 30.989220, 25.106216>,  <30.458630, 30.906467, 24.764574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267757, 30.989220, 25.106216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436027, 0.788095, -0.434496,
		-0.763006, -0.579747, -0.285860,
		-0.477183, 0.206880, 0.854106,
		30.124603, 31.051283, 25.362448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613564, 30.858648, 24.651007>,  <30.458630, 30.906467, 24.764574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613564, 30.858648, 24.651007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.712355, 31.105686, 24.949692>,  <29.771629, 31.253910, 25.128902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.712355, 31.105686, 24.949692>,  <29.613564, 30.858648, 24.651007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712355, 31.105686, 24.949692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521086, 0.734329, -0.435006,
		-0.816990, -0.281664, 0.503183,
		0.246977, 0.617597, 0.746710,
		29.786448, 31.290966, 25.173704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078745, 31.315060, 24.621906>,  <29.613564, 30.858648, 24.651007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078745, 31.315060, 24.621906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.333811, 31.530865, 24.841839>,  <29.486851, 31.660347, 24.973799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.333811, 31.530865, 24.841839>,  <29.078745, 31.315060, 24.621906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333811, 31.530865, 24.841839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192600, 0.802766, -0.564333,
		-0.745849, 0.253957, 0.615804,
		0.637662, 0.539512, 0.549830,
		29.525110, 31.692719, 25.006788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696980, 31.942635, 24.828335>,  <29.078745, 31.315060, 24.621906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696980, 31.942635, 24.828335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.089552, 32.017506, 24.845089>,  <29.325096, 32.062428, 24.855141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.089552, 32.017506, 24.845089>,  <28.696980, 31.942635, 24.828335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089552, 32.017506, 24.845089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118289, 0.762547, -0.636027,
		-0.150991, 0.619263, 0.770529,
		0.981432, 0.187179, 0.041886,
		29.383982, 32.073658, 24.857655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259830, 31.970264, 24.240377>,  <28.696980, 31.942635, 24.828335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259830, 31.970264, 24.240377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.865892, 31.953609, 24.173027>,  <27.629530, 31.943617, 24.132618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.865892, 31.953609, 24.173027>,  <28.259830, 31.970264, 24.240377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865892, 31.953609, 24.173027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112049, -0.588271, 0.800864,
		-0.132398, 0.807591, 0.574689,
		-0.984843, -0.041639, -0.168375,
		27.570440, 31.941118, 24.122515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853601, 32.291126, 24.865341>,  <28.259830, 31.970264, 24.240377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853601, 32.291126, 24.865341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.624416, 32.012566, 24.692490>,  <27.486904, 31.845428, 24.588779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.624416, 32.012566, 24.692490>,  <27.853601, 32.291126, 24.865341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624416, 32.012566, 24.692490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055363, -0.558940, 0.827358,
		-0.817708, 0.450123, 0.358808,
		-0.572965, -0.696402, -0.432129,
		27.452526, 31.803644, 24.562851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425484, 32.128143, 25.344460>,  <27.853601, 32.291126, 24.865341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425484, 32.128143, 25.344460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.362410, 31.817856, 25.100033>,  <27.324566, 31.631683, 24.953377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.362410, 31.817856, 25.100033>,  <27.425484, 32.128143, 25.344460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362410, 31.817856, 25.100033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126900, -0.597758, 0.791569,
		-0.979302, 0.202362, -0.004182,
		-0.157684, -0.775716, -0.611066,
		27.315104, 31.585140, 24.916714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935129, 31.813709, 25.672886>,  <27.425484, 32.128143, 25.344460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935129, 31.813709, 25.672886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.076872, 31.536362, 25.421913>,  <27.161919, 31.369953, 25.271330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.076872, 31.536362, 25.421913>,  <26.935129, 31.813709, 25.672886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076872, 31.536362, 25.421913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393843, -0.719221, 0.572371,
		-0.848126, 0.044286, -0.527940,
		0.354358, -0.693369, -0.627432,
		27.183180, 31.328352, 25.233685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372746, 31.432096, 25.489107>,  <26.935129, 31.813709, 25.672886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372746, 31.432096, 25.489107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.693016, 31.201065, 25.425457>,  <26.885178, 31.062447, 25.387266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.693016, 31.201065, 25.425457>,  <26.372746, 31.432096, 25.489107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693016, 31.201065, 25.425457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338071, -0.654873, 0.675906,
		-0.494597, -0.487385, -0.719604,
		0.800676, -0.577578, -0.159128,
		26.933218, 31.027792, 25.377718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185797, 30.787687, 25.238607>,  <26.372746, 31.432096, 25.489107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185797, 30.787687, 25.238607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.541935, 30.708359, 25.402534>,  <26.755619, 30.660763, 25.500891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.541935, 30.708359, 25.402534>,  <26.185797, 30.787687, 25.238607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541935, 30.708359, 25.402534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372905, -0.834074, 0.406524,
		0.261197, -0.514771, -0.816570,
		0.890347, -0.198320, 0.409819,
		26.809040, 30.648863, 25.525480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179020, 30.178215, 25.139528>,  <26.185797, 30.787687, 25.238607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179020, 30.178215, 25.139528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.473322, 30.219662, 25.407238>,  <26.649904, 30.244530, 25.567863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.473322, 30.219662, 25.407238>,  <26.179020, 30.178215, 25.139528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473322, 30.219662, 25.407238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290496, -0.844415, 0.450084,
		0.611781, -0.525574, -0.591183,
		0.735756, 0.103617, 0.669273,
		26.694048, 30.250746, 25.608021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595936, 29.573933, 25.011103>,  <26.179020, 30.178215, 25.139528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595936, 29.573933, 25.011103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.662001, 29.723942, 25.375977>,  <26.701639, 29.813948, 25.594900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.662001, 29.723942, 25.375977>,  <26.595936, 29.573933, 25.011103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662001, 29.723942, 25.375977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102505, -0.913351, 0.394060,
		0.980926, -0.158586, -0.112408,
		0.165161, 0.375021, 0.912185,
		26.711550, 29.836449, 25.649632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024204, 29.040665, 25.449207>,  <26.595936, 29.573933, 25.011103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024204, 29.040665, 25.449207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.883049, 29.296356, 25.722515>,  <26.798355, 29.449772, 25.886499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.883049, 29.296356, 25.722515>,  <27.024204, 29.040665, 25.449207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883049, 29.296356, 25.722515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148409, -0.759245, 0.633658,
		0.923820, 0.122209, 0.362797,
		-0.352890, 0.639228, 0.683269,
		26.777182, 29.488125, 25.927496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308859, 28.786295, 26.020887>,  <27.024204, 29.040665, 25.449207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308859, 28.786295, 26.020887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.021231, 29.028427, 26.157421>,  <26.848654, 29.173706, 26.239342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.021231, 29.028427, 26.157421>,  <27.308859, 28.786295, 26.020887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021231, 29.028427, 26.157421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227159, -0.668934, 0.707761,
		0.656760, 0.431394, 0.618519,
		-0.719072, 0.605331, 0.341334,
		26.805510, 29.210026, 26.259821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438499, 29.026882, 26.719494>,  <27.308859, 28.786295, 26.020887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438499, 29.026882, 26.719494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.040657, 29.035160, 26.678837>,  <26.801952, 29.040127, 26.654444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.040657, 29.035160, 26.678837>,  <27.438499, 29.026882, 26.719494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040657, 29.035160, 26.678837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068528, -0.866686, 0.494125,
		-0.077865, 0.498425, 0.863429,
		-0.994606, 0.020694, -0.101641,
		26.742275, 29.041368, 26.648344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196045, 29.111593, 27.412243>,  <27.438499, 29.026882, 26.719494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196045, 29.111593, 27.412243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.907679, 28.957855, 27.181572>,  <26.734659, 28.865612, 27.043169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.907679, 28.957855, 27.181572>,  <27.196045, 29.111593, 27.412243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907679, 28.957855, 27.181572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112033, -0.756544, 0.644274,
		-0.683905, 0.529076, 0.502347,
		-0.720918, -0.384343, -0.576678,
		26.691402, 28.842552, 27.008568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619982, 28.808586, 27.785250>,  <27.196045, 29.111593, 27.412243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619982, 28.808586, 27.785250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.554483, 28.635448, 27.430660>,  <26.515184, 28.531567, 27.217907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.554483, 28.635448, 27.430660>,  <26.619982, 28.808586, 27.785250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554483, 28.635448, 27.430660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248761, -0.851446, 0.461690,
		-0.954623, 0.296121, 0.031748,
		-0.163748, -0.432842, -0.886473,
		26.505360, 28.505596, 27.164719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948317, 28.530809, 27.804050>,  <26.619982, 28.808586, 27.785250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948317, 28.530809, 27.804050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.168840, 28.324680, 27.541599>,  <26.301155, 28.201004, 27.384129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.168840, 28.324680, 27.541599>,  <25.948317, 28.530809, 27.804050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168840, 28.324680, 27.541599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207206, -0.846371, 0.490633,
		-0.808162, -0.134537, -0.573389,
		0.551308, -0.515321, -0.656128,
		26.334232, 28.170084, 27.344761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567574, 27.981634, 27.723763>,  <25.948317, 28.530809, 27.804050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567574, 27.981634, 27.723763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.925655, 27.862957, 27.590744>,  <26.140505, 27.791750, 27.510933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.925655, 27.862957, 27.590744>,  <25.567574, 27.981634, 27.723763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925655, 27.862957, 27.590744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180912, -0.923867, 0.337253,
		-0.407288, -0.241749, -0.880724,
		0.895202, -0.296693, -0.332545,
		26.194216, 27.773949, 27.490980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415777, 27.331705, 27.631374>,  <25.567574, 27.981634, 27.723763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415777, 27.331705, 27.631374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.813522, 27.333237, 27.588982>,  <26.052170, 27.334156, 27.563547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.813522, 27.333237, 27.588982>,  <25.415777, 27.331705, 27.631374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813522, 27.333237, 27.588982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029985, -0.968718, 0.246344,
		-0.101722, -0.248133, -0.963371,
		0.994361, 0.003828, -0.105980,
		26.111830, 27.334385, 27.557188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579447, 26.812231, 27.215639>,  <25.415777, 27.331705, 27.631374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579447, 26.812231, 27.215639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.886711, 26.898178, 27.456890>,  <26.071070, 26.949745, 27.601641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.886711, 26.898178, 27.456890>,  <25.579447, 26.812231, 27.215639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886711, 26.898178, 27.456890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103611, -0.887873, 0.448269,
		0.631820, -0.406833, -0.659765,
		0.768159, 0.214866, 0.603128,
		26.117159, 26.962639, 27.637829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948973, 26.253225, 27.084688>,  <25.579447, 26.812231, 27.215639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948973, 26.253225, 27.084688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.094582, 26.395824, 27.428875>,  <26.181946, 26.481384, 27.635387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.094582, 26.395824, 27.428875>,  <25.948973, 26.253225, 27.084688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094582, 26.395824, 27.428875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003686, -0.923290, 0.384085,
		0.931384, -0.142987, -0.334782,
		0.364020, 0.356497, 0.860465,
		26.203787, 26.502773, 27.687014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.648842, 25.835154, 27.372740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.559793, 26.019024, 27.716633>,  <26.506365, 26.129347, 27.922968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.559793, 26.019024, 27.716633>,  <26.648842, 25.835154, 27.372740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559793, 26.019024, 27.716633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187583, -0.845186, 0.500473,
		0.956688, 0.272687, 0.101930,
		-0.222622, 0.459676, 0.859731,
		26.493008, 26.156927, 27.974552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229935, 25.713806, 27.878202>,  <26.648842, 25.835154, 27.372740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229935, 25.713806, 27.878202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.896999, 25.794174, 28.084831>,  <26.697239, 25.842396, 28.208809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.896999, 25.794174, 28.084831>,  <27.229935, 25.713806, 27.878202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896999, 25.794174, 28.084831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196401, -0.764602, 0.613848,
		0.518305, 0.612384, 0.596946,
		-0.832338, 0.200920, 0.516571,
		26.647299, 25.854450, 28.239803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566181, 25.833572, 28.577490>,  <27.229935, 25.713806, 27.878202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566181, 25.833572, 28.577490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.175501, 25.751148, 28.601482>,  <26.941093, 25.701693, 28.615877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.175501, 25.751148, 28.601482>,  <27.566181, 25.833572, 28.577490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175501, 25.751148, 28.601482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166062, -0.548574, 0.819445,
		-0.135952, 0.810312, 0.570010,
		-0.976699, -0.206062, 0.059982,
		26.882492, 25.689329, 28.619476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545765, 25.683483, 29.317745>,  <27.566181, 25.833572, 28.577490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545765, 25.683483, 29.317745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.204195, 25.525780, 29.181881>,  <26.999252, 25.431158, 29.100363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.204195, 25.525780, 29.181881>,  <27.545765, 25.683483, 29.317745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204195, 25.525780, 29.181881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149839, -0.811337, 0.565050,
		-0.498356, 0.431616, 0.751897,
		-0.853926, -0.394259, -0.339662,
		26.948017, 25.407501, 29.079983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131504, 25.412476, 29.912140>,  <27.545765, 25.683483, 29.317745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131504, 25.412476, 29.912140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.003967, 25.225307, 29.582439>,  <26.927444, 25.113007, 29.384619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.003967, 25.225307, 29.582439>,  <27.131504, 25.412476, 29.912140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003967, 25.225307, 29.582439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048387, -0.876541, 0.478889,
		-0.946571, 0.112808, 0.302121,
		-0.318844, -0.467921, -0.824250,
		26.908314, 25.084930, 29.335165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780497, 24.861778, 30.175507>,  <27.131504, 25.412476, 29.912140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780497, 24.861778, 30.175507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.837257, 24.738461, 29.799248>,  <26.871315, 24.664471, 29.573492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.837257, 24.738461, 29.799248>,  <26.780497, 24.861778, 30.175507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837257, 24.738461, 29.799248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067571, -0.951064, 0.301515,
		-0.987572, 0.020774, -0.155791,
		0.141904, -0.308294, -0.940648,
		26.879829, 24.645973, 29.517054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333961, 24.268131, 30.141401>,  <26.780497, 24.861778, 30.175507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333961, 24.268131, 30.141401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.604658, 24.263504, 29.846951>,  <26.767076, 24.260727, 29.670280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.604658, 24.263504, 29.846951>,  <26.333961, 24.268131, 30.141401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604658, 24.263504, 29.846951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071801, -0.994073, 0.081633,
		-0.732710, -0.108099, -0.671901,
		0.676742, -0.011570, -0.736129,
		26.807680, 24.260033, 29.626112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046469, 23.746258, 29.756950>,  <26.333961, 24.268131, 30.141401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046469, 23.746258, 29.756950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.415569, 23.790039, 29.609138>,  <26.637030, 23.816309, 29.520451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.415569, 23.790039, 29.609138>,  <26.046469, 23.746258, 29.756950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415569, 23.790039, 29.609138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097320, -0.993926, -0.051384,
		-0.372909, 0.011452, -0.927798,
		0.922750, 0.109454, -0.369529,
		26.692394, 23.822876, 29.498280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131880, 23.445675, 29.033220>,  <26.046469, 23.746258, 29.756950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131880, 23.445675, 29.033220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.494915, 23.450645, 29.201092>,  <26.712736, 23.453627, 29.301815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.494915, 23.450645, 29.201092>,  <26.131880, 23.445675, 29.033220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494915, 23.450645, 29.201092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033201, -0.994308, 0.101239,
		0.418547, -0.105817, -0.902010,
		0.907588, 0.012425, 0.419678,
		26.767191, 23.454372, 29.326996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482794, 22.874275, 28.773237>,  <26.131880, 23.445675, 29.033220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482794, 22.874275, 28.773237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.611713, 22.986107, 29.135002>,  <26.689066, 23.053205, 29.352060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.611713, 22.986107, 29.135002>,  <26.482794, 22.874275, 28.773237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611713, 22.986107, 29.135002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244993, -0.898208, 0.364967,
		0.914386, -0.339203, -0.220997,
		0.322299, 0.279578, 0.904411,
		26.708403, 23.069981, 29.406326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664024, 22.208981, 29.036558>,  <26.482794, 22.874275, 28.773237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664024, 22.208981, 29.036558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.696072, 22.463764, 29.343246>,  <26.715300, 22.616634, 29.527260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.696072, 22.463764, 29.343246>,  <26.664024, 22.208981, 29.036558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696072, 22.463764, 29.343246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157269, -0.751483, 0.640734,
		0.984300, -0.171916, 0.039966,
		0.080119, 0.636960, 0.766722,
		26.720108, 22.654852, 29.573263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178226, 21.931688, 29.463295>,  <26.664024, 22.208981, 29.036558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178226, 21.931688, 29.463295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.928814, 22.167385, 29.668819>,  <26.779165, 22.308804, 29.792135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.928814, 22.167385, 29.668819>,  <27.178226, 21.931688, 29.463295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928814, 22.167385, 29.668819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154847, -0.737282, 0.657601,
		0.766309, 0.330473, 0.550961,
		-0.623532, 0.589240, 0.513813,
		26.741755, 22.344156, 29.822964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340761, 21.879522, 30.121561>,  <27.178226, 21.931688, 29.463295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340761, 21.879522, 30.121561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.988037, 22.061813, 30.170101>,  <26.776403, 22.171188, 30.199224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.988037, 22.061813, 30.170101>,  <27.340761, 21.879522, 30.121561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988037, 22.061813, 30.170101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106794, -0.443587, 0.889846,
		0.459357, 0.771714, 0.439828,
		-0.881809, 0.455728, 0.121350,
		26.723495, 22.198532, 30.206507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306141, 21.996176, 30.939243>,  <27.340761, 21.879522, 30.121561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306141, 21.996176, 30.939243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.938272, 22.033424, 30.786648>,  <26.717552, 22.055773, 30.695091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.938272, 22.033424, 30.786648>,  <27.306141, 21.996176, 30.939243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938272, 22.033424, 30.786648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359877, -0.588618, 0.723890,
		-0.157143, 0.803030, 0.574847,
		-0.919671, 0.093121, -0.381489,
		26.662371, 22.061361, 30.672201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804808, 22.267445, 31.436857>,  <27.306141, 21.996176, 30.939243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804808, 22.267445, 31.436857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.599581, 22.042847, 31.177170>,  <26.476444, 21.908087, 31.021358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.599581, 22.042847, 31.177170>,  <26.804808, 22.267445, 31.436857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599581, 22.042847, 31.177170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368826, -0.538754, 0.757438,
		-0.775066, 0.628066, 0.069324,
		-0.513069, -0.561496, -0.649216,
		26.445660, 21.874397, 30.982405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148262, 22.198082, 31.757771>,  <26.804808, 22.267445, 31.436857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148262, 22.198082, 31.757771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.123476, 21.906883, 31.484661>,  <26.108604, 21.732164, 31.320795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.123476, 21.906883, 31.484661>,  <26.148262, 22.198082, 31.757771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123476, 21.906883, 31.484661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139373, -0.671075, 0.728171,
		-0.988299, 0.140281, -0.059881,
		-0.061964, -0.727997, -0.682774,
		26.104887, 21.688484, 31.279829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523203, 21.831844, 31.936131>,  <26.148262, 22.198082, 31.757771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523203, 21.831844, 31.936131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.768362, 21.591854, 31.730457>,  <25.915457, 21.447859, 31.607054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.768362, 21.591854, 31.730457>,  <25.523203, 21.831844, 31.936131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768362, 21.591854, 31.730457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016421, -0.640919, 0.767433,
		-0.789991, -0.478801, -0.382966,
		0.612898, -0.599977, -0.514183,
		25.952230, 21.411861, 31.576202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223366, 21.235620, 32.018925>,  <25.523203, 21.831844, 31.936131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223366, 21.235620, 32.018925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.585510, 21.135223, 31.881916>,  <25.802797, 21.074986, 31.799711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.585510, 21.135223, 31.881916>,  <25.223366, 21.235620, 32.018925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585510, 21.135223, 31.881916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102367, -0.653818, 0.749696,
		-0.412114, -0.713810, -0.566249,
		0.905364, -0.250995, -0.342518,
		25.857119, 21.059925, 31.779161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297924, 20.612364, 32.251484>,  <25.223366, 21.235620, 32.018925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297924, 20.612364, 32.251484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.682291, 20.690762, 32.173283>,  <25.912912, 20.737801, 32.126362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.682291, 20.690762, 32.173283>,  <25.297924, 20.612364, 32.251484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682291, 20.690762, 32.173283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265597, -0.453599, 0.850709,
		0.078054, -0.869388, -0.487927,
		0.960919, 0.195993, -0.195501,
		25.970568, 20.749559, 32.114632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545113, 19.948467, 32.274162>,  <25.297924, 20.612364, 32.251484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545113, 19.948467, 32.274162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.846512, 20.204777, 32.333015>,  <26.027351, 20.358562, 32.368328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.846512, 20.204777, 32.333015>,  <25.545113, 19.948467, 32.274162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846512, 20.204777, 32.333015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232568, -0.469103, 0.851971,
		0.614942, -0.607740, -0.502492,
		0.753498, 0.640776, 0.147130,
		26.072561, 20.397009, 32.377155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200399, 19.539846, 32.503159>,  <25.545113, 19.948467, 32.274162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200399, 19.539846, 32.503159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.254049, 19.911747, 32.640312>,  <26.286240, 20.134888, 32.722607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.254049, 19.911747, 32.640312>,  <26.200399, 19.539846, 32.503159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254049, 19.911747, 32.640312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356024, -0.368122, 0.858914,
		0.924801, 0.006874, -0.380389,
		0.134126, 0.929752, 0.342887,
		26.294287, 20.190672, 32.743179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784744, 19.469913, 32.912357>,  <26.200399, 19.539846, 32.503159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784744, 19.469913, 32.912357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.620913, 19.811066, 33.041874>,  <26.522614, 20.015757, 33.119583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.620913, 19.811066, 33.041874>,  <26.784744, 19.469913, 32.912357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620913, 19.811066, 33.041874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196968, -0.263879, 0.944231,
		0.890758, 0.450512, -0.059911,
		-0.409577, 0.852882, 0.323789,
		26.498039, 20.066931, 33.139011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245899, 19.811483, 33.416393>,  <26.784744, 19.469913, 32.912357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245899, 19.811483, 33.416393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.860760, 19.901508, 33.476086>,  <26.629677, 19.955523, 33.511902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.860760, 19.901508, 33.476086>,  <27.245899, 19.811483, 33.416393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860760, 19.901508, 33.476086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062199, -0.352928, 0.933581,
		0.262779, 0.908179, 0.325818,
		-0.962849, 0.225060, 0.149230,
		26.571905, 19.969027, 33.520855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199192, 19.694551, 34.222160>,  <27.245899, 19.811483, 33.416393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199192, 19.694551, 34.222160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.833389, 19.746155, 34.068783>,  <26.613907, 19.777117, 33.976757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.833389, 19.746155, 34.068783>,  <27.199192, 19.694551, 34.222160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833389, 19.746155, 34.068783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403305, -0.215927, 0.889225,
		0.031921, 0.967849, 0.249497,
		-0.914509, 0.129009, -0.383446,
		26.559036, 19.784857, 33.953751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871416, 19.390123, 34.305531>,  <27.199192, 19.694551, 34.222160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871416, 19.390123, 34.305531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.266203, 19.335629, 34.271271>,  <28.503075, 19.302931, 34.250717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.266203, 19.335629, 34.271271>,  <27.871416, 19.390123, 34.305531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266203, 19.335629, 34.271271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035963, 0.705497, -0.707800,
		0.156851, 0.695495, 0.701202,
		0.986967, -0.136236, -0.085646,
		28.562294, 19.294758, 34.245579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004372, 20.073854, 34.238594>,  <27.871416, 19.390123, 34.305531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004372, 20.073854, 34.238594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.310486, 19.856277, 34.100918>,  <28.494154, 19.725731, 34.018311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.310486, 19.856277, 34.100918>,  <28.004372, 20.073854, 34.238594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310486, 19.856277, 34.100918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110537, 0.637822, -0.762210,
		0.634129, 0.545263, 0.548241,
		0.765285, -0.543941, -0.344190,
		28.540071, 19.693096, 33.997662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473932, 20.552635, 34.201561>,  <28.004372, 20.073854, 34.238594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473932, 20.552635, 34.201561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.574276, 20.256596, 33.951981>,  <28.634483, 20.078972, 33.802231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.574276, 20.256596, 33.951981>,  <28.473932, 20.552635, 34.201561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574276, 20.256596, 33.951981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213789, 0.671008, -0.709959,
		0.944120, 0.044707, 0.326556,
		0.250861, -0.740101, -0.623954,
		28.649534, 20.034565, 33.764793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221786, 20.326920, 34.101730>,  <28.473932, 20.552635, 34.201561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221786, 20.326920, 34.101730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013666, 20.271648, 33.764637>,  <28.888794, 20.238485, 33.562382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013666, 20.271648, 33.764637>,  <29.221786, 20.326920, 34.101730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013666, 20.271648, 33.764637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508493, 0.742688, -0.435717,
		0.686093, -0.655227, -0.316156,
		-0.520299, -0.138179, -0.842731,
		28.857576, 20.230194, 33.511818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592398, 20.650043, 33.734253>,  <29.221786, 20.326920, 34.101730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592398, 20.650043, 33.734253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.314325, 20.546062, 33.466179>,  <29.147482, 20.483675, 33.305332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.314325, 20.546062, 33.466179>,  <29.592398, 20.650043, 33.734253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314325, 20.546062, 33.466179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341602, 0.700855, -0.626187,
		0.632480, -0.664251, -0.398422,
		-0.695181, -0.259949, -0.670186,
		29.105772, 20.468077, 33.265121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898422, 20.434168, 33.105679>,  <29.592398, 20.650043, 33.734253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898422, 20.434168, 33.105679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.534431, 20.545227, 32.982483>,  <29.316038, 20.611862, 32.908566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.534431, 20.545227, 32.982483>,  <29.898422, 20.434168, 33.105679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534431, 20.545227, 32.982483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414553, 0.592209, -0.690966,
		-0.009454, -0.756439, -0.653996,
		-0.909976, 0.277649, -0.307985,
		29.261438, 20.628521, 32.890087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039103, 20.576982, 32.399319>,  <29.898422, 20.434168, 33.105679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039103, 20.576982, 32.399319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.683556, 20.743534, 32.475784>,  <29.470228, 20.843466, 32.521664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.683556, 20.743534, 32.475784>,  <30.039103, 20.576982, 32.399319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683556, 20.743534, 32.475784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148434, 0.656443, -0.739628,
		-0.433454, -0.629056, -0.645295,
		-0.888867, 0.416379, 0.191165,
		29.416895, 20.868448, 32.533134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686878, 20.672520, 31.797131>,  <30.039103, 20.576982, 32.399319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686878, 20.672520, 31.797131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484304, 20.920601, 32.036755>,  <29.362761, 21.069448, 32.180531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484304, 20.920601, 32.036755>,  <29.686878, 20.672520, 31.797131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484304, 20.920601, 32.036755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010278, 0.690350, -0.723402,
		-0.862217, -0.372513, -0.343243,
		-0.506435, 0.620202, 0.599061,
		29.332375, 21.106661, 32.216473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027719, 20.863548, 31.379126>,  <29.686878, 20.672520, 31.797131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027719, 20.863548, 31.379126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.094051, 21.153774, 31.646275>,  <29.133850, 21.327909, 31.806564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.094051, 21.153774, 31.646275>,  <29.027719, 20.863548, 31.379126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094051, 21.153774, 31.646275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085018, 0.685248, -0.723331,
		-0.982483, 0.063170, 0.175322,
		0.165832, 0.725566, 0.667874,
		29.143801, 21.371445, 31.846636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649240, 21.334715, 31.158377>,  <29.027719, 20.863548, 31.379126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649240, 21.334715, 31.158377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884544, 21.550179, 31.399639>,  <29.025726, 21.679457, 31.544397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884544, 21.550179, 31.399639>,  <28.649240, 21.334715, 31.158377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884544, 21.550179, 31.399639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147786, 0.804909, -0.574701,
		-0.795054, 0.248935, 0.553101,
		0.588259, 0.538659, 0.603157,
		29.061022, 21.711777, 31.580585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272593, 21.920048, 31.369328>,  <28.649240, 21.334715, 31.158377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272593, 21.920048, 31.369328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654808, 22.033985, 31.399815>,  <28.884138, 22.102348, 31.418106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654808, 22.033985, 31.399815>,  <28.272593, 21.920048, 31.369328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654808, 22.033985, 31.399815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146628, 0.683276, -0.715286,
		-0.255822, 0.672308, 0.694663,
		0.955539, 0.284843, 0.076218,
		28.941469, 22.119438, 31.422680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305681, 22.677382, 31.345726>,  <28.272593, 21.920048, 31.369328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305681, 22.677382, 31.345726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.672041, 22.551365, 31.246223>,  <28.891857, 22.475756, 31.186522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.672041, 22.551365, 31.246223>,  <28.305681, 22.677382, 31.345726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672041, 22.551365, 31.246223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050807, 0.705707, -0.706680,
		0.398183, 0.634608, 0.662362,
		0.915898, -0.315041, -0.248758,
		28.946810, 22.456852, 31.171597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796392, 23.382013, 31.382607>,  <28.305681, 22.677382, 31.345726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796392, 23.382013, 31.382607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.005167, 23.103794, 31.185104>,  <29.130432, 22.936863, 31.066603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.005167, 23.103794, 31.185104>,  <28.796392, 23.382013, 31.382607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005167, 23.103794, 31.185104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204541, 0.664025, -0.719190,
		0.828097, 0.274379, 0.488847,
		0.521937, -0.695548, -0.493755,
		29.161749, 22.895130, 31.036978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524063, 23.591993, 31.335932>,  <28.796392, 23.382013, 31.382607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524063, 23.591993, 31.335932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425945, 23.357960, 31.026737>,  <29.367075, 23.217539, 30.841221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425945, 23.357960, 31.026737>,  <29.524063, 23.591993, 31.335932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425945, 23.357960, 31.026737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364620, 0.683120, -0.632770,
		0.898267, -0.437060, 0.045769,
		-0.245293, -0.585085, -0.772986,
		29.352358, 23.182434, 30.794842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041359, 23.846998, 30.879673>,  <29.524063, 23.591993, 31.335932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041359, 23.846998, 30.879673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.816839, 23.614265, 30.644245>,  <29.682127, 23.474625, 30.502989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.816839, 23.614265, 30.644245>,  <30.041359, 23.846998, 30.879673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816839, 23.614265, 30.644245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397119, 0.434600, -0.808344,
		0.726114, -0.687454, -0.012883,
		-0.561298, -0.581833, -0.588570,
		29.648449, 23.439716, 30.467674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435503, 23.636747, 30.329689>,  <30.041359, 23.846998, 30.879673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435503, 23.636747, 30.329689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.065329, 23.575851, 30.190899>,  <29.843224, 23.539314, 30.107626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.065329, 23.575851, 30.190899>,  <30.435503, 23.636747, 30.329689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065329, 23.575851, 30.190899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241362, 0.469040, -0.849556,
		0.292081, -0.869956, -0.397322,
		-0.925436, -0.152241, -0.346973,
		29.787697, 23.530178, 30.086807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453409, 23.309074, 29.656515>,  <30.435503, 23.636747, 30.329689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453409, 23.309074, 29.656515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096050, 23.487194, 29.680340>,  <29.881634, 23.594067, 29.694635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096050, 23.487194, 29.680340>,  <30.453409, 23.309074, 29.656515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096050, 23.487194, 29.680340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067996, 0.265075, -0.961827,
		-0.444090, -0.855244, -0.267096,
		-0.893398, 0.445300, 0.059564,
		29.828032, 23.620785, 29.698210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126768, 23.143423, 29.014832>,  <30.453409, 23.309074, 29.656515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126768, 23.143423, 29.014832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.942951, 23.467373, 29.160667>,  <29.832661, 23.661743, 29.248169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.942951, 23.467373, 29.160667>,  <30.126768, 23.143423, 29.014832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942951, 23.467373, 29.160667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011141, 0.405213, -0.914154,
		-0.888086, -0.424155, -0.177190,
		-0.459543, 0.809873, 0.364590,
		29.805088, 23.710335, 29.270044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766375, 23.383419, 28.490086>,  <30.126768, 23.143423, 29.014832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766375, 23.383419, 28.490086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.729811, 23.696892, 28.735844>,  <29.707872, 23.884975, 28.883299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.729811, 23.696892, 28.735844>,  <29.766375, 23.383419, 28.490086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729811, 23.696892, 28.735844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024284, 0.618551, -0.785369,
		-0.995517, -0.056869, -0.075572,
		-0.091409, 0.783684, 0.614397,
		29.702389, 23.931997, 28.920162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270330, 23.795885, 28.179792>,  <29.766375, 23.383419, 28.490086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270330, 23.795885, 28.179792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.503668, 24.027901, 28.407219>,  <29.643669, 24.167110, 28.543674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.503668, 24.027901, 28.407219>,  <29.270330, 23.795885, 28.179792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503668, 24.027901, 28.407219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083444, 0.653505, -0.752309,
		-0.807929, 0.486297, 0.332816,
		0.583342, 0.580041, 0.568564,
		29.678671, 24.201912, 28.577787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.311621, 31.277449, 18.609140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.528084, 31.248489, 18.944260>,  <25.657961, 31.231113, 19.145332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.528084, 31.248489, 18.944260>,  <25.311621, 31.277449, 18.609140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.528084, 31.248489, 18.944260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749784, 0.409558, 0.519698,
		-0.380753, -0.909407, 0.167351,
		0.541157, -0.072399, 0.837799,
		25.690432, 31.226770, 19.195599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858557, 30.984217, 19.078186>,  <25.311621, 31.277449, 18.609140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858557, 30.984217, 19.078186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.131748, 31.153927, 19.316021>,  <25.295662, 31.255753, 19.458721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.131748, 31.153927, 19.316021>,  <24.858557, 30.984217, 19.078186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131748, 31.153927, 19.316021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730440, 0.396021, 0.556440,
		0.000614, -0.814345, 0.580380,
		0.682977, 0.424274, 0.594587,
		25.336641, 31.281210, 19.494396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.585670, 30.938841, 19.756878>,  <24.858557, 30.984217, 19.078186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.585670, 30.938841, 19.756878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.871178, 31.215042, 19.803764>,  <25.042482, 31.380762, 19.831896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.871178, 31.215042, 19.803764>,  <24.585670, 30.938841, 19.756878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871178, 31.215042, 19.803764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536202, 0.431076, 0.725714,
		0.450586, -0.580836, 0.677939,
		0.713764, 0.690509, 0.117209,
		25.085308, 31.422194, 19.838930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722237, 30.927973, 20.534660>,  <24.585670, 30.938841, 19.756878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722237, 30.927973, 20.534660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.825163, 31.276005, 20.366493>,  <24.886919, 31.484823, 20.265593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.825163, 31.276005, 20.366493>,  <24.722237, 30.927973, 20.534660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825163, 31.276005, 20.366493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564341, 0.488473, 0.665516,
		0.784415, 0.066013, 0.616713,
		0.257315, 0.870078, -0.420420,
		24.902357, 31.537027, 20.240368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.700760, 31.389240, 21.057602>,  <24.722237, 30.927973, 20.534660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.700760, 31.389240, 21.057602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.681738, 31.628429, 20.737560>,  <24.670324, 31.771942, 20.545534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.681738, 31.628429, 20.737560>,  <24.700760, 31.389240, 21.057602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681738, 31.628429, 20.737560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752184, 0.505610, 0.422584,
		0.657234, 0.621924, 0.425739,
		-0.047557, 0.597971, -0.800105,
		24.667471, 31.807821, 20.497528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600796, 32.043549, 21.427813>,  <24.700760, 31.389240, 21.057602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600796, 32.043549, 21.427813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.478876, 32.092117, 21.049953>,  <24.405724, 32.121258, 20.823238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.478876, 32.092117, 21.049953>,  <24.600796, 32.043549, 21.427813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478876, 32.092117, 21.049953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699081, 0.645079, 0.308479,
		0.646826, 0.754407, -0.111739,
		-0.304799, 0.121417, -0.944646,
		24.387436, 32.128544, 20.766560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538794, 32.750637, 21.275578>,  <24.600796, 32.043549, 21.427813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538794, 32.750637, 21.275578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.302225, 32.558220, 21.016712>,  <24.160284, 32.442772, 20.861393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.302225, 32.558220, 21.016712>,  <24.538794, 32.750637, 21.275578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302225, 32.558220, 21.016712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731573, 0.657646, 0.179728,
		0.339149, 0.579744, -0.740861,
		-0.591421, -0.481040, -0.647165,
		24.124800, 32.413910, 20.822563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.180729, 33.304798, 20.859356>,  <24.538794, 32.750637, 21.275578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.180729, 33.304798, 20.859356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.954935, 32.974796, 20.870083>,  <23.819458, 32.776794, 20.876518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.954935, 32.974796, 20.870083>,  <24.180729, 33.304798, 20.859356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.954935, 32.974796, 20.870083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769701, 0.537822, 0.343958,
		-0.298190, 0.173520, -0.938602,
		-0.564485, -0.825008, 0.026815,
		23.785589, 32.727295, 20.878128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.585646, 33.482750, 20.510616>,  <24.180729, 33.304798, 20.859356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.585646, 33.482750, 20.510616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.514929, 33.173130, 20.753792>,  <23.472498, 32.987358, 20.899696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.514929, 33.173130, 20.753792>,  <23.585646, 33.482750, 20.510616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.514929, 33.173130, 20.753792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786639, 0.482357, 0.385396,
		-0.591560, -0.410093, -0.694176,
		-0.176793, -0.774051, 0.607938,
		23.461891, 32.940914, 20.936172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.901421, 33.656826, 20.729532>,  <23.585646, 33.482750, 20.510616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.901421, 33.656826, 20.729532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.960491, 33.339893, 20.966312>,  <22.995934, 33.149734, 21.108381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.960491, 33.339893, 20.966312>,  <22.901421, 33.656826, 20.729532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.960491, 33.339893, 20.966312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598748, 0.404756, 0.691139,
		-0.787205, -0.456494, -0.414634,
		0.147675, -0.792329, 0.591951,
		23.004793, 33.102196, 21.143898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.163540, 33.541443, 20.978834>,  <22.901421, 33.656826, 20.729532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.163540, 33.541443, 20.978834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.433361, 33.394066, 21.234718>,  <22.595253, 33.305641, 21.388248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.433361, 33.394066, 21.234718>,  <22.163540, 33.541443, 20.978834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.433361, 33.394066, 21.234718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512422, 0.390103, 0.765012,
		-0.531417, -0.843842, 0.074347,
		0.674552, -0.368444, 0.639710,
		22.635727, 33.283531, 21.426632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824617, 33.208916, 21.514307>,  <22.163540, 33.541443, 20.978834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824617, 33.208916, 21.514307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.187147, 33.273090, 21.670685>,  <22.404665, 33.311596, 21.764511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.187147, 33.273090, 21.670685>,  <21.824617, 33.208916, 21.514307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.187147, 33.273090, 21.670685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421733, 0.402080, 0.812695,
		-0.026802, -0.901438, 0.432077,
		0.906324, 0.160439, 0.390943,
		22.459044, 33.321220, 21.787968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.753304, 33.052216, 22.297382>,  <21.824617, 33.208916, 21.514307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.753304, 33.052216, 22.297382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093533, 33.262463, 22.291046>,  <22.297670, 33.388611, 22.287245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093533, 33.262463, 22.291046>,  <21.753304, 33.052216, 22.297382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093533, 33.262463, 22.291046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221721, 0.385788, 0.895549,
		0.476829, -0.758217, 0.444681,
		0.850573, 0.525619, -0.015842,
		22.348705, 33.420147, 22.286293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.011528, 33.002827, 22.970430>,  <21.753304, 33.052216, 22.297382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.011528, 33.002827, 22.970430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.154119, 33.336864, 22.802841>,  <22.239676, 33.537289, 22.702288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.154119, 33.336864, 22.802841>,  <22.011528, 33.002827, 22.970430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.154119, 33.336864, 22.802841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314346, 0.529492, 0.787925,
		0.879835, -0.149177, 0.451262,
		0.356480, 0.835096, -0.418972,
		22.261065, 33.587395, 22.677149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114702, 33.434784, 23.504171>,  <22.011528, 33.002827, 22.970430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114702, 33.434784, 23.504171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.194567, 33.701023, 23.216530>,  <22.242485, 33.860767, 23.043945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.194567, 33.701023, 23.216530>,  <22.114702, 33.434784, 23.504171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194567, 33.701023, 23.216530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138427, 0.745683, 0.651763,
		0.970037, -0.030589, 0.241022,
		0.199663, 0.665599, -0.719106,
		22.254465, 33.900703, 23.000797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507030, 33.828945, 23.817051>,  <22.114702, 33.434784, 23.504171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507030, 33.828945, 23.817051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378382, 34.057739, 23.515221>,  <22.301193, 34.195015, 23.334122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378382, 34.057739, 23.515221>,  <22.507030, 33.828945, 23.817051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378382, 34.057739, 23.515221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198296, 0.738559, 0.644367,
		0.925871, 0.356873, -0.124114,
		-0.321622, 0.571990, -0.754577,
		22.281895, 34.229336, 23.288847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809692, 34.516022, 23.974110>,  <22.507030, 33.828945, 23.817051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809692, 34.516022, 23.974110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.491684, 34.566105, 23.736702>,  <22.300879, 34.596157, 23.594257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.491684, 34.566105, 23.736702>,  <22.809692, 34.516022, 23.974110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.491684, 34.566105, 23.736702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325880, 0.737103, 0.592014,
		0.511612, 0.664079, -0.545208,
		-0.795019, 0.125210, -0.593521,
		22.253178, 34.603668, 23.558645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.807138, 35.244888, 23.774727>,  <22.809692, 34.516022, 23.974110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.807138, 35.244888, 23.774727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.436096, 35.111721, 23.706947>,  <22.213470, 35.031818, 23.666279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.436096, 35.111721, 23.706947>,  <22.807138, 35.244888, 23.774727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.436096, 35.111721, 23.706947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373003, 0.850264, 0.371375,
		0.020439, 0.407695, -0.912889,
		-0.927605, -0.332920, -0.169450,
		22.157814, 35.011845, 23.656113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.433914, 35.790909, 23.368477>,  <22.807138, 35.244888, 23.774727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.433914, 35.790909, 23.368477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.149145, 35.566330, 23.537209>,  <21.978283, 35.431583, 23.638449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.149145, 35.566330, 23.537209>,  <22.433914, 35.790909, 23.368477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.149145, 35.566330, 23.537209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499994, 0.827038, 0.256933,
		-0.493125, -0.027997, -0.869508,
		-0.711923, -0.561449, 0.421831,
		21.935568, 35.397896, 23.663757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.722279, 36.011127, 23.059484>,  <22.433914, 35.790909, 23.368477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.722279, 36.011127, 23.059484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.701151, 35.844742, 23.422623>,  <21.688475, 35.744911, 23.640505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.701151, 35.844742, 23.422623>,  <21.722279, 36.011127, 23.059484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.701151, 35.844742, 23.422623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481382, 0.807118, 0.341807,
		-0.874918, -0.418966, -0.242871,
		-0.052820, -0.415967, 0.907844,
		21.685305, 35.719952, 23.694977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402578, 36.531696, 23.486462>,  <21.722279, 36.011127, 23.059484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.402578, 36.531696, 23.486462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.495716, 36.246956, 23.751507>,  <21.551598, 36.076111, 23.910534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.495716, 36.246956, 23.751507>,  <21.402578, 36.531696, 23.486462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.495716, 36.246956, 23.751507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423193, 0.539283, 0.728067,
		-0.875609, -0.449938, -0.175681,
		0.232843, -0.711849, 0.662612,
		21.565569, 36.033401, 23.950291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.978411, 37.010620, 23.177074>,  <21.402578, 36.531696, 23.486462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.978411, 37.010620, 23.177074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.776028, 36.982742, 22.833179>,  <20.654598, 36.966015, 22.626842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.776028, 36.982742, 22.833179>,  <20.978411, 37.010620, 23.177074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776028, 36.982742, 22.833179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851977, -0.196026, -0.485499,
		-0.134693, -0.978118, 0.158561,
		-0.505958, -0.069697, -0.859738,
		20.624241, 36.961834, 22.575258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070599, 36.242104, 22.839870>,  <20.978411, 37.010620, 23.177074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070599, 36.242104, 22.839870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.960667, 36.495766, 22.550785>,  <20.894707, 36.647964, 22.377335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.960667, 36.495766, 22.550785>,  <21.070599, 36.242104, 22.839870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960667, 36.495766, 22.550785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792962, -0.275600, -0.543374,
		-0.543764, -0.722420, -0.427119,
		-0.274830, 0.634157, -0.722713,
		20.878218, 36.686012, 22.333971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.087029, 35.744961, 22.245787>,  <21.070599, 36.242104, 22.839870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.087029, 35.744961, 22.245787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.099382, 36.122150, 22.113213>,  <21.106794, 36.348465, 22.033669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.099382, 36.122150, 22.113213>,  <21.087029, 35.744961, 22.245787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.099382, 36.122150, 22.113213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544368, -0.293969, -0.785650,
		-0.838278, -0.156160, -0.522403,
		0.030883, 0.942972, -0.331436,
		21.108646, 36.405041, 22.013783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996338, 35.643280, 21.579618>,  <21.087029, 35.744961, 22.245787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996338, 35.643280, 21.579618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.185108, 35.994297, 21.613594>,  <21.298370, 36.204906, 21.633980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.185108, 35.994297, 21.613594>,  <20.996338, 35.643280, 21.579618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.185108, 35.994297, 21.613594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570160, -0.230290, -0.788596,
		-0.672462, 0.420587, -0.609017,
		0.471924, 0.877538, 0.084940,
		21.326685, 36.257557, 21.639076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.148520, 35.883579, 20.841671>,  <20.996338, 35.643280, 21.579618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.148520, 35.883579, 20.841671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.401482, 36.073429, 21.086552>,  <21.553259, 36.187340, 21.233480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.401482, 36.073429, 21.086552>,  <21.148520, 35.883579, 20.841671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.401482, 36.073429, 21.086552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740344, -0.137779, -0.657958,
		-0.227936, 0.869337, -0.438519,
		0.632405, 0.474627, 0.612203,
		21.591204, 36.215816, 21.270212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.475187, 36.391468, 20.419674>,  <21.148520, 35.883579, 20.841671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.475187, 36.391468, 20.419674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.736549, 36.384327, 20.722393>,  <21.893368, 36.380043, 20.904024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.736549, 36.384327, 20.722393>,  <21.475187, 36.391468, 20.419674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736549, 36.384327, 20.722393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739208, -0.200470, -0.642949,
		0.163192, 0.979537, -0.117793,
		0.653406, -0.017851, 0.756797,
		21.932571, 36.378971, 20.949432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.023853, 36.568272, 20.113127>,  <21.475187, 36.391468, 20.419674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.023853, 36.568272, 20.113127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.176329, 36.405804, 20.445324>,  <22.267815, 36.308323, 20.644642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.176329, 36.405804, 20.445324>,  <22.023853, 36.568272, 20.113127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.176329, 36.405804, 20.445324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791167, -0.321413, -0.520334,
		0.478277, 0.855404, 0.198832,
		0.381189, -0.406174, 0.830493,
		22.290686, 36.283951, 20.694471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.663977, 36.849213, 20.174612>,  <22.023853, 36.568272, 20.113127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.663977, 36.849213, 20.174612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.629463, 36.490055, 20.347279>,  <22.608755, 36.274559, 20.450878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.629463, 36.490055, 20.347279>,  <22.663977, 36.849213, 20.174612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.629463, 36.490055, 20.347279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743905, -0.346274, -0.571577,
		0.662692, 0.271800, 0.697828,
		-0.086286, -0.897897, 0.431667,
		22.603577, 36.220688, 20.476778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.362785, 36.600311, 20.373795>,  <22.663977, 36.849213, 20.174612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.362785, 36.600311, 20.373795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.141825, 36.267208, 20.359001>,  <23.009249, 36.067345, 20.350126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.141825, 36.267208, 20.359001>,  <23.362785, 36.600311, 20.373795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.141825, 36.267208, 20.359001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737153, -0.467310, -0.488085,
		0.389174, -0.296880, 0.872012,
		-0.552403, -0.832756, -0.036981,
		22.976105, 36.017380, 20.347906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.854387, 36.004925, 20.348215>,  <23.362785, 36.600311, 20.373795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.854387, 36.004925, 20.348215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.542334, 35.763176, 20.283569>,  <23.355101, 35.618126, 20.244781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.542334, 35.763176, 20.283569>,  <23.854387, 36.004925, 20.348215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.542334, 35.763176, 20.283569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569802, -0.579768, -0.582404,
		0.258292, -0.546442, 0.796672,
		-0.780135, -0.604376, -0.161614,
		23.308292, 35.581863, 20.235085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.106522, 35.334194, 20.443457>,  <23.854387, 36.004925, 20.348215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.106522, 35.334194, 20.443457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.795771, 35.344204, 20.191795>,  <23.609320, 35.350212, 20.040798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.795771, 35.344204, 20.191795>,  <24.106522, 35.334194, 20.443457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.795771, 35.344204, 20.191795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485889, -0.611677, -0.624310,
		-0.400462, -0.790712, 0.463039,
		-0.776880, 0.025026, -0.629151,
		23.562706, 35.351711, 20.003050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.965271, 34.624893, 20.268257>,  <24.106522, 35.334194, 20.443457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.965271, 34.624893, 20.268257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.801497, 34.851994, 19.982594>,  <23.703232, 34.988255, 19.811195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.801497, 34.851994, 19.982594>,  <23.965271, 34.624893, 20.268257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.801497, 34.851994, 19.982594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447122, -0.557459, -0.699515,
		-0.795264, -0.605723, -0.025610,
		-0.409436, 0.567750, -0.714159,
		23.678665, 35.022320, 19.768347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.806572, 34.196178, 19.803556>,  <23.965271, 34.624893, 20.268257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.806572, 34.196178, 19.803556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.810640, 34.546284, 19.610138>,  <23.813082, 34.756348, 19.494087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.810640, 34.546284, 19.610138>,  <23.806572, 34.196178, 19.803556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.810640, 34.546284, 19.610138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422850, -0.441973, -0.791112,
		-0.906143, -0.196423, -0.374597,
		0.010169, 0.875259, -0.483548,
		23.813690, 34.808861, 19.465073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.538685, 34.070759, 19.169640>,  <23.806572, 34.196178, 19.803556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.538685, 34.070759, 19.169640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.755981, 34.403778, 19.126270>,  <23.886358, 34.603588, 19.100248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.755981, 34.403778, 19.126270>,  <23.538685, 34.070759, 19.169640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.755981, 34.403778, 19.126270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289938, -0.307225, -0.906393,
		-0.787925, 0.460954, -0.408284,
		0.543240, 0.832547, -0.108422,
		23.918953, 34.653542, 19.093744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.538504, 34.281448, 18.472935>,  <23.538685, 34.070759, 19.169640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.538504, 34.281448, 18.472935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.856817, 34.479073, 18.613007>,  <24.047806, 34.597649, 18.697050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.856817, 34.479073, 18.613007>,  <23.538504, 34.281448, 18.472935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.856817, 34.479073, 18.613007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541809, -0.322583, -0.776134,
		-0.270497, 0.807367, -0.524395,
		0.795785, 0.494064, 0.350181,
		24.095552, 34.627293, 18.718061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.900293, 34.585911, 17.874460>,  <23.538504, 34.281448, 18.472935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.900293, 34.585911, 17.874460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.173800, 34.552616, 18.164436>,  <24.337902, 34.532639, 18.338423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.173800, 34.552616, 18.164436>,  <23.900293, 34.585911, 17.874460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.173800, 34.552616, 18.164436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620538, -0.456378, -0.637692,
		0.383926, 0.885884, -0.260404,
		0.683764, -0.083236, 0.724940,
		24.378929, 34.527645, 18.381918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.480753, 34.857586, 17.579823>,  <23.900293, 34.585911, 17.874460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.480753, 34.857586, 17.579823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.629433, 34.626240, 17.870293>,  <24.718641, 34.487431, 18.044575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.629433, 34.626240, 17.870293>,  <24.480753, 34.857586, 17.579823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629433, 34.626240, 17.870293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766271, -0.250450, -0.591695,
		0.524087, 0.776382, 0.350092,
		0.371701, -0.578365, 0.726176,
		24.740944, 34.452728, 18.088146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258968, 34.870922, 17.526911>,  <24.480753, 34.857586, 17.579823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258968, 34.870922, 17.526911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.193853, 34.556370, 17.765274>,  <25.154783, 34.367638, 17.908293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.193853, 34.556370, 17.765274>,  <25.258968, 34.870922, 17.526911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193853, 34.556370, 17.765274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751272, -0.490311, -0.441799,
		0.639602, 0.375770, 0.670601,
		-0.162788, -0.786379, 0.595909,
		25.145018, 34.320457, 17.944046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900978, 34.688282, 17.676857>,  <25.258968, 34.870922, 17.526911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900978, 34.688282, 17.676857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.675447, 34.374832, 17.781189>,  <25.540129, 34.186760, 17.843788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.675447, 34.374832, 17.781189>,  <25.900978, 34.688282, 17.676857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675447, 34.374832, 17.781189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706648, -0.621197, -0.338767,
		0.427493, -0.006690, 0.903994,
		-0.563825, -0.783626, 0.260829,
		25.506300, 34.139744, 17.859438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398659, 34.271786, 17.957434>,  <25.900978, 34.688282, 17.676857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398659, 34.271786, 17.957434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.098166, 34.028168, 17.855682>,  <25.917870, 33.881996, 17.794632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.098166, 34.028168, 17.855682>,  <26.398659, 34.271786, 17.957434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098166, 34.028168, 17.855682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659901, -0.700792, -0.270962,
		-0.013237, -0.371420, 0.928370,
		-0.751235, -0.609046, -0.254377,
		25.872795, 33.845455, 17.779369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532316, 33.626476, 18.196505>,  <26.398659, 34.271786, 17.957434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532316, 33.626476, 18.196505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.296572, 33.578876, 17.876881>,  <26.155125, 33.550316, 17.685106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.296572, 33.578876, 17.876881>,  <26.532316, 33.626476, 18.196505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296572, 33.578876, 17.876881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702362, -0.564195, -0.434018,
		-0.399177, -0.817021, 0.416094,
		-0.589360, -0.118998, -0.799058,
		26.119764, 33.543179, 17.637163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.770592, 28.439072, 26.136101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051937, 28.553757, 26.396278>,  <26.220745, 28.622568, 26.552385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051937, 28.553757, 26.396278>,  <25.770592, 28.439072, 26.136101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051937, 28.553757, 26.396278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072054, 0.939091, -0.336029,
		-0.707169, 0.189483, 0.681181,
		0.703363, 0.286712, 0.650443,
		26.262947, 28.639771, 26.591412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537416, 29.064823, 26.382240>,  <25.770592, 28.439072, 26.136101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537416, 29.064823, 26.382240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929899, 29.064201, 26.459423>,  <26.165388, 29.063828, 26.505733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929899, 29.064201, 26.459423>,  <25.537416, 29.064823, 26.382240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929899, 29.064201, 26.459423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037845, 0.982097, -0.184534,
		-0.189218, 0.188368, 0.963698,
		0.981206, -0.001554, 0.192959,
		26.224260, 29.063736, 26.517311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692884, 29.738688, 26.713110>,  <25.537416, 29.064823, 26.382240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692884, 29.738688, 26.713110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038225, 29.593815, 26.572571>,  <26.245430, 29.506891, 26.488247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038225, 29.593815, 26.572571>,  <25.692884, 29.738688, 26.713110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038225, 29.593815, 26.572571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203090, 0.886811, -0.415114,
		0.461926, 0.287035, 0.839187,
		0.863353, -0.362182, -0.351347,
		26.297232, 29.485161, 26.467167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321890, 30.235367, 26.836077>,  <25.692884, 29.738688, 26.713110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321890, 30.235367, 26.836077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460550, 29.999977, 26.543903>,  <26.543747, 29.858744, 26.368599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460550, 29.999977, 26.543903>,  <26.321890, 30.235367, 26.836077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460550, 29.999977, 26.543903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418678, 0.793913, -0.440922,
		0.839371, -0.152969, 0.521591,
		0.346650, -0.588475, -0.730431,
		26.564545, 29.823435, 26.324774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993670, 30.382950, 26.782267>,  <26.321890, 30.235367, 26.836077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993670, 30.382950, 26.782267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900579, 30.219913, 26.429062>,  <26.844727, 30.122091, 26.217138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900579, 30.219913, 26.429062>,  <26.993670, 30.382950, 26.782267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900579, 30.219913, 26.429062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432683, 0.769742, -0.469342,
		0.870991, -0.491290, -0.002779,
		-0.232722, -0.407591, -0.883012,
		26.830763, 30.097637, 26.164158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601215, 30.353388, 26.524336>,  <26.993670, 30.382950, 26.782267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601215, 30.353388, 26.524336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315228, 30.332680, 26.245441>,  <27.143635, 30.320255, 26.078104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315228, 30.332680, 26.245441>,  <27.601215, 30.353388, 26.524336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315228, 30.332680, 26.245441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462377, 0.713018, -0.527079,
		0.524429, -0.699232, -0.485849,
		-0.714969, -0.051770, -0.697237,
		27.100737, 30.317148, 26.036270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016153, 30.504280, 25.940254>,  <27.601215, 30.353388, 26.524336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016153, 30.504280, 25.940254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645350, 30.528896, 25.792271>,  <27.422867, 30.543667, 25.703482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645350, 30.528896, 25.792271>,  <28.016153, 30.504280, 25.940254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645350, 30.528896, 25.792271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319554, 0.645970, -0.693259,
		0.196318, -0.760878, -0.618484,
		-0.927008, 0.061540, -0.369957,
		27.367247, 30.547358, 25.681284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074339, 30.402374, 25.171291>,  <28.016153, 30.504280, 25.940254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074339, 30.402374, 25.171291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728180, 30.589848, 25.242199>,  <27.520485, 30.702332, 25.284744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728180, 30.589848, 25.242199>,  <28.074339, 30.402374, 25.171291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728180, 30.589848, 25.242199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195984, 0.642170, -0.741086,
		-0.461172, -0.606591, -0.647586,
		-0.865396, 0.468685, 0.177269,
		27.468561, 30.730453, 25.295380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664001, 30.336826, 24.523386>,  <28.074339, 30.402374, 25.171291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664001, 30.336826, 24.523386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466385, 30.616772, 24.729733>,  <27.347815, 30.784739, 24.853540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466385, 30.616772, 24.729733>,  <27.664001, 30.336826, 24.523386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466385, 30.616772, 24.729733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019719, 0.584160, -0.811399,
		-0.869216, -0.411036, -0.274798,
		-0.494040, 0.699862, 0.515866,
		27.318172, 30.826731, 24.884493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195787, 30.618580, 24.073719>,  <27.664001, 30.336826, 24.523386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195787, 30.618580, 24.073719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220644, 30.906567, 24.350208>,  <27.235558, 31.079359, 24.516102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220644, 30.906567, 24.350208>,  <27.195787, 30.618580, 24.073719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220644, 30.906567, 24.350208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237632, 0.683318, -0.690368,
		-0.969366, -0.121355, 0.213549,
		0.062142, 0.719965, 0.691223,
		27.239286, 31.122557, 24.557575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589218, 31.025932, 24.003807>,  <27.195787, 30.618580, 24.073719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589218, 31.025932, 24.003807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859835, 31.263538, 24.177906>,  <27.022203, 31.406101, 24.282366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859835, 31.263538, 24.177906>,  <26.589218, 31.025932, 24.003807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859835, 31.263538, 24.177906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220975, 0.727563, -0.649479,
		-0.702470, 0.343219, 0.623487,
		0.676540, 0.594014, 0.435248,
		27.062796, 31.441742, 24.308481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239882, 31.669487, 24.153429>,  <26.589218, 31.025932, 24.003807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239882, 31.669487, 24.153429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633368, 31.734959, 24.123726>,  <26.869459, 31.774240, 24.105904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633368, 31.734959, 24.123726>,  <26.239882, 31.669487, 24.153429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633368, 31.734959, 24.123726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178551, 0.842601, -0.508078,
		-0.020590, 0.513063, 0.858104,
		0.983715, 0.163677, -0.074258,
		26.928482, 31.784061, 24.101448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444307, 32.339653, 24.421452>,  <26.239882, 31.669487, 24.153429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444307, 32.339653, 24.421452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701906, 32.249329, 24.129074>,  <26.856464, 32.195133, 23.953648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701906, 32.249329, 24.129074>,  <26.444307, 32.339653, 24.421452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701906, 32.249329, 24.129074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149857, 0.899702, -0.409974,
		0.750208, 0.373558, 0.545565,
		0.643995, -0.225810, -0.730944,
		26.895105, 32.181587, 23.909790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270245, 32.982960, 24.828100>,  <26.444307, 32.339653, 24.421452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270245, 32.982960, 24.828100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406885, 32.906433, 25.196167>,  <26.488869, 32.860516, 25.417007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406885, 32.906433, 25.196167>,  <26.270245, 32.982960, 24.828100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406885, 32.906433, 25.196167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726010, -0.675461, 0.129082,
		0.596841, -0.712145, -0.369635,
		0.341599, -0.191317, 0.920167,
		26.509365, 32.849037, 25.472218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004354, 33.699196, 24.893866>,  <26.270245, 32.982960, 24.828100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004354, 33.699196, 24.893866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703850, 33.786884, 25.142879>,  <25.523548, 33.839497, 25.292288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703850, 33.786884, 25.142879>,  <26.004354, 33.699196, 24.893866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703850, 33.786884, 25.142879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462829, -0.497457, 0.733707,
		0.470528, 0.839332, 0.272258,
		-0.751261, 0.219220, 0.622535,
		25.478472, 33.852650, 25.329639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213707, 34.092506, 25.399883>,  <26.004354, 33.699196, 24.893866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213707, 34.092506, 25.399883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908092, 33.910782, 25.583122>,  <25.724724, 33.801746, 25.693066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908092, 33.910782, 25.583122>,  <26.213707, 34.092506, 25.399883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908092, 33.910782, 25.583122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585052, -0.188572, 0.788768,
		-0.271959, 0.870658, 0.409870,
		-0.764037, -0.454308, 0.458096,
		25.678881, 33.774490, 25.720551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345701, 34.260345, 26.069012>,  <26.213707, 34.092506, 25.399883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345701, 34.260345, 26.069012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064245, 33.982479, 26.128777>,  <25.895370, 33.815758, 26.164637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064245, 33.982479, 26.128777>,  <26.345701, 34.260345, 26.069012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064245, 33.982479, 26.128777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416774, -0.233185, 0.878592,
		-0.575489, 0.680486, 0.453599,
		-0.703642, -0.694668, 0.149413,
		25.853153, 33.774078, 26.173601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061378, 34.287121, 26.828747>,  <26.345701, 34.260345, 26.069012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061378, 34.287121, 26.828747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018232, 33.929359, 26.655121>,  <25.992344, 33.714703, 26.550945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018232, 33.929359, 26.655121>,  <26.061378, 34.287121, 26.828747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018232, 33.929359, 26.655121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409354, -0.437838, 0.800455,
		-0.905977, -0.091343, 0.413355,
		-0.107866, -0.894402, -0.434063,
		25.985872, 33.661037, 26.524902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822020, 33.868221, 27.358189>,  <26.061378, 34.287121, 26.828747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822020, 33.868221, 27.358189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961706, 33.596397, 27.100121>,  <26.045517, 33.433304, 26.945280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961706, 33.596397, 27.100121>,  <25.822020, 33.868221, 27.358189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961706, 33.596397, 27.100121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460815, -0.474960, 0.749708,
		-0.815904, -0.559112, 0.147290,
		0.349214, -0.679563, -0.645169,
		26.066471, 33.392529, 26.906570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849199, 33.282795, 27.787453>,  <25.822020, 33.868221, 27.358189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849199, 33.282795, 27.787453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075567, 33.175491, 27.475613>,  <26.211388, 33.111107, 27.288509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075567, 33.175491, 27.475613>,  <25.849199, 33.282795, 27.787453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075567, 33.175491, 27.475613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500783, -0.639319, 0.583514,
		-0.654944, -0.720630, -0.227464,
		0.565920, -0.268259, -0.779597,
		26.245342, 33.095013, 27.241734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747143, 32.553303, 27.705132>,  <25.849199, 33.282795, 27.787453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747143, 32.553303, 27.705132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091898, 32.653149, 27.528568>,  <26.298750, 32.713058, 27.422630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091898, 32.653149, 27.528568>,  <25.747143, 32.553303, 27.705132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091898, 32.653149, 27.528568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456992, -0.759624, 0.462741,
		-0.219797, -0.600551, -0.768784,
		0.861886, 0.249619, -0.441410,
		26.350464, 32.728035, 27.396145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934906, 32.039120, 27.248833>,  <25.747143, 32.553303, 27.705132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934906, 32.039120, 27.248833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280916, 32.234280, 27.295620>,  <26.488523, 32.351376, 27.323692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280916, 32.234280, 27.295620>,  <25.934906, 32.039120, 27.248833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280916, 32.234280, 27.295620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444556, -0.853417, 0.272120,
		0.232589, -0.183393, -0.955128,
		0.865027, 0.487900, 0.116967,
		26.540424, 32.380650, 27.330709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426851, 31.616112, 26.878654>,  <25.934906, 32.039120, 27.248833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426851, 31.616112, 26.878654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620365, 31.847126, 27.141685>,  <26.736473, 31.985735, 27.299503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620365, 31.847126, 27.141685>,  <26.426851, 31.616112, 26.878654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620365, 31.847126, 27.141685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375729, -0.815648, 0.439938,
		0.790429, 0.034234, -0.611596,
		0.483786, 0.577534, 0.657575,
		26.765501, 32.020386, 27.338959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030424, 31.339899, 26.892508>,  <26.426851, 31.616112, 26.878654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030424, 31.339899, 26.892508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038361, 31.558830, 27.227180>,  <27.043121, 31.690189, 27.427984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038361, 31.558830, 27.227180>,  <27.030424, 31.339899, 26.892508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038361, 31.558830, 27.227180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346307, -0.788807, 0.507795,
		0.937912, 0.279675, -0.205193,
		0.019840, 0.547326, 0.836684,
		27.044313, 31.723028, 27.478186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709450, 31.293797, 27.246521>,  <27.030424, 31.339899, 26.892508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709450, 31.293797, 27.246521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466829, 31.429729, 27.534023>,  <27.321257, 31.511290, 27.706526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466829, 31.429729, 27.534023>,  <27.709450, 31.293797, 27.246521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466829, 31.429729, 27.534023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399481, -0.651368, 0.645085,
		0.687395, 0.678406, 0.259332,
		-0.606550, 0.339830, 0.718758,
		27.284864, 31.531679, 27.749651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189484, 31.306387, 27.695982>,  <27.709450, 31.293797, 27.246521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189484, 31.306387, 27.695982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829147, 31.316620, 27.869339>,  <27.612946, 31.322760, 27.973352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829147, 31.316620, 27.869339>,  <28.189484, 31.306387, 27.695982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829147, 31.316620, 27.869339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306479, -0.669577, 0.676563,
		0.307496, 0.742302, 0.595343,
		-0.900842, 0.025580, 0.433392,
		27.558895, 31.324293, 27.999357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261637, 31.386908, 28.431633>,  <28.189484, 31.306387, 27.695982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261637, 31.386908, 28.431633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889059, 31.246277, 28.394100>,  <27.665512, 31.161898, 28.371580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889059, 31.246277, 28.394100>,  <28.261637, 31.386908, 28.431633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889059, 31.246277, 28.394100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177024, -0.663105, 0.727292,
		-0.317921, 0.660821, 0.679883,
		-0.931444, -0.351578, -0.093834,
		27.609625, 31.140804, 28.365950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088007, 31.322023, 29.017342>,  <28.261637, 31.386908, 28.431633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088007, 31.322023, 29.017342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845345, 31.072361, 28.820404>,  <27.699747, 30.922564, 28.702242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845345, 31.072361, 28.820404>,  <28.088007, 31.322023, 29.017342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845345, 31.072361, 28.820404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310394, -0.756140, 0.576115,
		-0.731865, 0.196682, 0.652450,
		-0.606655, -0.624154, -0.492343,
		27.663347, 30.885115, 28.672701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196667, 31.566959, 29.810905>,  <28.088007, 31.322023, 29.017342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196667, 31.566959, 29.810905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551353, 31.650795, 29.975735>,  <28.764166, 31.701097, 30.074633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551353, 31.650795, 29.975735>,  <28.196667, 31.566959, 29.810905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551353, 31.650795, 29.975735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153106, 0.707903, -0.689515,
		-0.436225, 0.674496, 0.595620,
		0.886716, 0.209591, 0.412075,
		28.817368, 31.713673, 30.099358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252470, 32.359810, 29.794765>,  <28.196667, 31.566959, 29.810905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252470, 32.359810, 29.794765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616014, 32.197506, 29.833405>,  <28.834141, 32.100124, 29.856588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616014, 32.197506, 29.833405>,  <28.252470, 32.359810, 29.794765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616014, 32.197506, 29.833405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359778, 0.645457, -0.673755,
		0.211035, 0.647102, 0.732614,
		0.908859, -0.405764, 0.096599,
		28.888672, 32.075775, 29.862385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667728, 32.991718, 29.880093>,  <28.252470, 32.359810, 29.794765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667728, 32.991718, 29.880093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913363, 32.701180, 29.756596>,  <29.060743, 32.526855, 29.682497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913363, 32.701180, 29.756596>,  <28.667728, 32.991718, 29.880093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913363, 32.701180, 29.756596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441479, 0.640395, -0.628483,
		0.654212, 0.249640, 0.713924,
		0.614087, -0.726343, -0.308743,
		29.097589, 32.483276, 29.663973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379974, 33.090523, 30.070677>,  <28.667728, 32.991718, 29.880093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379974, 33.090523, 30.070677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442049, 32.824692, 29.778305>,  <29.479294, 32.665195, 29.602882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442049, 32.824692, 29.778305>,  <29.379974, 33.090523, 30.070677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442049, 32.824692, 29.778305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489438, 0.694426, -0.527468,
		0.858118, -0.275888, 0.433035,
		0.155189, -0.664573, -0.730930,
		29.488605, 32.625320, 29.559027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077593, 33.235317, 29.719299>,  <29.379974, 33.090523, 30.070677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077593, 33.235317, 29.719299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893890, 33.014977, 29.440548>,  <29.783669, 32.882771, 29.273296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893890, 33.014977, 29.440548>,  <30.077593, 33.235317, 29.719299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893890, 33.014977, 29.440548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537894, 0.451877, -0.711672,
		0.706932, -0.701689, 0.088773,
		-0.459257, -0.550854, -0.696880,
		29.756113, 32.849720, 29.231483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589922, 32.863976, 29.379423>,  <30.077593, 33.235317, 29.719299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589922, 32.863976, 29.379423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280277, 32.914257, 29.131245>,  <30.094490, 32.944427, 28.982338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280277, 32.914257, 29.131245>,  <30.589922, 32.863976, 29.379423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280277, 32.914257, 29.131245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597124, 0.470462, -0.649699,
		0.210226, -0.873421, -0.439250,
		-0.774111, 0.125703, -0.620444,
		30.048044, 32.951969, 28.945112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868204, 32.637180, 28.821409>,  <30.589922, 32.863976, 29.379423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868204, 32.637180, 28.821409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571337, 32.867363, 28.683983>,  <30.393217, 33.005474, 28.601526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571337, 32.867363, 28.683983>,  <30.868204, 32.637180, 28.821409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571337, 32.867363, 28.683983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617507, 0.387862, -0.684286,
		-0.260521, -0.720009, -0.643207,
		-0.742168, 0.575456, -0.343565,
		30.348686, 33.040001, 28.580914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931992, 32.637062, 28.170431>,  <30.868204, 32.637180, 28.821409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931992, 32.637062, 28.170431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688868, 32.954388, 28.184368>,  <30.542994, 33.144783, 28.192730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688868, 32.954388, 28.184368>,  <30.931992, 32.637062, 28.170431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688868, 32.954388, 28.184368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524849, 0.434274, -0.732079,
		-0.595902, -0.426679, -0.680328,
		-0.607812, 0.793316, 0.034842,
		30.506523, 33.192383, 28.194820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856794, 32.838879, 27.479254>,  <30.931992, 32.637062, 28.170431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856794, 32.838879, 27.479254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769733, 33.161346, 27.699333>,  <30.717497, 33.354828, 27.831381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769733, 33.161346, 27.699333>,  <30.856794, 32.838879, 27.479254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769733, 33.161346, 27.699333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638061, 0.544101, -0.544823,
		-0.738583, 0.232478, -0.632811,
		-0.217654, 0.806169, 0.550199,
		30.704437, 33.403198, 27.864393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700039, 33.374161, 26.956112>,  <30.856794, 32.838879, 27.479254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700039, 33.374161, 26.956112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758436, 33.569195, 27.300426>,  <30.793474, 33.686214, 27.507015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758436, 33.569195, 27.300426>,  <30.700039, 33.374161, 26.956112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758436, 33.569195, 27.300426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395630, 0.768724, -0.502534,
		-0.906732, 0.413918, -0.080674,
		0.145992, 0.487580, 0.860786,
		30.802235, 33.715469, 27.558662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398355, 34.032486, 26.821903>,  <30.700039, 33.374161, 26.956112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398355, 34.032486, 26.821903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647945, 34.101925, 27.126671>,  <30.797699, 34.143589, 27.309530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647945, 34.101925, 27.126671>,  <30.398355, 34.032486, 26.821903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647945, 34.101925, 27.126671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283673, 0.858183, -0.427845,
		-0.728136, 0.483101, 0.486242,
		0.623977, 0.173595, 0.761917,
		30.835138, 34.154003, 27.355246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210056, 34.784573, 27.109619>,  <30.398355, 34.032486, 26.821903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210056, 34.784573, 27.109619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599354, 34.706390, 27.157944>,  <30.832932, 34.659481, 27.186939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599354, 34.706390, 27.157944>,  <30.210056, 34.784573, 27.109619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599354, 34.706390, 27.157944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228255, 0.761962, -0.606064,
		0.026404, 0.617424, 0.786187,
		0.973243, -0.195453, 0.120812,
		30.891327, 34.647755, 27.194187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.528080, 30.123899, 33.079384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.897367, 29.970219, 33.082371>,  <28.118940, 29.878010, 33.084164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.897367, 29.970219, 33.082371>,  <27.528080, 30.123899, 33.079384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897367, 29.970219, 33.082371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337878, 0.802333, -0.492037,
		0.183047, 0.456782, 0.870542,
		0.923219, -0.384203, 0.007472,
		28.174334, 29.854958, 33.084614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041225, 30.689047, 33.078976>,  <27.528080, 30.123899, 33.079384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041225, 30.689047, 33.078976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.251997, 30.371204, 32.958347>,  <28.378460, 30.180500, 32.885971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.251997, 30.371204, 32.958347>,  <28.041225, 30.689047, 33.078976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251997, 30.371204, 32.958347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588865, 0.597193, -0.544609,
		0.612847, 0.109385, 0.782594,
		0.526931, -0.794604, -0.301575,
		28.410076, 30.132824, 32.867874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748659, 30.846418, 33.131664>,  <28.041225, 30.689047, 33.078976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748659, 30.846418, 33.131664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.722530, 30.559612, 32.854069>,  <28.706854, 30.387527, 32.687511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.722530, 30.559612, 32.854069>,  <28.748659, 30.846418, 33.131664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722530, 30.559612, 32.854069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234413, 0.664986, -0.709116,
		0.969940, -0.209001, 0.124639,
		-0.065322, -0.717016, -0.693989,
		28.702934, 30.344507, 32.645870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281523, 30.945465, 32.648048>,  <28.748659, 30.846418, 33.131664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281523, 30.945465, 32.648048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.056772, 30.687111, 32.441311>,  <28.921921, 30.532099, 32.317268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.056772, 30.687111, 32.441311>,  <29.281523, 30.945465, 32.648048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056772, 30.687111, 32.441311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347356, 0.382824, -0.856031,
		0.750758, -0.660513, 0.009252,
		-0.561878, -0.645886, -0.516841,
		28.888208, 30.493345, 32.286259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720472, 30.724623, 32.059902>,  <29.281523, 30.945465, 32.648048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720472, 30.724623, 32.059902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.342213, 30.641453, 31.959892>,  <29.115257, 30.591551, 31.899885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.342213, 30.641453, 31.959892>,  <29.720472, 30.724623, 32.059902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342213, 30.641453, 31.959892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187517, 0.279505, -0.941655,
		0.265666, -0.937363, -0.225328,
		-0.945653, -0.207913, -0.250026,
		29.058517, 30.579075, 31.884884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772886, 30.485514, 31.396177>,  <29.720472, 30.724623, 32.059902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772886, 30.485514, 31.396177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.388685, 30.591263, 31.430916>,  <29.158165, 30.654713, 31.451759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.388685, 30.591263, 31.430916>,  <29.772886, 30.485514, 31.396177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388685, 30.591263, 31.430916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032672, 0.417075, -0.908285,
		-0.276349, -0.869572, -0.409239,
		-0.960502, 0.264374, 0.086848,
		29.100534, 30.670574, 31.456970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411285, 30.327749, 30.735077>,  <29.772886, 30.485514, 31.396177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411285, 30.327749, 30.735077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.195276, 30.609894, 30.918747>,  <29.065670, 30.779181, 31.028948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.195276, 30.609894, 30.918747>,  <29.411285, 30.327749, 30.735077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195276, 30.609894, 30.918747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033560, 0.527083, -0.849151,
		-0.840980, -0.473973, -0.260966,
		-0.540025, 0.705361, 0.459173,
		29.033268, 30.821503, 31.056499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019272, 30.463863, 30.270006>,  <29.411285, 30.327749, 30.735077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019272, 30.463863, 30.270006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.980574, 30.792336, 30.494968>,  <28.957354, 30.989420, 30.629946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.980574, 30.792336, 30.494968>,  <29.019272, 30.463863, 30.270006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980574, 30.792336, 30.494968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033324, 0.567413, -0.822759,
		-0.994751, -0.060858, -0.082260,
		-0.096747, 0.821181, 0.562406,
		28.951550, 31.038691, 30.663691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589346, 30.875002, 29.855330>,  <29.019272, 30.463863, 30.270006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589346, 30.875002, 29.855330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.779461, 31.114342, 30.113346>,  <28.893530, 31.257946, 30.268156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.779461, 31.114342, 30.113346>,  <28.589346, 30.875002, 29.855330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779461, 31.114342, 30.113346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030775, 0.743999, -0.667472,
		-0.879292, 0.297390, 0.372028,
		0.475288, 0.598352, 0.645040,
		28.922047, 31.293848, 30.306858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875578, 30.879818, 29.585085>,  <28.589346, 30.875002, 29.855330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875578, 30.879818, 29.585085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.779615, 30.663067, 29.262890>,  <27.722038, 30.533016, 29.069572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.779615, 30.663067, 29.262890>,  <27.875578, 30.879818, 29.585085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779615, 30.663067, 29.262890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282726, -0.832753, 0.476013,
		-0.928715, -0.113533, 0.352987,
		-0.239907, -0.541879, -0.805488,
		27.707644, 30.500504, 29.021244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406811, 30.354437, 29.820799>,  <27.875578, 30.879818, 29.585085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406811, 30.354437, 29.820799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.583549, 30.225616, 29.485882>,  <27.689592, 30.148325, 29.284931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.583549, 30.225616, 29.485882>,  <27.406811, 30.354437, 29.820799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583549, 30.225616, 29.485882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253676, -0.850392, 0.460958,
		-0.860479, -0.416071, -0.294042,
		0.441842, -0.322053, -0.837292,
		27.716103, 30.129002, 29.234695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128153, 29.763784, 29.689848>,  <27.406811, 30.354437, 29.820799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128153, 29.763784, 29.689848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.455267, 29.713284, 29.465244>,  <27.651535, 29.682983, 29.330482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.455267, 29.713284, 29.465244>,  <27.128153, 29.763784, 29.689848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455267, 29.713284, 29.465244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178528, -0.871866, 0.456046,
		-0.547136, -0.473191, -0.690458,
		0.817784, -0.126253, -0.561507,
		27.700602, 29.675407, 29.296793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077904, 29.097420, 29.614386>,  <27.128153, 29.763784, 29.689848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077904, 29.097420, 29.614386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.457245, 29.205559, 29.548004>,  <27.684849, 29.270441, 29.508175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.457245, 29.205559, 29.548004>,  <27.077904, 29.097420, 29.614386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457245, 29.205559, 29.548004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317021, -0.826179, 0.465753,
		-0.011194, -0.494309, -0.869214,
		0.948352, 0.270346, -0.165955,
		27.741751, 29.286663, 29.498217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400875, 28.580080, 29.113476>,  <27.077904, 29.097420, 29.614386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400875, 28.580080, 29.113476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.699362, 28.755802, 29.313545>,  <27.878454, 28.861237, 29.433586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.699362, 28.755802, 29.313545>,  <27.400875, 28.580080, 29.113476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699362, 28.755802, 29.313545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257929, -0.883451, 0.391135,
		0.613707, -0.162861, -0.772554,
		0.746215, 0.439307, 0.500173,
		27.923225, 28.887594, 29.463596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849661, 28.060755, 28.972424>,  <27.400875, 28.580080, 29.113476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849661, 28.060755, 28.972424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.003401, 28.297703, 29.255653>,  <28.095644, 28.439873, 29.425592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.003401, 28.297703, 29.255653>,  <27.849661, 28.060755, 28.972424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003401, 28.297703, 29.255653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246027, -0.804976, 0.539892,
		0.889801, -0.033301, -0.455132,
		0.384349, 0.592371, 0.708076,
		28.118706, 28.475414, 29.468077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554550, 27.856827, 29.064150>,  <27.849661, 28.060755, 28.972424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554550, 27.856827, 29.064150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.429338, 28.040272, 29.396820>,  <28.354212, 28.150339, 29.596422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.429338, 28.040272, 29.396820>,  <28.554550, 27.856827, 29.064150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429338, 28.040272, 29.396820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096007, -0.855919, 0.508119,
		0.944878, 0.238904, 0.223899,
		-0.313031, 0.458615, 0.831676,
		28.335428, 28.177856, 29.646322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007696, 27.734924, 29.667154>,  <28.554550, 27.856827, 29.064150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007696, 27.734924, 29.667154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.665541, 27.851475, 29.838459>,  <28.460247, 27.921406, 29.941242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.665541, 27.851475, 29.838459>,  <29.007696, 27.734924, 29.667154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665541, 27.851475, 29.838459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019363, -0.808222, 0.588560,
		0.517624, 0.511740, 0.685702,
		-0.855389, 0.291375, 0.428264,
		28.408924, 27.938887, 29.966938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223549, 27.804573, 30.439568>,  <29.007696, 27.734924, 29.667154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223549, 27.804573, 30.439568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.832211, 27.755424, 30.372944>,  <28.597408, 27.725935, 30.332970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.832211, 27.755424, 30.372944>,  <29.223549, 27.804573, 30.439568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832211, 27.755424, 30.372944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010849, -0.834056, 0.551573,
		-0.206691, 0.537822, 0.817328,
		-0.978346, -0.122873, -0.166557,
		28.538706, 27.718563, 30.322977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935423, 27.668783, 31.085094>,  <29.223549, 27.804573, 30.439568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935423, 27.668783, 31.085094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.662123, 27.540596, 30.822655>,  <28.498142, 27.463684, 30.665190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.662123, 27.540596, 30.822655>,  <28.935423, 27.668783, 31.085094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662123, 27.540596, 30.822655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103542, -0.846940, 0.521509,
		-0.722804, 0.424256, 0.545492,
		-0.683252, -0.320467, -0.656100,
		28.457148, 27.444456, 30.625824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435511, 27.502680, 31.510939>,  <28.935423, 27.668783, 31.085094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435511, 27.502680, 31.510939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.329645, 27.323032, 31.169590>,  <28.266125, 27.215244, 30.964781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.329645, 27.323032, 31.169590>,  <28.435511, 27.502680, 31.510939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329645, 27.323032, 31.169590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322487, -0.792759, 0.517237,
		-0.908820, 0.412097, 0.064981,
		-0.264666, -0.449120, -0.853372,
		28.250246, 27.188297, 30.913578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907959, 27.025192, 31.737783>,  <28.435511, 27.502680, 31.510939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907959, 27.025192, 31.737783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.960800, 26.892666, 31.364094>,  <27.992504, 26.813150, 31.139879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.960800, 26.892666, 31.364094>,  <27.907959, 27.025192, 31.737783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960800, 26.892666, 31.364094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327387, -0.904179, 0.274369,
		-0.935610, 0.269609, -0.227913,
		0.132102, -0.331318, -0.934226,
		28.000431, 26.793270, 31.083826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266628, 26.793119, 31.507805>,  <27.907959, 27.025192, 31.737783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266628, 26.793119, 31.507805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.560432, 26.610641, 31.306854>,  <27.736715, 26.501156, 31.186283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.560432, 26.610641, 31.306854>,  <27.266628, 26.793119, 31.507805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560432, 26.610641, 31.306854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226137, -0.862550, 0.452626,
		-0.639811, -0.218852, -0.736713,
		0.734509, -0.456193, -0.502378,
		27.780785, 26.473783, 31.156141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976109, 26.266878, 31.145174>,  <27.266628, 26.793119, 31.507805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976109, 26.266878, 31.145174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.359972, 26.165302, 31.193455>,  <27.590290, 26.104357, 31.222424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.359972, 26.165302, 31.193455>,  <26.976109, 26.266878, 31.145174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359972, 26.165302, 31.193455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276354, -0.772785, 0.571341,
		-0.051809, -0.581650, -0.811788,
		0.959659, -0.253941, 0.120704,
		27.647869, 26.089119, 31.229666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.385509, 23.688923, 31.247070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187836, 23.971611, 31.449585>,  <32.069229, 24.141224, 31.571095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.187836, 23.971611, 31.449585>,  <32.385509, 23.688923, 31.247070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187836, 23.971611, 31.449585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323721, 0.690083, -0.647295,
		-0.806836, -0.155990, -0.569810,
		-0.494187, 0.706720, 0.506286,
		32.039581, 24.183626, 31.601471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172871, 24.141521, 30.741364>,  <32.385509, 23.688923, 31.247070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172871, 24.141521, 30.741364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.065781, 24.370483, 31.051376>,  <32.001526, 24.507860, 31.237385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.065781, 24.370483, 31.051376>,  <32.172871, 24.141521, 30.741364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065781, 24.370483, 31.051376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047812, 0.811300, -0.582672,
		-0.962309, -0.118939, -0.244572,
		-0.267724, 0.572404, 0.775034,
		31.985464, 24.542204, 31.283886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564970, 24.498859, 30.544033>,  <32.172871, 24.141521, 30.741364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564970, 24.498859, 30.544033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711403, 24.734093, 30.832516>,  <31.799263, 24.875233, 31.005606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711403, 24.734093, 30.832516>,  <31.564970, 24.498859, 30.544033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711403, 24.734093, 30.832516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162494, 0.803497, -0.572702,
		-0.916286, 0.092464, 0.389706,
		0.366082, 0.588084, 0.721209,
		31.821228, 24.910519, 31.048878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169626, 24.980921, 30.508289>,  <31.564970, 24.498859, 30.544033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169626, 24.980921, 30.508289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475151, 25.135365, 30.715176>,  <31.658466, 25.228031, 30.839308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475151, 25.135365, 30.715176>,  <31.169626, 24.980921, 30.508289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475151, 25.135365, 30.715176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061974, 0.753762, -0.654219,
		-0.642458, 0.531753, 0.551802,
		0.763810, 0.386111, 0.517216,
		31.704294, 25.251198, 30.870340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915861, 25.606331, 30.553030>,  <31.169626, 24.980921, 30.508289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915861, 25.606331, 30.553030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312954, 25.604916, 30.601154>,  <31.551208, 25.604067, 30.630030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312954, 25.604916, 30.601154>,  <30.915861, 25.606331, 30.553030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312954, 25.604916, 30.601154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069284, 0.834165, -0.547145,
		-0.098425, 0.551503, 0.828346,
		0.992730, -0.003538, 0.120313,
		31.610773, 25.603855, 30.637249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094006, 26.289267, 30.727137>,  <30.915861, 25.606331, 30.553030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094006, 26.289267, 30.727137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432453, 26.117004, 30.601524>,  <31.635523, 26.013647, 30.526157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432453, 26.117004, 30.601524>,  <31.094006, 26.289267, 30.727137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432453, 26.117004, 30.601524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158926, 0.766237, -0.622595,
		0.508746, 0.476883, 0.716771,
		0.846121, -0.430656, -0.314031,
		31.686289, 25.987808, 30.507315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498951, 26.814766, 30.735497>,  <31.094006, 26.289267, 30.727137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498951, 26.814766, 30.735497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.683239, 26.549957, 30.499035>,  <31.793812, 26.391073, 30.357157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.683239, 26.549957, 30.499035>,  <31.498951, 26.814766, 30.735497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683239, 26.549957, 30.499035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197701, 0.725872, -0.658805,
		0.865245, 0.186654, 0.465308,
		0.460722, -0.662020, -0.591155,
		31.821455, 26.351351, 30.321688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114040, 27.164602, 30.510004>,  <31.498951, 26.814766, 30.735497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114040, 27.164602, 30.510004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080326, 26.876934, 30.234123>,  <32.060097, 26.704332, 30.068596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080326, 26.876934, 30.234123>,  <32.114040, 27.164602, 30.510004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080326, 26.876934, 30.234123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164996, 0.672535, -0.721438,
		0.982686, -0.174607, 0.061972,
		-0.084290, -0.719172, -0.689700,
		32.055038, 26.661182, 30.027214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725983, 27.149620, 30.145578>,  <32.114040, 27.164602, 30.510004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725983, 27.149620, 30.145578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427433, 26.989521, 29.932888>,  <32.248302, 26.893461, 29.805273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427433, 26.989521, 29.932888>,  <32.725983, 27.149620, 30.145578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427433, 26.989521, 29.932888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135444, 0.690884, -0.710165,
		0.651598, -0.602068, -0.461447,
		-0.746374, -0.400243, -0.531725,
		32.203522, 26.869448, 29.773371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916096, 27.168894, 29.466747>,  <32.725983, 27.149620, 30.145578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916096, 27.168894, 29.466747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522991, 27.115402, 29.415672>,  <32.287128, 27.083307, 29.385027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522991, 27.115402, 29.415672>,  <32.916096, 27.168894, 29.466747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522991, 27.115402, 29.415672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035681, 0.540445, -0.840622,
		0.181423, -0.830684, -0.526355,
		-0.982758, -0.133728, -0.127689,
		32.228165, 27.075283, 29.377365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795406, 26.821165, 28.810820>,  <32.916096, 27.168894, 29.466747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795406, 26.821165, 28.810820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453709, 27.008518, 28.901054>,  <32.248692, 27.120930, 28.955196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453709, 27.008518, 28.901054>,  <32.795406, 26.821165, 28.810820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453709, 27.008518, 28.901054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018016, 0.460336, -0.887562,
		-0.519567, -0.754127, -0.401676,
		-0.854240, 0.468384, 0.225589,
		32.197437, 27.149033, 28.968731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292099, 26.703714, 28.206614>,  <32.795406, 26.821165, 28.810820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292099, 26.703714, 28.206614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183487, 27.019157, 28.427292>,  <32.118320, 27.208424, 28.559700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.183487, 27.019157, 28.427292>,  <32.292099, 26.703714, 28.206614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183487, 27.019157, 28.427292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199933, 0.606948, -0.769182,
		-0.941434, -0.098554, -0.322473,
		-0.271530, 0.788607, 0.551698,
		32.102028, 27.255739, 28.592802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790176, 27.030466, 27.821295>,  <32.292099, 26.703714, 28.206614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790176, 27.030466, 27.821295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.927458, 27.314011, 28.067783>,  <32.009827, 27.484138, 28.215675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.927458, 27.314011, 28.067783>,  <31.790176, 27.030466, 27.821295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927458, 27.314011, 28.067783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223124, 0.575758, -0.786587,
		-0.912375, 0.407452, 0.039438,
		0.343203, 0.708862, 0.616219,
		32.030418, 27.526669, 28.252649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623806, 27.713367, 27.469341>,  <31.790176, 27.030466, 27.821295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623806, 27.713367, 27.469341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892710, 27.812241, 27.748474>,  <32.054050, 27.871565, 27.915955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892710, 27.812241, 27.748474>,  <31.623806, 27.713367, 27.469341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892710, 27.812241, 27.748474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428751, 0.638445, -0.639187,
		-0.603524, 0.728895, 0.323220,
		0.672258, 0.247184, 0.697831,
		32.094387, 27.886396, 27.957823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977968, 28.159267, 27.331242>,  <31.623806, 27.713367, 27.469341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977968, 28.159267, 27.331242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.825459, 28.010422, 26.992737>,  <30.733953, 27.921114, 26.789633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.825459, 28.010422, 26.992737>,  <30.977968, 28.159267, 27.331242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825459, 28.010422, 26.992737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149261, -0.878622, 0.453590,
		-0.912333, 0.299256, 0.279453,
		-0.381274, -0.372114, -0.846263,
		30.711077, 27.898788, 26.738857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317327, 27.869576, 27.478992>,  <30.977968, 28.159267, 27.331242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317327, 27.869576, 27.478992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.452732, 27.679005, 27.154419>,  <30.533974, 27.564661, 26.959675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.452732, 27.679005, 27.154419>,  <30.317327, 27.869576, 27.478992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452732, 27.679005, 27.154419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151416, -0.878687, 0.452749,
		-0.928701, -0.030395, -0.369583,
		0.338509, -0.476429, -0.811435,
		30.554285, 27.536076, 26.910988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701895, 27.417223, 27.339338>,  <30.317327, 27.869576, 27.478992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701895, 27.417223, 27.339338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.003563, 27.267120, 27.123779>,  <30.184565, 27.177059, 26.994444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.003563, 27.267120, 27.123779>,  <29.701895, 27.417223, 27.339338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003563, 27.267120, 27.123779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216042, -0.916742, 0.336022,
		-0.620123, -0.136993, -0.772451,
		0.754170, -0.375256, -0.538897,
		30.229815, 27.154543, 26.962111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470139, 26.785793, 26.862951>,  <29.701895, 27.417223, 27.339338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470139, 26.785793, 26.862951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.859541, 26.736355, 26.939903>,  <30.093182, 26.706692, 26.986074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.859541, 26.736355, 26.939903>,  <29.470139, 26.785793, 26.862951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859541, 26.736355, 26.939903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178131, -0.937438, 0.299130,
		0.143374, -0.325474, -0.934618,
		0.973506, -0.123597, 0.192381,
		30.151592, 26.699276, 26.997618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578114, 26.074615, 26.809147>,  <29.470139, 26.785793, 26.862951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578114, 26.074615, 26.809147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.934696, 26.164055, 26.966785>,  <30.148645, 26.217718, 27.061369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.934696, 26.164055, 26.966785>,  <29.578114, 26.074615, 26.809147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934696, 26.164055, 26.966785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087679, -0.938446, 0.334113,
		0.444546, -0.263292, -0.856187,
		0.891454, 0.223598, 0.394098,
		30.202133, 26.231134, 27.085014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918533, 25.524542, 26.642527>,  <29.578114, 26.074615, 26.809147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918533, 25.524542, 26.642527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.121065, 25.685410, 26.947655>,  <30.242584, 25.781929, 27.130732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.121065, 25.685410, 26.947655>,  <29.918533, 25.524542, 26.642527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121065, 25.685410, 26.947655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001946, -0.885121, 0.465356,
		0.862339, -0.234138, -0.448945,
		0.506328, 0.402168, 0.762819,
		30.272964, 25.806061, 27.176500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442064, 25.047077, 26.818428>,  <29.918533, 25.524542, 26.642527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442064, 25.047077, 26.818428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.400188, 25.261826, 27.153286>,  <30.375063, 25.390675, 27.354200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.400188, 25.261826, 27.153286>,  <30.442064, 25.047077, 26.818428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400188, 25.261826, 27.153286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013188, -0.840945, 0.540960,
		0.994418, 0.067672, 0.080957,
		-0.104688, 0.536873, 0.837143,
		30.368782, 25.422888, 27.404428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932043, 24.772062, 27.371809>,  <30.442064, 25.047077, 26.818428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932043, 24.772062, 27.371809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.644678, 24.962494, 27.574680>,  <30.472260, 25.076752, 27.696404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.644678, 24.962494, 27.574680>,  <30.932043, 24.772062, 27.371809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644678, 24.962494, 27.574680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111844, -0.798678, 0.591273,
		0.686566, 0.368054, 0.627028,
		-0.718414, 0.476077, 0.507181,
		30.429153, 25.105316, 27.726835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002974, 24.600946, 28.168571>,  <30.932043, 24.772062, 27.371809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002974, 24.600946, 28.168571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636471, 24.760864, 28.158478>,  <30.416569, 24.856815, 28.152422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636471, 24.760864, 28.158478>,  <31.002974, 24.600946, 28.168571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636471, 24.760864, 28.158478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194092, -0.387951, 0.901012,
		0.350428, 0.830458, 0.433059,
		-0.916258, 0.399793, -0.025236,
		30.361593, 24.880802, 28.150908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859646, 24.658905, 28.822096>,  <31.002974, 24.600946, 28.168571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859646, 24.658905, 28.822096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489422, 24.655682, 28.670689>,  <30.267288, 24.653748, 28.579845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489422, 24.655682, 28.670689>,  <30.859646, 24.658905, 28.822096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489422, 24.655682, 28.670689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331732, -0.464572, 0.821052,
		-0.182464, 0.885499, 0.427316,
		-0.925560, -0.008058, -0.378516,
		30.211754, 24.653265, 28.557135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369270, 24.924564, 29.371767>,  <30.859646, 24.658905, 28.822096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369270, 24.924564, 29.371767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.160864, 24.698063, 29.116299>,  <30.035820, 24.562162, 28.963018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.160864, 24.698063, 29.116299>,  <30.369270, 24.924564, 29.371767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160864, 24.698063, 29.116299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422835, -0.478759, 0.769415,
		-0.741453, 0.670930, 0.010009,
		-0.521016, -0.566253, -0.638670,
		30.004559, 24.528187, 28.924698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626656, 25.007055, 29.568108>,  <30.369270, 24.924564, 29.371767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626656, 25.007055, 29.568108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.655945, 24.664577, 29.363533>,  <29.673519, 24.459091, 29.240788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.655945, 24.664577, 29.363533>,  <29.626656, 25.007055, 29.568108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655945, 24.664577, 29.363533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453677, -0.485278, 0.747450,
		-0.888153, 0.177296, -0.423970,
		0.073223, -0.856196, -0.511436,
		29.677912, 24.407719, 29.210102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948772, 24.637907, 29.616476>,  <29.626656, 25.007055, 29.568108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948772, 24.637907, 29.616476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.227749, 24.365002, 29.528755>,  <29.395136, 24.201260, 29.476124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.227749, 24.365002, 29.528755>,  <28.948772, 24.637907, 29.616476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227749, 24.365002, 29.528755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463848, -0.663031, 0.587566,
		-0.546277, -0.308072, -0.778892,
		0.697443, -0.682262, -0.219300,
		29.436981, 24.160322, 29.462965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612949, 24.097336, 29.680176>,  <28.948772, 24.637907, 29.616476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612949, 24.097336, 29.680176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.980749, 23.941277, 29.699406>,  <29.201429, 23.847641, 29.710943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.980749, 23.941277, 29.699406>,  <28.612949, 24.097336, 29.680176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980749, 23.941277, 29.699406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309960, -0.644376, 0.699074,
		-0.241764, -0.657697, -0.713432,
		0.919497, -0.390146, 0.048073,
		29.256598, 23.824232, 29.713827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008856, 23.913816, 29.292942>,  <28.612949, 24.097336, 29.680176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008856, 23.913816, 29.292942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.613661, 23.880398, 29.344936>,  <27.376543, 23.860346, 29.376133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.613661, 23.880398, 29.344936>,  <28.008856, 23.913816, 29.292942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613661, 23.880398, 29.344936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123094, 0.934059, -0.335234,
		-0.093408, -0.347208, -0.933125,
		-0.987989, -0.083549, 0.129988,
		27.317265, 23.855333, 29.383932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675491, 24.193499, 28.685059>,  <28.008856, 23.913816, 29.292942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675491, 24.193499, 28.685059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.393396, 24.182079, 28.968418>,  <27.224140, 24.175228, 29.138433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.393396, 24.182079, 28.968418>,  <27.675491, 24.193499, 28.685059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393396, 24.182079, 28.968418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470457, 0.766347, -0.437473,
		-0.530390, -0.641793, -0.553885,
		-0.705235, -0.028548, 0.708398,
		27.181826, 24.173515, 29.180937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200850, 24.419233, 28.290989>,  <27.675491, 24.193499, 28.685059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200850, 24.419233, 28.290989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.062286, 24.466827, 28.663193>,  <26.979149, 24.495384, 28.886515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.062286, 24.466827, 28.663193>,  <27.200850, 24.419233, 28.290989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062286, 24.466827, 28.663193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419208, 0.867735, -0.267021,
		-0.839205, -0.482575, -0.250711,
		-0.346408, 0.118985, 0.930507,
		26.958364, 24.502523, 28.942345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401571, 24.486038, 28.278124>,  <27.200850, 24.419233, 28.290989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401571, 24.486038, 28.278124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.547354, 24.664371, 28.605148>,  <26.634823, 24.771372, 28.801363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.547354, 24.664371, 28.605148>,  <26.401571, 24.486038, 28.278124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547354, 24.664371, 28.605148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429345, 0.859512, -0.277313,
		-0.826339, -0.249948, 0.504669,
		0.364455, 0.445832, 0.817561,
		26.656691, 24.798120, 28.850416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922771, 24.853550, 28.514561>,  <26.401571, 24.486038, 28.278124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922771, 24.853550, 28.514561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.229568, 25.034599, 28.696487>,  <26.413647, 25.143229, 28.805643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.229568, 25.034599, 28.696487>,  <25.922771, 24.853550, 28.514561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229568, 25.034599, 28.696487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380148, 0.891561, -0.246186,
		-0.516925, 0.015925, 0.855882,
		0.766992, 0.452621, 0.454816,
		26.459665, 25.170385, 28.832932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.626711, 25.327614, 28.865622>,  <25.922771, 24.853550, 28.514561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.626711, 25.327614, 28.865622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.003374, 25.449417, 28.808270>,  <26.229372, 25.522499, 28.773859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.003374, 25.449417, 28.808270>,  <25.626711, 25.327614, 28.865622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003374, 25.449417, 28.808270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336571, 0.850013, -0.405214,
		-0.001515, 0.429830, 0.902908,
		0.941657, 0.304507, -0.143381,
		26.285872, 25.540770, 28.765255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622475, 26.013538, 28.993059>,  <25.626711, 25.327614, 28.865622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622475, 26.013538, 28.993059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.952539, 25.978004, 28.769913>,  <26.150579, 25.956684, 28.636024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.952539, 25.978004, 28.769913>,  <25.622475, 26.013538, 28.993059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952539, 25.978004, 28.769913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239638, 0.839242, -0.488104,
		0.511545, 0.536452, 0.671224,
		0.825164, -0.088837, -0.557865,
		26.200089, 25.951353, 28.602552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019222, 26.669546, 29.048376>,  <25.622475, 26.013538, 28.993059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019222, 26.669546, 29.048376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.163538, 26.516090, 28.708340>,  <26.250128, 26.424017, 28.504318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.163538, 26.516090, 28.708340>,  <26.019222, 26.669546, 29.048376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163538, 26.516090, 28.708340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060252, 0.899989, -0.431728,
		0.930700, 0.206982, 0.301590,
		0.360787, -0.383637, -0.850091,
		26.271774, 26.400999, 28.453312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625925, 27.006964, 28.840466>,  <26.019222, 26.669546, 29.048376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625925, 27.006964, 28.840466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.505043, 26.837090, 28.499100>,  <26.432514, 26.735165, 28.294281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.505043, 26.837090, 28.499100>,  <26.625925, 27.006964, 28.840466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505043, 26.837090, 28.499100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098573, 0.876551, -0.471107,
		0.948133, -0.226494, -0.223035,
		-0.302204, -0.424686, -0.853413,
		26.414381, 26.709684, 28.243076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218424, 27.078671, 28.282223>,  <26.625925, 27.006964, 28.840466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218424, 27.078671, 28.282223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.871672, 27.050282, 28.084846>,  <26.663620, 27.033249, 27.966421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.871672, 27.050282, 28.084846>,  <27.218424, 27.078671, 28.282223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871672, 27.050282, 28.084846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181035, 0.877424, -0.444245,
		0.464487, -0.474436, -0.747771,
		-0.866879, -0.070973, -0.493442,
		26.611609, 27.028990, 27.936813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386021, 27.325031, 27.673632>,  <27.218424, 27.078671, 28.282223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386021, 27.325031, 27.673632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.991409, 27.318596, 27.608509>,  <26.754642, 27.314735, 27.569435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.991409, 27.318596, 27.608509>,  <27.386021, 27.325031, 27.673632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991409, 27.318596, 27.608509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093370, 0.761799, -0.641049,
		0.134338, -0.647614, -0.750033,
		-0.986527, -0.016087, -0.162806,
		26.695452, 27.313770, 27.559668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283978, 27.269093, 26.958586>,  <27.386021, 27.325031, 27.673632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283978, 27.269093, 26.958586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.970316, 27.430172, 27.147449>,  <26.782118, 27.526819, 27.260767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.970316, 27.430172, 27.147449>,  <27.283978, 27.269093, 26.958586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970316, 27.430172, 27.147449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082795, 0.821942, -0.563522,
		-0.615017, -0.402796, -0.677871,
		-0.784155, 0.402700, 0.472159,
		26.735069, 27.550982, 27.289097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921118, 27.486130, 26.406870>,  <27.283978, 27.269093, 26.958586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921118, 27.486130, 26.406870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.714085, 27.685879, 26.684788>,  <26.589865, 27.805727, 26.851538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.714085, 27.685879, 26.684788>,  <26.921118, 27.486130, 26.406870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714085, 27.685879, 26.684788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061791, 0.788087, -0.612454,
		-0.853400, -0.359927, -0.377043,
		-0.517581, 0.499370, 0.694794,
		26.558809, 27.835690, 26.893227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296000, 27.754335, 26.115854>,  <26.921118, 27.486130, 26.406870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296000, 27.754335, 26.115854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.382154, 27.999523, 26.419926>,  <26.433847, 28.146637, 26.602369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.382154, 27.999523, 26.419926>,  <26.296000, 27.754335, 26.115854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382154, 27.999523, 26.419926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144134, 0.789881, -0.596082,
		-0.965833, 0.018820, 0.258480,
		0.215386, 0.612972, 0.760181,
		26.446770, 28.183414, 26.647980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.071869, 30.246460, 31.467064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.457115, 30.164478, 31.536808>,  <42.688263, 30.115290, 31.578655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.457115, 30.164478, 31.536808>,  <42.071869, 30.246460, 31.467064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457115, 30.164478, 31.536808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261965, 0.566065, -0.781630,
		0.061500, 0.798476, 0.598877,
		0.963116, -0.204955, 0.174360,
		42.746052, 30.102991, 31.589115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412560, 30.929649, 31.462513>,  <42.071869, 30.246460, 31.467064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412560, 30.929649, 31.462513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644226, 30.622826, 31.352104>,  <42.783226, 30.438732, 31.285858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.644226, 30.622826, 31.352104>,  <42.412560, 30.929649, 31.462513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644226, 30.622826, 31.352104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323681, 0.527134, -0.785723,
		0.748196, 0.365721, 0.553580,
		0.579166, -0.767058, -0.276023,
		42.817978, 30.392708, 31.269297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977547, 31.236551, 31.031919>,  <42.412560, 30.929649, 31.462513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977547, 31.236551, 31.031919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.048531, 30.846848, 30.976315>,  <43.091122, 30.613026, 30.942951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.048531, 30.846848, 30.976315>,  <42.977547, 31.236551, 31.031919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048531, 30.846848, 30.976315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312891, 0.189781, -0.930635,
		0.933062, 0.121659, 0.338517,
		0.177464, -0.974260, -0.139012,
		43.101768, 30.554569, 30.934610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641911, 31.205242, 30.811790>,  <42.977547, 31.236551, 31.031919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641911, 31.205242, 30.811790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.433891, 30.894623, 30.669510>,  <43.309082, 30.708250, 30.584141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.433891, 30.894623, 30.669510>,  <43.641911, 31.205242, 30.811790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433891, 30.894623, 30.669510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122694, 0.344208, -0.930842,
		0.845280, -0.527723, -0.083726,
		-0.520046, -0.776550, -0.355701,
		43.277878, 30.661657, 30.562799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036655, 30.999027, 30.196733>,  <43.641911, 31.205242, 30.811790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036655, 30.999027, 30.196733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.682346, 30.817207, 30.159225>,  <43.469761, 30.708115, 30.136721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.682346, 30.817207, 30.159225>,  <44.036655, 30.999027, 30.196733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682346, 30.817207, 30.159225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071466, 0.333211, -0.940140,
		0.458590, -0.826046, -0.327633,
		-0.885770, -0.454553, -0.093773,
		43.416615, 30.680841, 30.131094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096359, 30.707460, 29.556845>,  <44.036655, 30.999027, 30.196733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096359, 30.707460, 29.556845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.707077, 30.720215, 29.647938>,  <43.473507, 30.727867, 29.702595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.707077, 30.720215, 29.647938>,  <44.096359, 30.707460, 29.556845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707077, 30.720215, 29.647938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210682, 0.273260, -0.938585,
		-0.092156, -0.961412, -0.259220,
		-0.973201, 0.031884, 0.227735,
		43.415115, 30.729780, 29.716259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799809, 30.448893, 28.936785>,  <44.096359, 30.707460, 29.556845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799809, 30.448893, 28.936785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.516056, 30.652897, 29.131378>,  <43.345806, 30.775299, 29.248135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.516056, 30.652897, 29.131378>,  <43.799809, 30.448893, 28.936785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516056, 30.652897, 29.131378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339527, 0.357588, -0.869973,
		-0.617656, -0.782317, -0.080504,
		-0.709382, 0.510010, 0.486484,
		43.303242, 30.805901, 29.277323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178551, 30.337116, 28.602554>,  <43.799809, 30.448893, 28.936785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178551, 30.337116, 28.602554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.116863, 30.681480, 28.796482>,  <43.079853, 30.888100, 28.912838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.116863, 30.681480, 28.796482>,  <43.178551, 30.337116, 28.602554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116863, 30.681480, 28.796482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219364, 0.448609, -0.866389,
		-0.963378, -0.239962, 0.119671,
		-0.154215, 0.860911, 0.484819,
		43.070599, 30.939754, 28.941927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517742, 30.522486, 28.513502>,  <43.178551, 30.337116, 28.602554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517742, 30.522486, 28.513502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.675503, 30.883427, 28.583023>,  <42.770157, 31.099991, 28.624735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.675503, 30.883427, 28.583023>,  <42.517742, 30.522486, 28.513502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675503, 30.883427, 28.583023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270274, 0.294673, -0.916581,
		-0.878295, 0.314525, 0.360102,
		0.394399, 0.902354, 0.173802,
		42.793823, 31.154133, 28.635164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045044, 30.915739, 28.337862>,  <42.517742, 30.522486, 28.513502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045044, 30.915739, 28.337862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.342606, 31.182476, 28.355427>,  <42.521141, 31.342518, 28.365967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.342606, 31.182476, 28.355427>,  <42.045044, 30.915739, 28.337862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342606, 31.182476, 28.355427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249004, 0.337557, -0.907773,
		-0.620167, 0.664360, 0.417156,
		0.743902, 0.666845, 0.043914,
		42.565777, 31.382530, 28.368601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764462, 31.483694, 28.223682>,  <42.045044, 30.915739, 28.337862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764462, 31.483694, 28.223682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.141682, 31.539501, 28.102894>,  <42.368015, 31.572985, 28.030420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.141682, 31.539501, 28.102894>,  <41.764462, 31.483694, 28.223682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141682, 31.539501, 28.102894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331705, 0.326260, -0.885170,
		-0.024975, 0.934928, 0.353959,
		0.943053, 0.139517, -0.301972,
		42.424599, 31.581356, 28.012302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718075, 32.039787, 27.830996>,  <41.764462, 31.483694, 28.223682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718075, 32.039787, 27.830996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.068996, 31.908669, 27.690773>,  <42.279549, 31.829996, 27.606640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.068996, 31.908669, 27.690773>,  <41.718075, 32.039787, 27.830996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068996, 31.908669, 27.690773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248708, 0.314183, -0.916206,
		0.410469, 0.890976, 0.194107,
		0.877303, -0.327798, -0.350555,
		42.332188, 31.810329, 27.585606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036522, 32.635265, 27.330250>,  <41.718075, 32.039787, 27.830996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036522, 32.635265, 27.330250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.210041, 32.282539, 27.256245>,  <42.314152, 32.070904, 27.211842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.210041, 32.282539, 27.256245>,  <42.036522, 32.635265, 27.330250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210041, 32.282539, 27.256245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109975, 0.151984, -0.982246,
		0.894275, 0.446440, -0.031047,
		0.433795, -0.881812, -0.185012,
		42.340179, 32.017994, 27.200741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399406, 32.728321, 26.762745>,  <42.036522, 32.635265, 27.330250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399406, 32.728321, 26.762745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.385952, 32.329315, 26.787502>,  <42.377880, 32.089912, 26.802357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.385952, 32.329315, 26.787502>,  <42.399406, 32.728321, 26.762745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385952, 32.329315, 26.787502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048278, -0.060234, -0.997016,
		0.998267, -0.036521, -0.046132,
		-0.033633, -0.997516, 0.061893,
		42.375862, 32.030060, 26.806070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831013, 32.515526, 26.199087>,  <42.399406, 32.728321, 26.762745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831013, 32.515526, 26.199087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.611164, 32.191319, 26.280056>,  <42.479256, 31.996794, 26.328638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.611164, 32.191319, 26.280056>,  <42.831013, 32.515526, 26.199087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611164, 32.191319, 26.280056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272203, -0.055334, -0.960648,
		0.789825, -0.583091, -0.190213,
		-0.549620, -0.810520, 0.202423,
		42.446278, 31.948162, 26.340782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945236, 32.132767, 25.602551>,  <42.831013, 32.515526, 26.199087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945236, 32.132767, 25.602551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.618847, 31.976818, 25.773281>,  <42.423012, 31.883249, 25.875719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.618847, 31.976818, 25.773281>,  <42.945236, 32.132767, 25.602551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618847, 31.976818, 25.773281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421634, -0.103746, -0.900812,
		0.395483, -0.915006, -0.079729,
		-0.815977, -0.389872, 0.426827,
		42.374054, 31.859856, 25.901329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746246, 31.501890, 25.162842>,  <42.945236, 32.132767, 25.602551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746246, 31.501890, 25.162842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.440884, 31.655418, 25.370647>,  <42.257668, 31.747536, 25.495331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.440884, 31.655418, 25.370647>,  <42.746246, 31.501890, 25.162842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440884, 31.655418, 25.370647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552519, 0.028561, -0.833011,
		-0.334563, -0.922966, 0.190264,
		-0.763407, 0.383820, 0.519512,
		42.211861, 31.770565, 25.526501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218147, 31.144114, 25.010181>,  <42.746246, 31.501890, 25.162842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218147, 31.144114, 25.010181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.056328, 31.486305, 25.139488>,  <41.959236, 31.691620, 25.217072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.056328, 31.486305, 25.139488>,  <42.218147, 31.144114, 25.010181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056328, 31.486305, 25.139488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503650, 0.086635, -0.859553,
		-0.763335, -0.510540, 0.395814,
		-0.404545, 0.855479, 0.323265,
		41.934963, 31.742949, 25.236467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369385, 31.051998, 24.953440>,  <42.218147, 31.144114, 25.010181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369385, 31.051998, 24.953440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.476360, 31.437405, 24.957684>,  <41.540546, 31.668650, 24.960230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.476360, 31.437405, 24.957684>,  <41.369385, 31.051998, 24.953440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476360, 31.437405, 24.957684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456598, 0.136415, -0.879153,
		-0.848526, 0.230272, 0.476422,
		0.267435, 0.963518, 0.010610,
		41.556591, 31.726460, 24.960867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827255, 31.280258, 24.524611>,  <41.369385, 31.051998, 24.953440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827255, 31.280258, 24.524611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.129143, 31.542599, 24.531025>,  <41.310276, 31.700003, 24.534874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.129143, 31.542599, 24.531025>,  <40.827255, 31.280258, 24.524611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129143, 31.542599, 24.531025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241466, 0.300429, -0.922734,
		-0.609993, 0.692533, 0.385105,
		0.754720, 0.655851, 0.016036,
		41.355560, 31.739353, 24.535835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611065, 31.783728, 24.203253>,  <40.827255, 31.280258, 24.524611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611065, 31.783728, 24.203253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.000347, 31.865406, 24.160957>,  <41.233917, 31.914413, 24.135580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.000347, 31.865406, 24.160957>,  <40.611065, 31.783728, 24.203253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000347, 31.865406, 24.160957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175795, 0.364256, -0.914557,
		-0.148234, 0.908637, 0.390391,
		0.973202, 0.204197, -0.105739,
		41.292309, 31.926664, 24.129236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161449, 32.306213, 24.168713>,  <40.611065, 31.783728, 24.203253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161449, 32.306213, 24.168713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.763428, 32.340187, 24.189297>,  <39.524612, 32.360573, 24.201647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.763428, 32.340187, 24.189297>,  <40.161449, 32.306213, 24.168713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763428, 32.340187, 24.189297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011306, -0.417933, 0.908407,
		0.098662, 0.904499, 0.414907,
		-0.995057, 0.084935, 0.051460,
		39.464912, 32.365669, 24.204735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989456, 32.553944, 24.835098>,  <40.161449, 32.306213, 24.168713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989456, 32.553944, 24.835098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.662418, 32.373013, 24.692585>,  <39.466194, 32.264454, 24.607077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.662418, 32.373013, 24.692585>,  <39.989456, 32.553944, 24.835098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662418, 32.373013, 24.692585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038437, -0.574510, 0.817594,
		-0.574510, 0.682155, 0.452330,
		-0.817594, -0.452330, -0.356282,
		39.417141, 32.237312, 24.585701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494930, 32.618607, 25.350145>,  <39.989456, 32.553944, 24.835098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494930, 32.618607, 25.350145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.363590, 32.305347, 25.138912>,  <39.284786, 32.117393, 25.012173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.363590, 32.305347, 25.138912>,  <39.494930, 32.618607, 25.350145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363590, 32.305347, 25.138912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214862, -0.482496, 0.849136,
		-0.919793, 0.392281, -0.009838,
		-0.328353, -0.783143, -0.528082,
		39.265083, 32.070404, 24.980488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939156, 32.328300, 25.729958>,  <39.494930, 32.618607, 25.350145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939156, 32.328300, 25.729958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.054859, 32.025291, 25.495869>,  <39.124283, 31.843487, 25.355415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.054859, 32.025291, 25.495869>,  <38.939156, 32.328300, 25.729958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054859, 32.025291, 25.495869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114370, -0.634329, 0.764556,
		-0.950393, -0.154226, -0.270126,
		0.289263, -0.757523, -0.585223,
		39.141640, 31.798035, 25.320301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517509, 31.738203, 25.917101>,  <38.939156, 32.328300, 25.729958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517509, 31.738203, 25.917101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.831528, 31.573006, 25.732433>,  <39.019939, 31.473886, 25.621632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.831528, 31.573006, 25.732433>,  <38.517509, 31.738203, 25.917101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831528, 31.573006, 25.732433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038496, -0.711336, 0.701797,
		-0.618241, -0.568715, -0.542532,
		0.785045, -0.412995, -0.461670,
		39.067043, 31.449108, 25.593933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407867, 30.951454, 26.053766>,  <38.517509, 31.738203, 25.917101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407867, 30.951454, 26.053766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.792393, 30.983612, 25.948387>,  <39.023109, 31.002907, 25.885159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.792393, 30.983612, 25.948387>,  <38.407867, 30.951454, 26.053766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792393, 30.983612, 25.948387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254559, -0.624640, 0.738258,
		-0.105207, -0.776763, -0.620943,
		0.961317, 0.080397, -0.263448,
		39.080788, 31.007730, 25.869352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663200, 30.238592, 26.055689>,  <38.407867, 30.951454, 26.053766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663200, 30.238592, 26.055689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.984657, 30.472324, 26.100784>,  <39.177532, 30.612564, 26.127842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.984657, 30.472324, 26.100784>,  <38.663200, 30.238592, 26.055689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984657, 30.472324, 26.100784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220875, -0.468783, 0.855252,
		0.552601, -0.662419, -0.505800,
		0.803646, 0.584332, 0.112738,
		39.225750, 30.647623, 26.134605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297153, 29.861553, 26.161591>,  <38.663200, 30.238592, 26.055689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297153, 29.861553, 26.161591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319366, 30.219799, 26.338131>,  <39.332695, 30.434746, 26.444056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319366, 30.219799, 26.338131>,  <39.297153, 29.861553, 26.161591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319366, 30.219799, 26.338131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202827, -0.442937, 0.873309,
		0.977639, 0.041019, -0.206253,
		0.055535, 0.895614, 0.441352,
		39.336025, 30.488483, 26.470537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793118, 29.702484, 26.689810>,  <39.297153, 29.861553, 26.161591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793118, 29.702484, 26.689810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.708462, 30.085529, 26.767971>,  <39.657669, 30.315357, 26.814867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.708462, 30.085529, 26.767971>,  <39.793118, 29.702484, 26.689810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708462, 30.085529, 26.767971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425607, -0.089675, 0.900453,
		0.879810, 0.273741, -0.388588,
		-0.211644, 0.957614, 0.195403,
		39.644970, 30.372814, 26.826591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355659, 29.990780, 26.860861>,  <39.793118, 29.702484, 26.689810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355659, 29.990780, 26.860861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.065159, 30.211834, 27.024399>,  <39.890858, 30.344467, 27.122522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.065159, 30.211834, 27.024399>,  <40.355659, 29.990780, 26.860861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065159, 30.211834, 27.024399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405490, -0.135873, 0.903945,
		0.555104, 0.822272, -0.125412,
		-0.726248, 0.552637, 0.408847,
		39.847286, 30.377625, 27.147053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668102, 30.387983, 27.397604>,  <40.355659, 29.990780, 26.860861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668102, 30.387983, 27.397604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.280891, 30.386509, 27.497929>,  <40.048565, 30.385624, 27.558125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.280891, 30.386509, 27.497929>,  <40.668102, 30.387983, 27.397604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280891, 30.386509, 27.497929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248979, -0.135712, 0.958953,
		0.030503, 0.990741, 0.132291,
		-0.968028, -0.003687, 0.250814,
		39.990482, 30.385403, 27.573174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591042, 30.653944, 28.011559>,  <40.668102, 30.387983, 27.397604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591042, 30.653944, 28.011559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.241333, 30.459778, 28.013439>,  <40.031509, 30.343279, 28.014568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.241333, 30.459778, 28.013439>,  <40.591042, 30.653944, 28.011559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241333, 30.459778, 28.013439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197920, -0.347591, 0.916520,
		-0.443257, 0.802218, 0.399962,
		-0.874272, -0.485414, 0.004703,
		39.979050, 30.314154, 28.014851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327099, 30.857187, 28.602732>,  <40.591042, 30.653944, 28.011559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327099, 30.857187, 28.602732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.134155, 30.518135, 28.514320>,  <40.018387, 30.314705, 28.461273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.134155, 30.518135, 28.514320>,  <40.327099, 30.857187, 28.602732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134155, 30.518135, 28.514320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151758, -0.329369, 0.931926,
		-0.862726, 0.415983, 0.287510,
		-0.482362, -0.847629, -0.221026,
		39.989449, 30.263847, 28.448013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962475, 30.647923, 29.254314>,  <40.327099, 30.857187, 28.602732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962475, 30.647923, 29.254314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.960682, 30.316795, 29.029922>,  <39.959606, 30.118118, 28.895288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.960682, 30.316795, 29.029922>,  <39.962475, 30.647923, 29.254314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960682, 30.316795, 29.029922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244982, -0.544798, 0.801985,
		-0.969517, -0.133835, 0.205242,
		-0.004482, -0.827819, -0.560978,
		39.959339, 30.068449, 28.861629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526623, 30.196415, 29.599113>,  <39.962475, 30.647923, 29.254314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526623, 30.196415, 29.599113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.768116, 29.968601, 29.375992>,  <39.913010, 29.831913, 29.242119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.768116, 29.968601, 29.375992>,  <39.526623, 30.196415, 29.599113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768116, 29.968601, 29.375992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007874, -0.695417, 0.718563,
		-0.797151, -0.438209, -0.415359,
		0.603729, -0.569532, -0.557802,
		39.949234, 29.797741, 29.208651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190247, 29.558037, 29.566530>,  <39.526623, 30.196415, 29.599113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190247, 29.558037, 29.566530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578728, 29.508282, 29.485252>,  <39.811817, 29.478428, 29.436485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578728, 29.508282, 29.485252>,  <39.190247, 29.558037, 29.566530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578728, 29.508282, 29.485252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048055, -0.733068, 0.678455,
		-0.233347, -0.668684, -0.705982,
		0.971205, -0.124389, -0.203193,
		39.870090, 29.470964, 29.424294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248806, 28.842361, 29.664862>,  <39.190247, 29.558037, 29.566530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248806, 28.842361, 29.664862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.612339, 29.008633, 29.650833>,  <39.830460, 29.108395, 29.642416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.612339, 29.008633, 29.650833>,  <39.248806, 28.842361, 29.664862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612339, 29.008633, 29.650833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297932, -0.587951, 0.752030,
		0.291982, -0.693921, -0.658195,
		0.908836, 0.415677, -0.035069,
		39.884991, 29.133335, 29.640312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624508, 28.266291, 29.639833>,  <39.248806, 28.842361, 29.664862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624508, 28.266291, 29.639833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862923, 28.554836, 29.780899>,  <40.005974, 28.727962, 29.865538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862923, 28.554836, 29.780899>,  <39.624508, 28.266291, 29.639833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862923, 28.554836, 29.780899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473287, -0.670425, 0.571428,
		0.648642, -0.173683, -0.741012,
		0.596040, 0.721363, 0.352664,
		40.041733, 28.771246, 29.886698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340500, 28.029530, 29.685665>,  <39.624508, 28.266291, 29.639833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340500, 28.029530, 29.685665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317154, 28.327385, 29.951630>,  <40.303146, 28.506098, 30.111208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317154, 28.327385, 29.951630>,  <40.340500, 28.029530, 29.685665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317154, 28.327385, 29.951630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521781, -0.545070, 0.656234,
		0.851080, 0.385241, -0.356724,
		-0.058368, 0.744639, 0.664910,
		40.299644, 28.550777, 30.151102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957928, 28.131855, 29.859888>,  <40.340500, 28.029530, 29.685665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957928, 28.131855, 29.859888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.736427, 28.270191, 30.162872>,  <40.603527, 28.353193, 30.344664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.736427, 28.270191, 30.162872>,  <40.957928, 28.131855, 29.859888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736427, 28.270191, 30.162872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565669, -0.511298, 0.646988,
		0.611043, 0.786747, 0.087503,
		-0.553756, 0.345839, 0.757463,
		40.570301, 28.373943, 30.390112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481010, 28.251541, 30.447294>,  <40.957928, 28.131855, 29.859888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481010, 28.251541, 30.447294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.123909, 28.226849, 30.625816>,  <40.909649, 28.212032, 30.732929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.123909, 28.226849, 30.625816>,  <41.481010, 28.251541, 30.447294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123909, 28.226849, 30.625816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429206, -0.417817, 0.800757,
		0.137041, 0.906432, 0.399502,
		-0.892750, -0.061732, 0.446304,
		40.856083, 28.208328, 30.759708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.004175, 25.547680, 30.941364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.335131, 25.602711, 31.159172>,  <27.533705, 25.635729, 31.289856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.335131, 25.602711, 31.159172>,  <27.004175, 25.547680, 30.941364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335131, 25.602711, 31.159172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155711, -0.875336, 0.457756,
		0.539614, -0.463530, -0.702821,
		0.827388, 0.137575, 0.544520,
		27.583347, 25.643984, 31.322529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335836, 24.937643, 30.878708>,  <27.004175, 25.547680, 30.941364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335836, 24.937643, 30.878708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.468006, 25.105827, 31.216709>,  <27.547308, 25.206738, 31.419510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.468006, 25.105827, 31.216709>,  <27.335836, 24.937643, 30.878708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468006, 25.105827, 31.216709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208655, -0.840597, 0.499859,
		0.920479, -0.341480, -0.190023,
		0.330425, 0.420461, 0.845004,
		27.567133, 25.231966, 31.470211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513229, 24.322428, 31.175888>,  <27.335836, 24.937643, 30.878708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513229, 24.322428, 31.175888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.541985, 24.599049, 31.463383>,  <27.559237, 24.765022, 31.635880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.541985, 24.599049, 31.463383>,  <27.513229, 24.322428, 31.175888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541985, 24.599049, 31.463383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060804, -0.716224, 0.695216,
		0.995558, -0.093679, -0.009437,
		0.071886, 0.691554, 0.718739,
		27.563551, 24.806515, 31.679005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097612, 24.133936, 31.542469>,  <27.513229, 24.322428, 31.175888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097612, 24.133936, 31.542469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.861961, 24.366642, 31.766781>,  <27.720570, 24.506266, 31.901367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.861961, 24.366642, 31.766781>,  <28.097612, 24.133936, 31.542469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861961, 24.366642, 31.766781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097208, -0.637934, 0.763931,
		0.802171, 0.504566, 0.319273,
		-0.589129, 0.581768, 0.560779,
		27.685223, 24.541172, 31.935015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409632, 24.214222, 32.272804>,  <28.097612, 24.133936, 31.542469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409632, 24.214222, 32.272804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.024029, 24.302025, 32.332817>,  <27.792667, 24.354708, 32.368824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.024029, 24.302025, 32.332817>,  <28.409632, 24.214222, 32.272804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024029, 24.302025, 32.332817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011077, -0.596946, 0.802205,
		0.265652, 0.771668, 0.577891,
		-0.964005, 0.219509, 0.150033,
		27.734827, 24.367878, 32.377827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326712, 24.350748, 32.906597>,  <28.409632, 24.214222, 32.272804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326712, 24.350748, 32.906597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.944460, 24.272015, 32.818932>,  <27.715109, 24.224773, 32.766335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.944460, 24.272015, 32.818932>,  <28.326712, 24.350748, 32.906597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944460, 24.272015, 32.818932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094342, -0.500293, 0.860701,
		-0.279060, 0.843186, 0.459525,
		-0.955628, -0.196835, -0.219160,
		27.657772, 24.212965, 32.753185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841352, 24.426924, 33.591145>,  <28.326712, 24.350748, 32.906597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841352, 24.426924, 33.591145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.649401, 24.217571, 33.309494>,  <27.534229, 24.091961, 33.140503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.649401, 24.217571, 33.309494>,  <27.841352, 24.426924, 33.591145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649401, 24.217571, 33.309494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397996, -0.585374, 0.706355,
		-0.781868, 0.619203, 0.072605,
		-0.479878, -0.523379, -0.704124,
		27.505438, 24.060558, 33.098255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201485, 24.294781, 33.893166>,  <27.841352, 24.426924, 33.591145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201485, 24.294781, 33.893166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.222431, 24.042332, 33.583599>,  <27.234999, 23.890862, 33.397861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.222431, 24.042332, 33.583599>,  <27.201485, 24.294781, 33.893166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222431, 24.042332, 33.583599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391346, -0.725959, 0.565536,
		-0.918752, 0.273252, -0.285004,
		0.052367, -0.631123, -0.773913,
		27.238142, 23.852995, 33.351425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519283, 24.172750, 33.693069>,  <27.201485, 24.294781, 33.893166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519283, 24.172750, 33.693069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.765873, 23.878090, 33.581852>,  <26.913826, 23.701294, 33.515121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.765873, 23.878090, 33.581852>,  <26.519283, 24.172750, 33.693069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765873, 23.878090, 33.581852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482044, -0.632310, 0.606480,
		-0.622570, -0.239853, -0.744901,
		0.616474, -0.736652, -0.278038,
		26.950815, 23.657095, 33.498440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083723, 23.628271, 33.635468>,  <26.519283, 24.172750, 33.693069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083723, 23.628271, 33.635468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.426052, 23.422390, 33.656052>,  <26.631449, 23.298861, 33.668404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.426052, 23.422390, 33.656052>,  <26.083723, 23.628271, 33.635468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426052, 23.422390, 33.656052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483121, -0.759806, 0.435074,
		-0.184832, -0.397209, -0.898923,
		0.855822, -0.514704, 0.051463,
		26.682798, 23.267979, 33.671490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012848, 22.935839, 33.273521>,  <26.083723, 23.628271, 33.635468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012848, 22.935839, 33.273521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.309710, 22.908180, 33.540184>,  <26.487825, 22.891586, 33.700180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.309710, 22.908180, 33.540184>,  <26.012848, 22.935839, 33.273521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309710, 22.908180, 33.540184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490807, -0.733423, 0.470319,
		0.456420, -0.676247, -0.578248,
		0.742152, -0.069145, 0.666655,
		26.532354, 22.887436, 33.740181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179211, 22.184086, 33.437111>,  <26.012848, 22.935839, 33.273521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179211, 22.184086, 33.437111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.320185, 22.408089, 33.737026>,  <26.404768, 22.542490, 33.916977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.320185, 22.408089, 33.737026>,  <26.179211, 22.184086, 33.437111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320185, 22.408089, 33.737026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433208, -0.612560, 0.661136,
		0.829531, -0.557821, 0.026713,
		0.352433, 0.560005, 0.749791,
		26.425915, 22.576090, 33.961964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485960, 22.417191, 33.530407>,  <26.179211, 22.184086, 33.437111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485960, 22.417191, 33.530407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.406601, 22.334709, 33.913681>,  <25.358986, 22.285221, 34.143646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.406601, 22.334709, 33.913681>,  <25.485960, 22.417191, 33.530407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.406601, 22.334709, 33.913681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814303, -0.509410, -0.278232,
		0.545481, -0.835453, -0.066846,
		-0.198398, -0.206203, 0.958185,
		25.347082, 22.272848, 34.201138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458382, 21.747177, 33.600883>,  <25.485960, 22.417191, 33.530407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458382, 21.747177, 33.600883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.232899, 21.910717, 33.887959>,  <25.097609, 22.008842, 34.060204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.232899, 21.910717, 33.887959>,  <25.458382, 21.747177, 33.600883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232899, 21.910717, 33.887959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751172, -0.615083, -0.239610,
		0.343471, -0.674176, 0.653846,
		-0.563709, 0.408852, 0.717686,
		25.063786, 22.033373, 34.103264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923674, 21.203663, 33.456776>,  <25.458382, 21.747177, 33.600883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923674, 21.203663, 33.456776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.121655, 20.869255, 33.362038>,  <26.240442, 20.668610, 33.305195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.121655, 20.869255, 33.362038>,  <25.923674, 21.203663, 33.456776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121655, 20.869255, 33.362038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111083, 0.209461, -0.971487,
		0.861792, 0.507148, 0.010805,
		0.494951, -0.836019, -0.236847,
		26.270140, 20.618450, 33.290985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521278, 21.403402, 33.100636>,  <25.923674, 21.203663, 33.456776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521278, 21.403402, 33.100636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.460543, 21.023197, 32.992214>,  <26.424101, 20.795074, 32.927162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.460543, 21.023197, 32.992214>,  <26.521278, 21.403402, 33.100636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460543, 21.023197, 32.992214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091943, 0.259457, -0.961368,
		0.984120, -0.170893, 0.047998,
		-0.151837, -0.950514, -0.271049,
		26.414991, 20.738043, 32.910900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075140, 21.179070, 32.653759>,  <26.521278, 21.403402, 33.100636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075140, 21.179070, 32.653759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.773838, 20.931938, 32.563519>,  <26.593058, 20.783659, 32.509373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.773838, 20.931938, 32.563519>,  <27.075140, 21.179070, 32.653759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773838, 20.931938, 32.563519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067848, 0.268187, -0.960975,
		0.654222, -0.739164, -0.160094,
		-0.753253, -0.617828, -0.225605,
		26.547861, 20.746590, 32.495838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259518, 20.882788, 31.991547>,  <27.075140, 21.179070, 32.653759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259518, 20.882788, 31.991547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.863441, 20.850258, 32.036995>,  <26.625795, 20.830740, 32.064262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.863441, 20.850258, 32.036995>,  <27.259518, 20.882788, 31.991547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863441, 20.850258, 32.036995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132929, 0.297769, -0.945338,
		0.043046, -0.951168, -0.305658,
		-0.990190, -0.081324, 0.113620,
		26.566385, 20.825861, 32.071079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085997, 20.707695, 31.401579>,  <27.259518, 20.882788, 31.991547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085997, 20.707695, 31.401579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.726248, 20.833546, 31.522999>,  <26.510399, 20.909056, 31.595850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.726248, 20.833546, 31.522999>,  <27.085997, 20.707695, 31.401579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726248, 20.833546, 31.522999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236060, 0.234931, -0.942912,
		-0.367979, -0.919683, -0.137020,
		-0.899370, 0.314627, 0.303550,
		26.456436, 20.927935, 31.614063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595499, 20.506622, 30.908245>,  <27.085997, 20.707695, 31.401579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595499, 20.506622, 30.908245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.410934, 20.798214, 31.110508>,  <26.300196, 20.973169, 31.231865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.410934, 20.798214, 31.110508>,  <26.595499, 20.506622, 30.908245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410934, 20.798214, 31.110508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290638, 0.414304, -0.862486,
		-0.838229, -0.544926, 0.020704,
		-0.461413, 0.728978, 0.505658,
		26.272511, 21.016907, 31.262205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106455, 20.738365, 30.419268>,  <26.595499, 20.506622, 30.908245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106455, 20.738365, 30.419268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.093868, 21.032173, 30.690411>,  <26.086315, 21.208458, 30.853096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.093868, 21.032173, 30.690411>,  <26.106455, 20.738365, 30.419268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093868, 21.032173, 30.690411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052672, 0.678467, -0.732740,
		-0.998116, 0.012646, -0.060039,
		-0.031468, 0.734522, 0.677855,
		26.084427, 21.252529, 30.893766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573011, 21.286270, 30.259441>,  <26.106455, 20.738365, 30.419268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573011, 21.286270, 30.259441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.864897, 21.464188, 30.467163>,  <26.040028, 21.570938, 30.591797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.864897, 21.464188, 30.467163>,  <25.573011, 21.286270, 30.259441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864897, 21.464188, 30.467163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048286, 0.724071, -0.688033,
		-0.682047, 0.527142, 0.506887,
		0.729713, 0.444795, 0.519304,
		26.083811, 21.597626, 30.622953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473316, 21.958284, 30.116266>,  <25.573011, 21.286270, 30.259441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.473316, 21.958284, 30.116266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.839306, 22.001713, 30.271721>,  <26.058899, 22.027769, 30.364994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.839306, 22.001713, 30.271721>,  <25.473316, 21.958284, 30.116266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839306, 22.001713, 30.271721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113100, 0.855518, -0.505270,
		-0.387341, 0.506263, 0.770497,
		0.914973, 0.108569, 0.388636,
		26.113798, 22.034283, 30.388311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517344, 22.650852, 30.300749>,  <25.473316, 21.958284, 30.116266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517344, 22.650852, 30.300749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.895180, 22.519627, 30.296375>,  <26.121881, 22.440891, 30.293751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.895180, 22.519627, 30.296375>,  <25.517344, 22.650852, 30.300749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895180, 22.519627, 30.296375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287233, 0.842237, -0.456217,
		0.158877, 0.427799, 0.889801,
		0.944593, -0.328063, -0.010934,
		26.178558, 22.421207, 30.293095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963936, 23.242655, 30.538414>,  <25.517344, 22.650852, 30.300749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963936, 23.242655, 30.538414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.203278, 22.985409, 30.347260>,  <26.346884, 22.831060, 30.232567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.203278, 22.985409, 30.347260>,  <25.963936, 23.242655, 30.538414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203278, 22.985409, 30.347260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398660, 0.756334, -0.518680,
		0.695011, 0.119842, 0.708941,
		0.598356, -0.643115, -0.477884,
		26.382784, 22.792475, 30.203894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627548, 23.480753, 30.533901>,  <25.963936, 23.242655, 30.538414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627548, 23.480753, 30.533901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.706226, 23.207439, 30.252636>,  <26.753433, 23.043451, 30.083878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.706226, 23.207439, 30.252636>,  <26.627548, 23.480753, 30.533901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706226, 23.207439, 30.252636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623244, 0.640766, -0.448314,
		0.756887, -0.350060, 0.551887,
		0.196694, -0.683284, -0.703161,
		26.765234, 23.002455, 30.041687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377840, 23.416225, 30.402470>,  <26.627548, 23.480753, 30.533901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377840, 23.416225, 30.402470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.182365, 23.288902, 30.077541>,  <27.065081, 23.212509, 29.882584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.182365, 23.288902, 30.077541>,  <27.377840, 23.416225, 30.402470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182365, 23.288902, 30.077541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621937, 0.525875, -0.580215,
		0.611866, -0.788756, -0.059021,
		-0.488686, -0.318307, -0.812322,
		27.035759, 23.193411, 29.833845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903887, 23.319710, 29.950285>,  <27.377840, 23.416225, 30.402470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903887, 23.319710, 29.950285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.557154, 23.393852, 29.765141>,  <27.349113, 23.438337, 29.654053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.557154, 23.393852, 29.765141>,  <27.903887, 23.319710, 29.950285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557154, 23.393852, 29.765141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417962, 0.776302, -0.471871,
		0.271856, -0.602493, -0.750398,
		-0.866834, 0.185357, -0.462862,
		27.297104, 23.449459, 29.626282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537264, 23.348509, 29.721439>,  <27.903887, 23.319710, 29.950285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537264, 23.348509, 29.721439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.914495, 23.424469, 29.830647>,  <29.140835, 23.470045, 29.896172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.914495, 23.424469, 29.830647>,  <28.537264, 23.348509, 29.721439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914495, 23.424469, 29.830647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057597, -0.715272, 0.696469,
		0.327542, -0.672551, -0.663620,
		0.943079, 0.189901, 0.273018,
		29.197420, 23.481440, 29.912552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877792, 22.710827, 29.698210>,  <28.537264, 23.348509, 29.721439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877792, 22.710827, 29.698210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.128931, 22.921940, 29.927032>,  <29.279615, 23.048609, 30.064327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.128931, 22.921940, 29.927032>,  <28.877792, 22.710827, 29.698210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128931, 22.921940, 29.927032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033386, -0.716037, 0.697263,
		0.777620, -0.456874, -0.431942,
		0.627848, 0.527785, 0.572058,
		29.317286, 23.080275, 30.098650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309172, 22.225212, 29.943987>,  <28.877792, 22.710827, 29.698210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309172, 22.225212, 29.943987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.316988, 22.529934, 30.202991>,  <29.321678, 22.712767, 30.358395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.316988, 22.529934, 30.202991>,  <29.309172, 22.225212, 29.943987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316988, 22.529934, 30.202991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111892, -0.641900, 0.758581,
		0.993528, -0.087274, 0.072698,
		0.019540, 0.761806, 0.647511,
		29.322849, 22.758476, 30.397245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877495, 22.050644, 30.389366>,  <29.309172, 22.225212, 29.943987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877495, 22.050644, 30.389366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.648418, 22.308548, 30.591877>,  <29.510973, 22.463289, 30.713383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.648418, 22.308548, 30.591877>,  <29.877495, 22.050644, 30.389366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648418, 22.308548, 30.591877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080298, -0.570490, 0.817370,
		0.815830, 0.508752, 0.274940,
		-0.572689, 0.644758, 0.506275,
		29.476612, 22.501976, 30.743759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217720, 22.127893, 30.991783>,  <29.877495, 22.050644, 30.389366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217720, 22.127893, 30.991783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.833857, 22.230145, 31.038616>,  <29.603539, 22.291494, 31.066717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.833857, 22.230145, 31.038616>,  <30.217720, 22.127893, 30.991783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833857, 22.230145, 31.038616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022725, -0.485583, 0.873895,
		0.280246, 0.835981, 0.471803,
		-0.959659, 0.255628, 0.117085,
		29.545959, 22.306833, 31.073742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176954, 22.335781, 31.649765>,  <30.217720, 22.127893, 30.991783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176954, 22.335781, 31.649765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796843, 22.248867, 31.560543>,  <29.568775, 22.196718, 31.507010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796843, 22.248867, 31.560543>,  <30.176954, 22.335781, 31.649765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796843, 22.248867, 31.560543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100684, -0.463440, 0.880389,
		-0.294668, 0.859076, 0.418521,
		-0.950281, -0.217284, -0.223056,
		29.511759, 22.183681, 31.493626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877863, 22.329880, 32.327126>,  <30.176954, 22.335781, 31.649765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877863, 22.329880, 32.327126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.604424, 22.148087, 32.098694>,  <29.440359, 22.039011, 31.961634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.604424, 22.148087, 32.098694>,  <29.877863, 22.329880, 32.327126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604424, 22.148087, 32.098694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150967, -0.677486, 0.719876,
		-0.714072, 0.578323, 0.394518,
		-0.683601, -0.454484, -0.571081,
		29.399343, 22.011742, 31.927370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059105, 22.684769, 32.981174>,  <29.877863, 22.329880, 32.327126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059105, 22.684769, 32.981174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307486, 22.651424, 33.292934>,  <30.456514, 22.631418, 33.479992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307486, 22.651424, 33.292934>,  <30.059105, 22.684769, 32.981174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307486, 22.651424, 33.292934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524094, 0.783545, -0.333742,
		-0.582875, 0.615718, 0.530234,
		0.620953, -0.083363, 0.779402,
		30.493771, 22.626415, 33.526756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100245, 23.249830, 33.217579>,  <30.059105, 22.684769, 32.981174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100245, 23.249830, 33.217579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.435455, 23.079071, 33.353500>,  <30.636581, 22.976616, 33.435055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.435455, 23.079071, 33.353500>,  <30.100245, 23.249830, 33.217579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435455, 23.079071, 33.353500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545414, 0.637888, -0.543712,
		0.015351, 0.640981, 0.767403,
		0.838026, -0.426899, 0.339808,
		30.686863, 22.951002, 33.455444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522497, 23.839823, 33.374355>,  <30.100245, 23.249830, 33.217579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522497, 23.839823, 33.374355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.782423, 23.537628, 33.340935>,  <30.938377, 23.356312, 33.320881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.782423, 23.537628, 33.340935>,  <30.522497, 23.839823, 33.374355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782423, 23.537628, 33.340935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704713, 0.640008, -0.306219,
		0.284820, 0.140103, 0.948287,
		0.649813, -0.755488, -0.083555,
		30.977367, 23.310982, 33.315868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050606, 24.016848, 33.616051>,  <30.522497, 23.839823, 33.374355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050606, 24.016848, 33.616051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174679, 23.745979, 33.349152>,  <31.249123, 23.583458, 33.189011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174679, 23.745979, 33.349152>,  <31.050606, 24.016848, 33.616051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174679, 23.745979, 33.349152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679767, 0.648652, -0.342296,
		0.664608, -0.347402, 0.661519,
		0.310182, -0.677172, -0.667252,
		31.267733, 23.542828, 33.148975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700758, 24.265894, 33.536572>,  <31.050606, 24.016848, 33.616051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700758, 24.265894, 33.536572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.679384, 24.009262, 33.230495>,  <31.666561, 23.855284, 33.046848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.679384, 24.009262, 33.230495>,  <31.700758, 24.265894, 33.536572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679384, 24.009262, 33.230495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654125, 0.556502, -0.512275,
		0.754497, -0.527905, 0.389937,
		-0.053432, -0.641578, -0.765195,
		31.663355, 23.816790, 33.000938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498566, 24.192503, 33.259384>,  <31.700758, 24.265894, 33.536572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498566, 24.192503, 33.259384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258377, 24.079441, 32.960175>,  <32.114262, 24.011604, 32.780647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258377, 24.079441, 32.960175>,  <32.498566, 24.192503, 33.259384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258377, 24.079441, 32.960175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480773, 0.619876, -0.620170,
		0.638977, -0.732024, -0.236325,
		-0.600472, -0.282656, -0.748024,
		32.078236, 23.994646, 32.735767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768688, 24.163366, 32.604881>,  <32.498566, 24.192503, 33.259384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768688, 24.163366, 32.604881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407402, 24.195374, 32.436214>,  <32.190632, 24.214579, 32.335014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407402, 24.195374, 32.436214>,  <32.768688, 24.163366, 32.604881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407402, 24.195374, 32.436214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356031, 0.688349, -0.631995,
		0.239682, -0.720953, -0.650215,
		-0.903213, 0.080019, -0.421666,
		32.136436, 24.219379, 32.309715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.284090, 24.617521, 36.861412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.200466, 24.389984, 36.543240>,  <27.150291, 24.253462, 36.352337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.200466, 24.389984, 36.543240>,  <27.284090, 24.617521, 36.861412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200466, 24.389984, 36.543240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256260, 0.753112, -0.605932,
		0.943729, -0.330513, -0.011673,
		-0.209059, -0.568844, -0.795431,
		27.137749, 24.219332, 36.304611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862833, 24.627335, 36.366341>,  <27.284090, 24.617521, 36.861412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862833, 24.627335, 36.366341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.526407, 24.550114, 36.164215>,  <27.324553, 24.503780, 36.042938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.526407, 24.550114, 36.164215>,  <27.862833, 24.627335, 36.366341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526407, 24.550114, 36.164215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212808, 0.740734, -0.637201,
		0.497315, -0.643462, -0.581923,
		-0.841065, -0.193052, -0.505312,
		27.274088, 24.492199, 36.012623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000393, 24.577684, 35.688789>,  <27.862833, 24.627335, 36.366341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000393, 24.577684, 35.688789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.608063, 24.655624, 35.687222>,  <27.372665, 24.702389, 35.686279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.608063, 24.655624, 35.687222>,  <28.000393, 24.577684, 35.688789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608063, 24.655624, 35.687222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156847, 0.777273, -0.609299,
		-0.115676, -0.598231, -0.792931,
		-0.980825, 0.194850, -0.003919,
		27.313816, 24.714079, 35.686047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805496, 24.727640, 34.934982>,  <28.000393, 24.577684, 35.688789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805496, 24.727640, 34.934982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.543697, 24.878880, 35.196877>,  <27.386618, 24.969624, 35.354012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.543697, 24.878880, 35.196877>,  <27.805496, 24.727640, 34.934982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543697, 24.878880, 35.196877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057565, 0.888382, -0.455482,
		-0.753870, -0.260421, -0.603208,
		-0.654496, 0.378098, 0.654734,
		27.347349, 24.992310, 35.393295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466644, 25.148586, 34.547440>,  <27.805496, 24.727640, 34.934982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466644, 25.148586, 34.547440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.322210, 25.258575, 34.903870>,  <27.235550, 25.324570, 35.117725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.322210, 25.258575, 34.903870>,  <27.466644, 25.148586, 34.547440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322210, 25.258575, 34.903870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090524, 0.940689, -0.326969,
		-0.928129, -0.198727, -0.314777,
		-0.361085, 0.274975, 0.891070,
		27.213884, 25.341068, 35.171192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814234, 25.625004, 34.454788>,  <27.466644, 25.148586, 34.547440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814234, 25.625004, 34.454788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.967512, 25.703178, 34.815891>,  <27.059479, 25.750082, 35.032551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.967512, 25.703178, 34.815891>,  <26.814234, 25.625004, 34.454788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967512, 25.703178, 34.815891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028643, 0.974375, -0.223098,
		-0.923223, 0.111348, 0.367779,
		0.383196, 0.195435, 0.902755,
		27.082472, 25.761808, 35.086720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421488, 26.221027, 34.758785>,  <26.814234, 25.625004, 34.454788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421488, 26.221027, 34.758785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.775274, 26.208664, 34.945015>,  <26.987547, 26.201246, 35.056751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.775274, 26.208664, 34.945015>,  <26.421488, 26.221027, 34.758785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775274, 26.208664, 34.945015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139326, 0.969777, -0.200303,
		-0.445313, 0.242029, 0.862043,
		0.884468, -0.030908, 0.465575,
		27.040615, 26.199392, 35.084686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478853, 26.917902, 35.011990>,  <26.421488, 26.221027, 34.758785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478853, 26.917902, 35.011990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.855801, 26.797504, 35.070423>,  <27.081970, 26.725266, 35.105484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.855801, 26.797504, 35.070423>,  <26.478853, 26.917902, 35.011990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855801, 26.797504, 35.070423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317217, 0.942619, -0.104129,
		-0.106361, 0.144469, 0.983776,
		0.942370, -0.300995, 0.146086,
		27.138512, 26.707207, 35.114250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800056, 27.423592, 35.386040>,  <26.478853, 26.917902, 35.011990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800056, 27.423592, 35.386040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.115511, 27.217411, 35.251957>,  <27.304783, 27.093702, 35.171509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.115511, 27.217411, 35.251957>,  <26.800056, 27.423592, 35.386040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115511, 27.217411, 35.251957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498170, 0.855203, -0.143020,
		0.360390, -0.054200, 0.931226,
		0.788635, -0.515452, -0.335208,
		27.352102, 27.062775, 35.151394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423567, 27.750374, 35.687080>,  <26.800056, 27.423592, 35.386040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423567, 27.750374, 35.687080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.528191, 27.542583, 35.361694>,  <27.590965, 27.417910, 35.166462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.528191, 27.542583, 35.361694>,  <27.423567, 27.750374, 35.687080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528191, 27.542583, 35.361694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533993, 0.779956, -0.326374,
		0.804013, -0.349021, 0.481402,
		0.261561, -0.519474, -0.813469,
		27.606659, 27.386742, 35.117653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117455, 27.960175, 35.578880>,  <27.423567, 27.750374, 35.687080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117455, 27.960175, 35.578880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.027166, 27.802673, 35.222450>,  <27.972994, 27.708172, 35.008595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.027166, 27.802673, 35.222450>,  <28.117455, 27.960175, 35.578880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027166, 27.802673, 35.222450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633056, 0.635943, -0.441379,
		0.740466, -0.663727, 0.105723,
		-0.225721, -0.393755, -0.891071,
		27.959450, 27.684547, 34.955128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765594, 27.882057, 35.121387>,  <28.117455, 27.960175, 35.578880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765594, 27.882057, 35.121387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.474447, 27.872898, 34.847252>,  <28.299759, 27.867403, 34.682770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.474447, 27.872898, 34.847252>,  <28.765594, 27.882057, 35.121387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474447, 27.872898, 34.847252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524552, 0.625117, -0.577992,
		0.441649, -0.780195, -0.442992,
		-0.727868, -0.022898, -0.685335,
		28.256086, 27.866030, 34.641651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169321, 27.464132, 34.670101>,  <28.765594, 27.882057, 35.121387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169321, 27.464132, 34.670101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.531572, 27.332970, 34.777664>,  <29.748924, 27.254272, 34.842201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.531572, 27.332970, 34.777664>,  <29.169321, 27.464132, 34.670101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531572, 27.332970, 34.777664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420842, -0.616855, 0.665118,
		-0.052218, -0.715520, -0.696638,
		0.905630, -0.327906, 0.268910,
		29.803261, 27.234598, 34.858337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235039, 26.787140, 34.418343>,  <29.169321, 27.464132, 34.670101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235039, 26.787140, 34.418343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.482161, 26.845055, 34.727497>,  <29.630434, 26.879803, 34.912991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.482161, 26.845055, 34.727497>,  <29.235039, 26.787140, 34.418343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482161, 26.845055, 34.727497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305598, -0.861427, 0.405652,
		0.724519, -0.486807, -0.487946,
		0.617804, 0.144787, 0.772887,
		29.667501, 26.888491, 34.959362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430447, 26.097340, 34.642273>,  <29.235039, 26.787140, 34.418343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430447, 26.097340, 34.642273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.590225, 26.303448, 34.945572>,  <29.686092, 26.427113, 35.127552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.590225, 26.303448, 34.945572>,  <29.430447, 26.097340, 34.642273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590225, 26.303448, 34.945572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252064, -0.733488, 0.631236,
		0.881423, -0.443272, -0.163108,
		0.399447, 0.515272, 0.758246,
		29.710060, 26.458029, 35.173046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883501, 25.721430, 34.953819>,  <29.430447, 26.097340, 34.642273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883501, 25.721430, 34.953819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.775875, 25.956123, 35.259327>,  <29.711300, 26.096939, 35.442631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.775875, 25.956123, 35.259327>,  <29.883501, 25.721430, 34.953819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775875, 25.956123, 35.259327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208165, -0.809699, 0.548685,
		0.940358, -0.011359, 0.339997,
		-0.269063, 0.586736, 0.763771,
		29.695156, 26.132145, 35.488457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319424, 25.500101, 35.517399>,  <29.883501, 25.721430, 34.953819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319424, 25.500101, 35.517399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.007839, 25.689739, 35.681568>,  <29.820889, 25.803522, 35.780071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.007839, 25.689739, 35.681568>,  <30.319424, 25.500101, 35.517399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007839, 25.689739, 35.681568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122276, -0.756791, 0.642118,
		0.615033, 0.450000, 0.647483,
		-0.778963, 0.474096, 0.410427,
		29.774151, 25.831968, 35.804695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492626, 25.452124, 36.311253>,  <30.319424, 25.500101, 35.517399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492626, 25.452124, 36.311253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.101101, 25.520065, 36.265526>,  <29.866186, 25.560831, 36.238091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.101101, 25.520065, 36.265526>,  <30.492626, 25.452124, 36.311253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101101, 25.520065, 36.265526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202348, -0.717319, 0.666715,
		0.031241, 0.675723, 0.736493,
		-0.978815, 0.169857, -0.114322,
		29.807457, 25.571022, 36.231228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236670, 25.400742, 37.031704>,  <30.492626, 25.452124, 36.311253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236670, 25.400742, 37.031704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.942503, 25.340862, 36.767353>,  <29.766003, 25.304934, 36.608742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.942503, 25.340862, 36.767353>,  <30.236670, 25.400742, 37.031704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942503, 25.340862, 36.767353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242702, -0.852395, 0.463161,
		-0.632661, 0.501011, 0.590532,
		-0.735415, -0.149701, -0.660874,
		29.721878, 25.295952, 36.569092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715466, 25.293369, 37.503658>,  <30.236670, 25.400742, 37.031704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715466, 25.293369, 37.503658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.590134, 25.179630, 37.141228>,  <29.514935, 25.111387, 36.923771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.590134, 25.179630, 37.141228>,  <29.715466, 25.293369, 37.503658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590134, 25.179630, 37.141228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324442, -0.864656, 0.383546,
		-0.892504, 0.414144, 0.178666,
		-0.313328, -0.284349, -0.906075,
		29.496136, 25.094326, 36.869404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011192, 24.995426, 37.610023>,  <29.715466, 25.293369, 37.503658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011192, 24.995426, 37.610023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.134508, 24.841743, 37.261921>,  <29.208498, 24.749535, 37.053059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.134508, 24.841743, 37.261921>,  <29.011192, 24.995426, 37.610023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134508, 24.841743, 37.261921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556369, -0.814860, 0.162654,
		-0.771628, 0.434038, -0.464975,
		0.308291, -0.384206, -0.870254,
		29.226995, 24.726482, 37.000843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354406, 24.649286, 37.288582>,  <29.011192, 24.995426, 37.610023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354406, 24.649286, 37.288582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.692394, 24.491077, 37.144588>,  <28.895187, 24.396152, 37.058193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.692394, 24.491077, 37.144588>,  <28.354406, 24.649286, 37.288582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692394, 24.491077, 37.144588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328443, -0.914982, 0.234378,
		-0.422076, -0.079810, -0.903041,
		0.844972, -0.395523, -0.359979,
		28.945887, 24.372421, 37.036594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129202, 24.075630, 37.079597>,  <28.354406, 24.649286, 37.288582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129202, 24.075630, 37.079597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.514832, 23.984119, 37.025604>,  <28.746210, 23.929213, 36.993210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.514832, 23.984119, 37.025604>,  <28.129202, 24.075630, 37.079597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514832, 23.984119, 37.025604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169254, -0.920709, 0.351635,
		-0.204728, -0.316156, -0.926354,
		0.964074, -0.228778, -0.134984,
		28.804054, 23.915485, 36.985107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168596, 23.403358, 36.787994>,  <28.129202, 24.075630, 37.079597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168596, 23.403358, 36.787994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.539820, 23.447525, 36.930271>,  <28.762554, 23.474026, 37.015636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.539820, 23.447525, 36.930271>,  <28.168596, 23.403358, 36.787994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539820, 23.447525, 36.930271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007303, -0.960253, 0.279036,
		0.372363, -0.256364, -0.891977,
		0.928059, 0.110417, 0.355691,
		28.818237, 23.480650, 37.036980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552185, 22.858196, 36.536102>,  <28.168596, 23.403358, 36.787994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552185, 22.858196, 36.536102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.724850, 22.988071, 36.872730>,  <28.828447, 23.065996, 37.074707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.724850, 22.988071, 36.872730>,  <28.552185, 22.858196, 36.536102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724850, 22.988071, 36.872730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116961, -0.945242, 0.304694,
		0.894422, -0.033093, -0.445998,
		0.431660, 0.324689, 0.841574,
		28.854347, 23.085478, 37.125202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204962, 22.408741, 36.646652>,  <28.552185, 22.858196, 36.536102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204962, 22.408741, 36.646652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.108761, 22.573177, 36.998371>,  <29.051041, 22.671839, 37.209404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.108761, 22.573177, 36.998371>,  <29.204962, 22.408741, 36.646652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108761, 22.573177, 36.998371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211635, -0.861883, 0.460833,
		0.947295, 0.296923, 0.120286,
		-0.240504, 0.411089, 0.879297,
		29.036610, 22.696505, 37.262161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026878, 22.390120, 35.978657>,  <29.204962, 22.408741, 36.646652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026878, 22.390120, 35.978657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.940920, 22.047825, 35.790390>,  <28.889345, 21.842447, 35.677429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.940920, 22.047825, 35.790390>,  <29.026878, 22.390120, 35.978657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940920, 22.047825, 35.790390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524730, 0.305294, -0.794641,
		0.823698, -0.417740, 0.383425,
		-0.214896, -0.855739, -0.470671,
		28.876451, 21.791103, 35.649189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728672, 21.962553, 35.939743>,  <29.026878, 22.390120, 35.978657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728672, 21.962553, 35.939743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.476984, 21.830257, 35.658405>,  <29.325972, 21.750879, 35.489601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.476984, 21.830257, 35.658405>,  <29.728672, 21.962553, 35.939743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476984, 21.830257, 35.658405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715894, 0.105722, -0.690159,
		0.302623, -0.937781, 0.170253,
		-0.629218, -0.330741, -0.703345,
		29.288218, 21.731035, 35.447403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148602, 21.491922, 35.496544>,  <29.728672, 21.962553, 35.939743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148602, 21.491922, 35.496544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.824293, 21.605885, 35.292004>,  <29.629709, 21.674261, 35.169277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.824293, 21.605885, 35.292004>,  <30.148602, 21.491922, 35.496544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824293, 21.605885, 35.292004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558131, 0.112890, -0.822038,
		-0.176477, -0.951885, -0.250542,
		-0.810769, 0.284906, -0.511354,
		29.581062, 21.691357, 35.138596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157585, 21.084579, 34.893665>,  <30.148602, 21.491922, 35.496544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157585, 21.084579, 34.893665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.956465, 21.426399, 34.841614>,  <29.835793, 21.631491, 34.810383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.956465, 21.426399, 34.841614>,  <30.157585, 21.084579, 34.893665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956465, 21.426399, 34.841614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582437, 0.223688, -0.781493,
		-0.638716, -0.468731, -0.610192,
		-0.502802, 0.854550, -0.130133,
		29.805624, 21.682764, 34.802574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174076, 21.161152, 34.275238>,  <30.157585, 21.084579, 34.893665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174076, 21.161152, 34.275238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.013754, 21.524647, 34.321800>,  <29.917561, 21.742744, 34.349739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.013754, 21.524647, 34.321800>,  <30.174076, 21.161152, 34.275238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013754, 21.524647, 34.321800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577372, 0.349196, -0.738040,
		-0.711335, -0.228598, -0.664640,
		-0.400804, 0.908738, 0.116409,
		29.893513, 21.797268, 34.356724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246204, 21.398567, 33.646954>,  <30.174076, 21.161152, 34.275238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246204, 21.398567, 33.646954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.196947, 21.725388, 33.872257>,  <30.167393, 21.921480, 34.007439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.196947, 21.725388, 33.872257>,  <30.246204, 21.398567, 33.646954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196947, 21.725388, 33.872257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389318, 0.561858, -0.729895,
		-0.912835, 0.129407, -0.387281,
		-0.123143, 0.817050, 0.563264,
		30.160004, 21.970503, 34.041237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905323, 22.000959, 33.180443>,  <30.246204, 21.398567, 33.646954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905323, 22.000959, 33.180443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.108908, 22.155781, 33.487988>,  <30.231058, 22.248674, 33.672512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.108908, 22.155781, 33.487988>,  <29.905323, 22.000959, 33.180443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108908, 22.155781, 33.487988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473691, 0.619858, -0.625614,
		-0.718731, 0.682616, 0.132140,
		0.508963, 0.387055, 0.768860,
		30.261597, 22.271896, 33.718647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313080, 22.282694, 32.780922>,  <29.905323, 22.000959, 33.180443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313080, 22.282694, 32.780922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.253519, 22.006264, 32.498013>,  <29.217783, 21.840405, 32.328266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.253519, 22.006264, 32.498013>,  <29.313080, 22.282694, 32.780922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253519, 22.006264, 32.498013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173428, -0.685914, 0.706714,
		-0.973525, 0.227892, -0.017718,
		-0.148902, -0.691077, -0.707277,
		29.208849, 21.798941, 32.285828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678392, 21.928751, 32.958015>,  <29.313080, 22.282694, 32.780922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678392, 21.928751, 32.958015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.885906, 21.672409, 32.731682>,  <29.010414, 21.518604, 32.595882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.885906, 21.672409, 32.731682>,  <28.678392, 21.928751, 32.958015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885906, 21.672409, 32.731682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335443, -0.761381, 0.554776,
		-0.786350, -0.098000, -0.609959,
		0.518779, -0.640854, -0.565838,
		29.041542, 21.480152, 32.561932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204908, 21.419029, 32.881046>,  <28.678392, 21.928751, 32.958015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204908, 21.419029, 32.881046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.556200, 21.263092, 32.770245>,  <28.766975, 21.169529, 32.703762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.556200, 21.263092, 32.770245>,  <28.204908, 21.419029, 32.881046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556200, 21.263092, 32.770245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186437, -0.812486, 0.552366,
		-0.440401, -0.433460, -0.786231,
		0.878230, -0.389845, -0.277007,
		28.819670, 21.146139, 32.687141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021793, 20.786180, 32.575764>,  <28.204908, 21.419029, 32.881046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021793, 20.786180, 32.575764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.407396, 20.743675, 32.673248>,  <28.638758, 20.718172, 32.731739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.407396, 20.743675, 32.673248>,  <28.021793, 20.786180, 32.575764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407396, 20.743675, 32.673248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206352, -0.877052, 0.433819,
		0.167646, -0.468496, -0.867414,
		0.964010, -0.106264, 0.243709,
		28.696600, 20.711796, 32.746361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151991, 20.090845, 32.426971>,  <28.021793, 20.786180, 32.575764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151991, 20.090845, 32.426971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.436731, 20.221626, 32.675606>,  <28.607574, 20.300095, 32.824787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.436731, 20.221626, 32.675606>,  <28.151991, 20.090845, 32.426971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436731, 20.221626, 32.675606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005814, -0.882263, 0.470721,
		0.702308, -0.338697, -0.626137,
		0.711849, 0.326951, 0.621590,
		28.650286, 20.319712, 32.862083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546495, 19.555204, 32.458054>,  <28.151991, 20.090845, 32.426971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546495, 19.555204, 32.458054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.633312, 19.786896, 32.772350>,  <28.685402, 19.925911, 32.960926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.633312, 19.786896, 32.772350>,  <28.546495, 19.555204, 32.458054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633312, 19.786896, 32.772350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082560, -0.791151, 0.606023,
		0.972665, -0.196403, -0.123891,
		0.217041, 0.579229, 0.785739,
		28.698425, 19.960665, 33.008072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860483, 19.046276, 32.955322>,  <28.546495, 19.555204, 32.458054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860483, 19.046276, 32.955322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.820160, 19.364281, 33.194588>,  <28.795965, 19.555084, 33.338146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.820160, 19.364281, 33.194588>,  <28.860483, 19.046276, 32.955322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820160, 19.364281, 33.194588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054623, -0.604738, 0.794549,
		0.993405, 0.047424, 0.104388,
		-0.100808, 0.795011, 0.598160,
		28.789917, 19.602783, 33.374035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472200, 19.083492, 33.329468>,  <28.860483, 19.046276, 32.955322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472200, 19.083492, 33.329468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.188269, 19.271420, 33.539387>,  <29.017910, 19.384176, 33.665337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.188269, 19.271420, 33.539387>,  <29.472200, 19.083492, 33.329468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188269, 19.271420, 33.539387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255590, -0.522474, 0.813446,
		0.656367, 0.711540, 0.250786,
		-0.709828, 0.469820, 0.524797,
		28.975321, 19.412365, 33.696827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800713, 19.223560, 33.966263>,  <29.472200, 19.083492, 33.329468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800713, 19.223560, 33.966263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.403866, 19.211536, 34.014919>,  <29.165758, 19.204323, 34.044113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.403866, 19.211536, 34.014919>,  <29.800713, 19.223560, 33.966263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403866, 19.211536, 34.014919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111795, -0.650770, 0.751000,
		0.056584, 0.758680, 0.649002,
		-0.992119, -0.030060, 0.121640,
		29.106230, 19.202518, 34.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.668303, 32.368866, 25.098570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283342, 32.293293, 25.020500>,  <30.052366, 32.247952, 24.973660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283342, 32.293293, 25.020500>,  <30.668303, 32.368866, 25.098570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283342, 32.293293, 25.020500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013623, -0.684030, 0.729327,
		-0.271294, 0.704563, 0.655737,
		-0.962400, -0.188929, -0.195172,
		29.994623, 32.236614, 24.961948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439493, 32.214314, 25.777306>,  <30.668303, 32.368866, 25.098570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439493, 32.214314, 25.777306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159794, 32.062359, 25.535069>,  <29.991974, 31.971188, 25.389727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159794, 32.062359, 25.535069>,  <30.439493, 32.214314, 25.777306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159794, 32.062359, 25.535069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012054, -0.853270, 0.521330,
		-0.714777, 0.357239, 0.601227,
		-0.699248, -0.379882, -0.605591,
		29.950020, 31.948395, 25.353392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955391, 31.972269, 26.236080>,  <30.439493, 32.214314, 25.777306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955391, 31.972269, 26.236080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909760, 31.777122, 25.889908>,  <29.882381, 31.660034, 25.682203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909760, 31.777122, 25.889908>,  <29.955391, 31.972269, 26.236080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909760, 31.777122, 25.889908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119749, -0.871520, 0.475513,
		-0.986228, -0.049389, 0.157843,
		-0.114079, -0.487866, -0.865432,
		29.875536, 31.630762, 25.630278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530672, 31.416513, 26.492939>,  <29.955391, 31.972269, 26.236080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530672, 31.416513, 26.492939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707787, 31.308392, 26.150974>,  <29.814054, 31.243519, 25.945795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707787, 31.308392, 26.150974>,  <29.530672, 31.416513, 26.492939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707787, 31.308392, 26.150974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211804, -0.894960, 0.392666,
		-0.871253, -0.354941, -0.339022,
		0.442784, -0.270305, -0.854914,
		29.840622, 31.227301, 25.894501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339848, 30.685074, 26.359022>,  <29.530672, 31.416513, 26.492939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339848, 30.685074, 26.359022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645390, 30.725498, 26.104050>,  <29.828714, 30.749752, 25.951067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645390, 30.725498, 26.104050>,  <29.339848, 30.685074, 26.359022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645390, 30.725498, 26.104050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174729, -0.983161, 0.053510,
		-0.621288, -0.152251, -0.768649,
		0.763853, 0.101060, -0.637429,
		29.874546, 30.755816, 25.912821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250147, 30.215347, 25.781477>,  <29.339848, 30.685074, 26.359022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250147, 30.215347, 25.781477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643852, 30.285469, 25.790329>,  <29.880075, 30.327543, 25.795641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643852, 30.285469, 25.790329>,  <29.250147, 30.215347, 25.781477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643852, 30.285469, 25.790329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172002, -0.979248, 0.107190,
		0.040463, -0.101696, -0.993992,
		0.984265, 0.175306, 0.022132,
		29.939133, 30.338060, 25.796968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468037, 29.725891, 25.290379>,  <29.250147, 30.215347, 25.781477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468037, 29.725891, 25.290379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779810, 29.838051, 25.514473>,  <29.966873, 29.905346, 25.648930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779810, 29.838051, 25.514473>,  <29.468037, 29.725891, 25.290379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779810, 29.838051, 25.514473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312898, -0.948959, 0.039635,
		0.542753, 0.144404, -0.827386,
		0.779432, 0.280399, 0.560234,
		30.013639, 29.922171, 25.682543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146561, 29.434378, 24.999756>,  <29.468037, 29.725891, 25.290379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146561, 29.434378, 24.999756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229923, 29.520557, 25.381363>,  <30.279942, 29.572266, 25.610327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229923, 29.520557, 25.381363>,  <30.146561, 29.434378, 24.999756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229923, 29.520557, 25.381363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401045, -0.908484, 0.117559,
		0.892037, 0.358104, -0.275739,
		0.208406, 0.215451, 0.954017,
		30.292444, 29.585192, 25.667568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782984, 29.237389, 25.075895>,  <30.146561, 29.434378, 24.999756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782984, 29.237389, 25.075895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645565, 29.256699, 25.451054>,  <30.563114, 29.268286, 25.676147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645565, 29.256699, 25.451054>,  <30.782984, 29.237389, 25.075895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645565, 29.256699, 25.451054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235800, -0.962252, 0.135903,
		0.909051, 0.267844, 0.319194,
		-0.343546, 0.048277, 0.937894,
		30.542501, 29.271181, 25.732422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237970, 28.858946, 25.421759>,  <30.782984, 29.237389, 25.075895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237970, 28.858946, 25.421759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953262, 28.879101, 25.702000>,  <30.782438, 28.891193, 25.870144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953262, 28.879101, 25.702000>,  <31.237970, 28.858946, 25.421759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953262, 28.879101, 25.702000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282198, -0.892875, 0.350912,
		0.643232, 0.447477, 0.621303,
		-0.711771, 0.050387, 0.700603,
		30.739731, 28.894217, 25.912180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487654, 28.564701, 26.000839>,  <31.237970, 28.858946, 25.421759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487654, 28.564701, 26.000839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094517, 28.537842, 26.069553>,  <30.858635, 28.521727, 26.110783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094517, 28.537842, 26.069553>,  <31.487654, 28.564701, 26.000839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094517, 28.537842, 26.069553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140255, -0.876952, 0.459656,
		0.119783, 0.475864, 0.871324,
		-0.982843, -0.067149, 0.171786,
		30.799664, 28.517696, 26.121090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409533, 28.436354, 26.646675>,  <31.487654, 28.564701, 26.000839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409533, 28.436354, 26.646675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050892, 28.321487, 26.511833>,  <30.835707, 28.252567, 26.430927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050892, 28.321487, 26.511833>,  <31.409533, 28.436354, 26.646675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050892, 28.321487, 26.511833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001433, -0.763120, 0.646255,
		-0.442833, 0.578951, 0.684627,
		-0.896603, -0.287164, -0.337105,
		30.781912, 28.235338, 26.410702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686802, 28.412893, 27.388752>,  <31.409533, 28.436354, 26.646675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686802, 28.412893, 27.388752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019440, 28.305470, 27.583206>,  <32.219021, 28.241014, 27.699879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019440, 28.305470, 27.583206>,  <31.686802, 28.412893, 27.388752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019440, 28.305470, 27.583206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532184, 0.635679, -0.559189,
		-0.158850, 0.723731, 0.671551,
		0.831593, -0.268561, 0.486135,
		32.268917, 28.224901, 27.729046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959927, 29.107899, 27.587631>,  <31.686802, 28.412893, 27.388752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959927, 29.107899, 27.587631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277660, 28.871181, 27.642502>,  <32.468300, 28.729151, 27.675425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277660, 28.871181, 27.642502>,  <31.959927, 29.107899, 27.587631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277660, 28.871181, 27.642502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529127, 0.563073, -0.634802,
		0.298430, 0.576828, 0.760401,
		0.794332, -0.591793, 0.137177,
		32.515961, 28.693644, 27.683655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570454, 29.495689, 27.828205>,  <31.959927, 29.107899, 27.587631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570454, 29.495689, 27.828205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740311, 29.165840, 27.678715>,  <32.842224, 28.967930, 27.589020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740311, 29.165840, 27.678715>,  <32.570454, 29.495689, 27.828205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740311, 29.165840, 27.678715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621734, 0.565676, -0.541718,
		0.658121, -0.002320, 0.752908,
		0.424645, -0.824625, -0.373726,
		32.867702, 28.918453, 27.566597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320698, 29.506229, 28.015722>,  <32.570454, 29.495689, 27.828205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320698, 29.506229, 28.015722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286659, 29.276810, 27.689827>,  <33.266235, 29.139158, 27.494289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286659, 29.276810, 27.689827>,  <33.320698, 29.506229, 28.015722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286659, 29.276810, 27.689827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645392, 0.591249, -0.483627,
		0.759097, -0.566983, 0.319848,
		-0.085098, -0.573547, -0.814740,
		33.261131, 29.104746, 27.445404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009319, 29.538040, 27.776735>,  <33.320698, 29.506229, 28.015722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009319, 29.538040, 27.776735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770157, 29.421787, 27.477928>,  <33.626659, 29.352036, 27.298643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770157, 29.421787, 27.477928>,  <34.009319, 29.538040, 27.776735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770157, 29.421787, 27.477928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618977, 0.424723, -0.660665,
		0.509288, -0.857405, -0.074049,
		-0.597907, -0.290634, -0.747020,
		33.590786, 29.334597, 27.253822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436607, 29.095694, 27.402708>,  <34.009319, 29.538040, 27.776735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436607, 29.095694, 27.402708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152905, 29.228252, 27.153831>,  <33.982681, 29.307787, 27.004505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152905, 29.228252, 27.153831>,  <34.436607, 29.095694, 27.402708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152905, 29.228252, 27.153831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692424, 0.493119, -0.526672,
		0.132278, -0.804369, -0.579217,
		-0.709262, 0.331396, -0.622193,
		33.940125, 29.327671, 26.967173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857014, 29.021976, 26.801996>,  <34.436607, 29.095694, 27.402708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857014, 29.021976, 26.801996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530853, 29.245930, 26.743141>,  <34.335155, 29.380302, 26.707829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530853, 29.245930, 26.743141>,  <34.857014, 29.021976, 26.801996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530853, 29.245930, 26.743141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509877, 0.574240, -0.640526,
		-0.274127, -0.597309, -0.753708,
		-0.815402, 0.559884, -0.147139,
		34.286232, 29.413895, 26.698999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740627, 29.126839, 26.012672>,  <34.857014, 29.021976, 26.801996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740627, 29.126839, 26.012672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529770, 29.428257, 26.169788>,  <34.403255, 29.609108, 26.264057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529770, 29.428257, 26.169788>,  <34.740627, 29.126839, 26.012672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529770, 29.428257, 26.169788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503757, 0.649364, -0.569697,
		-0.684357, -0.102444, -0.721915,
		-0.527148, 0.753546, 0.392790,
		34.371624, 29.654320, 26.287626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675613, 29.628433, 25.480556>,  <34.740627, 29.126839, 26.012672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675613, 29.628433, 25.480556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610226, 29.843052, 25.811710>,  <34.570992, 29.971823, 26.010403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610226, 29.843052, 25.811710>,  <34.675613, 29.628433, 25.480556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610226, 29.843052, 25.811710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478355, 0.777035, -0.409138,
		-0.862817, 0.329141, -0.383684,
		-0.163471, 0.536548, 0.827885,
		34.561184, 30.004017, 26.060076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370865, 30.261496, 25.268808>,  <34.675613, 29.628433, 25.480556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370865, 30.261496, 25.268808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533585, 30.322536, 25.629082>,  <34.631218, 30.359161, 25.845245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533585, 30.322536, 25.629082>,  <34.370865, 30.261496, 25.268808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533585, 30.322536, 25.629082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413785, 0.848224, -0.330603,
		-0.814430, 0.507177, 0.281913,
		0.406799, 0.152602, 0.900681,
		34.655624, 30.368317, 25.899286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206398, 31.006165, 25.358749>,  <34.370865, 30.261496, 25.268808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206398, 31.006165, 25.358749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484276, 30.924091, 25.634518>,  <34.651001, 30.874847, 25.799978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484276, 30.924091, 25.634518>,  <34.206398, 31.006165, 25.358749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484276, 30.924091, 25.634518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403449, 0.904642, -0.137300,
		-0.595508, 0.373527, 0.711229,
		0.694693, -0.205182, 0.689421,
		34.692684, 30.862537, 25.841345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424088, 31.595968, 25.606876>,  <34.206398, 31.006165, 25.358749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424088, 31.595968, 25.606876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720860, 31.383743, 25.770851>,  <34.898922, 31.256409, 25.869236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720860, 31.383743, 25.770851>,  <34.424088, 31.595968, 25.606876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720860, 31.383743, 25.770851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606915, 0.791286, -0.074303,
		-0.284957, 0.303925, 0.909082,
		0.741926, -0.530562, 0.409938,
		34.943436, 31.224575, 25.893833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861488, 32.011684, 26.042311>,  <34.424088, 31.595968, 25.606876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861488, 32.011684, 26.042311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114094, 31.718094, 25.942333>,  <35.265656, 31.541939, 25.882347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114094, 31.718094, 25.942333>,  <34.861488, 32.011684, 26.042311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114094, 31.718094, 25.942333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667692, 0.678662, -0.305948,
		0.394186, 0.026324, 0.918653,
		0.631509, -0.733979, -0.249943,
		35.303547, 31.497900, 25.867350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525944, 32.054455, 26.488726>,  <34.861488, 32.011684, 26.042311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525944, 32.054455, 26.488726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615532, 31.875214, 26.142536>,  <35.669285, 31.767670, 25.934822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615532, 31.875214, 26.142536>,  <35.525944, 32.054455, 26.488726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615532, 31.875214, 26.142536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659085, 0.723817, -0.204198,
		0.717946, -0.524686, 0.457448,
		0.223968, -0.448100, -0.865474,
		35.682724, 31.740784, 25.882895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878330, 32.025761, 26.780224>,  <35.525944, 32.054455, 26.488726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878330, 32.025761, 26.780224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091228, 32.361267, 26.734299>,  <35.218967, 32.562572, 26.706743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091228, 32.361267, 26.734299>,  <34.878330, 32.025761, 26.780224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091228, 32.361267, 26.734299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829902, 0.490140, -0.266506,
		-0.167263, 0.237130, 0.956971,
		0.532246, 0.838768, -0.114812,
		35.250904, 32.612896, 26.699856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638069, 32.632084, 27.240047>,  <34.878330, 32.025761, 26.780224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638069, 32.632084, 27.240047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800320, 32.752880, 26.894962>,  <34.897671, 32.825359, 26.687912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800320, 32.752880, 26.894962>,  <34.638069, 32.632084, 27.240047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800320, 32.752880, 26.894962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887061, 0.357689, -0.291860,
		0.220442, 0.883661, 0.412975,
		0.405622, 0.301995, -0.862711,
		34.922005, 32.843479, 26.636148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137321, 33.015526, 27.624102>,  <34.638069, 32.632084, 27.240047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137321, 33.015526, 27.624102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808292, 33.236378, 27.678539>,  <33.610874, 33.368889, 27.711201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808292, 33.236378, 27.678539>,  <34.137321, 33.015526, 27.624102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808292, 33.236378, 27.678539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270767, -0.590742, 0.760072,
		0.500056, 0.588367, 0.635428,
		-0.822575, 0.552131, 0.136093,
		33.561520, 33.402016, 27.719368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185421, 33.324066, 28.351662>,  <34.137321, 33.015526, 27.624102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185421, 33.324066, 28.351662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819912, 33.253452, 28.205315>,  <33.600609, 33.211082, 28.117506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819912, 33.253452, 28.205315>,  <34.185421, 33.324066, 28.351662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819912, 33.253452, 28.205315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170042, -0.651720, 0.739153,
		-0.368933, 0.737628, 0.565502,
		-0.913769, -0.176539, -0.365869,
		33.545780, 33.200489, 28.095554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704540, 33.589714, 28.763197>,  <34.185421, 33.324066, 28.351662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704540, 33.589714, 28.763197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488903, 33.309952, 28.575493>,  <33.359520, 33.142094, 28.462870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488903, 33.309952, 28.575493>,  <33.704540, 33.589714, 28.763197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488903, 33.309952, 28.575493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305802, -0.356593, 0.882795,
		-0.784767, 0.619413, -0.021642,
		-0.539098, -0.699406, -0.469260,
		33.327175, 33.100128, 28.434715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969036, 33.627342, 28.936707>,  <33.704540, 33.589714, 28.763197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969036, 33.627342, 28.936707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001083, 33.252071, 28.802006>,  <33.020309, 33.026909, 28.721186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001083, 33.252071, 28.802006>,  <32.969036, 33.627342, 28.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001083, 33.252071, 28.802006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612893, -0.312794, 0.725619,
		-0.786094, 0.148260, -0.600062,
		0.080115, -0.938179, -0.336753,
		33.025120, 32.970619, 28.700979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284485, 33.371758, 29.084385>,  <32.969036, 33.627342, 28.936707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284485, 33.371758, 29.084385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519409, 33.053005, 29.027744>,  <32.660362, 32.861755, 28.993761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519409, 33.053005, 29.027744>,  <32.284485, 33.371758, 29.084385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519409, 33.053005, 29.027744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514237, -0.502500, 0.695021,
		-0.625003, -0.335376, -0.704907,
		0.587309, -0.796880, -0.141601,
		32.695602, 32.813942, 28.985264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858982, 32.766685, 28.973721>,  <32.284485, 33.371758, 29.084385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858982, 32.766685, 28.973721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208767, 32.619743, 29.100445>,  <32.418636, 32.531578, 29.176479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208767, 32.619743, 29.100445>,  <31.858982, 32.766685, 28.973721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208767, 32.619743, 29.100445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480638, -0.567778, 0.668292,
		-0.065623, -0.736666, -0.673065,
		0.874460, -0.367356, 0.316811,
		32.471104, 32.509537, 29.195488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674208, 32.161327, 29.194546>,  <31.858982, 32.766685, 28.973721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674208, 32.161327, 29.194546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037891, 32.182537, 29.359726>,  <32.256100, 32.195263, 29.458834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037891, 32.182537, 29.359726>,  <31.674208, 32.161327, 29.194546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037891, 32.182537, 29.359726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298388, -0.608720, 0.735136,
		0.290354, -0.791611, -0.537630,
		0.909209, 0.053027, 0.412951,
		32.310654, 32.198444, 29.483612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946470, 31.403749, 29.271908>,  <31.674208, 32.161327, 29.194546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946470, 31.403749, 29.271908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146324, 31.630558, 29.533855>,  <32.266235, 31.766644, 29.691023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146324, 31.630558, 29.533855>,  <31.946470, 31.403749, 29.271908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146324, 31.630558, 29.533855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241340, -0.634939, 0.733899,
		0.831936, -0.524728, -0.180394,
		0.499636, 0.567021, 0.654867,
		32.296215, 31.800665, 29.730316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401020, 30.979195, 29.675133>,  <31.946470, 31.403749, 29.271908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401020, 30.979195, 29.675133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367458, 31.310902, 29.896141>,  <32.347321, 31.509926, 30.028746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367458, 31.310902, 29.896141>,  <32.401020, 30.979195, 29.675133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367458, 31.310902, 29.896141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311785, -0.548482, 0.775860,
		0.946441, -0.107168, 0.304574,
		-0.083906, 0.829267, 0.552518,
		32.342285, 31.559681, 30.061897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732368, 30.798689, 30.241020>,  <32.401020, 30.979195, 29.675133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732368, 30.798689, 30.241020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533451, 31.123581, 30.362995>,  <32.414101, 31.318516, 30.436180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533451, 31.123581, 30.362995>,  <32.732368, 30.798689, 30.241020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533451, 31.123581, 30.362995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075542, -0.390679, 0.917422,
		0.864290, 0.433189, 0.255638,
		-0.497290, 0.812230, 0.304935,
		32.384266, 31.367250, 30.454475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029629, 30.992039, 30.804766>,  <32.732368, 30.798689, 30.241020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029629, 30.992039, 30.804766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664543, 31.154446, 30.823078>,  <32.445492, 31.251890, 30.834064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664543, 31.154446, 30.823078>,  <33.029629, 30.992039, 30.804766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664543, 31.154446, 30.823078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052301, -0.227215, 0.972439,
		0.405229, 0.885168, 0.228618,
		-0.912718, 0.406018, 0.045779,
		32.390728, 31.276251, 30.836811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006290, 31.457655, 31.432295>,  <33.029629, 30.992039, 30.804766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006290, 31.457655, 31.432295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632736, 31.366615, 31.321983>,  <32.408604, 31.311991, 31.255796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632736, 31.366615, 31.321983>,  <33.006290, 31.457655, 31.432295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632736, 31.366615, 31.321983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217380, -0.250994, 0.943265,
		-0.283907, 0.940851, 0.184924,
		-0.933886, -0.227600, -0.275781,
		32.352570, 31.298336, 31.239248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559441, 31.768644, 31.906279>,  <33.006290, 31.457655, 31.432295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559441, 31.768644, 31.906279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305870, 31.497208, 31.757877>,  <32.153728, 31.334345, 31.668837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305870, 31.497208, 31.757877>,  <32.559441, 31.768644, 31.906279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305870, 31.497208, 31.757877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167143, -0.348165, 0.922412,
		-0.755113, 0.646756, 0.107290,
		-0.633930, -0.678592, -0.371005,
		32.115692, 31.293631, 31.646576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902899, 31.704800, 32.348988>,  <32.559441, 31.768644, 31.906279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902899, 31.704800, 32.348988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946619, 31.363136, 32.145630>,  <31.972851, 31.158138, 32.023617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946619, 31.363136, 32.145630>,  <31.902899, 31.704800, 32.348988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946619, 31.363136, 32.145630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024771, -0.513641, 0.857647,
		-0.993700, -0.081147, -0.077299,
		0.109299, -0.854159, -0.508395,
		31.979408, 31.106888, 31.993111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351843, 31.194960, 32.611446>,  <31.902899, 31.704800, 32.348988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351843, 31.194960, 32.611446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614849, 30.975365, 32.405037>,  <31.772654, 30.843607, 32.281189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614849, 30.975365, 32.405037>,  <31.351843, 31.194960, 32.611446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614849, 30.975365, 32.405037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144602, -0.764111, 0.628669,
		-0.739437, -0.338738, -0.581798,
		0.657513, -0.548990, -0.516030,
		31.812103, 30.810667, 32.250229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998438, 30.663261, 32.600182>,  <31.351843, 31.194960, 32.611446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998438, 30.663261, 32.600182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387741, 30.590271, 32.544365>,  <31.621323, 30.546476, 32.510876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387741, 30.590271, 32.544365>,  <30.998438, 30.663261, 32.600182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387741, 30.590271, 32.544365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056232, -0.778225, 0.625463,
		-0.222724, -0.600891, -0.767675,
		0.973259, -0.182474, -0.139540,
		31.679718, 30.535528, 32.502502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955332, 30.023582, 32.187363>,  <30.998438, 30.663261, 32.600182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955332, 30.023582, 32.187363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322952, 30.009632, 32.344402>,  <31.543524, 30.001263, 32.438625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322952, 30.009632, 32.344402>,  <30.955332, 30.023582, 32.187363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322952, 30.009632, 32.344402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219452, -0.872679, 0.436203,
		0.327398, -0.487048, -0.809688,
		0.919049, -0.034876, 0.392597,
		31.598667, 29.999170, 32.462181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212580, 29.365295, 32.093002>,  <30.955332, 30.023582, 32.187363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212580, 29.365295, 32.093002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456875, 29.477356, 32.389252>,  <31.603451, 29.544592, 32.567001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456875, 29.477356, 32.389252>,  <31.212580, 29.365295, 32.093002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456875, 29.477356, 32.389252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112184, -0.895273, 0.431163,
		0.783847, -0.346412, -0.515346,
		0.610735, 0.280152, 0.740619,
		31.640095, 29.561401, 32.611439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595001, 28.827261, 32.291138>,  <31.212580, 29.365295, 32.093002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595001, 28.827261, 32.291138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644802, 29.061581, 32.611473>,  <31.674683, 29.202173, 32.803673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644802, 29.061581, 32.611473>,  <31.595001, 28.827261, 32.291138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644802, 29.061581, 32.611473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166386, -0.783359, 0.598885,
		0.978169, -0.207811, -0.000062,
		0.124503, 0.585801, 0.800835,
		31.682154, 29.237320, 32.851723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082989, 28.482342, 32.778496>,  <31.595001, 28.827261, 32.291138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082989, 28.482342, 32.778496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864065, 28.734077, 32.999184>,  <31.732712, 28.885118, 33.131596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864065, 28.734077, 32.999184>,  <32.082989, 28.482342, 32.778496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864065, 28.734077, 32.999184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193836, -0.736604, 0.647952,
		0.814176, 0.247687, 0.525137,
		-0.547307, 0.629337, 0.551715,
		31.699873, 28.922878, 33.164700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079666, 28.141565, 33.324284>,  <32.082989, 28.482342, 32.778496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079666, 28.141565, 33.324284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787352, 28.403831, 33.400238>,  <31.611963, 28.561192, 33.445808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787352, 28.403831, 33.400238>,  <32.079666, 28.141565, 33.324284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787352, 28.403831, 33.400238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430991, -0.658912, 0.616508,
		0.529338, 0.368698, 0.764109,
		-0.730786, 0.655666, 0.189882,
		31.568115, 28.600531, 33.457203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023418, 28.170313, 34.051441>,  <32.079666, 28.141565, 33.324284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023418, 28.170313, 34.051441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668232, 28.281738, 33.905064>,  <31.455120, 28.348593, 33.817238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668232, 28.281738, 33.905064>,  <32.023418, 28.170313, 34.051441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668232, 28.281738, 33.905064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459041, -0.585494, 0.668190,
		-0.028125, 0.761315, 0.647772,
		-0.887969, 0.278561, -0.365942,
		31.401840, 28.365307, 33.795280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667191, 28.400265, 34.665867>,  <32.023418, 28.170313, 34.051441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667191, 28.400265, 34.665867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387585, 28.305244, 34.396069>,  <31.219820, 28.248232, 34.234188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387585, 28.305244, 34.396069>,  <31.667191, 28.400265, 34.665867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387585, 28.305244, 34.396069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559793, -0.405148, 0.722833,
		-0.444980, 0.882850, 0.150226,
		-0.699017, -0.237551, -0.674496,
		31.177879, 28.233978, 34.193718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974895, 28.611908, 34.925556>,  <31.667191, 28.400265, 34.665867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974895, 28.611908, 34.925556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885820, 28.364742, 34.623936>,  <30.832375, 28.216442, 34.442963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885820, 28.364742, 34.623936>,  <30.974895, 28.611908, 34.925556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885820, 28.364742, 34.623936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635048, -0.494911, 0.593108,
		-0.739678, 0.610936, -0.282195,
		-0.222689, -0.617916, -0.754049,
		30.819014, 28.179367, 34.397720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143305, 28.474913, 35.030903>,  <30.974895, 28.611908, 34.925556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143305, 28.474913, 35.030903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255688, 28.172218, 34.794796>,  <30.323118, 27.990602, 34.653133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255688, 28.172218, 34.794796>,  <30.143305, 28.474913, 35.030903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255688, 28.172218, 34.794796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532600, -0.634583, 0.560037,
		-0.798373, 0.157029, -0.581328,
		0.280959, -0.756734, -0.590267,
		30.339975, 27.945198, 34.617718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571068, 28.043791, 35.016350>,  <30.143305, 28.474913, 35.030903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571068, 28.043791, 35.016350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849192, 27.800663, 34.862938>,  <30.016066, 27.654785, 34.770889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849192, 27.800663, 34.862938>,  <29.571068, 28.043791, 35.016350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849192, 27.800663, 34.862938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354848, -0.754391, 0.552248,
		-0.625000, -0.247890, -0.740220,
		0.695312, -0.607820, -0.383531,
		30.057785, 27.618317, 34.747879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066992, 28.153296, 34.479263>,  <29.571068, 28.043791, 35.016350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066992, 28.153296, 34.479263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677313, 28.181530, 34.393513>,  <28.443506, 28.198471, 34.342064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677313, 28.181530, 34.393513>,  <29.066992, 28.153296, 34.479263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677313, 28.181530, 34.393513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200905, 0.704028, -0.681162,
		0.102846, -0.706656, -0.700043,
		-0.974197, 0.070587, -0.214377,
		28.385054, 28.202705, 34.329201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899603, 28.210241, 33.678856>,  <29.066992, 28.153296, 34.479263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899603, 28.210241, 33.678856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571840, 28.349209, 33.861229>,  <28.375183, 28.432589, 33.970654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571840, 28.349209, 33.861229>,  <28.899603, 28.210241, 33.678856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571840, 28.349209, 33.861229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065357, 0.733584, -0.676448,
		-0.569475, -0.584085, -0.578397,
		-0.819407, 0.347418, 0.455932,
		28.326017, 28.453434, 33.998009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225430, 28.161680, 33.212814>,  <28.899603, 28.210241, 33.678856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225430, 28.161680, 33.212814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236183, 28.450516, 33.489326>,  <28.242636, 28.623817, 33.655235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236183, 28.450516, 33.489326>,  <28.225430, 28.161680, 33.212814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236183, 28.450516, 33.489326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079421, 0.690885, -0.718589,
		-0.996479, -0.035585, 0.075922,
		0.026882, 0.722088, 0.691279,
		28.244247, 28.667143, 33.696709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734135, 28.579914, 33.011162>,  <28.225430, 28.161680, 33.212814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734135, 28.579914, 33.011162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877831, 28.836765, 33.282047>,  <27.964048, 28.990875, 33.444580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877831, 28.836765, 33.282047>,  <27.734135, 28.579914, 33.011162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877831, 28.836765, 33.282047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075554, 0.703263, -0.706904,
		-0.930182, 0.305115, 0.204125,
		0.359241, 0.642127, 0.677215,
		27.985603, 29.029404, 33.485210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378838, 29.351597, 32.922176>,  <27.734135, 28.579914, 33.011162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378838, 29.351597, 32.922176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742229, 29.400108, 33.082153>,  <27.960264, 29.429216, 33.178139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742229, 29.400108, 33.082153>,  <27.378838, 29.351597, 32.922176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742229, 29.400108, 33.082153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164377, 0.776149, -0.608747,
		-0.384246, 0.618776, 0.685180,
		0.908480, 0.121281, 0.399945,
		28.014772, 29.436493, 33.202137>
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
