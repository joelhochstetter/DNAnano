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
	<23.826986, 34.969246, 35.314480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213863, 34.867786, 35.308765>,  <24.445990, 34.806911, 35.305336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213863, 34.867786, 35.308765>,  <23.826986, 34.969246, 35.314480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213863, 34.867786, 35.308765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234807, 0.871040, 0.431457,
		-0.096993, -0.420656, 0.902021,
		0.967191, -0.253649, -0.014288,
		24.504021, 34.791691, 35.304478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.112806, 35.091766, 36.038982>,  <23.826986, 34.969246, 35.314480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.112806, 35.091766, 36.038982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388437, 35.134357, 35.752254>,  <24.553816, 35.159912, 35.580215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388437, 35.134357, 35.752254>,  <24.112806, 35.091766, 36.038982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.388437, 35.134357, 35.752254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216818, 0.913548, 0.344122,
		0.691492, -0.392547, 0.606420,
		0.689078, 0.106475, -0.716823,
		24.595161, 35.166302, 35.537209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278233, 34.850159, 36.721481>,  <24.112806, 35.091766, 36.038982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278233, 34.850159, 36.721481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659309, 34.971474, 36.713547>,  <24.887955, 35.044262, 36.708786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659309, 34.971474, 36.713547>,  <24.278233, 34.850159, 36.721481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659309, 34.971474, 36.713547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004994, 0.080881, 0.996711,
		0.303899, -0.949459, 0.078569,
		0.952691, 0.303292, -0.019838,
		24.945116, 35.062462, 36.707596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630938, 34.508038, 37.239441>,  <24.278233, 34.850159, 36.721481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630938, 34.508038, 37.239441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856524, 34.828678, 37.160065>,  <24.991875, 35.021061, 37.112438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856524, 34.828678, 37.160065>,  <24.630938, 34.508038, 37.239441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856524, 34.828678, 37.160065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195499, 0.103870, 0.975188,
		0.802323, -0.588769, -0.098133,
		0.563967, 0.801600, -0.198441,
		25.025713, 35.069157, 37.100533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301306, 34.432072, 37.580971>,  <24.630938, 34.508038, 37.239441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301306, 34.432072, 37.580971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235708, 34.826283, 37.563786>,  <25.196350, 35.062809, 37.553474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235708, 34.826283, 37.563786>,  <25.301306, 34.432072, 37.580971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235708, 34.826283, 37.563786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185927, 0.073655, 0.979799,
		0.968782, 0.152690, -0.195315,
		-0.163992, 0.985525, -0.042967,
		25.186510, 35.121941, 37.550896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669971, 34.716503, 38.081535>,  <25.301306, 34.432072, 37.580971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669971, 34.716503, 38.081535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424894, 35.023785, 38.007275>,  <25.277849, 35.208153, 37.962719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424894, 35.023785, 38.007275>,  <25.669971, 34.716503, 38.081535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424894, 35.023785, 38.007275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157343, 0.348773, 0.923905,
		0.774502, 0.536856, -0.334562,
		-0.612691, 0.768207, -0.185655,
		25.241087, 35.254246, 37.951580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995592, 35.305588, 38.039673>,  <25.669971, 34.716503, 38.081535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995592, 35.305588, 38.039673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627693, 35.397511, 38.166954>,  <25.406954, 35.452663, 38.243320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627693, 35.397511, 38.166954>,  <25.995592, 35.305588, 38.039673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627693, 35.397511, 38.166954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375735, 0.281038, 0.883086,
		0.113511, 0.931776, -0.344831,
		-0.919749, 0.229805, 0.318200,
		25.351768, 35.466454, 38.262413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000593, 35.992706, 38.475067>,  <25.995592, 35.305588, 38.039673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000593, 35.992706, 38.475067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612938, 35.972084, 38.378639>,  <25.380344, 35.959709, 38.320782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612938, 35.972084, 38.378639>,  <26.000593, 35.992706, 38.475067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612938, 35.972084, 38.378639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246469, 0.223192, 0.943100,
		0.005180, 0.973410, -0.229011,
		-0.969137, -0.051559, -0.241072,
		25.322197, 35.956615, 38.306316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723770, 36.658405, 38.690948>,  <26.000593, 35.992706, 38.475067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723770, 36.658405, 38.690948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433722, 36.384396, 38.662815>,  <25.259693, 36.219990, 38.645935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433722, 36.384396, 38.662815>,  <25.723770, 36.658405, 38.690948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433722, 36.384396, 38.662815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359548, 0.289518, 0.887076,
		-0.587303, 0.668525, -0.456234,
		-0.725121, -0.685021, -0.070332,
		25.216185, 36.178890, 38.641716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053705, 37.001778, 38.626942>,  <25.723770, 36.658405, 38.690948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053705, 37.001778, 38.626942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989618, 36.639790, 38.784603>,  <24.951166, 36.422596, 38.879200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989618, 36.639790, 38.784603>,  <25.053705, 37.001778, 38.626942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.989618, 36.639790, 38.784603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277701, 0.424507, 0.861786,
		-0.947213, 0.028618, -0.319325,
		-0.160219, -0.904972, 0.394152,
		24.941553, 36.368298, 38.902847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403112, 37.066772, 39.024734>,  <25.053705, 37.001778, 38.626942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403112, 37.066772, 39.024734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.624081, 36.761280, 39.158333>,  <24.756660, 36.577984, 39.238491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.624081, 36.761280, 39.158333>,  <24.403112, 37.066772, 39.024734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.624081, 36.761280, 39.158333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018359, 0.389439, 0.920869,
		-0.833364, -0.514838, 0.201112,
		0.552419, -0.763727, 0.333996,
		24.789806, 36.532162, 39.258533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.156546, 36.795391, 39.635807>,  <24.403112, 37.066772, 39.024734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.156546, 36.795391, 39.635807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538881, 36.678886, 39.651505>,  <24.768282, 36.608982, 39.660923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538881, 36.678886, 39.651505>,  <24.156546, 36.795391, 39.635807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538881, 36.678886, 39.651505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092623, 0.425255, 0.900322,
		-0.278916, -0.856927, 0.433453,
		0.955838, -0.291262, 0.039239,
		24.825632, 36.591507, 39.663277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.226448, 36.304638, 40.145962>,  <24.156546, 36.795391, 39.635807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.226448, 36.304638, 40.145962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528788, 36.559818, 40.087017>,  <24.710192, 36.712925, 40.051651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528788, 36.559818, 40.087017>,  <24.226448, 36.304638, 40.145962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.528788, 36.559818, 40.087017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046367, 0.172344, 0.983945,
		0.653104, -0.750545, 0.100686,
		0.755847, 0.637950, -0.147359,
		24.755543, 36.751202, 40.042809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.713215, 36.157143, 40.652569>,  <24.226448, 36.304638, 40.145962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.713215, 36.157143, 40.652569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793278, 36.519356, 40.502934>,  <24.841316, 36.736683, 40.413151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793278, 36.519356, 40.502934>,  <24.713215, 36.157143, 40.652569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793278, 36.519356, 40.502934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263932, 0.317866, 0.910660,
		0.943545, -0.281009, -0.175377,
		0.200157, 0.905536, -0.374088,
		24.853325, 36.791016, 40.390709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482029, 36.469147, 40.609467>,  <24.713215, 36.157143, 40.652569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482029, 36.469147, 40.609467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232723, 36.775990, 40.670254>,  <25.083139, 36.960094, 40.706726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232723, 36.775990, 40.670254>,  <25.482029, 36.469147, 40.609467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232723, 36.775990, 40.670254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398788, 0.144613, 0.905569,
		0.672691, 0.625009, -0.396044,
		-0.623262, 0.767105, 0.151966,
		25.045744, 37.006123, 40.715843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496906, 36.099937, 40.063065>,  <25.482029, 36.469147, 40.609467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496906, 36.099937, 40.063065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122562, 36.074245, 39.924477>,  <24.897957, 36.058830, 39.841324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122562, 36.074245, 39.924477>,  <25.496906, 36.099937, 40.063065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122562, 36.074245, 39.924477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352203, -0.139492, -0.925470,
		0.011117, -0.988138, 0.153169,
		-0.935858, -0.064235, -0.346474,
		24.841805, 36.054974, 39.820534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226717, 35.431522, 39.828842>,  <25.496906, 36.099937, 40.063065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226717, 35.431522, 39.828842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092335, 35.758148, 39.641075>,  <25.011705, 35.954124, 39.528416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092335, 35.758148, 39.641075>,  <25.226717, 35.431522, 39.828842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092335, 35.758148, 39.641075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082823, -0.470839, -0.878323,
		-0.938230, -0.333955, 0.090550,
		-0.335955, 0.816569, -0.469414,
		24.991549, 36.003120, 39.500252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779285, 35.186661, 39.376766>,  <25.226717, 35.431522, 39.828842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779285, 35.186661, 39.376766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853752, 35.547413, 39.220844>,  <24.898432, 35.763866, 39.127293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853752, 35.547413, 39.220844>,  <24.779285, 35.186661, 39.376766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853752, 35.547413, 39.220844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006134, -0.395667, -0.918374,
		-0.982499, 0.173360, -0.068127,
		0.186165, 0.901884, -0.389806,
		24.909601, 35.817978, 39.103901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.310051, 35.271626, 38.792747>,  <24.779285, 35.186661, 39.376766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.310051, 35.271626, 38.792747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601152, 35.535004, 38.715981>,  <24.775812, 35.693031, 38.669922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601152, 35.535004, 38.715981>,  <24.310051, 35.271626, 38.792747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.601152, 35.535004, 38.715981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030100, -0.310221, -0.950188,
		-0.685180, 0.685724, -0.245583,
		0.727752, 0.658441, -0.191917,
		24.819477, 35.732536, 38.658405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.074989, 35.538101, 38.080536>,  <24.310051, 35.271626, 38.792747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.074989, 35.538101, 38.080536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452219, 35.653000, 38.147587>,  <24.678556, 35.721939, 38.187817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452219, 35.653000, 38.147587>,  <24.074989, 35.538101, 38.080536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452219, 35.653000, 38.147587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209126, -0.120249, -0.970467,
		-0.258603, 0.950280, -0.173474,
		0.943075, 0.287244, 0.167631,
		24.735142, 35.739174, 38.197876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.364698, 36.111740, 37.606339>,  <24.074989, 35.538101, 38.080536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.364698, 36.111740, 37.606339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656773, 35.868801, 37.731533>,  <24.832016, 35.723038, 37.806652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656773, 35.868801, 37.731533>,  <24.364698, 36.111740, 37.606339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656773, 35.868801, 37.731533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222190, -0.222116, -0.949366,
		0.646114, 0.762754, -0.027239,
		0.730183, -0.607347, 0.312989,
		24.875828, 35.686596, 37.825428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.117510, 36.574791, 38.149258>,  <24.364698, 36.111740, 37.606339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.117510, 36.574791, 38.149258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156736, 36.577408, 37.751194>,  <24.180273, 36.578976, 37.512356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156736, 36.577408, 37.751194>,  <24.117510, 36.574791, 38.149258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156736, 36.577408, 37.751194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723958, 0.685662, 0.075849,
		0.682838, -0.727891, 0.062507,
		0.098068, 0.006540, -0.995158,
		24.186157, 36.579369, 37.452648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842815, 36.550549, 37.981293>,  <24.117510, 36.574791, 38.149258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842815, 36.550549, 37.981293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617334, 36.705929, 37.689716>,  <24.482046, 36.799156, 37.514771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617334, 36.705929, 37.689716>,  <24.842815, 36.550549, 37.981293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617334, 36.705929, 37.689716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598404, 0.800374, -0.036241,
		0.569344, -0.456628, -0.683621,
		-0.563702, 0.388448, -0.728936,
		24.448223, 36.822464, 37.471035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362198, 36.891426, 37.630985>,  <24.842815, 36.550549, 37.981293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362198, 36.891426, 37.630985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021564, 37.047184, 37.490597>,  <24.817184, 37.140640, 37.406364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021564, 37.047184, 37.490597>,  <25.362198, 36.891426, 37.630985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021564, 37.047184, 37.490597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403418, 0.914324, 0.035584,
		0.334759, -0.111286, -0.935709,
		-0.851581, 0.389394, -0.350973,
		24.766090, 37.164001, 37.385303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087395, 36.345940, 37.321140>,  <25.362198, 36.891426, 37.630985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087395, 36.345940, 37.321140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064302, 35.952251, 37.388054>,  <25.050447, 35.716038, 37.428200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064302, 35.952251, 37.388054>,  <25.087395, 36.345940, 37.321140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064302, 35.952251, 37.388054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306166, -0.176942, -0.935390,
		0.950226, -0.002785, 0.311549,
		-0.057731, -0.984217, 0.167282,
		25.046984, 35.656986, 37.438240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660435, 36.122261, 36.899471>,  <25.087395, 36.345940, 37.321140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660435, 36.122261, 36.899471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496561, 35.762161, 36.958405>,  <25.398237, 35.546101, 36.993763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496561, 35.762161, 36.958405>,  <25.660435, 36.122261, 36.899471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496561, 35.762161, 36.958405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144454, -0.223492, -0.963942,
		0.900718, -0.373627, 0.221606,
		-0.409682, -0.900252, 0.147332,
		25.373657, 35.492085, 37.002605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193733, 35.502720, 36.681374>,  <25.660435, 36.122261, 36.899471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193733, 35.502720, 36.681374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815542, 35.372444, 36.681286>,  <25.588629, 35.294277, 36.681232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815542, 35.372444, 36.681286>,  <26.193733, 35.502720, 36.681374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815542, 35.372444, 36.681286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124880, -0.361889, -0.923819,
		0.300799, -0.873477, 0.382830,
		-0.945476, -0.325691, -0.000224,
		25.531898, 35.274738, 36.681217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912416, 35.506744, 36.926228>,  <26.193733, 35.502720, 36.681374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912416, 35.506744, 36.926228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138073, 35.207592, 36.786278>,  <27.273468, 35.028099, 36.702309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138073, 35.207592, 36.786278>,  <26.912416, 35.506744, 36.926228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138073, 35.207592, 36.786278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711081, 0.655437, -0.254493,
		0.419650, -0.105217, 0.901567,
		0.564143, -0.747885, -0.349872,
		27.307316, 34.983227, 36.681316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664932, 35.488220, 37.301865>,  <26.912416, 35.506744, 36.926228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664932, 35.488220, 37.301865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639902, 35.354160, 36.925831>,  <27.624884, 35.273724, 36.700211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639902, 35.354160, 36.925831>,  <27.664932, 35.488220, 37.301865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639902, 35.354160, 36.925831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574960, 0.757816, -0.308440,
		0.815785, -0.559813, 0.145274,
		-0.062577, -0.335148, -0.940085,
		27.621128, 35.253616, 36.643806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293709, 35.432537, 36.981556>,  <27.664932, 35.488220, 37.301865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293709, 35.432537, 36.981556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059599, 35.548687, 36.678734>,  <27.919132, 35.618378, 36.497040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059599, 35.548687, 36.678734>,  <28.293709, 35.432537, 36.981556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059599, 35.548687, 36.678734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551050, 0.827366, -0.108672,
		0.594809, -0.480780, -0.644246,
		-0.585274, 0.290373, -0.757058,
		27.884016, 35.635799, 36.451614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676577, 35.660423, 36.429470>,  <28.293709, 35.432537, 36.981556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676577, 35.660423, 36.429470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322365, 35.843037, 36.395027>,  <28.109838, 35.952606, 36.374363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322365, 35.843037, 36.395027>,  <28.676577, 35.660423, 36.429470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322365, 35.843037, 36.395027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464125, 0.861080, -0.207677,
		-0.020671, -0.223866, -0.974401,
		-0.885528, 0.456536, -0.086103,
		28.056705, 35.979996, 36.369198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682074, 35.981308, 35.842777>,  <28.676577, 35.660423, 36.429470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682074, 35.981308, 35.842777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452564, 36.166191, 36.113228>,  <28.314859, 36.277122, 36.275497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452564, 36.166191, 36.113228>,  <28.682074, 35.981308, 35.842777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452564, 36.166191, 36.113228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536138, 0.836045, -0.116552,
		-0.619145, 0.295623, -0.727507,
		-0.573773, 0.462207, 0.676128,
		28.280432, 36.304852, 36.316067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477266, 36.496326, 35.491890>,  <28.682074, 35.981308, 35.842777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477266, 36.496326, 35.491890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417278, 36.611481, 35.870232>,  <28.381287, 36.680573, 36.097237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417278, 36.611481, 35.870232>,  <28.477266, 36.496326, 35.491890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417278, 36.611481, 35.870232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490972, 0.852061, -0.181492,
		-0.858170, 0.437168, -0.269125,
		-0.149968, 0.287884, 0.945850,
		28.372288, 36.697845, 36.153988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351725, 37.138908, 35.375435>,  <28.477266, 36.496326, 35.491890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351725, 37.138908, 35.375435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476484, 37.108574, 35.754269>,  <28.551340, 37.090374, 35.981567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476484, 37.108574, 35.754269>,  <28.351725, 37.138908, 35.375435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476484, 37.108574, 35.754269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525471, 0.844252, -0.105451,
		-0.791580, 0.530555, 0.303170,
		0.311900, -0.075834, 0.947084,
		28.570055, 37.085823, 36.038395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158497, 37.670918, 35.857864>,  <28.351725, 37.138908, 35.375435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158497, 37.670918, 35.857864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512310, 37.512722, 35.956810>,  <28.724598, 37.417805, 36.016178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512310, 37.512722, 35.956810>,  <28.158497, 37.670918, 35.857864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512310, 37.512722, 35.956810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425752, 0.901148, -0.081648,
		-0.190624, 0.177537, 0.965476,
		0.884532, -0.395490, 0.247367,
		28.777670, 37.394073, 36.031021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223307, 38.249756, 36.292114>,  <28.158497, 37.670918, 35.857864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223307, 38.249756, 36.292114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418287, 37.956501, 36.481812>,  <28.535276, 37.780548, 36.595631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418287, 37.956501, 36.481812>,  <28.223307, 38.249756, 36.292114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418287, 37.956501, 36.481812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800371, 0.592261, 0.092916,
		-0.348994, 0.334276, 0.875478,
		0.487452, -0.733135, 0.474240,
		28.564524, 37.736561, 36.624084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432659, 38.505257, 37.017952>,  <28.223307, 38.249756, 36.292114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432659, 38.505257, 37.017952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676100, 38.236172, 36.849632>,  <28.822165, 38.074722, 36.748642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676100, 38.236172, 36.849632>,  <28.432659, 38.505257, 37.017952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676100, 38.236172, 36.849632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786621, 0.581079, 0.208748,
		0.104089, -0.458050, 0.882811,
		0.608600, -0.672709, -0.420796,
		28.858679, 38.034359, 36.723392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847193, 38.306145, 37.519794>,  <28.432659, 38.505257, 37.017952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847193, 38.306145, 37.519794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008877, 38.265961, 37.156143>,  <29.105886, 38.241852, 36.937950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008877, 38.265961, 37.156143>,  <28.847193, 38.306145, 37.519794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008877, 38.265961, 37.156143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646936, 0.734045, 0.206524,
		0.646598, -0.671630, 0.361698,
		0.404210, -0.100458, -0.909133,
		29.130140, 38.235825, 36.883404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549345, 38.321392, 37.692165>,  <28.847193, 38.306145, 37.519794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549345, 38.321392, 37.692165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463469, 38.417267, 37.313438>,  <29.411943, 38.474792, 37.086205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463469, 38.417267, 37.313438>,  <29.549345, 38.321392, 37.692165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463469, 38.417267, 37.313438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496299, 0.861705, 0.105607,
		0.841187, -0.447229, -0.303958,
		-0.214692, 0.239689, -0.946814,
		29.399061, 38.489174, 37.029396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212212, 38.530975, 37.366901>,  <29.549345, 38.321392, 37.692165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212212, 38.530975, 37.366901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901278, 38.679543, 37.163807>,  <29.714716, 38.768681, 37.041950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901278, 38.679543, 37.163807>,  <30.212212, 38.530975, 37.366901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901278, 38.679543, 37.163807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501477, 0.853161, -0.143659,
		0.379826, -0.366291, -0.849449,
		-0.777337, 0.371413, -0.507739,
		29.668076, 38.790966, 37.011486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265461, 38.469662, 36.627827>,  <30.212212, 38.530975, 37.366901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265461, 38.469662, 36.627827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057457, 38.793610, 36.736416>,  <29.932655, 38.987980, 36.801567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057457, 38.793610, 36.736416>,  <30.265461, 38.469662, 36.627827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057457, 38.793610, 36.736416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743230, 0.585643, -0.323467,
		-0.420952, 0.033560, -0.906462,
		-0.520008, 0.809874, 0.271471,
		29.901455, 39.036572, 36.817856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323305, 38.887424, 36.047626>,  <30.265461, 38.469662, 36.627827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323305, 38.887424, 36.047626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270279, 39.100803, 36.381779>,  <30.238462, 39.228832, 36.582272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270279, 39.100803, 36.381779>,  <30.323305, 38.887424, 36.047626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270279, 39.100803, 36.381779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634447, 0.693201, -0.341978,
		-0.761514, 0.484670, -0.430339,
		-0.132565, 0.533448, 0.835380,
		30.230509, 39.260838, 36.632393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696430, 38.703190, 35.722649>,  <30.323305, 38.887424, 36.047626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696430, 38.703190, 35.722649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679216, 38.587479, 36.105160>,  <29.668888, 38.518051, 36.334667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679216, 38.587479, 36.105160>,  <29.696430, 38.703190, 35.722649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679216, 38.587479, 36.105160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539743, -0.798729, -0.265913,
		0.840729, -0.527587, -0.121764,
		-0.043036, -0.289282, 0.956276,
		29.666306, 38.500694, 36.392044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785463, 37.932022, 35.784233>,  <29.696430, 38.703190, 35.722649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785463, 37.932022, 35.784233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598396, 38.022144, 36.126118>,  <29.486156, 38.076218, 36.331249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598396, 38.022144, 36.126118>,  <29.785463, 37.932022, 35.784233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598396, 38.022144, 36.126118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564612, -0.820129, -0.092750,
		0.680074, -0.525954, 0.510756,
		-0.467667, 0.225302, 0.854708,
		29.458096, 38.089737, 36.382530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693556, 37.327618, 36.136978>,  <29.785463, 37.932022, 35.784233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693556, 37.327618, 36.136978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425653, 37.570316, 36.308228>,  <29.264912, 37.715935, 36.410976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425653, 37.570316, 36.308228>,  <29.693556, 37.327618, 36.136978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425653, 37.570316, 36.308228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728427, -0.648835, -0.220017,
		0.144285, -0.459211, 0.876531,
		-0.669758, 0.606744, 0.428119,
		29.224726, 37.752338, 36.436665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360676, 36.925240, 36.614784>,  <29.693556, 37.327618, 36.136978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360676, 36.925240, 36.614784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118549, 37.221584, 36.498360>,  <28.973272, 37.399391, 36.428505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118549, 37.221584, 36.498360>,  <29.360676, 36.925240, 36.614784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118549, 37.221584, 36.498360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739585, -0.658668, -0.138453,
		-0.294286, 0.131456, 0.946634,
		-0.605318, 0.740861, -0.291060,
		28.936954, 37.443844, 36.411041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997608, 37.289471, 37.201271>,  <29.360676, 36.925240, 36.614784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997608, 37.289471, 37.201271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828533, 37.239262, 36.842255>,  <28.727089, 37.209137, 36.626846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828533, 37.239262, 36.842255>,  <28.997608, 37.289471, 37.201271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828533, 37.239262, 36.842255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571894, -0.731333, 0.371603,
		-0.703046, 0.670370, 0.237339,
		-0.422685, -0.125521, -0.897542,
		28.701727, 37.201607, 36.572990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274536, 37.102230, 37.353497>,  <28.997608, 37.289471, 37.201271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274536, 37.102230, 37.353497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284006, 36.987198, 36.970512>,  <28.289688, 36.918179, 36.740723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284006, 36.987198, 36.970512>,  <28.274536, 37.102230, 37.353497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284006, 36.987198, 36.970512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696485, -0.691805, 0.190563,
		-0.717181, 0.662348, -0.216673,
		0.023677, -0.287578, -0.957465,
		28.291109, 36.900925, 36.683273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566032, 36.876087, 37.203079>,  <28.274536, 37.102230, 37.353497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566032, 36.876087, 37.203079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777786, 36.701004, 36.912380>,  <27.904839, 36.595955, 36.737961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777786, 36.701004, 36.912380>,  <27.566032, 36.876087, 37.203079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777786, 36.701004, 36.912380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588541, -0.806456, 0.057003,
		-0.611042, 0.397545, -0.684533,
		0.529384, -0.437707, -0.726750,
		27.936602, 36.569691, 36.694355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108318, 36.702068, 36.565632>,  <27.566032, 36.876087, 37.203079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108318, 36.702068, 36.565632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419338, 36.451889, 36.591660>,  <27.605951, 36.301781, 36.607277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419338, 36.451889, 36.591660>,  <27.108318, 36.702068, 36.565632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419338, 36.451889, 36.591660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624705, -0.780135, -0.033675,
		0.071827, -0.014468, -0.997312,
		0.777551, -0.625444, 0.065073,
		27.652603, 36.264256, 36.611183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954618, 36.243134, 36.176147>,  <27.108318, 36.702068, 36.565632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954618, 36.243134, 36.176147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211893, 36.097351, 36.445511>,  <27.366257, 36.009880, 36.607128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211893, 36.097351, 36.445511>,  <26.954618, 36.243134, 36.176147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211893, 36.097351, 36.445511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646266, -0.730064, 0.222141,
		0.410674, -0.578082, -0.705102,
		0.643185, -0.364456, 0.673413,
		27.404848, 35.988014, 36.647533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471392, 35.749165, 35.803471>,  <26.954618, 36.243134, 36.176147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471392, 35.749165, 35.803471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771591, 35.689907, 35.545849>,  <26.951710, 35.654354, 35.391273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771591, 35.689907, 35.545849>,  <26.471392, 35.749165, 35.803471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771591, 35.689907, 35.545849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203258, -0.979056, -0.011655,
		-0.628841, 0.139657, -0.764889,
		0.750497, -0.148141, -0.644057,
		26.996740, 35.645466, 35.352631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323753, 35.098915, 35.365311>,  <26.471392, 35.749165, 35.803471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323753, 35.098915, 35.365311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694729, 35.173153, 35.235443>,  <26.917315, 35.217697, 35.157524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694729, 35.173153, 35.235443>,  <26.323753, 35.098915, 35.365311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694729, 35.173153, 35.235443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151058, -0.980103, -0.128764,
		-0.342108, 0.070377, -0.937022,
		0.927440, 0.185595, -0.324670,
		26.972961, 35.228832, 35.138042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549322, 34.732346, 34.646992>,  <26.323753, 35.098915, 35.365311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549322, 34.732346, 34.646992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823925, 34.777939, 34.934246>,  <26.988688, 34.805294, 35.106598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823925, 34.777939, 34.934246>,  <26.549322, 34.732346, 34.646992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823925, 34.777939, 34.934246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205986, -0.977665, -0.041735,
		0.697336, 0.176576, -0.694653,
		0.686507, 0.113986, 0.718133,
		27.029877, 34.812134, 35.149685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250690, 34.567989, 34.437820>,  <26.549322, 34.732346, 34.646992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250690, 34.567989, 34.437820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160301, 34.504486, 34.822266>,  <27.106068, 34.466385, 35.052933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160301, 34.504486, 34.822266>,  <27.250690, 34.567989, 34.437820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160301, 34.504486, 34.822266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235829, -0.966197, -0.104154,
		0.945156, 0.203121, 0.255776,
		-0.225974, -0.158761, 0.961109,
		27.092508, 34.456860, 35.110600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814823, 34.752571, 33.858654>,  <27.250690, 34.567989, 34.437820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814823, 34.752571, 33.858654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093275, 34.954216, 34.063114>,  <28.260345, 35.075203, 34.185791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093275, 34.954216, 34.063114>,  <27.814823, 34.752571, 33.858654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093275, 34.954216, 34.063114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626368, -0.774395, -0.089308,
		0.350808, 0.382336, -0.854841,
		0.696130, 0.504115, 0.511147,
		28.302114, 35.105450, 34.216457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434580, 34.567211, 33.383316>,  <27.814823, 34.752571, 33.858654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434580, 34.567211, 33.383316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503105, 34.652485, 33.768066>,  <28.544220, 34.703648, 33.998917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503105, 34.652485, 33.768066>,  <28.434580, 34.567211, 33.383316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503105, 34.652485, 33.768066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708775, -0.704797, 0.029971,
		0.684317, 0.676620, -0.271837,
		0.171311, 0.213181, 0.961876,
		28.554499, 34.716438, 34.056629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190643, 34.632000, 33.463142>,  <28.434580, 34.567211, 33.383316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190643, 34.632000, 33.463142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025906, 34.526375, 33.812004>,  <28.927063, 34.462997, 34.021320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025906, 34.526375, 33.812004>,  <29.190643, 34.632000, 33.463142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025906, 34.526375, 33.812004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682435, -0.723631, 0.103158,
		0.603877, 0.637673, 0.478232,
		-0.411845, -0.264068, 0.872154,
		28.902351, 34.447155, 34.073650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657047, 34.961792, 33.029858>,  <29.190643, 34.632000, 33.463142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657047, 34.961792, 33.029858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520508, 35.298744, 32.863064>,  <29.438583, 35.500916, 32.762989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520508, 35.298744, 32.863064>,  <29.657047, 34.961792, 33.029858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520508, 35.298744, 32.863064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893427, 0.428604, 0.134485,
		0.292009, -0.326637, -0.898910,
		-0.341349, 0.842382, -0.416982,
		29.418104, 35.551460, 32.737968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113930, 35.375622, 32.528236>,  <29.657047, 34.961792, 33.029858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113930, 35.375622, 32.528236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892849, 35.671299, 32.682182>,  <29.760201, 35.848705, 32.774551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892849, 35.671299, 32.682182>,  <30.113930, 35.375622, 32.528236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892849, 35.671299, 32.682182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832913, 0.474499, 0.284792,
		0.027897, 0.477964, -0.877936,
		-0.552700, 0.739190, 0.384865,
		29.727039, 35.893055, 32.797642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233696, 36.076878, 32.198277>,  <30.113930, 35.375622, 32.528236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233696, 36.076878, 32.198277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121475, 36.129932, 32.578529>,  <30.054142, 36.161766, 32.806679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121475, 36.129932, 32.578529>,  <30.233696, 36.076878, 32.198277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121475, 36.129932, 32.578529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706857, 0.698571, 0.111140,
		-0.649341, 0.703140, -0.289743,
		-0.280553, 0.132639, 0.950630,
		30.037310, 36.169724, 32.863720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935623, 36.842377, 32.344273>,  <30.233696, 36.076878, 32.198277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935623, 36.842377, 32.344273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077925, 36.674976, 32.678528>,  <30.163305, 36.574535, 32.879082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077925, 36.674976, 32.678528>,  <29.935623, 36.842377, 32.344273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077925, 36.674976, 32.678528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553739, 0.814678, 0.172259,
		-0.752868, 0.401445, 0.521566,
		0.355756, -0.418500, 0.835641,
		30.184652, 36.549427, 32.929218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521046, 36.845387, 32.030830>,  <29.935623, 36.842377, 32.344273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521046, 36.845387, 32.030830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417376, 37.103764, 32.318050>,  <30.355173, 37.258789, 32.490383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417376, 37.103764, 32.318050>,  <30.521046, 36.845387, 32.030830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417376, 37.103764, 32.318050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410366, -0.599359, 0.687291,
		0.874316, 0.472790, -0.109732,
		-0.259175, 0.645939, 0.718046,
		30.339622, 37.297546, 32.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807255, 37.124371, 32.755444>,  <30.521046, 36.845387, 32.030830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807255, 37.124371, 32.755444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963127, 36.910378, 33.055298>,  <31.056650, 36.781982, 33.235210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963127, 36.910378, 33.055298>,  <30.807255, 37.124371, 32.755444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963127, 36.910378, 33.055298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356975, -0.662597, -0.658433,
		0.848951, 0.524178, -0.067227,
		0.389681, -0.534979, 0.749631,
		31.080030, 36.749886, 33.280186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519571, 36.836323, 32.656010>,  <30.807255, 37.124371, 32.755444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519571, 36.836323, 32.656010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322865, 36.563419, 32.872410>,  <31.204842, 36.399677, 33.002251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322865, 36.563419, 32.872410>,  <31.519571, 36.836323, 32.656010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322865, 36.563419, 32.872410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310440, -0.717871, -0.623128,
		0.813507, -0.138484, 0.564826,
		-0.491766, -0.682263, 0.541002,
		31.175335, 36.358742, 33.034710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051601, 36.385735, 32.514496>,  <31.519571, 36.836323, 32.656010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051601, 36.385735, 32.514496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752575, 36.192673, 32.697002>,  <31.573158, 36.076836, 32.806507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752575, 36.192673, 32.697002>,  <32.051601, 36.385735, 32.514496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752575, 36.192673, 32.697002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284796, -0.853546, -0.436292,
		0.600028, -0.196214, 0.775543,
		-0.747568, -0.482659, 0.456270,
		31.528305, 36.047874, 32.833885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326958, 37.133228, 32.551292>,  <32.051601, 36.385735, 32.514496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326958, 37.133228, 32.551292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270443, 37.495441, 32.391266>,  <32.236534, 37.712769, 32.295250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270443, 37.495441, 32.391266>,  <32.326958, 37.133228, 32.551292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270443, 37.495441, 32.391266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531709, -0.271473, -0.802239,
		-0.835060, -0.326061, -0.443125,
		-0.141283, 0.905531, -0.400066,
		32.228058, 37.767101, 32.271248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065029, 37.248886, 31.934832>,  <32.326958, 37.133228, 32.551292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065029, 37.248886, 31.934832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332951, 37.545898, 31.936138>,  <32.493702, 37.724106, 31.936922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332951, 37.545898, 31.936138>,  <32.065029, 37.248886, 31.934832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332951, 37.545898, 31.936138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421379, -0.376474, -0.825050,
		-0.611398, 0.553995, -0.565051,
		0.669801, 0.742534, 0.003266,
		32.533890, 37.768658, 31.937119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019081, 37.531830, 31.329426>,  <32.065029, 37.248886, 31.934832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019081, 37.531830, 31.329426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383717, 37.639477, 31.453741>,  <32.602497, 37.704063, 31.528330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383717, 37.639477, 31.453741>,  <32.019081, 37.531830, 31.329426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383717, 37.639477, 31.453741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405652, -0.466017, -0.786304,
		-0.066771, 0.842856, -0.533981,
		0.911586, 0.269113, 0.310789,
		32.657192, 37.720211, 31.546978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287468, 37.762283, 30.718628>,  <32.019081, 37.531830, 31.329426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287468, 37.762283, 30.718628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598053, 37.673882, 30.954683>,  <32.784405, 37.620838, 31.096315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598053, 37.673882, 30.954683>,  <32.287468, 37.762283, 30.718628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598053, 37.673882, 30.954683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520319, -0.303445, -0.798241,
		0.355491, 0.926864, -0.120620,
		0.776463, -0.221006, 0.590137,
		32.830994, 37.607578, 31.131725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897991, 37.866165, 30.327251>,  <32.287468, 37.762283, 30.718628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897991, 37.866165, 30.327251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067650, 37.654823, 30.621447>,  <33.169445, 37.528019, 30.797964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067650, 37.654823, 30.621447>,  <32.897991, 37.866165, 30.327251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067650, 37.654823, 30.621447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740280, -0.265517, -0.617646,
		0.521619, 0.806440, 0.278509,
		0.424146, -0.528351, 0.735490,
		33.194893, 37.496319, 30.842094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554253, 38.197277, 30.442038>,  <32.897991, 37.866165, 30.327251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554253, 38.197277, 30.442038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549473, 37.816364, 30.564030>,  <33.546604, 37.587814, 30.637224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549473, 37.816364, 30.564030>,  <33.554253, 38.197277, 30.442038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549473, 37.816364, 30.564030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712174, -0.222199, -0.665909,
		0.701901, 0.209245, 0.680846,
		-0.011945, -0.952284, 0.304981,
		33.545891, 37.530678, 30.655523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196857, 38.025845, 30.234619>,  <33.554253, 38.197277, 30.442038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196857, 38.025845, 30.234619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038986, 37.667442, 30.316006>,  <33.944263, 37.452400, 30.364838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038986, 37.667442, 30.316006>,  <34.196857, 38.025845, 30.234619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038986, 37.667442, 30.316006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608312, -0.420772, -0.672984,
		0.688612, -0.141842, 0.711122,
		-0.394678, -0.896009, 0.203464,
		33.920582, 37.398640, 30.377045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725563, 37.619045, 30.271225>,  <34.196857, 38.025845, 30.234619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725563, 37.619045, 30.271225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436111, 37.351303, 30.203909>,  <34.262440, 37.190659, 30.163519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436111, 37.351303, 30.203909>,  <34.725563, 37.619045, 30.271225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436111, 37.351303, 30.203909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486635, -0.321901, -0.812136,
		0.489437, -0.669581, 0.558670,
		-0.723628, -0.669358, -0.168292,
		34.219025, 37.150497, 30.153421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081921, 37.004726, 30.141273>,  <34.725563, 37.619045, 30.271225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081921, 37.004726, 30.141273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720585, 36.958076, 29.976164>,  <34.503784, 36.930088, 29.877098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720585, 36.958076, 29.976164>,  <35.081921, 37.004726, 30.141273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720585, 36.958076, 29.976164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427831, -0.313951, -0.847582,
		-0.030741, -0.942249, 0.333499,
		-0.903336, -0.116626, -0.412774,
		34.449585, 36.923088, 29.852331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180252, 36.388615, 29.852823>,  <35.081921, 37.004726, 30.141273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180252, 36.388615, 29.852823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868774, 36.541924, 29.654133>,  <34.681889, 36.633907, 29.534918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868774, 36.541924, 29.654133>,  <35.180252, 36.388615, 29.852823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868774, 36.541924, 29.654133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375955, -0.348786, -0.858491,
		-0.502287, -0.855249, 0.127505,
		-0.778695, 0.383273, -0.496725,
		34.635166, 36.656906, 29.505116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929569, 35.966545, 29.353312>,  <35.180252, 36.388615, 29.852823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929569, 35.966545, 29.353312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764832, 36.304035, 29.215611>,  <34.665989, 36.506531, 29.132990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764832, 36.304035, 29.215611>,  <34.929569, 35.966545, 29.353312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764832, 36.304035, 29.215611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482049, -0.118873, -0.868042,
		-0.773311, -0.523448, -0.357759,
		-0.411847, 0.843724, -0.344254,
		34.641277, 36.557152, 29.112335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833485, 35.830395, 28.570694>,  <34.929569, 35.966545, 29.353312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833485, 35.830395, 28.570694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819107, 36.225826, 28.629248>,  <34.810478, 36.463085, 28.664379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819107, 36.225826, 28.629248>,  <34.833485, 35.830395, 28.570694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819107, 36.225826, 28.629248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397034, 0.148548, -0.905703,
		-0.917100, 0.025563, -0.397837,
		-0.035946, 0.988575, 0.146383,
		34.808323, 36.522400, 28.673162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648464, 36.019337, 27.900024>,  <34.833485, 35.830395, 28.570694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648464, 36.019337, 27.900024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776390, 36.353397, 28.079018>,  <34.853146, 36.553833, 28.186413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776390, 36.353397, 28.079018>,  <34.648464, 36.019337, 27.900024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776390, 36.353397, 28.079018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453320, 0.279851, -0.846277,
		-0.831999, 0.473501, -0.289092,
		0.319811, 0.835153, 0.447483,
		34.872334, 36.603943, 28.213263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466377, 36.581089, 27.426630>,  <34.648464, 36.019337, 27.900024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466377, 36.581089, 27.426630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769566, 36.733635, 27.638304>,  <34.951481, 36.825165, 27.765308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769566, 36.733635, 27.638304>,  <34.466377, 36.581089, 27.426630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769566, 36.733635, 27.638304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451193, 0.279342, -0.847581,
		-0.471064, 0.881207, 0.039663,
		0.757974, 0.381369, 0.529182,
		34.996956, 36.848045, 27.797058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607704, 37.196663, 27.039515>,  <34.466377, 36.581089, 27.426630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607704, 37.196663, 27.039515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920891, 37.128483, 27.278818>,  <35.108803, 37.087574, 27.422400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920891, 37.128483, 27.278818>,  <34.607704, 37.196663, 27.039515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920891, 37.128483, 27.278818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609765, 0.400599, -0.683891,
		-0.123092, 0.900259, 0.417590,
		0.782965, -0.170450, 0.598258,
		35.155781, 37.077347, 27.458296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897617, 37.806366, 27.160273>,  <34.607704, 37.196663, 27.039515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897617, 37.806366, 27.160273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181015, 37.528542, 27.210276>,  <35.351051, 37.361847, 27.240278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181015, 37.528542, 27.210276>,  <34.897617, 37.806366, 27.160273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181015, 37.528542, 27.210276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553815, 0.437410, -0.708492,
		0.437410, 0.571192, 0.694559,
		0.708492, -0.694559, 0.125007,
		35.393562, 37.320175, 27.247778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545639, 38.144241, 27.121922>,  <34.897617, 37.806366, 27.160273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545639, 38.144241, 27.121922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659241, 37.766411, 27.056051>,  <35.727402, 37.539711, 27.016529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659241, 37.766411, 27.056051>,  <35.545639, 38.144241, 27.121922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659241, 37.766411, 27.056051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682996, 0.319840, -0.656672,
		0.672946, 0.074027, 0.735978,
		0.284007, -0.944575, -0.164675,
		35.744442, 37.483040, 27.006649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275166, 38.022266, 27.328318>,  <35.545639, 38.144241, 27.121922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275166, 38.022266, 27.328318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186829, 37.749249, 27.049648>,  <36.133827, 37.585438, 26.882446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186829, 37.749249, 27.049648>,  <36.275166, 38.022266, 27.328318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186829, 37.749249, 27.049648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803591, 0.277448, -0.526559,
		0.552692, -0.676130, 0.487216,
		-0.220845, -0.682548, -0.696675,
		36.120575, 37.544483, 26.840645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911831, 37.708763, 27.208513>,  <36.275166, 38.022266, 27.328318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911831, 37.708763, 27.208513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668285, 37.628922, 26.901413>,  <36.522160, 37.581017, 26.717152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668285, 37.628922, 26.901413>,  <36.911831, 37.708763, 27.208513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668285, 37.628922, 26.901413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621507, 0.481409, -0.618041,
		0.492964, -0.853467, -0.169060,
		-0.608864, -0.199600, -0.767753,
		36.485626, 37.569042, 26.671087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341511, 37.437370, 26.660223>,  <36.911831, 37.708763, 27.208513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341511, 37.437370, 26.660223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007519, 37.540478, 26.465755>,  <36.807121, 37.602341, 26.349075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007519, 37.540478, 26.465755>,  <37.341511, 37.437370, 26.660223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007519, 37.540478, 26.465755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549262, 0.444031, -0.707918,
		0.033398, -0.858133, -0.512339,
		-0.834983, 0.257766, -0.486170,
		36.757023, 37.617809, 26.319904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462032, 37.273151, 25.909939>,  <37.341511, 37.437370, 26.660223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462032, 37.273151, 25.909939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132462, 37.497780, 25.879513>,  <36.934719, 37.632557, 25.861258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132462, 37.497780, 25.879513>,  <37.462032, 37.273151, 25.909939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132462, 37.497780, 25.879513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389243, 0.463241, -0.796177,
		-0.411876, -0.685596, -0.600264,
		-0.823922, 0.561575, -0.076066,
		36.885284, 37.666252, 25.856693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298054, 37.187233, 25.199154>,  <37.462032, 37.273151, 25.909939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298054, 37.187233, 25.199154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176361, 37.536785, 25.350828>,  <37.103344, 37.746517, 25.441832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176361, 37.536785, 25.350828>,  <37.298054, 37.187233, 25.199154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176361, 37.536785, 25.350828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339587, 0.471395, -0.813921,
		-0.890012, -0.118858, -0.440172,
		-0.304236, 0.873876, 0.379184,
		37.085091, 37.798946, 25.464584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154423, 37.497108, 24.594517>,  <37.298054, 37.187233, 25.199154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154423, 37.497108, 24.594517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160858, 37.781746, 24.875479>,  <37.164719, 37.952530, 25.044056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160858, 37.781746, 24.875479>,  <37.154423, 37.497108, 24.594517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160858, 37.781746, 24.875479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329013, 0.659609, -0.675771,
		-0.944188, 0.241972, -0.223513,
		0.016086, 0.711594, 0.702407,
		37.165684, 37.995224, 25.086201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760365, 38.036427, 24.295765>,  <37.154423, 37.497108, 24.594517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760365, 38.036427, 24.295765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961601, 38.228283, 24.583332>,  <37.082344, 38.343395, 24.755873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961601, 38.228283, 24.583332>,  <36.760365, 38.036427, 24.295765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961601, 38.228283, 24.583332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356997, 0.642233, -0.678299,
		-0.787053, 0.597899, 0.151873,
		0.503092, 0.479639, 0.718919,
		37.112530, 38.372173, 24.799007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557167, 38.787247, 24.268831>,  <36.760365, 38.036427, 24.295765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557167, 38.787247, 24.268831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902954, 38.731819, 24.462120>,  <37.110424, 38.698563, 24.578093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902954, 38.731819, 24.462120>,  <36.557167, 38.787247, 24.268831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902954, 38.731819, 24.462120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477882, 0.524801, -0.704423,
		-0.155985, 0.839870, 0.519891,
		0.864464, -0.138567, 0.483220,
		37.162292, 38.690250, 24.607086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775864, 39.461361, 24.530460>,  <36.557167, 38.787247, 24.268831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775864, 39.461361, 24.530460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090378, 39.216900, 24.494143>,  <37.279087, 39.070221, 24.472353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090378, 39.216900, 24.494143>,  <36.775864, 39.461361, 24.530460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090378, 39.216900, 24.494143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518185, 0.732311, -0.441820,
		0.336509, 0.300349, 0.892498,
		0.786286, -0.611156, -0.090793,
		37.326263, 39.033554, 24.466904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350956, 40.100399, 24.474424>,  <36.775864, 39.461361, 24.530460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350956, 40.100399, 24.474424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499931, 39.738922, 24.389915>,  <37.589317, 39.522038, 24.339211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499931, 39.738922, 24.389915>,  <37.350956, 40.100399, 24.474424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499931, 39.738922, 24.389915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468735, 0.379647, -0.797593,
		0.800985, 0.198024, 0.564986,
		0.372438, -0.903689, -0.211271,
		37.611664, 39.467815, 24.326534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983658, 40.187225, 24.526554>,  <37.350956, 40.100399, 24.474424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983658, 40.187225, 24.526554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934750, 39.866459, 24.292639>,  <37.905403, 39.674000, 24.152290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934750, 39.866459, 24.292639>,  <37.983658, 40.187225, 24.526554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934750, 39.866459, 24.292639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571273, 0.424952, -0.702185,
		0.811601, -0.419931, 0.406154,
		-0.122273, -0.801919, -0.584787,
		37.898067, 39.625885, 24.117203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629505, 40.002586, 24.336040>,  <37.983658, 40.187225, 24.526554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629505, 40.002586, 24.336040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390644, 39.828331, 24.066633>,  <38.247330, 39.723778, 23.904989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390644, 39.828331, 24.066633>,  <38.629505, 40.002586, 24.336040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390644, 39.828331, 24.066633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672518, 0.185734, -0.716396,
		0.437187, -0.880750, 0.182065,
		-0.597150, -0.435641, -0.673520,
		38.211498, 39.697639, 23.864576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081814, 39.705326, 23.923326>,  <38.629505, 40.002586, 24.336040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081814, 39.705326, 23.923326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749516, 39.737061, 23.702938>,  <38.550137, 39.756104, 23.570705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749516, 39.737061, 23.702938>,  <39.081814, 39.705326, 23.923326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749516, 39.737061, 23.702938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526140, 0.435122, -0.730648,
		0.181770, -0.896869, -0.403219,
		-0.830745, 0.079339, -0.550971,
		38.500294, 39.760864, 23.537647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198097, 39.267960, 23.365625>,  <39.081814, 39.705326, 23.923326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198097, 39.267960, 23.365625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928051, 39.545731, 23.266026>,  <38.766026, 39.712391, 23.206266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928051, 39.545731, 23.266026>,  <39.198097, 39.267960, 23.365625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928051, 39.545731, 23.266026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618446, 0.348740, -0.704206,
		-0.402182, -0.629409, -0.664902,
		-0.675111, 0.694424, -0.248998,
		38.725517, 39.754059, 23.191326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150124, 39.270996, 22.672155>,  <39.198097, 39.267960, 23.365625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150124, 39.270996, 22.672155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001995, 39.636364, 22.739700>,  <38.913116, 39.855587, 22.780228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001995, 39.636364, 22.739700>,  <39.150124, 39.270996, 22.672155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001995, 39.636364, 22.739700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511015, 0.352141, -0.784130,
		-0.775707, -0.204091, -0.597181,
		-0.370326, 0.913424, 0.168865,
		38.890896, 39.910393, 22.790359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860649, 39.473152, 22.031456>,  <39.150124, 39.270996, 22.672155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860649, 39.473152, 22.031456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916847, 39.810509, 22.238901>,  <38.950565, 40.012920, 22.363367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916847, 39.810509, 22.238901>,  <38.860649, 39.473152, 22.031456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916847, 39.810509, 22.238901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569309, 0.359735, -0.739242,
		-0.810031, 0.399107, -0.429609,
		0.140491, 0.843389, 0.518611,
		38.958996, 40.063526, 22.394484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694668, 39.896782, 21.572390>,  <38.860649, 39.473152, 22.031456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694668, 39.896782, 21.572390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881035, 40.132442, 21.836456>,  <38.992855, 40.273838, 21.994896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881035, 40.132442, 21.836456>,  <38.694668, 39.896782, 21.572390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881035, 40.132442, 21.836456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556025, 0.385432, -0.736395,
		-0.688299, 0.710169, -0.148004,
		0.465919, 0.589154, 0.660164,
		39.020809, 40.309189, 22.034506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695431, 40.541336, 21.262375>,  <38.694668, 39.896782, 21.572390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695431, 40.541336, 21.262375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989464, 40.526939, 21.533186>,  <39.165882, 40.518303, 21.695673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989464, 40.526939, 21.533186>,  <38.695431, 40.541336, 21.262375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989464, 40.526939, 21.533186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596394, 0.509253, -0.620464,
		-0.322449, 0.859864, 0.395804,
		0.735079, -0.035987, 0.677025,
		39.209988, 40.516144, 21.736294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838955, 41.240105, 21.326933>,  <38.695431, 40.541336, 21.262375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838955, 41.240105, 21.326933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156609, 41.028820, 21.447163>,  <39.347202, 40.902050, 21.519300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156609, 41.028820, 21.447163>,  <38.838955, 41.240105, 21.326933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156609, 41.028820, 21.447163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580581, 0.513163, -0.632131,
		0.179656, 0.676503, 0.714190,
		0.794135, -0.528211, 0.300572,
		39.394848, 40.870358, 21.537334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282063, 41.654953, 21.503246>,  <38.838955, 41.240105, 21.326933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282063, 41.654953, 21.503246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532295, 41.349476, 21.439472>,  <39.682434, 41.166191, 21.401207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532295, 41.349476, 21.439472>,  <39.282063, 41.654953, 21.503246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532295, 41.349476, 21.439472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614719, 0.608355, -0.502020,
		0.480384, 0.216045, 0.850032,
		0.625581, -0.763694, -0.159437,
		39.719971, 41.120369, 21.391642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897419, 41.921848, 21.537170>,  <39.282063, 41.654953, 21.503246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897419, 41.921848, 21.537170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962589, 41.575798, 21.347429>,  <40.001690, 41.368168, 21.233583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962589, 41.575798, 21.347429>,  <39.897419, 41.921848, 21.537170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962589, 41.575798, 21.347429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740266, 0.425030, -0.520918,
		0.652275, -0.266280, 0.709671,
		0.162921, -0.865127, -0.474354,
		40.011467, 41.316261, 21.205124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632530, 41.894798, 21.420872>,  <39.897419, 41.921848, 21.537170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632530, 41.894798, 21.420872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476238, 41.633358, 21.161602>,  <40.382462, 41.476494, 21.006041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476238, 41.633358, 21.161602>,  <40.632530, 41.894798, 21.420872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476238, 41.633358, 21.161602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521371, 0.423173, -0.741011,
		0.758617, -0.627476, 0.175423,
		-0.390733, -0.653604, -0.648174,
		40.359020, 41.437275, 20.967150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258915, 41.666183, 21.039787>,  <40.632530, 41.894798, 21.420872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258915, 41.666183, 21.039787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937920, 41.617870, 20.806063>,  <40.745323, 41.588882, 20.665827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937920, 41.617870, 20.806063>,  <41.258915, 41.666183, 21.039787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937920, 41.617870, 20.806063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511505, 0.364946, -0.777931,
		0.307202, -0.923161, -0.231086,
		-0.802490, -0.120780, -0.584314,
		40.697174, 41.581635, 20.630768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528217, 41.413410, 20.513899>,  <41.258915, 41.666183, 21.039787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528217, 41.413410, 20.513899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179379, 41.541168, 20.365610>,  <40.970074, 41.617821, 20.276636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179379, 41.541168, 20.365610>,  <41.528217, 41.413410, 20.513899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179379, 41.541168, 20.365610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476176, 0.379426, -0.793279,
		-0.112704, -0.868346, -0.482983,
		-0.872098, 0.319391, -0.370723,
		40.917747, 41.636986, 20.254393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503071, 41.173183, 19.785166>,  <41.528217, 41.413410, 20.513899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503071, 41.173183, 19.785166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240932, 41.475292, 19.788836>,  <41.083649, 41.656559, 19.791037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240932, 41.475292, 19.788836>,  <41.503071, 41.173183, 19.785166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240932, 41.475292, 19.788836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415477, 0.370599, -0.830684,
		-0.630792, -0.540575, -0.556669,
		-0.655348, 0.755272, 0.009175,
		41.044327, 41.701874, 19.791588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365646, 41.319359, 19.103184>,  <41.503071, 41.173183, 19.785166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365646, 41.319359, 19.103184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265362, 41.645920, 19.311274>,  <41.205193, 41.841858, 19.436127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265362, 41.645920, 19.311274>,  <41.365646, 41.319359, 19.103184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265362, 41.645920, 19.311274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340271, 0.577414, -0.742164,
		-0.906289, -0.009053, -0.422562,
		-0.250712, 0.816401, 0.520224,
		41.190147, 41.890839, 19.467340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130783, 41.838928, 18.621555>,  <41.365646, 41.319359, 19.103184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130783, 41.838928, 18.621555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231350, 42.085136, 18.920332>,  <41.291691, 42.232861, 19.099598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231350, 42.085136, 18.920332>,  <41.130783, 41.838928, 18.621555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231350, 42.085136, 18.920332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460207, 0.602889, -0.651716,
		-0.851470, 0.507598, -0.131694,
		0.251413, 0.615524, 0.746942,
		41.306774, 42.269794, 19.144415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018116, 42.498314, 18.389400>,  <41.130783, 41.838928, 18.621555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018116, 42.498314, 18.389400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304283, 42.525883, 18.667515>,  <41.475983, 42.542423, 18.834383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304283, 42.525883, 18.667515>,  <41.018116, 42.498314, 18.389400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304283, 42.525883, 18.667515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617354, 0.403635, -0.675243,
		-0.327184, 0.912320, 0.246216,
		0.715420, 0.068926, 0.695287,
		41.518909, 42.546562, 18.876101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193188, 43.231293, 18.682442>,  <41.018116, 42.498314, 18.389400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193188, 43.231293, 18.682442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474850, 42.956310, 18.611370>,  <41.643845, 42.791321, 18.568727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474850, 42.956310, 18.611370>,  <41.193188, 43.231293, 18.682442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474850, 42.956310, 18.611370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446724, 0.623424, -0.641701,
		0.551913, 0.372481, 0.746090,
		0.704152, -0.687459, -0.177679,
		41.686096, 42.750072, 18.558065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765263, 43.562962, 18.573824>,  <41.193188, 43.231293, 18.682442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765263, 43.562962, 18.573824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834171, 43.205276, 18.408562>,  <41.875519, 42.990665, 18.309404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834171, 43.205276, 18.408562>,  <41.765263, 43.562962, 18.573824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834171, 43.205276, 18.408562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401938, 0.446735, -0.799296,
		0.899315, -0.028365, 0.436381,
		0.172275, -0.894217, -0.413156,
		41.885853, 42.937012, 18.284615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445774, 43.392239, 18.547117>,  <41.765263, 43.562962, 18.573824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445774, 43.392239, 18.547117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241879, 43.221565, 18.248291>,  <42.119541, 43.119160, 18.068995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241879, 43.221565, 18.248291>,  <42.445774, 43.392239, 18.547117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241879, 43.221565, 18.248291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695450, 0.306839, -0.649769,
		0.506476, -0.850758, 0.140332,
		-0.509737, -0.426687, -0.747065,
		42.088959, 43.093559, 18.024172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722466, 42.769039, 18.175426>,  <42.445774, 43.392239, 18.547117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722466, 42.769039, 18.175426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005943, 42.613445, 18.410864>,  <43.176029, 42.520088, 18.552126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005943, 42.613445, 18.410864>,  <42.722466, 42.769039, 18.175426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005943, 42.613445, 18.410864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553828, 0.210100, 0.805688,
		-0.437064, -0.896966, -0.066534,
		0.708696, -0.388985, 0.588592,
		43.218552, 42.496750, 18.587442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389957, 42.533302, 18.725176>,  <42.722466, 42.769039, 18.175426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389957, 42.533302, 18.725176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753178, 42.634743, 18.858522>,  <42.971107, 42.695606, 18.938530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753178, 42.634743, 18.858522>,  <42.389957, 42.533302, 18.725176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753178, 42.634743, 18.858522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417529, 0.484445, 0.768754,
		0.033461, -0.837256, 0.545786,
		0.908047, 0.253605, 0.333368,
		43.025593, 42.710823, 18.958532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436954, 42.353752, 19.411901>,  <42.389957, 42.533302, 18.725176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436954, 42.353752, 19.411901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662178, 42.671047, 19.319181>,  <42.797314, 42.861423, 19.263550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662178, 42.671047, 19.319181>,  <42.436954, 42.353752, 19.411901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662178, 42.671047, 19.319181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564715, 0.574099, 0.592880,
		0.603376, -0.202921, 0.771207,
		0.563057, 0.793242, -0.231805,
		42.831097, 42.909019, 19.249641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557949, 42.679802, 20.012836>,  <42.436954, 42.353752, 19.411901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557949, 42.679802, 20.012836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581875, 42.941628, 19.711382>,  <42.596230, 43.098724, 19.530510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581875, 42.941628, 19.711382>,  <42.557949, 42.679802, 20.012836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581875, 42.941628, 19.711382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590249, 0.632049, 0.502116,
		0.805002, 0.414800, 0.424161,
		0.059812, 0.654564, -0.753636,
		42.599819, 43.137997, 19.485291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997173, 43.397942, 20.106052>,  <42.557949, 42.679802, 20.012836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997173, 43.397942, 20.106052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681061, 43.393642, 19.860994>,  <42.491394, 43.391064, 19.713959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681061, 43.393642, 19.860994>,  <42.997173, 43.397942, 20.106052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681061, 43.393642, 19.860994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444325, 0.698540, 0.560907,
		0.421930, 0.715490, -0.556820,
		-0.790285, -0.010746, -0.612645,
		42.443974, 43.390419, 19.677200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907440, 44.110367, 19.889956>,  <42.997173, 43.397942, 20.106052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907440, 44.110367, 19.889956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580627, 43.881847, 19.921129>,  <42.384541, 43.744736, 19.939835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580627, 43.881847, 19.921129>,  <42.907440, 44.110367, 19.889956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580627, 43.881847, 19.921129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457311, 0.724389, 0.515875,
		-0.351176, 0.385845, -0.853111,
		-0.817032, -0.571300, 0.077936,
		42.335518, 43.710457, 19.944510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264652, 44.500950, 19.822771>,  <42.907440, 44.110367, 19.889956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264652, 44.500950, 19.822771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128571, 44.160122, 19.981886>,  <42.046921, 43.955624, 20.077354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128571, 44.160122, 19.981886>,  <42.264652, 44.500950, 19.822771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128571, 44.160122, 19.981886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364022, 0.509374, 0.779760,
		-0.867033, 0.120477, -0.483465,
		-0.340208, -0.852070, 0.397788,
		42.026508, 43.904499, 20.101223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647701, 44.798340, 20.222099>,  <42.264652, 44.500950, 19.822771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647701, 44.798340, 20.222099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736542, 44.435978, 20.366323>,  <41.789845, 44.218559, 20.452858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736542, 44.435978, 20.366323>,  <41.647701, 44.798340, 20.222099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736542, 44.435978, 20.366323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495648, 0.213553, 0.841860,
		-0.839646, -0.365688, -0.401581,
		0.222100, -0.905907, 0.360561,
		41.803173, 44.164207, 20.474491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990425, 44.333839, 20.316381>,  <41.647701, 44.798340, 20.222099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990425, 44.333839, 20.316381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272888, 44.253521, 20.587978>,  <41.442364, 44.205330, 20.750937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272888, 44.253521, 20.587978>,  <40.990425, 44.333839, 20.316381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272888, 44.253521, 20.587978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664685, 0.142489, 0.733411,
		-0.244012, -0.969216, -0.032845,
		0.706153, -0.200793, 0.678992,
		41.484734, 44.193283, 20.791676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688225, 43.988415, 20.869093>,  <40.990425, 44.333839, 20.316381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688225, 43.988415, 20.869093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036480, 44.082642, 21.041836>,  <41.245434, 44.139179, 21.145481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036480, 44.082642, 21.041836>,  <40.688225, 43.988415, 20.869093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036480, 44.082642, 21.041836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456516, 0.059854, 0.887700,
		0.183266, -0.970013, 0.159652,
		0.870636, 0.235569, 0.431857,
		41.297672, 44.153313, 21.171392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662468, 43.644932, 21.460342>,  <40.688225, 43.988415, 20.869093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662468, 43.644932, 21.460342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954918, 43.908730, 21.530224>,  <41.130386, 44.067009, 21.572153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954918, 43.908730, 21.530224>,  <40.662468, 43.644932, 21.460342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954918, 43.908730, 21.530224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245132, 0.014968, 0.969374,
		0.636683, -0.751559, 0.172607,
		0.731126, 0.659496, 0.174701,
		41.174255, 44.106579, 21.582634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922138, 43.387821, 22.038979>,  <40.662468, 43.644932, 21.460342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922138, 43.387821, 22.038979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041306, 43.769451, 22.051542>,  <41.112808, 43.998428, 22.059080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041306, 43.769451, 22.051542>,  <40.922138, 43.387821, 22.038979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041306, 43.769451, 22.051542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240052, 0.043034, 0.969806,
		0.923914, -0.296466, 0.241847,
		0.297922, 0.954073, 0.031408,
		41.130684, 44.055672, 22.060965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344856, 43.429829, 22.525412>,  <40.922138, 43.387821, 22.038979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344856, 43.429829, 22.525412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231106, 43.812740, 22.504459>,  <41.162853, 44.042488, 22.491888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231106, 43.812740, 22.504459>,  <41.344856, 43.429829, 22.525412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231106, 43.812740, 22.504459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200926, -0.006086, 0.979588,
		0.937421, 0.289100, 0.194073,
		-0.284379, 0.957280, -0.052383,
		41.145790, 44.099926, 22.488745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557579, 43.744511, 23.180740>,  <41.344856, 43.429829, 22.525412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557579, 43.744511, 23.180740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272514, 43.969063, 23.012468>,  <41.101475, 44.103794, 22.911505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272514, 43.969063, 23.012468>,  <41.557579, 43.744511, 23.180740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272514, 43.969063, 23.012468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467848, 0.066497, 0.881304,
		0.522716, 0.824885, 0.215249,
		-0.712661, 0.561376, -0.420680,
		41.058716, 44.137474, 22.886265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400124, 44.361477, 23.623472>,  <41.557579, 43.744511, 23.180740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400124, 44.361477, 23.623472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076088, 44.299454, 23.397301>,  <40.881664, 44.262241, 23.261599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076088, 44.299454, 23.397301>,  <41.400124, 44.361477, 23.623472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076088, 44.299454, 23.397301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583837, 0.124970, 0.802195,
		-0.053722, 0.979970, -0.191763,
		-0.810092, -0.155054, -0.565429,
		40.833061, 44.252937, 23.227673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934662, 44.811405, 23.878113>,  <41.400124, 44.361477, 23.623472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934662, 44.811405, 23.878113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703419, 44.555748, 23.675220>,  <40.564674, 44.402355, 23.553484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703419, 44.555748, 23.675220>,  <40.934662, 44.811405, 23.878113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703419, 44.555748, 23.675220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656749, -0.004426, 0.754096,
		-0.484221, 0.769074, -0.417199,
		-0.578109, -0.639144, -0.507232,
		40.529987, 44.364006, 23.523050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235680, 45.029655, 23.936100>,  <40.934662, 44.811405, 23.878113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235680, 45.029655, 23.936100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200207, 44.640270, 23.851715>,  <40.178925, 44.406639, 23.801085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200207, 44.640270, 23.851715>,  <40.235680, 45.029655, 23.936100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200207, 44.640270, 23.851715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733704, -0.079403, 0.674814,
		-0.673657, 0.214629, -0.707192,
		-0.088681, -0.973462, -0.210965,
		40.173603, 44.348232, 23.788425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538967, 44.746021, 24.072844>,  <40.235680, 45.029655, 23.936100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538967, 44.746021, 24.072844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713581, 44.387512, 24.041533>,  <39.818348, 44.172405, 24.022747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713581, 44.387512, 24.041533>,  <39.538967, 44.746021, 24.072844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713581, 44.387512, 24.041533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640013, -0.370507, 0.673133,
		-0.632315, -0.243747, -0.735368,
		0.436533, -0.896277, -0.078275,
		39.844540, 44.118629, 24.018049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987995, 44.310650, 23.909893>,  <39.538967, 44.746021, 24.072844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987995, 44.310650, 23.909893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273705, 44.062843, 24.040134>,  <39.445129, 43.914158, 24.118279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273705, 44.062843, 24.040134>,  <38.987995, 44.310650, 23.909893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273705, 44.062843, 24.040134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644183, -0.400095, 0.651883,
		-0.273581, -0.675368, -0.684859,
		0.714270, -0.619517, 0.325602,
		39.487984, 43.876987, 24.137815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746277, 43.662285, 23.823116>,  <38.987995, 44.310650, 23.909893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746277, 43.662285, 23.823116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021416, 43.646751, 24.113045>,  <39.186497, 43.637432, 24.287003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021416, 43.646751, 24.113045>,  <38.746277, 43.662285, 23.823116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021416, 43.646751, 24.113045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678751, -0.388288, 0.623321,
		0.257235, -0.920720, -0.293438,
		0.687843, -0.038831, 0.724820,
		39.227768, 43.635101, 24.330490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620880, 43.022820, 24.146812>,  <38.746277, 43.662285, 23.823116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620880, 43.022820, 24.146812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827961, 43.234940, 24.415371>,  <38.952209, 43.362209, 24.576506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827961, 43.234940, 24.415371>,  <38.620880, 43.022820, 24.146812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827961, 43.234940, 24.415371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502768, -0.446382, 0.740248,
		0.692250, -0.720783, 0.035524,
		0.517701, 0.530297, 0.671395,
		38.983273, 43.394028, 24.616789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805538, 42.569035, 24.638615>,  <38.620880, 43.022820, 24.146812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805538, 42.569035, 24.638615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834007, 42.921638, 24.825321>,  <38.851089, 43.133202, 24.937346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834007, 42.921638, 24.825321>,  <38.805538, 42.569035, 24.638615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834007, 42.921638, 24.825321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448044, -0.389832, 0.804542,
		0.891174, -0.266393, 0.367211,
		0.071174, 0.881513, 0.466764,
		38.855358, 43.186092, 24.965351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870403, 42.342342, 25.230543>,  <38.805538, 42.569035, 24.638615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870403, 42.342342, 25.230543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783607, 42.722103, 25.321356>,  <38.731529, 42.949959, 25.375843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783607, 42.722103, 25.321356>,  <38.870403, 42.342342, 25.230543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783607, 42.722103, 25.321356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551730, -0.311145, 0.773811,
		0.805300, 0.042650, 0.591332,
		-0.216993, 0.949405, 0.227034,
		38.718510, 43.006924, 25.389465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949886, 42.362583, 25.925077>,  <38.870403, 42.342342, 25.230543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949886, 42.362583, 25.925077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733215, 42.695000, 25.874552>,  <38.603214, 42.894451, 25.844236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733215, 42.695000, 25.874552>,  <38.949886, 42.362583, 25.925077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733215, 42.695000, 25.874552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503765, -0.200648, 0.840215,
		0.672909, 0.518759, 0.527336,
		-0.541678, 0.831042, -0.126315,
		38.570713, 42.944313, 25.836657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832066, 42.457340, 26.568893>,  <38.949886, 42.362583, 25.925077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832066, 42.457340, 26.568893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545303, 42.664829, 26.382572>,  <38.373245, 42.789322, 26.270779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545303, 42.664829, 26.382572>,  <38.832066, 42.457340, 26.568893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545303, 42.664829, 26.382572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672469, -0.338234, 0.658318,
		0.183935, 0.785190, 0.591308,
		-0.716905, 0.518724, -0.465803,
		38.330231, 42.820446, 26.242832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497517, 42.897465, 27.097244>,  <38.832066, 42.457340, 26.568893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497517, 42.897465, 27.097244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246174, 42.835102, 26.792387>,  <38.095367, 42.797684, 26.609472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246174, 42.835102, 26.792387>,  <38.497517, 42.897465, 27.097244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246174, 42.835102, 26.792387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709254, -0.287661, 0.643592,
		-0.319577, 0.944958, 0.070179,
		-0.628355, -0.155903, -0.762145,
		38.057667, 42.788330, 26.563744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959858, 43.103352, 27.342518>,  <38.497517, 42.897465, 27.097244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959858, 43.103352, 27.342518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806431, 42.878883, 27.049133>,  <37.714375, 42.744202, 26.873102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806431, 42.878883, 27.049133>,  <37.959858, 43.103352, 27.342518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806431, 42.878883, 27.049133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651330, -0.398660, 0.645631,
		-0.654708, 0.725371, -0.212590,
		-0.383570, -0.561166, -0.733462,
		37.691360, 42.710533, 26.829094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246593, 43.137802, 27.415300>,  <37.959858, 43.103352, 27.342518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246593, 43.137802, 27.415300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283154, 42.826363, 27.166967>,  <37.305088, 42.639500, 27.017967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283154, 42.826363, 27.166967>,  <37.246593, 43.137802, 27.415300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283154, 42.826363, 27.166967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806056, -0.423926, 0.412989,
		-0.584739, 0.462680, -0.666339,
		0.091396, -0.778598, -0.620832,
		37.310574, 42.592785, 26.980719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516747, 43.095753, 27.140827>,  <37.246593, 43.137802, 27.415300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516747, 43.095753, 27.140827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715878, 42.751358, 27.099102>,  <36.835354, 42.544724, 27.074066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715878, 42.751358, 27.099102>,  <36.516747, 43.095753, 27.140827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715878, 42.751358, 27.099102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723309, -0.478535, 0.497823,
		-0.478535, -0.172377, -0.860982,
		-0.497823, 0.860982, 0.104313,
		36.865223, 42.493065, 27.067808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058071, 42.583511, 26.868368>,  <36.516747, 43.095753, 27.140827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058071, 42.583511, 26.868368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348583, 42.372772, 27.044975>,  <36.522892, 42.246326, 27.150940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348583, 42.372772, 27.044975>,  <36.058071, 42.583511, 26.868368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348583, 42.372772, 27.044975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687109, -0.574940, 0.444212,
		0.019814, -0.625997, -0.779574,
		0.726284, -0.526851, 0.441520,
		36.566467, 42.214718, 27.177431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747166, 41.997765, 26.751123>,  <36.058071, 42.583511, 26.868368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747166, 41.997765, 26.751123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013153, 41.933380, 27.042850>,  <36.172745, 41.894749, 27.217886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013153, 41.933380, 27.042850>,  <35.747166, 41.997765, 26.751123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013153, 41.933380, 27.042850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636483, -0.633046, 0.440616,
		0.390771, -0.757196, -0.523405,
		0.664972, -0.160958, 0.729318,
		36.212646, 41.885094, 27.261646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649750, 41.265442, 26.869583>,  <35.747166, 41.997765, 26.751123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649750, 41.265442, 26.869583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821995, 41.451096, 27.179203>,  <35.925343, 41.562489, 27.364975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821995, 41.451096, 27.179203>,  <35.649750, 41.265442, 26.869583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821995, 41.451096, 27.179203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589826, -0.504435, 0.630595,
		0.683138, -0.728097, 0.056542,
		0.430613, 0.464133, 0.774049,
		35.951180, 41.590336, 27.411417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631832, 40.709286, 27.414764>,  <35.649750, 41.265442, 26.869583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631832, 40.709286, 27.414764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689178, 41.048962, 27.618065>,  <35.723587, 41.252769, 27.740046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689178, 41.048962, 27.618065>,  <35.631832, 40.709286, 27.414764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689178, 41.048962, 27.618065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500764, -0.380717, 0.777361,
		0.853629, -0.365959, 0.370664,
		0.143364, 0.849193, 0.508250,
		35.732189, 41.303719, 27.770540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830105, 40.542511, 28.086487>,  <35.631832, 40.709286, 27.414764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830105, 40.542511, 28.086487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699028, 40.919369, 28.114727>,  <35.620384, 41.145485, 28.131672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699028, 40.919369, 28.114727>,  <35.830105, 40.542511, 28.086487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699028, 40.919369, 28.114727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541155, -0.248423, 0.803391,
		0.774449, 0.225055, 0.591252,
		-0.327688, 0.942145, 0.070602,
		35.600723, 41.202011, 28.135908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056625, 40.761772, 28.667795>,  <35.830105, 40.542511, 28.086487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056625, 40.761772, 28.667795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740967, 40.990292, 28.577585>,  <35.551571, 41.127403, 28.523458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740967, 40.990292, 28.577585>,  <36.056625, 40.761772, 28.667795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740967, 40.990292, 28.577585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425444, -0.243608, 0.871581,
		0.442993, 0.783755, 0.435299,
		-0.789148, 0.571299, -0.225527,
		35.504223, 41.161682, 28.509928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844070, 41.059566, 29.192884>,  <36.056625, 40.761772, 28.667795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844070, 41.059566, 29.192884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492168, 41.089645, 29.005110>,  <35.281025, 41.107693, 28.892445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492168, 41.089645, 29.005110>,  <35.844070, 41.059566, 29.192884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492168, 41.089645, 29.005110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470756, -0.275777, 0.838055,
		-0.066437, 0.958275, 0.278018,
		-0.879758, 0.075201, -0.469436,
		35.228241, 41.112206, 28.864279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327888, 41.447445, 29.694075>,  <35.844070, 41.059566, 29.192884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327888, 41.447445, 29.694075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088150, 41.273232, 29.425419>,  <34.944305, 41.168705, 29.264225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088150, 41.273232, 29.425419>,  <35.327888, 41.447445, 29.694075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088150, 41.273232, 29.425419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660725, -0.204517, 0.722229,
		-0.451914, 0.876633, -0.165189,
		-0.599346, -0.435530, -0.671638,
		34.908348, 41.142574, 29.223927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649025, 41.681519, 29.925386>,  <35.327888, 41.447445, 29.694075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649025, 41.681519, 29.925386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624195, 41.344345, 29.711615>,  <34.609299, 41.142040, 29.583351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624195, 41.344345, 29.711615>,  <34.649025, 41.681519, 29.925386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624195, 41.344345, 29.711615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616216, -0.388849, 0.684890,
		-0.785128, 0.371837, -0.495290,
		-0.062074, -0.842932, -0.534428,
		34.605572, 41.091465, 29.551287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956699, 41.434528, 29.938860>,  <34.649025, 41.681519, 29.925386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956699, 41.434528, 29.938860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168926, 41.105213, 29.858164>,  <34.296261, 40.907623, 29.809746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168926, 41.105213, 29.858164>,  <33.956699, 41.434528, 29.938860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168926, 41.105213, 29.858164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530659, -0.508205, 0.678328,
		-0.660983, -0.252843, -0.706521,
		0.530568, -0.823285, -0.201742,
		34.328098, 40.858227, 29.797642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524643, 40.971497, 29.903824>,  <33.956699, 41.434528, 29.938860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524643, 40.971497, 29.903824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830444, 40.722248, 29.969864>,  <34.013924, 40.572701, 30.009487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830444, 40.722248, 29.969864>,  <33.524643, 40.971497, 29.903824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830444, 40.722248, 29.969864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581250, -0.555606, 0.594517,
		-0.278725, -0.550474, -0.786950,
		0.764500, -0.623121, 0.165101,
		34.059795, 40.535313, 30.019394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237392, 40.355080, 29.879953>,  <33.524643, 40.971497, 29.903824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237392, 40.355080, 29.879953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591511, 40.279037, 30.049713>,  <33.803982, 40.233414, 30.151569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591511, 40.279037, 30.049713>,  <33.237392, 40.355080, 29.879953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591511, 40.279037, 30.049713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440392, -0.635850, 0.633837,
		0.149359, -0.748035, -0.646635,
		0.885295, -0.190104, 0.424399,
		33.857098, 40.222008, 30.177032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311169, 39.638752, 29.850401>,  <33.237392, 40.355080, 29.879953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311169, 39.638752, 29.850401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550285, 39.753799, 30.149712>,  <33.693756, 39.822826, 30.329298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550285, 39.753799, 30.149712>,  <33.311169, 39.638752, 29.850401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550285, 39.753799, 30.149712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502915, -0.592340, 0.629452,
		0.624276, -0.752602, -0.209450,
		0.597793, 0.287616, 0.748279,
		33.729622, 39.840084, 30.374195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467285, 39.041218, 30.363661>,  <33.311169, 39.638752, 29.850401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467285, 39.041218, 30.363661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567886, 39.356548, 30.588263>,  <33.628246, 39.545746, 30.723024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567886, 39.356548, 30.588263>,  <33.467285, 39.041218, 30.363661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567886, 39.356548, 30.588263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400158, -0.443553, 0.801957,
		0.881262, -0.426382, 0.203902,
		0.251499, 0.788327, 0.561507,
		33.643337, 39.593048, 30.756714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755077, 38.772442, 30.961006>,  <33.467285, 39.041218, 30.363661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755077, 38.772442, 30.961006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618977, 39.134483, 31.063005>,  <33.537315, 39.351707, 31.124205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618977, 39.134483, 31.063005>,  <33.755077, 38.772442, 30.961006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618977, 39.134483, 31.063005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410783, -0.387004, 0.825521,
		0.845865, 0.176134, 0.503478,
		-0.340250, 0.905100, 0.255000,
		33.516903, 39.406013, 31.139505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224434, 38.984596, 31.443624>,  <33.755077, 38.772442, 30.961006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224434, 38.984596, 31.443624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260548, 38.915871, 31.836018>,  <34.282215, 38.874634, 32.071453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260548, 38.915871, 31.836018>,  <34.224434, 38.984596, 31.443624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260548, 38.915871, 31.836018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979631, 0.192721, -0.056409,
		-0.179364, 0.966095, 0.185714,
		0.090287, -0.171813, 0.980983,
		34.287632, 38.864326, 32.130314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343895, 39.534595, 31.728487>,  <34.224434, 38.984596, 31.443624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343895, 39.534595, 31.728487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543865, 39.221111, 31.875933>,  <34.663845, 39.033020, 31.964399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543865, 39.221111, 31.875933>,  <34.343895, 39.534595, 31.728487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543865, 39.221111, 31.875933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845129, 0.534471, -0.009840,
		-0.189301, 0.316444, 0.929531,
		0.499922, -0.783711, 0.368612,
		34.693840, 38.985996, 31.986517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786087, 39.744320, 32.235275>,  <34.343895, 39.534595, 31.728487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786087, 39.744320, 32.235275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926472, 39.394985, 32.100155>,  <35.010704, 39.185383, 32.019081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926472, 39.394985, 32.100155>,  <34.786087, 39.744320, 32.235275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926472, 39.394985, 32.100155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904024, 0.410041, -0.120856,
		0.244061, -0.262966, 0.933425,
		0.350961, -0.873336, -0.337803,
		35.031761, 39.132984, 31.998814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420559, 39.705067, 32.605080>,  <34.786087, 39.744320, 32.235275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420559, 39.705067, 32.605080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430748, 39.472073, 32.280106>,  <35.436863, 39.332275, 32.085121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430748, 39.472073, 32.280106>,  <35.420559, 39.705067, 32.605080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430748, 39.472073, 32.280106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897863, 0.370663, -0.237597,
		0.439539, -0.723405, 0.532438,
		0.025476, -0.582489, -0.812439,
		35.438393, 39.297325, 32.036373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069843, 39.706238, 32.617523>,  <35.420559, 39.705067, 32.605080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069843, 39.706238, 32.617523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987698, 39.536076, 32.264965>,  <35.938412, 39.433979, 32.053432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987698, 39.536076, 32.264965>,  <36.069843, 39.706238, 32.617523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987698, 39.536076, 32.264965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879527, 0.314777, -0.356858,
		0.429252, -0.848496, 0.309513,
		-0.205365, -0.425407, -0.881393,
		35.926086, 39.408455, 32.000546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585949, 39.215942, 32.479370>,  <36.069843, 39.706238, 32.617523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585949, 39.215942, 32.479370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432167, 39.312325, 32.122913>,  <36.339897, 39.370155, 31.909039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432167, 39.312325, 32.122913>,  <36.585949, 39.215942, 32.479370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432167, 39.312325, 32.122913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918975, 0.191531, -0.344673,
		0.087630, -0.951449, -0.295069,
		-0.384454, 0.240958, -0.891142,
		36.316830, 39.384613, 31.855570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986645, 38.960197, 31.883114>,  <36.585949, 39.215942, 32.479370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986645, 38.960197, 31.883114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777931, 39.268707, 31.737305>,  <36.652702, 39.453812, 31.649820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777931, 39.268707, 31.737305>,  <36.986645, 38.960197, 31.883114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777931, 39.268707, 31.737305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770805, 0.243171, -0.588835,
		-0.365513, -0.588220, -0.721385,
		-0.521785, 0.771275, -0.364521,
		36.621395, 39.500092, 31.627949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299065, 39.047390, 31.147163>,  <36.986645, 38.960197, 31.883114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299065, 39.047390, 31.147163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084232, 39.380394, 31.201527>,  <36.955334, 39.580196, 31.234144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084232, 39.380394, 31.201527>,  <37.299065, 39.047390, 31.147163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084232, 39.380394, 31.201527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593683, 0.487522, -0.640205,
		-0.599234, -0.263159, -0.756086,
		-0.537084, 0.832508, 0.135907,
		36.923107, 39.630146, 31.242298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150906, 39.309109, 30.468557>,  <37.299065, 39.047390, 31.147163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150906, 39.309109, 30.468557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140072, 39.618710, 30.721598>,  <37.133572, 39.804470, 30.873423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140072, 39.618710, 30.721598>,  <37.150906, 39.309109, 30.468557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140072, 39.618710, 30.721598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567413, 0.532907, -0.627736,
		-0.822988, 0.341948, -0.453611,
		-0.027080, 0.774004, 0.632602,
		37.131947, 39.850910, 30.911379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030182, 39.878338, 30.040121>,  <37.150906, 39.309109, 30.468557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030182, 39.878338, 30.040121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159214, 40.040340, 30.382328>,  <37.236633, 40.137543, 30.587652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159214, 40.040340, 30.382328>,  <37.030182, 39.878338, 30.040121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159214, 40.040340, 30.382328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606848, 0.605147, -0.515298,
		-0.726412, 0.685396, -0.050567,
		0.322583, 0.405006, 0.855518,
		37.255989, 40.161842, 30.638983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966976, 40.584991, 30.022211>,  <37.030182, 39.878338, 30.040121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966976, 40.584991, 30.022211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247288, 40.506577, 30.296576>,  <37.415474, 40.459526, 30.461193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247288, 40.506577, 30.296576>,  <36.966976, 40.584991, 30.022211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247288, 40.506577, 30.296576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638139, 0.602055, -0.479904,
		-0.318875, 0.774015, 0.547010,
		0.700783, -0.196039, 0.685910,
		37.457523, 40.447765, 30.502348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330273, 41.252945, 29.993755>,  <36.966976, 40.584991, 30.022211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330273, 41.252945, 29.993755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575012, 40.990219, 30.170042>,  <37.721855, 40.832584, 30.275814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575012, 40.990219, 30.170042>,  <37.330273, 41.252945, 29.993755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575012, 40.990219, 30.170042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789797, 0.537701, -0.295125,
		-0.043132, 0.528650, 0.847743,
		0.611850, -0.656816, 0.440718,
		37.758568, 40.793175, 30.302258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774578, 41.612915, 30.413654>,  <37.330273, 41.252945, 29.993755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774578, 41.612915, 30.413654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953804, 41.269875, 30.312654>,  <38.061340, 41.064049, 30.252054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953804, 41.269875, 30.312654>,  <37.774578, 41.612915, 30.413654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953804, 41.269875, 30.312654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812072, 0.508548, -0.286212,
		0.373863, -0.076804, 0.924298,
		0.448068, -0.857601, -0.252498,
		38.088223, 41.012592, 30.236904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466885, 41.772125, 30.456770>,  <37.774578, 41.612915, 30.413654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466885, 41.772125, 30.456770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463760, 41.416290, 30.274094>,  <38.461887, 41.202789, 30.164488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463760, 41.416290, 30.274094>,  <38.466885, 41.772125, 30.456770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463760, 41.416290, 30.274094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760553, 0.291230, -0.580296,
		0.649229, -0.351869, 0.674308,
		-0.007809, -0.889592, -0.456690,
		38.461418, 41.149414, 30.137087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221615, 41.547211, 30.349112>,  <38.466885, 41.772125, 30.456770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221615, 41.547211, 30.349112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000816, 41.327137, 30.098482>,  <38.868336, 41.195091, 29.948105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000816, 41.327137, 30.098482>,  <39.221615, 41.547211, 30.349112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000816, 41.327137, 30.098482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670607, 0.153668, -0.725722,
		0.495567, -0.820781, 0.284135,
		-0.551996, -0.550186, -0.626574,
		38.835217, 41.162083, 29.910509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677460, 41.122635, 29.947044>,  <39.221615, 41.547211, 30.349112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677460, 41.122635, 29.947044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363491, 41.133755, 29.699455>,  <39.175110, 41.140427, 29.550901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363491, 41.133755, 29.699455>,  <39.677460, 41.122635, 29.947044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363491, 41.133755, 29.699455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600689, 0.279067, -0.749196,
		0.151905, -0.959869, -0.235746,
		-0.784919, 0.027804, -0.618974,
		39.128014, 41.142094, 29.513763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881821, 40.726360, 29.323927>,  <39.677460, 41.122635, 29.947044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881821, 40.726360, 29.323927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580433, 40.964752, 29.212862>,  <39.399601, 41.107788, 29.146223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580433, 40.964752, 29.212862>,  <39.881821, 40.726360, 29.323927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580433, 40.964752, 29.212862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444198, 0.150075, -0.883270,
		-0.484738, -0.788854, -0.377809,
		-0.753470, 0.595976, -0.277660,
		39.354393, 41.143543, 29.129564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716217, 40.518250, 28.643524>,  <39.881821, 40.726360, 29.323927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716217, 40.518250, 28.643524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556400, 40.883118, 28.679985>,  <39.460510, 41.102039, 28.701862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556400, 40.883118, 28.679985>,  <39.716217, 40.518250, 28.643524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556400, 40.883118, 28.679985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309436, 0.227795, -0.923233,
		-0.862912, -0.340664, -0.373272,
		-0.399541, 0.912172, 0.091154,
		39.436539, 41.156769, 28.707331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370548, 40.585587, 28.051636>,  <39.716217, 40.518250, 28.643524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370548, 40.585587, 28.051636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433624, 40.951416, 28.200600>,  <39.471470, 41.170914, 28.289978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433624, 40.951416, 28.200600>,  <39.370548, 40.585587, 28.051636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433624, 40.951416, 28.200600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315911, 0.310587, -0.896513,
		-0.935594, 0.259016, -0.239949,
		0.157686, 0.914575, 0.372409,
		39.480930, 41.225788, 28.312323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149162, 41.009605, 27.547462>,  <39.370548, 40.585587, 28.051636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149162, 41.009605, 27.547462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337269, 41.281837, 27.772198>,  <39.450130, 41.445179, 27.907038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337269, 41.281837, 27.772198>,  <39.149162, 41.009605, 27.547462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337269, 41.281837, 27.772198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447975, 0.364422, -0.816404,
		-0.760376, 0.635613, -0.133510,
		0.470263, 0.680583, 0.561836,
		39.478348, 41.486012, 27.940748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119926, 41.681530, 27.171307>,  <39.149162, 41.009605, 27.547462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119926, 41.681530, 27.171307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415329, 41.720112, 27.438231>,  <39.592571, 41.743259, 27.598385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415329, 41.720112, 27.438231>,  <39.119926, 41.681530, 27.171307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415329, 41.720112, 27.438231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606161, 0.338414, -0.719753,
		-0.295250, 0.936041, 0.191455,
		0.738509, 0.096455, 0.667309,
		39.636883, 41.749046, 27.638424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372417, 42.445938, 27.211157>,  <39.119926, 41.681530, 27.171307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372417, 42.445938, 27.211157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659580, 42.188660, 27.317663>,  <39.831879, 42.034290, 27.381567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659580, 42.188660, 27.317663>,  <39.372417, 42.445938, 27.211157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659580, 42.188660, 27.317663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537461, 0.269036, -0.799222,
		0.442424, 0.716878, 0.538839,
		0.717912, -0.643200, 0.266265,
		39.874954, 41.995701, 27.397543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815804, 42.809349, 27.194588>,  <39.372417, 42.445938, 27.211157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815804, 42.809349, 27.194588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986019, 42.449253, 27.157763>,  <40.088150, 42.233196, 27.135668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986019, 42.449253, 27.157763>,  <39.815804, 42.809349, 27.194588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986019, 42.449253, 27.157763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567149, 0.344589, -0.748064,
		0.705163, 0.266120, 0.657210,
		0.425542, -0.900243, -0.092062,
		40.113682, 42.179180, 27.130144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401058, 43.008980, 26.928118>,  <39.815804, 42.809349, 27.194588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401058, 43.008980, 26.928118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434841, 42.612354, 26.888779>,  <40.455112, 42.374378, 26.865175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434841, 42.612354, 26.888779>,  <40.401058, 43.008980, 26.928118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434841, 42.612354, 26.888779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625495, 0.129588, -0.769391,
		0.775644, 0.003465, 0.631162,
		0.084457, -0.991562, -0.098347,
		40.460178, 42.314884, 26.859274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137833, 42.833523, 26.804443>,  <40.401058, 43.008980, 26.928118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137833, 42.833523, 26.804443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925980, 42.528831, 26.655169>,  <40.798870, 42.346016, 26.565603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925980, 42.528831, 26.655169>,  <41.137833, 42.833523, 26.804443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925980, 42.528831, 26.655169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552311, 0.024223, -0.833287,
		0.643776, -0.647446, 0.407880,
		-0.529628, -0.761727, -0.373186,
		40.767090, 42.300312, 26.543213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665092, 42.321201, 26.626677>,  <41.137833, 42.833523, 26.804443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665092, 42.321201, 26.626677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335148, 42.247955, 26.412733>,  <41.137180, 42.204010, 26.284367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335148, 42.247955, 26.412733>,  <41.665092, 42.321201, 26.626677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335148, 42.247955, 26.412733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540691, 0.020768, -0.840965,
		0.165101, -0.982872, 0.081877,
		-0.824861, -0.183114, -0.534859,
		41.087688, 42.193020, 26.252275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832764, 41.773254, 26.220306>,  <41.665092, 42.321201, 26.626677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832764, 41.773254, 26.220306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521618, 41.954098, 26.045708>,  <41.334930, 42.062603, 25.940948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521618, 41.954098, 26.045708>,  <41.832764, 41.773254, 26.220306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521618, 41.954098, 26.045708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510429, 0.049341, -0.858503,
		-0.366598, -0.890598, -0.269149,
		-0.777861, 0.452107, -0.436499,
		41.288258, 42.089729, 25.914759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729156, 41.447880, 25.630503>,  <41.832764, 41.773254, 26.220306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729156, 41.447880, 25.630503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564354, 41.809261, 25.583147>,  <41.465473, 42.026093, 25.554733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564354, 41.809261, 25.583147>,  <41.729156, 41.447880, 25.630503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564354, 41.809261, 25.583147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598331, 0.170260, -0.782951,
		-0.687205, -0.393416, -0.610715,
		-0.412005, 0.903458, -0.118389,
		41.440754, 42.080299, 25.547630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655670, 41.523239, 24.991911>,  <41.729156, 41.447880, 25.630503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655670, 41.523239, 24.991911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597954, 41.907127, 25.088348>,  <41.563324, 42.137459, 25.146210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597954, 41.907127, 25.088348>,  <41.655670, 41.523239, 24.991911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597954, 41.907127, 25.088348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522683, 0.280796, -0.804957,
		-0.840228, 0.009870, -0.542143,
		-0.144286, 0.959717, 0.241091,
		41.554668, 42.195042, 25.160675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309235, 41.794201, 24.356379>,  <41.655670, 41.523239, 24.991911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309235, 41.794201, 24.356379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506397, 42.061367, 24.579424>,  <41.624695, 42.221668, 24.713251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506397, 42.061367, 24.579424>,  <41.309235, 41.794201, 24.356379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506397, 42.061367, 24.579424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660049, 0.130523, -0.739797,
		-0.566906, 0.732699, -0.376524,
		0.492903, 0.667919, 0.557611,
		41.654266, 42.261742, 24.746708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316212, 42.349514, 23.947918>,  <41.309235, 41.794201, 24.356379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316212, 42.349514, 23.947918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609806, 42.451008, 24.199911>,  <41.785965, 42.511906, 24.351107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609806, 42.451008, 24.199911>,  <41.316212, 42.349514, 23.947918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609806, 42.451008, 24.199911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612490, 0.153499, -0.775431,
		-0.293458, 0.955016, -0.042745,
		0.733988, 0.253737, 0.629983,
		41.830002, 42.527130, 24.388906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586494, 43.081459, 23.738131>,  <41.316212, 42.349514, 23.947918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586494, 43.081459, 23.738131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891483, 42.926399, 23.945345>,  <42.074478, 42.833363, 24.069674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891483, 42.926399, 23.945345>,  <41.586494, 43.081459, 23.738131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891483, 42.926399, 23.945345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618114, 0.199777, -0.760279,
		0.191229, 0.899899, 0.391935,
		0.762474, -0.387648, 0.518037,
		42.120224, 42.810104, 24.100756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140839, 43.548119, 23.661560>,  <41.586494, 43.081459, 23.738131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140839, 43.548119, 23.661560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307400, 43.193874, 23.743835>,  <42.407337, 42.981327, 23.793201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307400, 43.193874, 23.743835>,  <42.140839, 43.548119, 23.661560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307400, 43.193874, 23.743835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683342, 0.155622, -0.713320,
		0.599714, 0.437581, 0.669975,
		0.416398, -0.885610, 0.205689,
		42.432320, 42.928192, 23.805542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904129, 43.666065, 23.636513>,  <42.140839, 43.548119, 23.661560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904129, 43.666065, 23.636513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859802, 43.271965, 23.584366>,  <42.833206, 43.035503, 23.553078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859802, 43.271965, 23.584366>,  <42.904129, 43.666065, 23.636513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859802, 43.271965, 23.584366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654947, 0.026268, -0.755218,
		0.747506, -0.169072, 0.642378,
		-0.110813, -0.985254, -0.130369,
		42.826557, 42.976391, 23.545256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553638, 43.438171, 23.445129>,  <42.904129, 43.666065, 23.636513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553638, 43.438171, 23.445129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356892, 43.100487, 23.359928>,  <43.238846, 42.897877, 23.308807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356892, 43.100487, 23.359928>,  <43.553638, 43.438171, 23.445129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356892, 43.100487, 23.359928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621953, -0.169481, -0.764493,
		0.609297, -0.508505, 0.608424,
		-0.491865, -0.844215, -0.213002,
		43.209332, 42.847221, 23.296028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062035, 42.876125, 23.399242>,  <43.553638, 43.438171, 23.445129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062035, 42.876125, 23.399242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726868, 42.787968, 23.199516>,  <43.525768, 42.735073, 23.079679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726868, 42.787968, 23.199516>,  <44.062035, 42.876125, 23.399242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726868, 42.787968, 23.199516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515391, -0.018444, -0.856756,
		0.179613, -0.975237, 0.129043,
		-0.837921, -0.220393, -0.499316,
		43.475491, 42.721851, 23.049721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225117, 42.410057, 22.890957>,  <44.062035, 42.876125, 23.399242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225117, 42.410057, 22.890957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872849, 42.530460, 22.744631>,  <43.661488, 42.602703, 22.656836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872849, 42.530460, 22.744631>,  <44.225117, 42.410057, 22.890957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872849, 42.530460, 22.744631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416353, 0.123405, -0.900789,
		-0.226003, -0.945603, -0.234005,
		-0.880666, 0.301010, -0.365814,
		43.608650, 42.620762, 22.634886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057564, 41.927727, 22.331272>,  <44.225117, 42.410057, 22.890957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057564, 41.927727, 22.331272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856644, 42.270626, 22.285971>,  <43.736092, 42.476364, 22.258791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856644, 42.270626, 22.285971>,  <44.057564, 41.927727, 22.331272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856644, 42.270626, 22.285971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148844, -0.043299, -0.987912,
		-0.851785, -0.513087, -0.105846,
		-0.502302, 0.857244, -0.113251,
		43.705952, 42.527798, 22.251995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762032, 41.773834, 21.706953>,  <44.057564, 41.927727, 22.331272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762032, 41.773834, 21.706953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736565, 42.169609, 21.759043>,  <43.721283, 42.407074, 21.790297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736565, 42.169609, 21.759043>,  <43.762032, 41.773834, 21.706953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736565, 42.169609, 21.759043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332031, 0.144056, -0.932203,
		-0.941117, -0.016114, -0.337696,
		-0.063669, 0.989438, 0.130224,
		43.717464, 42.466442, 21.798109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425262, 41.543983, 21.511152>,  <43.762032, 41.773834, 21.706953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425262, 41.543983, 21.511152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612762, 41.226887, 21.667015>,  <44.725262, 41.036629, 21.760532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612762, 41.226887, 21.667015>,  <44.425262, 41.543983, 21.511152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612762, 41.226887, 21.667015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763743, -0.142094, 0.629687,
		-0.443811, -0.592766, -0.672057,
		0.468752, -0.792741, 0.389658,
		44.753387, 40.989063, 21.783913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002270, 41.024075, 21.477325>,  <44.425262, 41.543983, 21.511152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002270, 41.024075, 21.477325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264393, 40.873154, 21.739079>,  <44.421665, 40.782600, 21.896130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264393, 40.873154, 21.739079>,  <44.002270, 41.024075, 21.477325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264393, 40.873154, 21.739079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755156, -0.347666, 0.555759,
		0.017816, -0.858352, -0.512752,
		0.655303, -0.377306, 0.654384,
		44.460983, 40.759960, 21.935394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606148, 40.363270, 21.711100>,  <44.002270, 41.024075, 21.477325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606148, 40.363270, 21.711100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913063, 40.370781, 21.967510>,  <44.097214, 40.375286, 22.121357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913063, 40.370781, 21.967510>,  <43.606148, 40.363270, 21.711100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913063, 40.370781, 21.967510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598570, -0.337807, 0.726361,
		0.230183, -0.941028, -0.247955,
		0.767287, 0.018777, 0.641029,
		44.143250, 40.376415, 22.159819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714539, 39.708698, 22.060772>,  <43.606148, 40.363270, 21.711100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714539, 39.708698, 22.060772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867500, 39.996952, 22.292099>,  <43.959278, 40.169903, 22.430895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867500, 39.996952, 22.292099>,  <43.714539, 39.708698, 22.060772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867500, 39.996952, 22.292099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636621, -0.248138, 0.730165,
		0.669685, -0.647389, 0.363881,
		0.382408, 0.720635, 0.578316,
		43.982224, 40.213142, 22.465593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930382, 39.400070, 22.700701>,  <43.714539, 39.708698, 22.060772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930382, 39.400070, 22.700701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870323, 39.790386, 22.764317>,  <43.834286, 40.024574, 22.802486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870323, 39.790386, 22.764317>,  <43.930382, 39.400070, 22.700701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870323, 39.790386, 22.764317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682675, -0.218688, 0.697231,
		0.715130, -0.003884, 0.698981,
		-0.150151, 0.975787, 0.159042,
		43.825279, 40.083122, 22.812029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818649, 39.430977, 23.386047>,  <43.930382, 39.400070, 22.700701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818649, 39.430977, 23.386047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696445, 39.786354, 23.249037>,  <43.623123, 39.999580, 23.166830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696445, 39.786354, 23.249037>,  <43.818649, 39.430977, 23.386047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696445, 39.786354, 23.249037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805181, -0.049024, 0.591000,
		0.508280, 0.456353, 0.730338,
		-0.305509, 0.888447, -0.342529,
		43.604794, 40.052887, 23.146278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801994, 39.806416, 23.965311>,  <43.818649, 39.430977, 23.386047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801994, 39.806416, 23.965311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559326, 39.992729, 23.707630>,  <43.413727, 40.104519, 23.553022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559326, 39.992729, 23.707630>,  <43.801994, 39.806416, 23.965311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559326, 39.992729, 23.707630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718778, 0.024752, 0.694799,
		0.339574, 0.884551, 0.319781,
		-0.606669, 0.465787, -0.644201,
		43.377327, 40.132465, 23.514370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517174, 40.428974, 24.278261>,  <43.801994, 39.806416, 23.965311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517174, 40.428974, 24.278261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268913, 40.318676, 23.984663>,  <43.119957, 40.252495, 23.808504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268913, 40.318676, 23.984663>,  <43.517174, 40.428974, 24.278261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268913, 40.318676, 23.984663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765393, 0.009896, 0.643486,
		-0.170176, 0.961179, -0.217198,
		-0.620655, -0.275748, -0.733996,
		43.082718, 40.235950, 23.764463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919399, 40.745312, 24.450594>,  <43.517174, 40.428974, 24.278261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919399, 40.745312, 24.450594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790390, 40.473888, 24.186611>,  <42.712986, 40.311035, 24.028221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790390, 40.473888, 24.186611>,  <42.919399, 40.745312, 24.450594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790390, 40.473888, 24.186611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853094, -0.093718, 0.513271,
		-0.410132, 0.728546, -0.548645,
		-0.322524, -0.678555, -0.659955,
		42.693634, 40.270321, 23.988625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212540, 40.964149, 24.432831>,  <42.919399, 40.745312, 24.450594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212540, 40.964149, 24.432831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246796, 40.575550, 24.344416>,  <42.267349, 40.342392, 24.291367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246796, 40.575550, 24.344416>,  <42.212540, 40.964149, 24.432831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246796, 40.575550, 24.344416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819420, -0.194875, 0.539049,
		-0.566760, 0.134960, -0.812754,
		0.085635, -0.971499, -0.221036,
		42.272488, 40.284100, 24.278105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446175, 40.740749, 24.458601>,  <42.212540, 40.964149, 24.432831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446175, 40.740749, 24.458601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654076, 40.401730, 24.415684>,  <41.778816, 40.198318, 24.389935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654076, 40.401730, 24.415684>,  <41.446175, 40.740749, 24.458601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654076, 40.401730, 24.415684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660146, -0.478163, 0.579281,
		-0.542273, -0.230255, -0.808036,
		0.519756, -0.847551, -0.107293,
		41.810001, 40.147465, 24.383497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068474, 40.079918, 24.047379>,  <41.446175, 40.740749, 24.458601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068474, 40.079918, 24.047379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347191, 39.971699, 24.313093>,  <41.514423, 39.906769, 24.472523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347191, 39.971699, 24.313093>,  <41.068474, 40.079918, 24.047379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347191, 39.971699, 24.313093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700366, -0.456511, 0.548713,
		0.154801, -0.847586, -0.507578,
		0.696796, -0.270548, 0.664289,
		41.556229, 39.890533, 24.512381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866226, 39.417255, 24.278812>,  <41.068474, 40.079918, 24.047379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866226, 39.417255, 24.278812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157833, 39.495602, 24.541164>,  <41.332798, 39.542610, 24.698576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157833, 39.495602, 24.541164>,  <40.866226, 39.417255, 24.278812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157833, 39.495602, 24.541164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512062, -0.479807, 0.712445,
		0.454239, -0.855232, -0.249490,
		0.729013, 0.195866, 0.655879,
		41.376537, 39.554363, 24.737928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001335, 38.756500, 24.630615>,  <40.866226, 39.417255, 24.278812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001335, 38.756500, 24.630615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114780, 39.061825, 24.862795>,  <41.182846, 39.245018, 25.002102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114780, 39.061825, 24.862795>,  <41.001335, 38.756500, 24.630615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114780, 39.061825, 24.862795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547690, -0.367929, 0.751442,
		0.787148, -0.531022, 0.313709,
		0.283610, 0.763311, 0.580450,
		41.199863, 39.290817, 25.036930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133152, 38.406902, 25.290930>,  <41.001335, 38.756500, 24.630615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133152, 38.406902, 25.290930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090717, 38.796146, 25.372713>,  <41.065254, 39.029694, 25.421783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090717, 38.796146, 25.372713>,  <41.133152, 38.406902, 25.290930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090717, 38.796146, 25.372713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397839, -0.229985, 0.888162,
		0.911301, 0.012883, 0.411540,
		-0.106091, 0.973109, 0.204460,
		41.058891, 39.088078, 25.434052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489716, 38.508007, 25.883688>,  <41.133152, 38.406902, 25.290930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489716, 38.508007, 25.883688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239292, 38.819267, 25.863573>,  <41.089039, 39.006023, 25.851505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239292, 38.819267, 25.863573>,  <41.489716, 38.508007, 25.883688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239292, 38.819267, 25.863573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422587, -0.284382, 0.860550,
		0.655337, 0.560007, 0.506877,
		-0.626061, 0.778150, -0.050286,
		41.051476, 39.052711, 25.848488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491978, 38.827068, 26.539427>,  <41.489716, 38.508007, 25.883688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491978, 38.827068, 26.539427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151085, 38.972473, 26.388933>,  <40.946548, 39.059715, 26.298637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151085, 38.972473, 26.388933>,  <41.491978, 38.827068, 26.539427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151085, 38.972473, 26.388933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422637, -0.054531, 0.904657,
		0.308340, 0.929990, 0.200109,
		-0.852235, 0.363515, -0.376234,
		40.895416, 39.081528, 26.276062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164162, 39.232754, 27.156651>,  <41.491978, 38.827068, 26.539427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164162, 39.232754, 27.156651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855370, 39.180580, 26.907804>,  <40.670094, 39.149277, 26.758497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855370, 39.180580, 26.907804>,  <41.164162, 39.232754, 27.156651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855370, 39.180580, 26.907804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607959, -0.134188, 0.782547,
		-0.185549, 0.982335, 0.024294,
		-0.771983, -0.130430, -0.622117,
		40.623775, 39.141453, 26.721169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724174, 39.714405, 27.339592>,  <41.164162, 39.232754, 27.156651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724174, 39.714405, 27.339592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496906, 39.436440, 27.163284>,  <40.360546, 39.269661, 27.057499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496906, 39.436440, 27.163284>,  <40.724174, 39.714405, 27.339592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496906, 39.436440, 27.163284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532913, -0.097422, 0.840543,
		-0.627043, 0.712466, -0.314975,
		-0.568173, -0.694911, -0.440770,
		40.326454, 39.227966, 27.031054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929386, 39.890324, 27.517473>,  <40.724174, 39.714405, 27.339592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929386, 39.890324, 27.517473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930458, 39.506855, 27.403675>,  <39.931103, 39.276772, 27.335396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930458, 39.506855, 27.403675>,  <39.929386, 39.890324, 27.517473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930458, 39.506855, 27.403675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499162, -0.247802, 0.830320,
		-0.866505, 0.139780, -0.479199,
		0.002684, -0.958674, -0.284495,
		39.931263, 39.219254, 27.318327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296051, 39.681522, 27.599932>,  <39.929386, 39.890324, 27.517473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296051, 39.681522, 27.599932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486328, 39.329689, 27.602491>,  <39.600494, 39.118587, 27.604027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486328, 39.329689, 27.602491>,  <39.296051, 39.681522, 27.599932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486328, 39.329689, 27.602491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493949, -0.261100, 0.829362,
		-0.727825, -0.397684, -0.558675,
		0.475695, -0.879587, 0.006400,
		39.629036, 39.065811, 27.604412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787750, 39.070847, 27.653955>,  <39.296051, 39.681522, 27.599932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787750, 39.070847, 27.653955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140472, 38.923527, 27.771780>,  <39.352108, 38.835133, 27.842476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140472, 38.923527, 27.771780>,  <38.787750, 39.070847, 27.653955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140472, 38.923527, 27.771780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399346, -0.250875, 0.881808,
		-0.250875, -0.895217, -0.368304,
		-0.881808, 0.368304, -0.294564,
		39.405014, 38.813034, 27.860149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561020, 38.618660, 28.197676>,  <38.787750, 39.070847, 27.653955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561020, 38.618660, 28.197676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952312, 38.666794, 28.265297>,  <39.187088, 38.695675, 28.305870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952312, 38.666794, 28.265297>,  <38.561020, 38.618660, 28.197676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952312, 38.666794, 28.265297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144668, -0.188575, 0.971345,
		0.148764, -0.974659, -0.167062,
		0.978233, 0.120332, 0.169055,
		39.245781, 38.702892, 28.316013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651772, 38.191448, 28.700768>,  <38.561020, 38.618660, 28.197676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651772, 38.191448, 28.700768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971413, 38.431423, 28.716290>,  <39.163197, 38.575409, 28.725603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971413, 38.431423, 28.716290>,  <38.651772, 38.191448, 28.700768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971413, 38.431423, 28.716290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058489, -0.141822, 0.988163,
		0.598338, -0.787377, -0.148421,
		0.799106, 0.599936, 0.038805,
		39.211143, 38.611404, 28.727930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099556, 37.784878, 29.010410>,  <38.651772, 38.191448, 28.700768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099556, 37.784878, 29.010410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204945, 38.166573, 29.067001>,  <39.268177, 38.395588, 29.100956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204945, 38.166573, 29.067001>,  <39.099556, 37.784878, 29.010410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204945, 38.166573, 29.067001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066134, -0.128447, 0.989509,
		0.962398, -0.270064, 0.029266,
		0.263471, 0.954236, 0.141477,
		39.283985, 38.452843, 29.109444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634418, 37.773685, 29.565281>,  <39.099556, 37.784878, 29.010410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634418, 37.773685, 29.565281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502903, 38.151447, 29.564556>,  <39.423992, 38.378105, 29.564121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502903, 38.151447, 29.564556>,  <39.634418, 37.773685, 29.565281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502903, 38.151447, 29.564556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050990, 0.019666, 0.998505,
		0.943025, 0.328209, -0.054621,
		-0.328793, 0.944400, -0.001810,
		39.404266, 38.434769, 29.564013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073879, 38.164062, 29.959135>,  <39.634418, 37.773685, 29.565281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073879, 38.164062, 29.959135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733082, 38.373470, 29.957062>,  <39.528603, 38.499115, 29.955818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733082, 38.373470, 29.957062>,  <40.073879, 38.164062, 29.959135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733082, 38.373470, 29.957062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106142, 0.182415, 0.977476,
		0.512674, 0.832256, -0.210985,
		-0.851997, 0.523521, -0.005182,
		39.477482, 38.530525, 29.955507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275368, 38.865654, 30.347578>,  <40.073879, 38.164062, 29.959135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275368, 38.865654, 30.347578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886147, 38.773434, 30.349333>,  <39.652615, 38.718102, 30.350386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886147, 38.773434, 30.349333>,  <40.275368, 38.865654, 30.347578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886147, 38.773434, 30.349333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006042, 0.044512, 0.998991,
		-0.230512, 0.972042, -0.044705,
		-0.973051, -0.230549, 0.004387,
		39.594231, 38.704269, 30.350649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154617, 39.033699, 31.021034>,  <40.275368, 38.865654, 30.347578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154617, 39.033699, 31.021034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811852, 38.845726, 30.936317>,  <39.606190, 38.732941, 30.885487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811852, 38.845726, 30.936317>,  <40.154617, 39.033699, 31.021034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811852, 38.845726, 30.936317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029880, -0.364910, 0.930563,
		-0.514586, 0.803745, 0.298657,
		-0.856918, -0.469931, -0.211793,
		39.554775, 38.704746, 30.872780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716579, 39.158356, 31.601040>,  <40.154617, 39.033699, 31.021034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716579, 39.158356, 31.601040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518089, 38.862389, 31.419365>,  <39.398994, 38.684811, 31.310360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518089, 38.862389, 31.419365>,  <39.716579, 39.158356, 31.601040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518089, 38.862389, 31.419365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068094, -0.488361, 0.869981,
		-0.865520, 0.462632, 0.191952,
		-0.496223, -0.739915, -0.454189,
		39.369221, 38.640415, 31.283108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151031, 39.021442, 32.098835>,  <39.716579, 39.158356, 31.601040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151031, 39.021442, 32.098835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219730, 38.701710, 31.868505>,  <39.260948, 38.509872, 31.730307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219730, 38.701710, 31.868505>,  <39.151031, 39.021442, 32.098835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219730, 38.701710, 31.868505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047972, -0.590605, 0.805534,
		-0.983973, -0.110721, -0.139777,
		0.171742, -0.799329, -0.575828,
		39.271252, 38.461910, 31.695757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559181, 38.639065, 32.223850>,  <39.151031, 39.021442, 32.098835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559181, 38.639065, 32.223850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859428, 38.399521, 32.112179>,  <39.039577, 38.255795, 32.045177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859428, 38.399521, 32.112179>,  <38.559181, 38.639065, 32.223850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859428, 38.399521, 32.112179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180806, -0.592564, 0.784969,
		-0.635520, -0.538733, -0.553065,
		0.750615, -0.598861, -0.279181,
		39.084614, 38.219864, 32.028423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226887, 37.893494, 32.306652>,  <38.559181, 38.639065, 32.223850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226887, 37.893494, 32.306652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622498, 37.834579, 32.301903>,  <38.859863, 37.799232, 32.299053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622498, 37.834579, 32.301903>,  <38.226887, 37.893494, 32.306652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622498, 37.834579, 32.301903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084550, -0.629973, 0.772001,
		-0.121180, -0.762524, -0.635510,
		0.989023, -0.147283, -0.011869,
		38.919205, 37.790394, 32.298344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252819, 37.201653, 32.552544>,  <38.226887, 37.893494, 32.306652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252819, 37.201653, 32.552544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646900, 37.269577, 32.561848>,  <38.883350, 37.310333, 32.567429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646900, 37.269577, 32.561848>,  <38.252819, 37.201653, 32.552544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646900, 37.269577, 32.561848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105315, -0.706800, 0.699530,
		0.135229, -0.686729, -0.714224,
		0.985201, 0.169816, 0.023257,
		38.942459, 37.320522, 32.568825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652443, 36.558369, 32.496262>,  <38.252819, 37.201653, 32.552544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652443, 36.558369, 32.496262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848801, 36.841232, 32.699810>,  <38.966614, 37.010952, 32.821938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848801, 36.841232, 32.699810>,  <38.652443, 36.558369, 32.496262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848801, 36.841232, 32.699810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105824, -0.628165, 0.770850,
		0.864769, -0.324554, -0.383196,
		0.490892, 0.707159, 0.508872,
		38.996067, 37.053379, 32.852470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276871, 36.235134, 32.672390>,  <38.652443, 36.558369, 32.496262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276871, 36.235134, 32.672390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233009, 36.547485, 32.918381>,  <39.206692, 36.734898, 33.065975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233009, 36.547485, 32.918381>,  <39.276871, 36.235134, 32.672390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233009, 36.547485, 32.918381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059887, -0.622777, 0.780104,
		0.992164, 0.048710, 0.115053,
		-0.109651, 0.780882, 0.614980,
		39.200115, 36.781750, 33.102875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754734, 36.249844, 33.143059>,  <39.276871, 36.235134, 32.672390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754734, 36.249844, 33.143059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473515, 36.454937, 33.340172>,  <39.304783, 36.577991, 33.458439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473515, 36.454937, 33.340172>,  <39.754734, 36.249844, 33.143059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473515, 36.454937, 33.340172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024662, -0.674945, 0.737455,
		0.710718, 0.530617, 0.461872,
		-0.703045, 0.512732, 0.492782,
		39.262600, 36.608757, 33.488007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869373, 36.184746, 33.813507>,  <39.754734, 36.249844, 33.143059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869373, 36.184746, 33.813507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494705, 36.312931, 33.870014>,  <39.269905, 36.389843, 33.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494705, 36.312931, 33.870014>,  <39.869373, 36.184746, 33.813507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494705, 36.312931, 33.870014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142394, -0.717000, 0.682375,
		0.319967, 0.619042, 0.717222,
		-0.936667, 0.320466, 0.141269,
		39.213707, 36.409069, 33.912395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735523, 36.251595, 34.605900>,  <39.869373, 36.184746, 33.813507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735523, 36.251595, 34.605900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377277, 36.236122, 34.428638>,  <39.162331, 36.226841, 34.322281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377277, 36.236122, 34.428638>,  <39.735523, 36.251595, 34.605900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377277, 36.236122, 34.428638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285278, -0.714437, 0.638902,
		-0.341315, 0.698630, 0.628825,
		-0.895612, -0.038677, -0.443152,
		39.108593, 36.224518, 34.295692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228554, 36.350376, 35.122894>,  <39.735523, 36.251595, 34.605900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228554, 36.350376, 35.122894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067638, 36.149780, 34.816517>,  <38.971088, 36.029423, 34.632690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067638, 36.149780, 34.816517>,  <39.228554, 36.350376, 35.122894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067638, 36.149780, 34.816517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260103, -0.739550, 0.620815,
		-0.877786, 0.448974, 0.167076,
		-0.402291, -0.501486, -0.765946,
		38.946953, 35.999336, 34.586735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504330, 36.112564, 35.304325>,  <39.228554, 36.350376, 35.122894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504330, 36.112564, 35.304325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669579, 35.865475, 35.036671>,  <38.768726, 35.717220, 34.876076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669579, 35.865475, 35.036671>,  <38.504330, 36.112564, 35.304325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669579, 35.865475, 35.036671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219410, -0.780642, 0.585199,
		-0.883850, -0.094942, -0.458034,
		0.413120, -0.617725, -0.669139,
		38.793514, 35.680157, 34.835930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064552, 35.528198, 35.236660>,  <38.504330, 36.112564, 35.304325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064552, 35.528198, 35.236660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389225, 35.376926, 35.058601>,  <38.584030, 35.286163, 34.951767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389225, 35.376926, 35.058601>,  <38.064552, 35.528198, 35.236660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389225, 35.376926, 35.058601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070690, -0.820100, 0.567837,
		-0.579808, -0.429435, -0.692393,
		0.811681, -0.378182, -0.445143,
		38.632729, 35.263474, 34.925056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969646, 34.811600, 34.952740>,  <38.064552, 35.528198, 35.236660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969646, 34.811600, 34.952740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359402, 34.851238, 35.033474>,  <38.593254, 34.875023, 35.081913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359402, 34.851238, 35.033474>,  <37.969646, 34.811600, 34.952740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359402, 34.851238, 35.033474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025415, -0.843347, 0.536767,
		0.223412, -0.528152, -0.819233,
		0.974392, 0.099099, 0.201837,
		38.651718, 34.880966, 35.094025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146091, 34.128571, 35.332031>,  <37.969646, 34.811600, 34.952740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146091, 34.128571, 35.332031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501045, 34.312290, 35.316090>,  <38.714020, 34.422523, 35.306526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501045, 34.312290, 35.316090>,  <38.146091, 34.128571, 35.332031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501045, 34.312290, 35.316090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343170, -0.600344, 0.722372,
		0.307859, -0.654700, -0.690355,
		0.887387, 0.459299, -0.039852,
		38.767262, 34.450081, 35.304134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743969, 33.653008, 35.165497>,  <38.146091, 34.128571, 35.332031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743969, 33.653008, 35.165497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878704, 33.969154, 35.370186>,  <38.959545, 34.158844, 35.493000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878704, 33.969154, 35.370186>,  <38.743969, 33.653008, 35.165497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878704, 33.969154, 35.370186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442910, -0.612603, 0.654635,
		0.830886, 0.006142, -0.556409,
		0.336838, 0.790366, 0.511724,
		38.979755, 34.206264, 35.523705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402554, 33.508286, 35.334023>,  <38.743969, 33.653008, 35.165497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402554, 33.508286, 35.334023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255184, 33.756081, 35.611294>,  <39.166763, 33.904758, 35.777657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255184, 33.756081, 35.611294>,  <39.402554, 33.508286, 35.334023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255184, 33.756081, 35.611294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344100, -0.601798, 0.720718,
		0.863630, 0.504053, 0.008551,
		-0.368426, 0.619491, 0.693176,
		39.144657, 33.941929, 35.819248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909416, 33.464363, 35.790966>,  <39.402554, 33.508286, 35.334023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909416, 33.464363, 35.790966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604473, 33.640484, 35.980682>,  <39.421509, 33.746155, 36.094513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604473, 33.640484, 35.980682>,  <39.909416, 33.464363, 35.790966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604473, 33.640484, 35.980682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171009, -0.569776, 0.803811,
		0.624157, 0.693896, 0.359076,
		-0.762354, 0.440299, 0.474292,
		39.375767, 33.772575, 36.122971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162979, 33.870377, 36.378277>,  <39.909416, 33.464363, 35.790966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162979, 33.870377, 36.378277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779591, 33.775883, 36.442177>,  <39.549557, 33.719189, 36.480518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779591, 33.775883, 36.442177>,  <40.162979, 33.870377, 36.378277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779591, 33.775883, 36.442177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266781, -0.544807, 0.794992,
		-0.100769, 0.804599, 0.585206,
		-0.958475, -0.236233, 0.159752,
		39.492046, 33.705013, 36.490101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995949, 34.062538, 37.064350>,  <40.162979, 33.870377, 36.378277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995949, 34.062538, 37.064350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778118, 33.759750, 36.919884>,  <39.647419, 33.578079, 36.833206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778118, 33.759750, 36.919884>,  <39.995949, 34.062538, 37.064350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778118, 33.759750, 36.919884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181465, -0.526755, 0.830421,
		-0.818848, 0.386686, 0.424220,
		-0.544572, -0.756970, -0.361162,
		39.614746, 33.532658, 36.811535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586258, 33.841530, 37.588684>,  <39.995949, 34.062538, 37.064350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586258, 33.841530, 37.588684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590332, 33.523453, 37.346176>,  <39.592777, 33.332607, 37.200672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590332, 33.523453, 37.346176>,  <39.586258, 33.841530, 37.588684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590332, 33.523453, 37.346176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108011, -0.601881, 0.791248,
		-0.994098, -0.073542, 0.079760,
		0.010184, -0.795193, -0.606272,
		39.593388, 33.284897, 37.164295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312004, 33.330379, 37.950287>,  <39.586258, 33.841530, 37.588684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312004, 33.330379, 37.950287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512486, 33.147602, 37.656349>,  <39.632774, 33.037937, 37.479988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512486, 33.147602, 37.656349>,  <39.312004, 33.330379, 37.950287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512486, 33.147602, 37.656349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135501, -0.797289, 0.588192,
		-0.854654, -0.394376, -0.337688,
		0.501204, -0.456944, -0.734844,
		39.662846, 33.010517, 37.435894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127415, 32.662506, 37.922298>,  <39.312004, 33.330379, 37.950287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127415, 32.662506, 37.922298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485779, 32.619774, 37.749821>,  <39.700798, 32.594135, 37.646336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485779, 32.619774, 37.749821>,  <39.127415, 32.662506, 37.922298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485779, 32.619774, 37.749821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126864, -0.868699, 0.478818,
		-0.425730, -0.483682, -0.764726,
		0.895913, -0.106831, -0.431193,
		39.754551, 32.587723, 37.620464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125557, 32.030903, 37.640965>,  <39.127415, 32.662506, 37.922298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125557, 32.030903, 37.640965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519470, 32.098335, 37.657860>,  <39.755817, 32.138794, 37.667995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519470, 32.098335, 37.657860>,  <39.125557, 32.030903, 37.640965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519470, 32.098335, 37.657860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117158, -0.823463, 0.555143,
		0.128368, -0.541746, -0.830682,
		0.984782, 0.168583, 0.042237,
		39.814903, 32.148911, 37.670532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376526, 31.482412, 37.581619>,  <39.125557, 32.030903, 37.640965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376526, 31.482412, 37.581619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669281, 31.690859, 37.757244>,  <39.844936, 31.815928, 37.862617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669281, 31.690859, 37.757244>,  <39.376526, 31.482412, 37.581619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669281, 31.690859, 37.757244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257706, -0.808151, 0.529603,
		0.630812, -0.274463, -0.725773,
		0.731890, 0.521117, 0.439060,
		39.888847, 31.847195, 37.888962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819874, 31.048998, 37.984646>,  <39.376526, 31.482412, 37.581619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819874, 31.048998, 37.984646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983406, 31.378082, 38.142635>,  <40.081528, 31.575533, 38.237427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983406, 31.378082, 38.142635>,  <39.819874, 31.048998, 37.984646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983406, 31.378082, 38.142635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130161, -0.480933, 0.867042,
		0.903280, -0.303065, -0.303706,
		0.408832, 0.822712, 0.394969,
		40.106056, 31.624895, 38.261127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249874, 30.780680, 38.449589>,  <39.819874, 31.048998, 37.984646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249874, 30.780680, 38.449589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300327, 31.162802, 38.556534>,  <40.330601, 31.392075, 38.620701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300327, 31.162802, 38.556534>,  <40.249874, 30.780680, 38.449589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300327, 31.162802, 38.556534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141892, -0.284114, 0.948233,
		0.981813, -0.081668, -0.171387,
		0.126133, 0.955306, 0.267359,
		40.338169, 31.449394, 38.636742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931824, 30.908373, 38.714451>,  <40.249874, 30.780680, 38.449589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931824, 30.908373, 38.714451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713001, 31.177107, 38.914196>,  <40.581707, 31.338346, 39.034042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713001, 31.177107, 38.914196>,  <40.931824, 30.908373, 38.714451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713001, 31.177107, 38.914196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206924, -0.469502, 0.858341,
		0.811118, 0.572892, 0.117825,
		-0.547056, 0.671835, 0.499367,
		40.548885, 31.378658, 39.064007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378727, 31.099304, 39.405350>,  <40.931824, 30.908373, 38.714451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378727, 31.099304, 39.405350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002129, 31.222710, 39.459629>,  <40.776169, 31.296753, 39.492195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002129, 31.222710, 39.459629>,  <41.378727, 31.099304, 39.405350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002129, 31.222710, 39.459629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034085, -0.313403, 0.949008,
		0.335308, 0.898109, 0.284550,
		-0.941492, 0.308512, 0.135699,
		40.719681, 31.315264, 39.500340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435543, 31.522842, 39.983768>,  <41.378727, 31.099304, 39.405350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435543, 31.522842, 39.983768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053673, 31.413523, 39.936619>,  <40.824551, 31.347931, 39.908329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053673, 31.413523, 39.936619>,  <41.435543, 31.522842, 39.983768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053673, 31.413523, 39.936619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079924, -0.146102, 0.986036,
		-0.286705, 0.950769, 0.117638,
		-0.954679, -0.273299, -0.117877,
		40.767269, 31.331533, 39.901257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878780, 31.957205, 40.354420>,  <41.435543, 31.522842, 39.983768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878780, 31.957205, 40.354420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823784, 31.563612, 40.309036>,  <40.790787, 31.327456, 40.281807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823784, 31.563612, 40.309036>,  <40.878780, 31.957205, 40.354420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823784, 31.563612, 40.309036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012553, -0.116271, 0.993138,
		-0.990424, 0.135122, 0.028338,
		-0.137489, -0.983983, -0.113461,
		40.782536, 31.268417, 40.274998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284199, 31.626942, 40.633266>,  <40.878780, 31.957205, 40.354420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284199, 31.626942, 40.633266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596424, 31.376913, 40.633247>,  <40.783760, 31.226896, 40.633236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596424, 31.376913, 40.633247>,  <40.284199, 31.626942, 40.633266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596424, 31.376913, 40.633247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008002, -0.010074, 0.999917,
		-0.625021, -0.780502, -0.012866,
		0.780567, -0.625072, -0.000051,
		40.830593, 31.189392, 40.633232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120155, 31.063538, 41.064774>,  <40.284199, 31.626942, 40.633266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120155, 31.063538, 41.064774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505608, 31.170351, 41.060577>,  <40.736877, 31.234438, 41.058060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505608, 31.170351, 41.060577>,  <40.120155, 31.063538, 41.064774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505608, 31.170351, 41.060577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033399, -0.081399, 0.996122,
		0.265142, -0.960244, -0.087357,
		0.963631, 0.267031, -0.010489,
		40.794697, 31.250460, 41.057430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547173, 30.561073, 41.503273>,  <40.120155, 31.063538, 41.064774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547173, 30.561073, 41.503273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627155, 30.952656, 41.486942>,  <40.675144, 31.187605, 41.477142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627155, 30.952656, 41.486942>,  <40.547173, 30.561073, 41.503273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627155, 30.952656, 41.486942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227157, 0.086850, 0.969978,
		0.953110, -0.184675, 0.239742,
		0.199952, 0.978954, -0.040827,
		40.687141, 31.246342, 41.474693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944210, 30.410057, 40.895012>,  <40.547173, 30.561073, 41.503273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944210, 30.410057, 40.895012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544693, 30.427820, 40.886562>,  <40.304985, 30.438478, 40.881493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544693, 30.427820, 40.886562>,  <40.944210, 30.410057, 40.895012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544693, 30.427820, 40.886562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049177, 0.898875, -0.435436,
		-0.000349, -0.435948, -0.899972,
		-0.998790, 0.044410, -0.021125,
		40.245056, 30.441143, 40.880226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706291, 30.356819, 40.186352>,  <40.944210, 30.410057, 40.895012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706291, 30.356819, 40.186352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445618, 30.578817, 40.393150>,  <40.289215, 30.712017, 40.517231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445618, 30.578817, 40.393150>,  <40.706291, 30.356819, 40.186352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445618, 30.578817, 40.393150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087674, 0.732166, -0.675460,
		-0.753406, -0.394859, -0.525800,
		-0.651684, 0.554995, 0.516999,
		40.250111, 30.745316, 40.548248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069332, 30.535028, 39.783279>,  <40.706291, 30.356819, 40.186352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069332, 30.535028, 39.783279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199238, 30.812391, 40.040562>,  <40.277180, 30.978809, 40.194931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199238, 30.812391, 40.040562>,  <40.069332, 30.535028, 39.783279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199238, 30.812391, 40.040562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159520, 0.630169, -0.759895,
		-0.932247, 0.349388, 0.094041,
		0.324760, 0.693408, 0.643208,
		40.296665, 31.020414, 40.233524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501675, 31.067883, 39.864323>,  <40.069332, 30.535028, 39.783279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501675, 31.067883, 39.864323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883396, 31.180565, 39.904228>,  <40.112427, 31.248175, 39.928173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883396, 31.180565, 39.904228>,  <39.501675, 31.067883, 39.864323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883396, 31.180565, 39.904228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091127, 0.592228, -0.800601,
		-0.284618, 0.754922, 0.590834,
		0.954300, 0.281706, 0.099765,
		40.169685, 31.265078, 39.934158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482040, 31.688559, 39.720657>,  <39.501675, 31.067883, 39.864323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482040, 31.688559, 39.720657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867996, 31.597727, 39.667858>,  <40.099571, 31.543228, 39.636177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867996, 31.597727, 39.667858>,  <39.482040, 31.688559, 39.720657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867996, 31.597727, 39.667858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018245, 0.559281, -0.828777,
		0.262024, 0.797270, 0.543787,
		0.964889, -0.227081, -0.131998,
		40.157463, 31.529602, 39.628258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922604, 32.293533, 39.709816>,  <39.482040, 31.688559, 39.720657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922604, 32.293533, 39.709816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114613, 32.018383, 39.492046>,  <40.229816, 31.853292, 39.361385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114613, 32.018383, 39.492046>,  <39.922604, 32.293533, 39.709816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114613, 32.018383, 39.492046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149218, 0.547536, -0.823370,
		0.864475, 0.476472, 0.160184,
		0.480019, -0.687880, -0.544429,
		40.258617, 31.812019, 39.328716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927448, 32.626194, 39.057114>,  <39.922604, 32.293533, 39.709816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927448, 32.626194, 39.057114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128517, 32.303921, 38.931767>,  <40.249157, 32.110558, 38.856556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128517, 32.303921, 38.931767>,  <39.927448, 32.626194, 39.057114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128517, 32.303921, 38.931767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119601, 0.294196, -0.948232,
		0.856164, 0.514129, 0.051524,
		0.502672, -0.805680, -0.313370,
		40.279320, 32.062218, 38.837757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583511, 32.705299, 38.757610>,  <39.927448, 32.626194, 39.057114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583511, 32.705299, 38.757610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453407, 32.360687, 38.601673>,  <40.375343, 32.153919, 38.508110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453407, 32.360687, 38.601673>,  <40.583511, 32.705299, 38.757610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453407, 32.360687, 38.601673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082974, 0.436669, -0.895788,
		0.941977, -0.259019, -0.213516,
		-0.325263, -0.861527, -0.389840,
		40.355827, 32.102230, 38.484722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914413, 32.538242, 38.116669>,  <40.583511, 32.705299, 38.757610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914413, 32.538242, 38.116669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583138, 32.315639, 38.090118>,  <40.384373, 32.182076, 38.074188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583138, 32.315639, 38.090118>,  <40.914413, 32.538242, 38.116669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583138, 32.315639, 38.090118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172770, 0.366176, -0.914366,
		0.533159, -0.745797, -0.399410,
		-0.828186, -0.556509, -0.066378,
		40.334682, 32.148685, 38.070206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104046, 32.331909, 37.507416>,  <40.914413, 32.538242, 38.116669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104046, 32.331909, 37.507416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712490, 32.332653, 37.589176>,  <40.477558, 32.333099, 37.638233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712490, 32.332653, 37.589176>,  <41.104046, 32.331909, 37.507416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712490, 32.332653, 37.589176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161906, 0.603348, -0.780870,
		-0.124773, -0.797476, -0.590308,
		-0.978886, 0.001857, 0.204398,
		40.418823, 32.333210, 37.650494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842705, 32.544598, 36.870014>,  <41.104046, 32.331909, 37.507416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842705, 32.544598, 36.870014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515411, 32.534592, 37.099751>,  <40.319035, 32.528587, 37.237591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515411, 32.534592, 37.099751>,  <40.842705, 32.544598, 36.870014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515411, 32.534592, 37.099751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513992, 0.479314, -0.711386,
		-0.257491, -0.877287, -0.405050,
		-0.818236, -0.025017, 0.574338,
		40.269939, 32.527088, 37.272053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272526, 32.160954, 36.540936>,  <40.842705, 32.544598, 36.870014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272526, 32.160954, 36.540936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080822, 32.380447, 36.814930>,  <39.965801, 32.512142, 36.979328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080822, 32.380447, 36.814930>,  <40.272526, 32.160954, 36.540936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080822, 32.380447, 36.814930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598630, 0.366367, -0.712332,
		-0.641835, -0.751445, 0.152902,
		-0.479259, 0.548731, 0.684985,
		39.937042, 32.545067, 37.020424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587982, 32.199947, 36.349415>,  <40.272526, 32.160954, 36.540936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587982, 32.199947, 36.349415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584110, 32.515366, 36.595375>,  <39.581787, 32.704617, 36.742950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584110, 32.515366, 36.595375>,  <39.587982, 32.199947, 36.349415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584110, 32.515366, 36.595375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501104, 0.528323, -0.685398,
		-0.865333, -0.314764, 0.390029,
		-0.009677, 0.788543, 0.614904,
		39.581207, 32.751930, 36.779846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930405, 32.557911, 36.293934>,  <39.587982, 32.199947, 36.349415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930405, 32.557911, 36.293934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152145, 32.852001, 36.449951>,  <39.285191, 33.028454, 36.543564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152145, 32.852001, 36.449951>,  <38.930405, 32.557911, 36.293934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152145, 32.852001, 36.449951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378623, 0.640124, -0.668495,
		-0.741174, 0.222901, 0.633227,
		0.554352, 0.735225, 0.390048,
		39.318451, 33.072567, 36.566967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652161, 32.823658, 36.876617>,  <38.930405, 32.557911, 36.293934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652161, 32.823658, 36.876617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904495, 33.131954, 36.840828>,  <39.055897, 33.316933, 36.819355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904495, 33.131954, 36.840828>,  <38.652161, 32.823658, 36.876617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904495, 33.131954, 36.840828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573091, 0.385086, -0.723378,
		-0.523080, 0.507611, 0.684630,
		0.630836, 0.770740, -0.089477,
		39.093746, 33.363174, 36.813984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220158, 33.360901, 36.476288>,  <38.652161, 32.823658, 36.876617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220158, 33.360901, 36.476288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600723, 33.481213, 36.502625>,  <38.829063, 33.553398, 36.518425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600723, 33.481213, 36.502625>,  <38.220158, 33.360901, 36.476288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600723, 33.481213, 36.502625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186021, 0.731912, -0.655516,
		-0.245355, 0.611422, 0.752306,
		0.951419, 0.300779, 0.065841,
		38.886150, 33.571445, 36.522377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297630, 34.137352, 36.709927>,  <38.220158, 33.360901, 36.476288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297630, 34.137352, 36.709927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624077, 34.025234, 36.507778>,  <38.819942, 33.957962, 36.386490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624077, 34.025234, 36.507778>,  <38.297630, 34.137352, 36.709927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624077, 34.025234, 36.507778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008843, 0.880453, -0.474050,
		0.577826, 0.382409, 0.721028,
		0.816112, -0.280295, -0.505367,
		38.868912, 33.941147, 36.356167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562935, 34.788090, 36.563133>,  <38.297630, 34.137352, 36.709927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562935, 34.788090, 36.563133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777000, 34.534695, 36.339600>,  <38.905441, 34.382660, 36.205479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777000, 34.534695, 36.339600>,  <38.562935, 34.788090, 36.563133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777000, 34.534695, 36.339600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171824, 0.729342, -0.662221,
		0.827090, 0.258374, 0.499165,
		0.535163, -0.633485, -0.558836,
		38.937550, 34.344650, 36.171947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286205, 35.111095, 36.398914>,  <38.562935, 34.788090, 36.563133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286205, 35.111095, 36.398914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194916, 34.836773, 36.122486>,  <39.140141, 34.672180, 35.956627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194916, 34.836773, 36.122486>,  <39.286205, 35.111095, 36.398914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194916, 34.836773, 36.122486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281390, 0.633051, -0.721156,
		0.932059, -0.359046, 0.048501,
		-0.228224, -0.685807, -0.691073,
		39.126450, 34.631031, 35.915165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712540, 35.168369, 35.809048>,  <39.286205, 35.111095, 36.398914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712540, 35.168369, 35.809048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416367, 34.949970, 35.652256>,  <39.238663, 34.818932, 35.558182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416367, 34.949970, 35.652256>,  <39.712540, 35.168369, 35.809048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416367, 34.949970, 35.652256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085227, 0.502216, -0.860532,
		0.666705, -0.670573, -0.325324,
		-0.740433, -0.545995, -0.391981,
		39.194237, 34.786171, 35.534660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902348, 34.826042, 35.192196>,  <39.712540, 35.168369, 35.809048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902348, 34.826042, 35.192196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505371, 34.874226, 35.182789>,  <39.267185, 34.903137, 35.177147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505371, 34.874226, 35.182789>,  <39.902348, 34.826042, 35.192196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505371, 34.874226, 35.182789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087607, 0.561076, -0.823115,
		-0.085961, -0.818952, -0.567387,
		-0.992439, 0.120463, -0.023515,
		39.207638, 34.910366, 35.175735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759823, 34.778961, 34.483269>,  <39.902348, 34.826042, 35.192196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759823, 34.778961, 34.483269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423031, 34.937939, 34.629200>,  <39.220955, 35.033325, 34.716759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423031, 34.937939, 34.629200>,  <39.759823, 34.778961, 34.483269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423031, 34.937939, 34.629200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047250, 0.727953, -0.683997,
		-0.537429, -0.558677, -0.631704,
		-0.841984, 0.397448, 0.364825,
		39.170437, 35.057175, 34.738647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288857, 34.924103, 33.947262>,  <39.759823, 34.778961, 34.483269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288857, 34.924103, 33.947262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164204, 35.164845, 34.241379>,  <39.089413, 35.309288, 34.417847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164204, 35.164845, 34.241379>,  <39.288857, 34.924103, 33.947262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164204, 35.164845, 34.241379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059029, 0.784594, -0.617194,
		-0.948366, -0.148937, -0.280034,
		-0.311636, 0.601856, 0.735291,
		39.070713, 35.345402, 34.461967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612495, 34.450890, 33.396122>,  <39.288857, 34.924103, 33.947262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612495, 34.450890, 33.396122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594662, 34.201031, 33.084267>,  <39.583961, 34.051117, 32.897156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594662, 34.201031, 33.084267>,  <39.612495, 34.450890, 33.396122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594662, 34.201031, 33.084267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993535, -0.109280, 0.030745,
		-0.104404, -0.773226, 0.625477,
		-0.044580, -0.624644, -0.779636,
		39.581287, 34.013638, 32.850376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045738, 33.812866, 33.573933>,  <39.612495, 34.450890, 33.396122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045738, 33.812866, 33.573933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038471, 33.876392, 33.179077>,  <40.034111, 33.914509, 32.942162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038471, 33.876392, 33.179077>,  <40.045738, 33.812866, 33.573933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038471, 33.876392, 33.179077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998408, -0.049851, -0.026391,
		-0.053401, -0.986049, -0.157656,
		-0.018163, 0.158814, -0.987141,
		40.033024, 33.924038, 32.882935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507286, 33.379852, 33.315384>,  <40.045738, 33.812866, 33.573933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507286, 33.379852, 33.315384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490871, 33.663963, 33.034294>,  <40.481022, 33.834431, 32.865639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490871, 33.663963, 33.034294>,  <40.507286, 33.379852, 33.315384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490871, 33.663963, 33.034294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969122, -0.142857, -0.200983,
		-0.243143, -0.689272, -0.682485,
		-0.041035, 0.710279, -0.702724,
		40.478561, 33.877048, 32.823479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764854, 33.185978, 32.577171>,  <40.507286, 33.379852, 33.315384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764854, 33.185978, 32.577171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816921, 33.564365, 32.695961>,  <40.848160, 33.791397, 32.767235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816921, 33.564365, 32.695961>,  <40.764854, 33.185978, 32.577171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816921, 33.564365, 32.695961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991082, -0.132761, -0.011492,
		0.028556, 0.295826, -0.954815,
		0.130162, 0.945971, 0.296979,
		40.855968, 33.848156, 32.785053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244244, 33.611458, 32.192665>,  <40.764854, 33.185978, 32.577171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244244, 33.611458, 32.192665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279991, 33.757256, 32.563427>,  <41.301441, 33.844734, 32.785885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279991, 33.757256, 32.563427>,  <41.244244, 33.611458, 32.192665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279991, 33.757256, 32.563427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995444, -0.001624, -0.095337,
		-0.033244, 0.931203, -0.362983,
		0.089367, 0.364498, 0.926906,
		41.306801, 33.866604, 32.841499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661888, 34.200249, 32.225136>,  <41.244244, 33.611458, 32.192665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661888, 34.200249, 32.225136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673809, 34.004852, 32.573959>,  <41.680962, 33.887615, 32.783253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673809, 34.004852, 32.573959>,  <41.661888, 34.200249, 32.225136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673809, 34.004852, 32.573959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998938, -0.016112, -0.043167,
		0.035137, 0.872422, 0.487490,
		0.029805, -0.488489, 0.872061,
		41.682751, 33.858307, 32.835579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067310, 34.618530, 32.757557>,  <41.661888, 34.200249, 32.225136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067310, 34.618530, 32.757557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050964, 34.248798, 32.909321>,  <42.041157, 34.026958, 33.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050964, 34.248798, 32.909321>,  <42.067310, 34.618530, 32.757557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050964, 34.248798, 32.909321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970282, 0.053927, 0.235890,
		-0.238500, 0.377773, 0.894654,
		-0.040867, -0.924326, 0.379408,
		42.038704, 33.971500, 33.023144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235676, 34.560711, 33.550018>,  <42.067310, 34.618530, 32.757557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235676, 34.560711, 33.550018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328197, 34.207214, 33.387295>,  <42.383709, 33.995117, 33.289661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328197, 34.207214, 33.387295>,  <42.235676, 34.560711, 33.550018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328197, 34.207214, 33.387295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878015, 0.009521, 0.478539,
		-0.419033, -0.467875, 0.778142,
		0.231305, -0.883743, -0.406811,
		42.397591, 33.942093, 33.265251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559769, 34.211243, 34.099079>,  <42.235676, 34.560711, 33.550018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559769, 34.211243, 34.099079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662369, 34.037449, 33.753727>,  <42.723927, 33.933170, 33.546516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662369, 34.037449, 33.753727>,  <42.559769, 34.211243, 34.099079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662369, 34.037449, 33.753727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942021, -0.087566, 0.323925,
		-0.216345, -0.896411, 0.386837,
		0.256497, -0.434488, -0.863383,
		42.739319, 33.907101, 33.494713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946133, 33.490223, 34.246197>,  <42.559769, 34.211243, 34.099079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946133, 33.490223, 34.246197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090965, 33.620113, 33.896694>,  <43.177864, 33.698048, 33.686993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090965, 33.620113, 33.896694>,  <42.946133, 33.490223, 34.246197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090965, 33.620113, 33.896694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923546, -0.252008, 0.289057,
		-0.126329, -0.911616, -0.391149,
		0.362082, 0.324728, -0.873755,
		43.199589, 33.717533, 33.634567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288555, 32.965385, 33.995159>,  <42.946133, 33.490223, 34.246197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288555, 32.965385, 33.995159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444790, 33.317741, 33.888222>,  <43.538532, 33.529156, 33.824059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444790, 33.317741, 33.888222>,  <43.288555, 32.965385, 33.995159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444790, 33.317741, 33.888222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917799, -0.350144, 0.187199,
		0.071294, -0.318484, -0.945243,
		0.390591, 0.880890, -0.267342,
		43.561966, 33.582008, 33.808018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793617, 32.884743, 33.497345>,  <43.288555, 32.965385, 33.995159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793617, 32.884743, 33.497345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870960, 33.230560, 33.682892>,  <43.917366, 33.438053, 33.794220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870960, 33.230560, 33.682892>,  <43.793617, 32.884743, 33.497345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870960, 33.230560, 33.682892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968283, -0.244404, 0.051905,
		0.158245, 0.439117, -0.884384,
		0.193355, 0.864548, 0.463865,
		43.928967, 33.489925, 33.822052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199207, 33.312469, 33.008453>,  <43.793617, 32.884743, 33.497345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199207, 33.312469, 33.008453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266266, 33.420273, 33.387772>,  <44.306499, 33.484955, 33.615364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266266, 33.420273, 33.387772>,  <44.199207, 33.312469, 33.008453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266266, 33.420273, 33.387772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970223, -0.215683, -0.110222,
		0.174826, 0.938535, -0.297638,
		0.167643, 0.269506, 0.948295,
		44.316559, 33.501125, 33.672260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820778, 33.731632, 33.178040>,  <44.199207, 33.312469, 33.008453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820778, 33.731632, 33.178040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767330, 33.461994, 33.468624>,  <44.735260, 33.300213, 33.642975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767330, 33.461994, 33.468624>,  <44.820778, 33.731632, 33.178040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767330, 33.461994, 33.468624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853133, -0.451247, -0.261802,
		0.504292, 0.584786, 0.635386,
		-0.133618, -0.674093, 0.726461,
		44.727245, 33.259766, 33.686562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528343, 33.755302, 33.529831>,  <44.820778, 33.731632, 33.178040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528343, 33.755302, 33.529831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339718, 33.419800, 33.638729>,  <45.226543, 33.218498, 33.704067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339718, 33.419800, 33.638729>,  <45.528343, 33.755302, 33.529831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339718, 33.419800, 33.638729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867747, -0.496322, -0.026056,
		0.156975, 0.223952, 0.961875,
		-0.471565, -0.838755, 0.272244,
		45.198250, 33.168175, 33.720402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730644, 33.585129, 34.218945>,  <45.528343, 33.755302, 33.529831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730644, 33.585129, 34.218945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770695, 33.450920, 34.593624>,  <45.794724, 33.370396, 34.818432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770695, 33.450920, 34.593624>,  <45.730644, 33.585129, 34.218945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770695, 33.450920, 34.593624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984690, 0.168426, -0.044927,
		-0.142690, 0.926853, 0.347251,
		0.100127, -0.335524, 0.936695,
		45.800732, 33.350262, 34.874634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688656, 34.056896, 34.814083>,  <45.730644, 33.585129, 34.218945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688656, 34.056896, 34.814083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678219, 34.454784, 34.774387>,  <45.671955, 34.693516, 34.750568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678219, 34.454784, 34.774387>,  <45.688656, 34.056896, 34.814083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678219, 34.454784, 34.774387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706011, 0.088618, 0.702634,
		0.707720, -0.051733, -0.704597,
		-0.026091, 0.994721, -0.099241,
		45.670391, 34.753201, 34.744614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356041, 34.272984, 34.902878>,  <45.688656, 34.056896, 34.814083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356041, 34.272984, 34.902878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105412, 34.568314, 35.002697>,  <45.955032, 34.745510, 35.062588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105412, 34.568314, 35.002697>,  <46.356041, 34.272984, 34.902878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105412, 34.568314, 35.002697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567318, 0.212542, 0.795598,
		0.534369, 0.640080, -0.552039,
		-0.626578, 0.738325, 0.249553,
		45.917439, 34.789810, 35.077564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.755974, 34.859562, 35.014801>,  <46.356041, 34.272984, 34.902878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.755974, 34.859562, 35.014801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429485, 34.858032, 35.245892>,  <46.233593, 34.857113, 35.384544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.429485, 34.858032, 35.245892>,  <46.755974, 34.859562, 35.014801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429485, 34.858032, 35.245892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561157, 0.232607, 0.794353,
		-0.137420, 0.972563, -0.187713,
		-0.816222, -0.003823, 0.577725,
		46.184620, 34.856884, 35.419209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318146, 35.054241, 34.536285>,  <46.755974, 34.859562, 35.014801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318146, 35.054241, 34.536285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446682, 34.846245, 34.852856>,  <47.523804, 34.721447, 35.042797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446682, 34.846245, 34.852856>,  <47.318146, 35.054241, 34.536285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446682, 34.846245, 34.852856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377216, 0.696291, 0.610645,
		-0.868591, -0.494761, 0.027595,
		0.321338, -0.519992, 0.791423,
		47.543083, 34.690247, 35.090282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.453449, 35.291641, 35.175755>,  <47.318146, 35.054241, 34.536285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.453449, 35.291641, 35.175755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695858, 35.048710, 35.381233>,  <47.841301, 34.902950, 35.504520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695858, 35.048710, 35.381233>,  <47.453449, 35.291641, 35.175755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695858, 35.048710, 35.381233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085823, 0.691949, 0.716827,
		-0.790806, -0.390325, 0.471458,
		0.606020, -0.607333, 0.513699,
		47.877663, 34.866508, 35.535343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.484650, 36.744576, 25.508875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105045, 36.713459, 25.386675>,  <39.877285, 36.694790, 25.313354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105045, 36.713459, 25.386675>,  <40.484650, 36.744576, 25.508875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105045, 36.713459, 25.386675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299195, -0.083071, 0.950569,
		-0.099326, 0.993503, 0.055560,
		-0.949008, -0.077793, -0.305502,
		39.820343, 36.690121, 25.295025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118729, 37.251457, 25.947088>,  <40.484650, 36.744576, 25.508875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118729, 37.251457, 25.947088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853088, 36.975212, 25.832525>,  <39.693703, 36.809467, 25.763788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853088, 36.975212, 25.832525>,  <40.118729, 37.251457, 25.947088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853088, 36.975212, 25.832525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411067, 0.017297, 0.911441,
		-0.624497, 0.723020, -0.295374,
		-0.664099, -0.690611, -0.286407,
		39.653858, 36.768028, 25.746603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422359, 37.443840, 26.140388>,  <40.118729, 37.251457, 25.947088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422359, 37.443840, 26.140388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416821, 37.049969, 26.070850>,  <39.413498, 36.813648, 26.029127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416821, 37.049969, 26.070850>,  <39.422359, 37.443840, 26.140388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416821, 37.049969, 26.070850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658198, -0.121909, 0.742909,
		-0.752718, 0.124709, -0.646424,
		-0.013843, -0.984676, -0.173847,
		39.412666, 36.754566, 26.018696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796478, 37.329288, 26.227942>,  <39.422359, 37.443840, 26.140388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796478, 37.329288, 26.227942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941120, 36.956402, 26.233744>,  <39.027908, 36.732670, 26.237225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941120, 36.956402, 26.233744>,  <38.796478, 37.329288, 26.227942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941120, 36.956402, 26.233744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658093, -0.244194, 0.712239,
		-0.660419, -0.267097, -0.701788,
		0.361609, -0.932217, 0.014505,
		39.049603, 36.676735, 26.238094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212395, 36.820900, 26.035484>,  <38.796478, 37.329288, 26.227942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212395, 36.820900, 26.035484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478127, 36.630989, 26.266396>,  <38.637566, 36.517040, 26.404942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478127, 36.630989, 26.266396>,  <38.212395, 36.820900, 26.035484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478127, 36.630989, 26.266396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739679, -0.306607, 0.599055,
		-0.107421, -0.824971, -0.554873,
		0.664331, -0.474779, 0.577278,
		38.677425, 36.488556, 26.439579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925705, 36.117882, 26.255527>,  <38.212395, 36.820900, 26.035484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925705, 36.117882, 26.255527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215801, 36.215378, 26.513088>,  <38.389858, 36.273876, 26.667625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215801, 36.215378, 26.513088>,  <37.925705, 36.117882, 26.255527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215801, 36.215378, 26.513088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615501, -0.189549, 0.765003,
		0.308515, -0.951137, 0.012555,
		0.725243, 0.243743, 0.643904,
		38.433372, 36.288502, 26.706259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877495, 35.568974, 26.697485>,  <37.925705, 36.117882, 26.255527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877495, 35.568974, 26.697485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065086, 35.878807, 26.867229>,  <38.177639, 36.064709, 26.969076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065086, 35.878807, 26.867229>,  <37.877495, 35.568974, 26.697485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065086, 35.878807, 26.867229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559821, -0.110927, 0.821155,
		0.683128, -0.622665, 0.381607,
		0.468974, 0.774586, 0.424359,
		38.205780, 36.111183, 26.994537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886612, 35.314137, 27.326696>,  <37.877495, 35.568974, 26.697485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886612, 35.314137, 27.326696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960178, 35.707043, 27.341227>,  <38.004318, 35.942787, 27.349945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960178, 35.707043, 27.341227>,  <37.886612, 35.314137, 27.326696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960178, 35.707043, 27.341227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555058, 0.073288, 0.828577,
		0.811224, -0.172553, 0.558696,
		0.183919, 0.982270, 0.036324,
		38.015354, 36.001724, 27.352123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301903, 35.321831, 27.934395>,  <37.886612, 35.314137, 27.326696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301903, 35.321831, 27.934395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126659, 35.672211, 27.853626>,  <38.021511, 35.882439, 27.805164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126659, 35.672211, 27.853626>,  <38.301903, 35.321831, 27.934395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126659, 35.672211, 27.853626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436465, -0.010915, 0.899655,
		0.785848, 0.482281, 0.387103,
		-0.438112, 0.875949, -0.201921,
		37.995228, 35.934994, 27.793051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444847, 35.762390, 28.475000>,  <38.301903, 35.321831, 27.934395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444847, 35.762390, 28.475000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112549, 35.918354, 28.316090>,  <37.913170, 36.011932, 28.220743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112549, 35.918354, 28.316090>,  <38.444847, 35.762390, 28.475000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112549, 35.918354, 28.316090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363478, 0.160569, 0.917661,
		0.421599, 0.906744, 0.008333,
		-0.830745, 0.389914, -0.397277,
		37.863327, 36.035328, 28.196907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310844, 36.127693, 28.963732>,  <38.444847, 35.762390, 28.475000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310844, 36.127693, 28.963732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979698, 36.142647, 28.739859>,  <37.781010, 36.151619, 28.605536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979698, 36.142647, 28.739859>,  <38.310844, 36.127693, 28.963732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979698, 36.142647, 28.739859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546080, 0.174339, 0.819392,
		0.128203, 0.983976, -0.123916,
		-0.827865, 0.037381, -0.559681,
		37.731339, 36.153862, 28.571955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971302, 36.786072, 29.225723>,  <38.310844, 36.127693, 28.963732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971302, 36.786072, 29.225723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729473, 36.503086, 29.079306>,  <37.584373, 36.333294, 28.991455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729473, 36.503086, 29.079306>,  <37.971302, 36.786072, 29.225723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729473, 36.503086, 29.079306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479737, -0.043450, 0.876336,
		-0.635878, 0.705416, -0.313126,
		-0.604576, -0.707460, -0.366043,
		37.548100, 36.290848, 28.969492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418221, 36.813332, 29.610806>,  <37.971302, 36.786072, 29.225723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418221, 36.813332, 29.610806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324570, 36.466526, 29.434862>,  <37.268379, 36.258442, 29.329296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324570, 36.466526, 29.434862>,  <37.418221, 36.813332, 29.610806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324570, 36.466526, 29.434862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471031, -0.294626, 0.831459,
		-0.850478, 0.401856, -0.339409,
		-0.234128, -0.867011, -0.439860,
		37.254330, 36.206425, 29.302904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724350, 36.707020, 29.714939>,  <37.418221, 36.813332, 29.610806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724350, 36.707020, 29.714939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872673, 36.338150, 29.670946>,  <36.961666, 36.116829, 29.644550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872673, 36.338150, 29.670946>,  <36.724350, 36.707020, 29.714939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872673, 36.338150, 29.670946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559896, -0.316464, 0.765746,
		-0.740956, -0.222369, -0.633669,
		0.370811, -0.922173, -0.109982,
		36.983917, 36.061497, 29.637951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176735, 36.237625, 29.885286>,  <36.724350, 36.707020, 29.714939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176735, 36.237625, 29.885286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472500, 35.969017, 29.865993>,  <36.649960, 35.807854, 29.854418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472500, 35.969017, 29.865993>,  <36.176735, 36.237625, 29.885286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472500, 35.969017, 29.865993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439692, -0.535916, 0.720739,
		-0.509836, -0.511721, -0.691527,
		0.739417, -0.671518, -0.048229,
		36.694324, 35.767563, 29.851524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924168, 35.531334, 29.777370>,  <36.176735, 36.237625, 29.885286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924168, 35.531334, 29.777370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.279289, 35.502090, 29.959124>,  <36.492363, 35.484543, 30.068174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.279289, 35.502090, 29.959124>,  <35.924168, 35.531334, 29.777370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279289, 35.502090, 29.959124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351976, -0.743962, 0.568008,
		0.296514, -0.664210, -0.686225,
		0.887802, -0.073113, 0.454381,
		36.545631, 35.480156, 30.095438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990829, 34.834633, 29.928049>,  <35.924168, 35.531334, 29.777370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990829, 34.834633, 29.928049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231827, 35.026871, 30.182932>,  <36.376423, 35.142216, 30.335861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231827, 35.026871, 30.182932>,  <35.990829, 34.834633, 29.928049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231827, 35.026871, 30.182932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340877, -0.566950, 0.749914,
		0.721671, -0.669025, -0.177757,
		0.602490, 0.480597, 0.637206,
		36.412575, 35.171051, 30.374094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333252, 34.274479, 30.318939>,  <35.990829, 34.834633, 29.928049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333252, 34.274479, 30.318939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395992, 34.605629, 30.534353>,  <36.433636, 34.804317, 30.663601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395992, 34.605629, 30.534353>,  <36.333252, 34.274479, 30.318939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395992, 34.605629, 30.534353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259587, -0.491553, 0.831258,
		0.952897, -0.270180, 0.137805,
		0.156851, 0.827876, 0.538535,
		36.443047, 34.853992, 30.695913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585411, 34.018093, 30.877974>,  <36.333252, 34.274479, 30.318939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585411, 34.018093, 30.877974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458660, 34.385124, 30.974007>,  <36.382610, 34.605343, 31.031626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458660, 34.385124, 30.974007>,  <36.585411, 34.018093, 30.877974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458660, 34.385124, 30.974007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341576, -0.346544, 0.873632,
		0.884824, 0.194830, 0.423235,
		-0.316879, 0.917578, 0.240081,
		36.363598, 34.660397, 31.046032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759190, 34.067272, 31.591295>,  <36.585411, 34.018093, 30.877974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759190, 34.067272, 31.591295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.478130, 34.344631, 31.527428>,  <36.309494, 34.511047, 31.489107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.478130, 34.344631, 31.527428>,  <36.759190, 34.067272, 31.591295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478130, 34.344631, 31.527428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536486, -0.368861, 0.759028,
		0.467411, 0.618986, 0.631176,
		-0.702644, 0.693395, -0.159668,
		36.267338, 34.552650, 31.479527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639313, 34.401287, 32.227314>,  <36.759190, 34.067272, 31.591295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639313, 34.401287, 32.227314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319046, 34.430729, 31.989483>,  <36.126888, 34.448395, 31.846785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319046, 34.430729, 31.989483>,  <36.639313, 34.401287, 32.227314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319046, 34.430729, 31.989483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562294, -0.434880, 0.703353,
		-0.206796, 0.897475, 0.389582,
		-0.800663, 0.073609, -0.594576,
		36.078846, 34.452812, 31.811110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098793, 34.138672, 32.808235>,  <36.639313, 34.401287, 32.227314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098793, 34.138672, 32.808235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460720, 34.237457, 32.946980>,  <37.677876, 34.296730, 33.030228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460720, 34.237457, 32.946980>,  <37.098793, 34.138672, 32.808235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460720, 34.237457, 32.946980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406346, -0.257426, -0.876707,
		-0.127225, 0.934206, -0.333277,
		0.904819, 0.246964, 0.346860,
		37.732166, 34.311546, 33.051037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330223, 34.609360, 32.214081>,  <37.098793, 34.138672, 32.808235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330223, 34.609360, 32.214081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648537, 34.511219, 32.435543>,  <37.839523, 34.452335, 32.568420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648537, 34.511219, 32.435543>,  <37.330223, 34.609360, 32.214081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648537, 34.511219, 32.435543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534818, -0.144152, -0.832580,
		0.284086, 0.958657, 0.016505,
		0.795780, -0.245351, 0.553658,
		37.887272, 34.437614, 32.601639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874596, 35.118988, 32.057949>,  <37.330223, 34.609360, 32.214081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874596, 35.118988, 32.057949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046093, 34.787411, 32.201630>,  <38.148991, 34.588463, 32.287838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046093, 34.787411, 32.201630>,  <37.874596, 35.118988, 32.057949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046093, 34.787411, 32.201630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706953, 0.060291, -0.704686,
		0.562492, 0.556067, 0.611876,
		0.428743, -0.828948, 0.359200,
		38.174717, 34.538727, 32.309391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621067, 35.202698, 32.039661>,  <37.874596, 35.118988, 32.057949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621067, 35.202698, 32.039661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576260, 34.806297, 32.068954>,  <38.549374, 34.568455, 32.086529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576260, 34.806297, 32.068954>,  <38.621067, 35.202698, 32.039661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576260, 34.806297, 32.068954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816715, -0.133798, -0.561315,
		0.566063, -0.003071, 0.824356,
		-0.112021, -0.991004, 0.073230,
		38.542652, 34.508995, 32.090923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200584, 34.890003, 32.316299>,  <38.621067, 35.202698, 32.039661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200584, 34.890003, 32.316299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.025070, 34.599468, 32.104675>,  <38.919762, 34.425148, 31.977699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.025070, 34.599468, 32.104675>,  <39.200584, 34.890003, 32.316299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025070, 34.599468, 32.104675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784887, -0.023123, -0.619207,
		0.437517, -0.686954, 0.580236,
		-0.438784, -0.726333, -0.529064,
		38.893436, 34.381569, 31.945955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757175, 34.527222, 32.030754>,  <39.200584, 34.890003, 32.316299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757175, 34.527222, 32.030754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444942, 34.373474, 31.833590>,  <39.257603, 34.281227, 31.715292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444942, 34.373474, 31.833590>,  <39.757175, 34.527222, 32.030754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444942, 34.373474, 31.833590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614600, -0.328324, -0.717266,
		0.113861, -0.862824, 0.492515,
		-0.780578, -0.384368, -0.492908,
		39.210770, 34.258163, 31.685717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937824, 33.789764, 31.883249>,  <39.757175, 34.527222, 32.030754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937824, 33.789764, 31.883249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660503, 33.910561, 31.621523>,  <39.494110, 33.983040, 31.464487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660503, 33.910561, 31.621523>,  <39.937824, 33.789764, 31.883249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660503, 33.910561, 31.621523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583039, -0.298578, -0.755590,
		-0.423547, -0.905346, 0.030932,
		-0.693306, 0.301994, -0.654314,
		39.452511, 34.001160, 31.425228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982025, 33.299095, 31.481441>,  <39.937824, 33.789764, 31.883249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982025, 33.299095, 31.481441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800098, 33.599422, 31.289850>,  <39.690945, 33.779617, 31.174894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800098, 33.599422, 31.289850>,  <39.982025, 33.299095, 31.481441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800098, 33.599422, 31.289850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602357, -0.136807, -0.786416,
		-0.655981, -0.646189, -0.390037,
		-0.454814, 0.750815, -0.478980,
		39.663654, 33.824665, 31.146156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645660, 33.127087, 30.823671>,  <39.982025, 33.299095, 31.481441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645660, 33.127087, 30.823671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712486, 33.519783, 30.787294>,  <39.752583, 33.755402, 30.765469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712486, 33.519783, 30.787294>,  <39.645660, 33.127087, 30.823671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712486, 33.519783, 30.787294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598003, -0.174236, -0.782326,
		-0.783888, 0.076318, -0.616194,
		0.167068, 0.981742, -0.090943,
		39.762608, 33.814304, 30.760012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603432, 33.229538, 30.100220>,  <39.645660, 33.127087, 30.823671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603432, 33.229538, 30.100220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803642, 33.545967, 30.240892>,  <39.923767, 33.735825, 30.325296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803642, 33.545967, 30.240892>,  <39.603432, 33.229538, 30.100220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803642, 33.545967, 30.240892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563345, 0.010839, -0.826151,
		-0.657357, 0.611626, -0.440221,
		0.500524, 0.791073, 0.351681,
		39.953800, 33.783291, 30.346397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571205, 33.784790, 29.559353>,  <39.603432, 33.229538, 30.100220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571205, 33.784790, 29.559353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887871, 33.866344, 29.789724>,  <40.077869, 33.915276, 29.927948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887871, 33.866344, 29.789724>,  <39.571205, 33.784790, 29.559353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887871, 33.866344, 29.789724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523805, 0.258703, -0.811604,
		-0.314467, 0.944195, 0.098011,
		0.791668, 0.203884, 0.575928,
		40.125370, 33.927509, 29.962503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938995, 34.270824, 29.321507>,  <39.571205, 33.784790, 29.559353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938995, 34.270824, 29.321507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.232513, 34.188728, 29.580557>,  <40.408623, 34.139469, 29.735987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.232513, 34.188728, 29.580557>,  <39.938995, 34.270824, 29.321507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232513, 34.188728, 29.580557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672122, 0.358197, -0.648034,
		-0.098974, 0.910808, 0.400791,
		0.733796, -0.205242, 0.647626,
		40.452652, 34.127155, 29.774845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392738, 34.935997, 29.352343>,  <39.938995, 34.270824, 29.321507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392738, 34.935997, 29.352343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603077, 34.622326, 29.484133>,  <40.729282, 34.434124, 29.563208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603077, 34.622326, 29.484133>,  <40.392738, 34.935997, 29.352343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603077, 34.622326, 29.484133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761946, 0.262113, -0.592229,
		0.378050, 0.562467, 0.735329,
		0.525848, -0.784174, 0.329477,
		40.760830, 34.387074, 29.582975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116486, 35.167892, 29.708994>,  <40.392738, 34.935997, 29.352343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116486, 35.167892, 29.708994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.091145, 34.796997, 29.561361>,  <41.075939, 34.574459, 29.472782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.091145, 34.796997, 29.561361>,  <41.116486, 35.167892, 29.708994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091145, 34.796997, 29.561361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683808, 0.229034, -0.692784,
		0.726906, -0.296272, 0.619541,
		-0.063357, -0.927236, -0.369079,
		41.072136, 34.518826, 29.450638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751328, 35.046616, 29.368469>,  <41.116486, 35.167892, 29.708994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751328, 35.046616, 29.368469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.528233, 34.747501, 29.224382>,  <41.394375, 34.568035, 29.137930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.528233, 34.747501, 29.224382>,  <41.751328, 35.046616, 29.368469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528233, 34.747501, 29.224382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549127, -0.006994, -0.835709,
		0.622409, -0.663908, 0.414528,
		-0.557733, -0.747782, -0.360217,
		41.360912, 34.523167, 29.116318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221886, 34.503849, 29.049351>,  <41.751328, 35.046616, 29.368469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221886, 34.503849, 29.049351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.865223, 34.457439, 28.874311>,  <41.651226, 34.429596, 28.769287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.865223, 34.457439, 28.874311>,  <42.221886, 34.503849, 29.049351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865223, 34.457439, 28.874311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430463, 0.082068, -0.898869,
		0.140206, -0.989850, -0.023231,
		-0.891652, -0.116027, -0.437601,
		41.597729, 34.422634, 28.743031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424282, 34.221313, 28.431814>,  <42.221886, 34.503849, 29.049351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424282, 34.221313, 28.431814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.040653, 34.298672, 28.349077>,  <41.810478, 34.345089, 28.299435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.040653, 34.298672, 28.349077>,  <42.424282, 34.221313, 28.431814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040653, 34.298672, 28.349077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238524, 0.158050, -0.958189,
		-0.152620, -0.968307, -0.197711,
		-0.959069, 0.193398, -0.206843,
		41.752934, 34.356689, 28.287024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163879, 33.879833, 27.832973>,  <42.424282, 34.221313, 28.431814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163879, 33.879833, 27.832973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.964005, 34.222950, 27.881144>,  <41.844078, 34.428822, 27.910046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.964005, 34.222950, 27.881144>,  <42.163879, 33.879833, 27.832973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964005, 34.222950, 27.881144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298725, 0.301147, -0.905579,
		-0.813066, -0.416532, -0.406724,
		-0.499686, 0.857795, 0.120424,
		41.814098, 34.480289, 27.917271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889816, 33.964657, 27.209909>,  <42.163879, 33.879833, 27.832973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889816, 33.964657, 27.209909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.883686, 34.328480, 27.376026>,  <41.880009, 34.546776, 27.475697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.883686, 34.328480, 27.376026>,  <41.889816, 33.964657, 27.209909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883686, 34.328480, 27.376026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267697, 0.403911, -0.874754,
		-0.963381, 0.097768, -0.249676,
		-0.015324, 0.909559, 0.415292,
		41.879089, 34.601349, 27.500614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.334305, 34.331520, 26.788166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.560417, 34.610081, 26.965021>,  <41.696083, 34.777218, 27.071135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.560417, 34.610081, 26.965021>,  <41.334305, 34.331520, 26.788166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560417, 34.610081, 26.965021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184265, 0.415846, -0.890572,
		-0.804054, 0.584895, 0.106749,
		0.565282, 0.696397, 0.442139,
		41.730003, 34.819000, 27.097662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976353, 35.011292, 26.559324>,  <41.334305, 34.331520, 26.788166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976353, 35.011292, 26.559324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.317764, 35.147678, 26.716923>,  <41.522610, 35.229511, 26.811481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.317764, 35.147678, 26.716923>,  <40.976353, 35.011292, 26.559324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317764, 35.147678, 26.716923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078745, 0.663061, -0.744412,
		-0.515066, 0.666400, 0.539090,
		0.853526, 0.340970, 0.393996,
		41.573822, 35.249969, 26.835121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985260, 35.688820, 26.493286>,  <40.976353, 35.011292, 26.559324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985260, 35.688820, 26.493286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380402, 35.628830, 26.509571>,  <41.617485, 35.592834, 26.519342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380402, 35.628830, 26.509571>,  <40.985260, 35.688820, 26.493286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380402, 35.628830, 26.509571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132324, 0.674402, -0.726411,
		0.081487, 0.722973, 0.686054,
		0.987851, -0.149975, 0.040712,
		41.676758, 35.583839, 26.521784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315559, 36.357639, 26.480539>,  <40.985260, 35.688820, 26.493286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315559, 36.357639, 26.480539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.583633, 36.094875, 26.342361>,  <41.744476, 35.937218, 26.259455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.583633, 36.094875, 26.342361>,  <41.315559, 36.357639, 26.480539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583633, 36.094875, 26.342361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186778, 0.599728, -0.778100,
		0.718311, 0.456948, 0.524622,
		0.670182, -0.656906, -0.345443,
		41.784687, 35.897804, 26.238728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788105, 36.773472, 26.196167>,  <41.315559, 36.357639, 26.480539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788105, 36.773472, 26.196167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.860580, 36.418262, 26.027132>,  <41.904068, 36.205135, 25.925711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.860580, 36.418262, 26.027132>,  <41.788105, 36.773472, 26.196167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860580, 36.418262, 26.027132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209300, 0.454674, -0.865716,
		0.960917, 0.068415, 0.268248,
		0.181193, -0.888026, -0.422585,
		41.914940, 36.151855, 25.900356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493347, 36.799919, 26.041103>,  <41.788105, 36.773472, 26.196167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493347, 36.799919, 26.041103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.324989, 36.532558, 25.795797>,  <42.223976, 36.372143, 25.648615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.324989, 36.532558, 25.795797>,  <42.493347, 36.799919, 26.041103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324989, 36.532558, 25.795797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346880, 0.506085, -0.789654,
		0.838166, -0.545089, 0.018846,
		-0.420894, -0.668398, -0.613264,
		42.198723, 36.332039, 25.611818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919476, 36.817062, 25.601982>,  <42.493347, 36.799919, 26.041103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919476, 36.817062, 25.601982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.635269, 36.620567, 25.400446>,  <42.464745, 36.502670, 25.279524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.635269, 36.620567, 25.400446>,  <42.919476, 36.817062, 25.601982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635269, 36.620567, 25.400446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375607, 0.340717, -0.861876,
		0.595052, -0.801623, -0.057573,
		-0.710516, -0.491236, -0.503840,
		42.422115, 36.473198, 25.249294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290138, 36.488979, 25.043543>,  <42.919476, 36.817062, 25.601982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290138, 36.488979, 25.043543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.904659, 36.520378, 24.941462>,  <42.673370, 36.539219, 24.880213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.904659, 36.520378, 24.941462>,  <43.290138, 36.488979, 25.043543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904659, 36.520378, 24.941462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266729, 0.326201, -0.906890,
		0.012058, -0.942035, -0.335297,
		-0.963696, 0.078498, -0.255201,
		42.615551, 36.543926, 24.864901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216290, 36.074009, 24.460526>,  <43.290138, 36.488979, 25.043543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216290, 36.074009, 24.460526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.912334, 36.333221, 24.440014>,  <42.729961, 36.488747, 24.427708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.912334, 36.333221, 24.440014>,  <43.216290, 36.074009, 24.460526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912334, 36.333221, 24.440014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406130, 0.411681, -0.815829,
		-0.507569, -0.640765, -0.576015,
		-0.759889, 0.648027, -0.051277,
		42.684368, 36.527630, 24.424631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014778, 35.977329, 23.781748>,  <43.216290, 36.074009, 24.460526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014778, 35.977329, 23.781748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.865978, 36.322350, 23.918928>,  <42.776699, 36.529362, 24.001236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.865978, 36.322350, 23.918928>,  <43.014778, 35.977329, 23.781748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865978, 36.322350, 23.918928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112233, 0.408551, -0.905809,
		-0.921422, -0.298473, -0.248789,
		-0.372002, 0.862554, 0.342949,
		42.754379, 36.581116, 24.021812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742455, 36.309227, 23.171043>,  <43.014778, 35.977329, 23.781748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742455, 36.309227, 23.171043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.764820, 36.616566, 23.426079>,  <42.778240, 36.800968, 23.579100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.764820, 36.616566, 23.426079>,  <42.742455, 36.309227, 23.171043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764820, 36.616566, 23.426079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411244, 0.564177, -0.715949,
		-0.909808, 0.302239, -0.284430,
		0.055919, 0.768346, 0.637587,
		42.781597, 36.847069, 23.617355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397121, 36.875153, 22.867332>,  <42.742455, 36.309227, 23.171043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397121, 36.875153, 22.867332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.649414, 37.031212, 23.135649>,  <42.800789, 37.124847, 23.296638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.649414, 37.031212, 23.135649>,  <42.397121, 36.875153, 22.867332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649414, 37.031212, 23.135649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416366, 0.559310, -0.716806,
		-0.654840, 0.731409, 0.190333,
		0.630733, 0.390145, 0.670792,
		42.838634, 37.148254, 23.336885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351681, 37.587517, 22.711817>,  <42.397121, 36.875153, 22.867332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351681, 37.587517, 22.711817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.681980, 37.500877, 22.920134>,  <42.880161, 37.448895, 23.045124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.681980, 37.500877, 22.920134>,  <42.351681, 37.587517, 22.711817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681980, 37.500877, 22.920134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557238, 0.456235, -0.693783,
		-0.087332, 0.863096, 0.497432,
		0.825747, -0.216598, 0.520794,
		42.929703, 37.435898, 23.076372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709595, 38.174828, 22.725975>,  <42.351681, 37.587517, 22.711817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709595, 38.174828, 22.725975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.003586, 37.921036, 22.821680>,  <43.179981, 37.768761, 22.879103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.003586, 37.921036, 22.821680>,  <42.709595, 38.174828, 22.725975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003586, 37.921036, 22.821680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574099, 0.394464, -0.717502,
		0.360857, 0.664709, 0.654175,
		0.734978, -0.634477, 0.239263,
		43.224079, 37.730694, 22.893459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353874, 38.558598, 22.787199>,  <42.709595, 38.174828, 22.725975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353874, 38.558598, 22.787199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.453693, 38.184456, 22.686926>,  <43.513584, 37.959972, 22.626762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.453693, 38.184456, 22.686926>,  <43.353874, 38.558598, 22.787199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453693, 38.184456, 22.686926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504380, 0.346536, -0.790895,
		0.826636, 0.070928, 0.558250,
		0.249550, -0.935351, -0.250684,
		43.528557, 37.903851, 22.611721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029613, 38.621128, 22.820242>,  <43.353874, 38.558598, 22.787199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029613, 38.621128, 22.820242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.952698, 38.297325, 22.598352>,  <43.906548, 38.103043, 22.465218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.952698, 38.297325, 22.598352>,  <44.029613, 38.621128, 22.820242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952698, 38.297325, 22.598352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641800, 0.323887, -0.695119,
		0.742373, -0.489686, 0.457263,
		-0.192288, -0.809509, -0.554725,
		43.895012, 38.054474, 22.431934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592964, 38.489067, 22.537663>,  <44.029613, 38.621128, 22.820242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592964, 38.489067, 22.537663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.346088, 38.303162, 22.283710>,  <44.197964, 38.191620, 22.131340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.346088, 38.303162, 22.283710>,  <44.592964, 38.489067, 22.537663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346088, 38.303162, 22.283710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610079, 0.226876, -0.759164,
		0.496870, -0.855876, 0.143516,
		-0.617190, -0.464762, -0.634880,
		44.160931, 38.163734, 22.093246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931911, 38.055836, 22.075361>,  <44.592964, 38.489067, 22.537663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931911, 38.055836, 22.075361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.588848, 38.117107, 21.879011>,  <44.383011, 38.153870, 21.761202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.588848, 38.117107, 21.879011>,  <44.931911, 38.055836, 22.075361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588848, 38.117107, 21.879011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513116, 0.192429, -0.836471,
		-0.033671, -0.969282, -0.243637,
		-0.857659, 0.153179, -0.490875,
		44.331551, 38.163059, 21.731749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083176, 37.903465, 21.422207>,  <44.931911, 38.055836, 22.075361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083176, 37.903465, 21.422207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.724236, 38.069256, 21.361576>,  <44.508873, 38.168732, 21.325197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.724236, 38.069256, 21.361576>,  <45.083176, 37.903465, 21.422207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724236, 38.069256, 21.361576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323166, 0.383223, -0.865277,
		-0.300553, -0.825437, -0.477830,
		-0.897347, 0.414480, -0.151575,
		44.455032, 38.193600, 21.316103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954338, 37.644753, 20.719275>,  <45.083176, 37.903465, 21.422207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954338, 37.644753, 20.719275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.738590, 37.977695, 20.770287>,  <44.609142, 38.177460, 20.800894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.738590, 37.977695, 20.770287>,  <44.954338, 37.644753, 20.719275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738590, 37.977695, 20.770287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483788, 0.430267, -0.762115,
		-0.689222, -0.349366, -0.634757,
		-0.539372, 0.832354, 0.127531,
		44.576778, 38.227402, 20.808546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753223, 37.840340, 19.997280>,  <44.954338, 37.644753, 20.719275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753223, 37.840340, 19.997280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.668983, 38.165535, 20.214426>,  <44.618439, 38.360653, 20.344713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.668983, 38.165535, 20.214426>,  <44.753223, 37.840340, 19.997280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668983, 38.165535, 20.214426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312502, 0.582170, -0.750613,
		-0.926278, 0.011568, -0.376664,
		-0.210600, 0.812985, 0.542867,
		44.605804, 38.409431, 20.377287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408218, 38.272430, 19.603535>,  <44.753223, 37.840340, 19.997280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408218, 38.272430, 19.603535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.544018, 38.526356, 19.881168>,  <44.625496, 38.678711, 20.047749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.544018, 38.526356, 19.881168>,  <44.408218, 38.272430, 19.603535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544018, 38.526356, 19.881168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400673, 0.570014, -0.717318,
		-0.851000, 0.521630, -0.060833,
		0.339498, 0.634812, 0.694086,
		44.645866, 38.716801, 20.089394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241547, 38.866325, 19.371386>,  <44.408218, 38.272430, 19.603535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241547, 38.866325, 19.371386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.567577, 38.920910, 19.596607>,  <44.763195, 38.953659, 19.731739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.567577, 38.920910, 19.596607>,  <44.241547, 38.866325, 19.371386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567577, 38.920910, 19.596607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453906, 0.453532, -0.766993,
		-0.360024, 0.880731, 0.307726,
		0.815078, 0.136457, 0.563052,
		44.812099, 38.961845, 19.765522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664066, 38.936646, 18.827976>,  <44.241547, 38.866325, 19.371386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664066, 38.936646, 18.827976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394756, 39.217045, 18.733919>,  <43.233170, 39.385284, 18.677485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394756, 39.217045, 18.733919>,  <43.664066, 38.936646, 18.827976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394756, 39.217045, 18.733919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510922, -0.211203, 0.833278,
		0.534468, 0.681167, 0.500356,
		-0.673278, 0.701003, -0.235142,
		43.192772, 39.427345, 18.663376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421181, 39.343010, 19.449160>,  <43.664066, 38.936646, 18.827976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421181, 39.343010, 19.449160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.131142, 39.416988, 19.183823>,  <42.957119, 39.461376, 19.024620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.131142, 39.416988, 19.183823>,  <43.421181, 39.343010, 19.449160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131142, 39.416988, 19.183823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678257, -0.025144, 0.734394,
		0.119142, 0.982428, 0.143670,
		-0.725102, 0.184943, -0.663343,
		42.913612, 39.472469, 18.984819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017311, 39.625736, 19.840672>,  <43.421181, 39.343010, 19.449160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017311, 39.625736, 19.840672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801811, 39.521221, 19.520302>,  <42.672512, 39.458511, 19.328079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.801811, 39.521221, 19.520302>,  <43.017311, 39.625736, 19.840672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801811, 39.521221, 19.520302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785241, -0.188664, 0.589747,
		-0.305201, 0.946643, -0.103534,
		-0.538747, -0.261291, -0.800924,
		42.640186, 39.442833, 19.280025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537952, 40.159615, 19.779818>,  <43.017311, 39.625736, 19.840672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537952, 40.159615, 19.779818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.394241, 39.835373, 19.594849>,  <42.308014, 39.640827, 19.483868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.394241, 39.835373, 19.594849>,  <42.537952, 40.159615, 19.779818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394241, 39.835373, 19.594849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742486, -0.051895, 0.667848,
		-0.565361, 0.583285, -0.583220,
		-0.359280, -0.810608, -0.462421,
		42.286457, 39.592190, 19.456121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883770, 40.295582, 19.709179>,  <42.537952, 40.159615, 19.779818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883770, 40.295582, 19.709179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.885788, 39.898228, 19.663294>,  <41.886997, 39.659817, 19.635763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.885788, 39.898228, 19.663294>,  <41.883770, 40.295582, 19.709179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885788, 39.898228, 19.663294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604706, -0.094394, 0.790836,
		-0.796433, 0.065381, -0.601182,
		0.005042, -0.993386, -0.114714,
		41.887302, 39.600212, 19.628880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173107, 39.966526, 19.845757>,  <41.883770, 40.295582, 19.709179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173107, 39.966526, 19.845757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.429058, 39.667576, 19.917282>,  <41.582630, 39.488205, 19.960197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.429058, 39.667576, 19.917282>,  <41.173107, 39.966526, 19.845757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429058, 39.667576, 19.917282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499712, -0.227896, 0.835674,
		-0.583814, -0.624089, -0.519301,
		0.639882, -0.747379, 0.178816,
		41.621021, 39.443363, 19.970926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728291, 39.435555, 19.980804>,  <41.173107, 39.966526, 19.845757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728291, 39.435555, 19.980804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083584, 39.299641, 20.104473>,  <41.296761, 39.218090, 20.178675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083584, 39.299641, 20.104473>,  <40.728291, 39.435555, 19.980804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083584, 39.299641, 20.104473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412741, -0.294759, 0.861837,
		-0.201710, -0.893119, -0.402059,
		0.888233, -0.339788, 0.309171,
		41.350052, 39.197704, 20.197224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668213, 38.802895, 20.250128>,  <40.728291, 39.435555, 19.980804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668213, 38.802895, 20.250128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994011, 38.921021, 20.449883>,  <41.189491, 38.991898, 20.569735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994011, 38.921021, 20.449883>,  <40.668213, 38.802895, 20.250128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994011, 38.921021, 20.449883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370196, -0.398212, 0.839275,
		0.446713, -0.868456, -0.215016,
		0.814495, 0.295317, 0.499385,
		41.238358, 39.009617, 20.599699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107094, 38.201904, 20.613712>,  <40.668213, 38.802895, 20.250128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107094, 38.201904, 20.613712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226429, 38.532669, 20.804380>,  <41.298031, 38.731129, 20.918781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226429, 38.532669, 20.804380>,  <41.107094, 38.201904, 20.613712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226429, 38.532669, 20.804380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248910, -0.414727, 0.875240,
		0.921432, -0.379766, 0.082097,
		0.298339, 0.826909, 0.476671,
		41.315929, 38.780743, 20.947382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612392, 37.886974, 21.115601>,  <41.107094, 38.201904, 20.613712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612392, 37.886974, 21.115601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.485603, 38.242527, 21.247910>,  <41.409531, 38.455860, 21.327295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.485603, 38.242527, 21.247910>,  <41.612392, 37.886974, 21.115601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485603, 38.242527, 21.247910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187298, -0.400555, 0.896926,
		0.929758, 0.222344, 0.293450,
		-0.316969, 0.888886, 0.330775,
		41.390514, 38.509193, 21.347141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030163, 38.109463, 21.712309>,  <41.612392, 37.886974, 21.115601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030163, 38.109463, 21.712309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.682491, 38.305557, 21.738222>,  <41.473888, 38.423214, 21.753771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.682491, 38.305557, 21.738222>,  <42.030163, 38.109463, 21.712309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682491, 38.305557, 21.738222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241282, -0.534796, 0.809800,
		0.431644, 0.688228, 0.583118,
		-0.869176, 0.490241, 0.064785,
		41.421738, 38.452629, 21.757658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041100, 38.510685, 22.414146>,  <42.030163, 38.109463, 21.712309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041100, 38.510685, 22.414146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.664581, 38.446171, 22.295523>,  <41.438671, 38.407463, 22.224348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.664581, 38.446171, 22.295523>,  <42.041100, 38.510685, 22.414146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664581, 38.446171, 22.295523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178359, -0.508243, 0.842542,
		-0.286615, 0.845976, 0.449640,
		-0.941297, -0.161288, -0.296557,
		41.382191, 38.397785, 22.206556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617123, 38.569271, 22.983723>,  <42.041100, 38.510685, 22.414146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617123, 38.569271, 22.983723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.382153, 38.344856, 22.750425>,  <41.241169, 38.210209, 22.610447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.382153, 38.344856, 22.750425>,  <41.617123, 38.569271, 22.983723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382153, 38.344856, 22.750425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358349, -0.465868, 0.809044,
		-0.725615, 0.684258, 0.072617,
		-0.587425, -0.561032, -0.583245,
		41.205925, 38.176548, 22.575453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063232, 38.452690, 23.420855>,  <41.617123, 38.569271, 22.983723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063232, 38.452690, 23.420855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.995960, 38.192787, 23.124334>,  <40.955597, 38.036846, 22.946423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.995960, 38.192787, 23.124334>,  <41.063232, 38.452690, 23.420855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995960, 38.192787, 23.124334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464781, -0.610907, 0.640915,
		-0.869306, 0.452334, -0.199252,
		-0.168183, -0.649759, -0.741301,
		40.945507, 37.997860, 22.901943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381058, 38.350494, 23.426071>,  <41.063232, 38.452690, 23.420855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381058, 38.350494, 23.426071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.497124, 38.035404, 23.208706>,  <40.566765, 37.846352, 23.078287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.497124, 38.035404, 23.208706>,  <40.381058, 38.350494, 23.426071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497124, 38.035404, 23.208706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626759, -0.585541, 0.514116,
		-0.723171, 0.191411, -0.663616,
		0.290167, -0.787721, -0.543415,
		40.584175, 37.799088, 23.045681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671600, 37.982048, 23.298088>,  <40.381058, 38.350494, 23.426071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671600, 37.982048, 23.298088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988312, 37.743008, 23.247545>,  <40.178337, 37.599586, 23.217218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.988312, 37.743008, 23.247545>,  <39.671600, 37.982048, 23.298088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988312, 37.743008, 23.247545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457833, -0.717578, 0.524853,
		-0.404321, -0.357716, -0.841762,
		0.791778, -0.597596, -0.126358,
		40.225845, 37.563728, 23.209639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395863, 37.310741, 23.203556>,  <39.671600, 37.982048, 23.298088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395863, 37.310741, 23.203556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.764442, 37.226608, 23.334211>,  <39.985592, 37.176128, 23.412605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.764442, 37.226608, 23.334211>,  <39.395863, 37.310741, 23.203556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764442, 37.226608, 23.334211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385511, -0.599122, 0.701736,
		0.048103, -0.772538, -0.633144,
		0.921449, -0.210328, 0.326641,
		40.040878, 37.163509, 23.432203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307690, 36.567448, 23.317966>,  <39.395863, 37.310741, 23.203556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307690, 36.567448, 23.317966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637363, 36.700710, 23.501152>,  <39.835167, 36.780666, 23.611063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637363, 36.700710, 23.501152>,  <39.307690, 36.567448, 23.317966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637363, 36.700710, 23.501152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189715, -0.599518, 0.777552,
		0.533601, -0.727728, -0.430909,
		0.824183, 0.333152, 0.457964,
		39.884617, 36.800655, 23.638542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492729, 36.052444, 23.638288>,  <39.307690, 36.567448, 23.317966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492729, 36.052444, 23.638288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685829, 36.335487, 23.844681>,  <39.801689, 36.505314, 23.968517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685829, 36.335487, 23.844681>,  <39.492729, 36.052444, 23.638288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685829, 36.335487, 23.844681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057880, -0.562115, 0.825031,
		0.873843, -0.428149, -0.230405,
		0.482751, 0.707612, 0.515982,
		39.830654, 36.547771, 23.999475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897045, 35.726299, 24.217022>,  <39.492729, 36.052444, 23.638288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897045, 35.726299, 24.217022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.837452, 36.112900, 24.300625>,  <39.801697, 36.344860, 24.350786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.837452, 36.112900, 24.300625>,  <39.897045, 35.726299, 24.217022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837452, 36.112900, 24.300625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194898, -0.235920, 0.952028,
		0.969442, 0.101104, 0.223517,
		-0.148986, 0.966499, 0.209005,
		39.792755, 36.402851, 24.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342762, 35.937778, 24.764603>,  <39.897045, 35.726299, 24.217022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342762, 35.937778, 24.764603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015995, 36.167973, 24.779903>,  <39.819935, 36.306091, 24.789083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015995, 36.167973, 24.779903>,  <40.342762, 35.937778, 24.764603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015995, 36.167973, 24.779903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085623, -0.186592, 0.978699,
		0.570368, 0.796238, 0.201705,
		-0.816914, 0.575489, 0.038250,
		39.770920, 36.340618, 24.791378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.435745, 33.396408, 30.039669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221424, 33.704208, 29.900650>,  <41.092831, 33.888889, 29.817238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221424, 33.704208, 29.900650>,  <41.435745, 33.396408, 30.039669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221424, 33.704208, 29.900650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559471, -0.015271, 0.828709,
		0.632382, 0.638468, 0.438694,
		-0.535804, 0.769497, -0.347547,
		41.060684, 33.935059, 29.796387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408825, 33.868103, 30.578865>,  <41.435745, 33.396408, 30.039669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408825, 33.868103, 30.578865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.102840, 33.932201, 30.329334>,  <40.919250, 33.970661, 30.179615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.102840, 33.932201, 30.329334>,  <41.408825, 33.868103, 30.578865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102840, 33.932201, 30.329334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629874, 0.016181, 0.776528,
		0.134531, 0.986944, 0.088558,
		-0.764957, 0.160248, -0.623828,
		40.873352, 33.980274, 30.142185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929878, 34.355423, 30.840061>,  <41.408825, 33.868103, 30.578865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929878, 34.355423, 30.840061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.656532, 34.264191, 30.562649>,  <40.492523, 34.209450, 30.396202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.656532, 34.264191, 30.562649>,  <40.929878, 34.355423, 30.840061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656532, 34.264191, 30.562649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721749, 0.068029, 0.688803,
		-0.109926, 0.971262, -0.211110,
		-0.683370, -0.228085, -0.693529,
		40.451523, 34.195766, 30.354589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454319, 34.912098, 30.728262>,  <40.929878, 34.355423, 30.840061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454319, 34.912098, 30.728262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289906, 34.564178, 30.619087>,  <40.191257, 34.355427, 30.553583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289906, 34.564178, 30.619087>,  <40.454319, 34.912098, 30.728262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289906, 34.564178, 30.619087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806780, 0.207681, 0.553150,
		-0.424448, 0.447563, -0.787103,
		-0.411036, -0.869802, -0.272935,
		40.166595, 34.303238, 30.537207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855091, 35.110729, 30.661472>,  <40.454319, 34.912098, 30.728262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855091, 35.110729, 30.661472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828018, 34.712788, 30.691624>,  <39.811775, 34.474022, 30.709715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828018, 34.712788, 30.691624>,  <39.855091, 35.110729, 30.661472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828018, 34.712788, 30.691624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834167, 0.097875, 0.542758,
		-0.547343, -0.026145, -0.836500,
		-0.067682, -0.994855, 0.075380,
		39.807713, 34.414330, 30.714237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196213, 34.886269, 30.601858>,  <39.855091, 35.110729, 30.661472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196213, 34.886269, 30.601858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340721, 34.550205, 30.763657>,  <39.427425, 34.348568, 30.860735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340721, 34.550205, 30.763657>,  <39.196213, 34.886269, 30.601858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340721, 34.550205, 30.763657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796061, -0.052007, 0.602977,
		-0.485560, -0.539842, -0.687606,
		0.361272, -0.840158, 0.404495,
		39.449104, 34.298157, 30.885006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557320, 34.541382, 30.652353>,  <39.196213, 34.886269, 30.601858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557320, 34.541382, 30.652353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830078, 34.381542, 30.897413>,  <38.993732, 34.285641, 31.044449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830078, 34.381542, 30.897413>,  <38.557320, 34.541382, 30.652353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830078, 34.381542, 30.897413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707720, -0.148842, 0.690637,
		-0.184788, -0.904527, -0.384297,
		0.681899, -0.399596, 0.612647,
		39.034649, 34.261665, 31.081207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222996, 34.009506, 30.947834>,  <38.557320, 34.541382, 30.652353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222996, 34.009506, 30.947834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.534706, 34.072990, 31.190334>,  <38.721733, 34.111080, 31.335835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.534706, 34.072990, 31.190334>,  <38.222996, 34.009506, 30.947834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534706, 34.072990, 31.190334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575939, -0.199955, 0.792661,
		0.247025, -0.966866, -0.064413,
		0.779277, 0.158709, 0.606250,
		38.768490, 34.120602, 31.372210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317909, 33.413620, 31.286718>,  <38.222996, 34.009506, 30.947834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317909, 33.413620, 31.286718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.474152, 33.720924, 31.489582>,  <38.567898, 33.905308, 31.611300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.474152, 33.720924, 31.489582>,  <38.317909, 33.413620, 31.286718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474152, 33.720924, 31.489582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605545, -0.200522, 0.770133,
		0.693357, -0.607925, 0.386890,
		0.390603, 0.768257, 0.507159,
		38.591331, 33.951401, 31.641729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290489, 33.197781, 32.121124>,  <38.317909, 33.413620, 31.286718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290489, 33.197781, 32.121124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374790, 33.588657, 32.110657>,  <38.425369, 33.823181, 32.104374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374790, 33.588657, 32.110657>,  <38.290489, 33.197781, 32.121124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374790, 33.588657, 32.110657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295914, 0.089291, 0.951032,
		0.931676, -0.192685, 0.307982,
		0.210750, 0.977189, -0.026172,
		38.438015, 33.881813, 32.102806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779156, 33.445438, 32.765266>,  <38.290489, 33.197781, 32.121124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779156, 33.445438, 32.765266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.583424, 33.762695, 32.620228>,  <38.465984, 33.953049, 32.533203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.583424, 33.762695, 32.620228>,  <38.779156, 33.445438, 32.765266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583424, 33.762695, 32.620228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262732, 0.262388, 0.928506,
		0.831580, 0.549615, 0.079989,
		-0.489333, 0.793143, -0.362598,
		38.436623, 34.000637, 32.511448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910500, 33.914310, 33.256618>,  <38.779156, 33.445438, 32.765266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910500, 33.914310, 33.256618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.599701, 34.063889, 33.054062>,  <38.413223, 34.153637, 32.932526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.599701, 34.063889, 33.054062>,  <38.910500, 33.914310, 33.256618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599701, 34.063889, 33.054062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366446, 0.385404, 0.846865,
		0.511851, 0.843579, -0.162426,
		-0.776998, 0.373948, -0.506396,
		38.366600, 34.176075, 32.902142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882339, 34.656109, 33.394150>,  <38.910500, 33.914310, 33.256618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882339, 34.656109, 33.394150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521606, 34.512211, 33.298424>,  <38.305164, 34.425873, 33.240986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521606, 34.512211, 33.298424>,  <38.882339, 34.656109, 33.394150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521606, 34.512211, 33.298424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403443, 0.502829, 0.764459,
		-0.154676, 0.785968, -0.598607,
		-0.901837, -0.359747, -0.239318,
		38.251057, 34.404285, 33.226627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542744, 34.885078, 33.980278>,  <38.882339, 34.656109, 33.394150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542744, 34.885078, 33.980278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469311, 35.170330, 34.250908>,  <38.425251, 35.341480, 34.413284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469311, 35.170330, 34.250908>,  <38.542744, 34.885078, 33.980278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469311, 35.170330, 34.250908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273903, 0.698120, -0.661518,
		-0.944074, 0.063875, -0.323487,
		-0.183579, 0.713126, 0.676572,
		38.414238, 35.384270, 34.453880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201889, 35.517059, 33.677391>,  <38.542744, 34.885078, 33.980278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201889, 35.517059, 33.677391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396194, 35.685219, 33.983932>,  <38.512775, 35.786114, 34.167858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396194, 35.685219, 33.983932>,  <38.201889, 35.517059, 33.677391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396194, 35.685219, 33.983932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146255, 0.825295, -0.545434,
		-0.861769, 0.377034, 0.339410,
		0.485761, 0.420397, 0.766357,
		38.541924, 35.811337, 34.213840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915035, 36.212120, 33.813644>,  <38.201889, 35.517059, 33.677391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915035, 36.212120, 33.813644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.283142, 36.227562, 33.969402>,  <38.504005, 36.236828, 34.062855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.283142, 36.227562, 33.969402>,  <37.915035, 36.212120, 33.813644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283142, 36.227562, 33.969402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110285, 0.929195, -0.352753,
		-0.375437, 0.367569, 0.850846,
		0.920263, 0.038601, 0.389392,
		38.559219, 36.239143, 34.086220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002087, 36.844547, 33.936497>,  <37.915035, 36.212120, 33.813644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002087, 36.844547, 33.936497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379688, 36.712742, 33.929752>,  <38.606247, 36.633659, 33.925705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379688, 36.712742, 33.929752>,  <38.002087, 36.844547, 33.936497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379688, 36.712742, 33.929752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284006, 0.837522, -0.466794,
		0.167937, 0.435865, 0.884205,
		0.944001, -0.329511, -0.016863,
		38.662888, 36.613888, 33.924694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460690, 37.484722, 33.989376>,  <38.002087, 36.844547, 33.936497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460690, 37.484722, 33.989376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680183, 37.190838, 33.829830>,  <38.811878, 37.014507, 33.734104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680183, 37.190838, 33.829830>,  <38.460690, 37.484722, 33.989376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680183, 37.190838, 33.829830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415184, 0.653614, -0.632780,
		0.725611, 0.181629, 0.663701,
		0.548736, -0.734710, -0.398860,
		38.844803, 36.970425, 33.710171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055954, 37.805241, 33.970543>,  <38.460690, 37.484722, 33.989376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055954, 37.805241, 33.970543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.065514, 37.494164, 33.719265>,  <39.071247, 37.307518, 33.568497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.065514, 37.494164, 33.719265>,  <39.055954, 37.805241, 33.970543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065514, 37.494164, 33.719265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317514, 0.601743, -0.732865,
		0.947953, -0.181948, 0.261307,
		0.023896, -0.777690, -0.628194,
		39.072681, 37.260857, 33.530807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612495, 37.937038, 33.539871>,  <39.055954, 37.805241, 33.970543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612495, 37.937038, 33.539871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.409496, 37.666122, 33.326809>,  <39.287697, 37.503571, 33.198971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.409496, 37.666122, 33.326809>,  <39.612495, 37.937038, 33.539871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409496, 37.666122, 33.326809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149931, 0.539332, -0.828638,
		0.848507, -0.500395, -0.172164,
		-0.507500, -0.677293, -0.532652,
		39.257248, 37.462936, 33.167015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069603, 37.811115, 32.948856>,  <39.612495, 37.937038, 33.539871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069603, 37.811115, 32.948856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702084, 37.703270, 32.833542>,  <39.481571, 37.638561, 32.764351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.702084, 37.703270, 32.833542>,  <40.069603, 37.811115, 32.948856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702084, 37.703270, 32.833542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112751, 0.520669, -0.846281,
		0.378270, -0.810070, -0.447994,
		-0.918803, -0.269611, -0.288289,
		39.426441, 37.622387, 32.747055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193066, 37.617310, 32.251106>,  <40.069603, 37.811115, 32.948856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193066, 37.617310, 32.251106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.795574, 37.657688, 32.270374>,  <39.557079, 37.681915, 32.281933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.795574, 37.657688, 32.270374>,  <40.193066, 37.617310, 32.251106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795574, 37.657688, 32.270374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001471, 0.418805, -0.908075,
		-0.111844, -0.902448, -0.416028,
		-0.993725, 0.100951, 0.048168,
		39.497456, 37.687973, 32.284824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972424, 37.420757, 31.540915>,  <40.193066, 37.617310, 32.251106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972424, 37.420757, 31.540915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.686398, 37.647373, 31.704725>,  <39.514782, 37.783340, 31.803013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.686398, 37.647373, 31.704725>,  <39.972424, 37.420757, 31.540915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686398, 37.647373, 31.704725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196681, 0.399118, -0.895556,
		-0.670816, -0.720930, -0.173970,
		-0.715068, 0.566537, 0.409528,
		39.471878, 37.817333, 31.827583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418575, 37.315861, 31.123163>,  <39.972424, 37.420757, 31.540915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418575, 37.315861, 31.123163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.392693, 37.675533, 31.296267>,  <39.377163, 37.891338, 31.400129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.392693, 37.675533, 31.296267>,  <39.418575, 37.315861, 31.123163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392693, 37.675533, 31.296267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148057, 0.420217, -0.895263,
		-0.986860, -0.122004, 0.105940,
		-0.064708, 0.899185, 0.432759,
		39.373280, 37.945290, 31.426094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845257, 37.557964, 30.805300>,  <39.418575, 37.315861, 31.123163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845257, 37.557964, 30.805300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.019989, 37.892227, 30.938484>,  <39.124828, 38.092785, 31.018394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.019989, 37.892227, 30.938484>,  <38.845257, 37.557964, 30.805300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019989, 37.892227, 30.938484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138087, 0.428052, -0.893142,
		-0.888882, 0.344175, 0.302379,
		0.436831, 0.835653, 0.332962,
		39.151039, 38.142921, 31.038372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482922, 38.038368, 30.569958>,  <38.845257, 37.557964, 30.805300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482922, 38.038368, 30.569958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.819294, 38.232979, 30.664719>,  <39.021118, 38.349747, 30.721575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.819294, 38.232979, 30.664719>,  <38.482922, 38.038368, 30.569958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819294, 38.232979, 30.664719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046294, 0.371496, -0.927280,
		-0.539157, 0.790746, 0.289879,
		0.840932, 0.486530, 0.236901,
		39.071575, 38.378937, 30.735788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315350, 38.613827, 30.269991>,  <38.482922, 38.038368, 30.569958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315350, 38.613827, 30.269991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.714050, 38.594521, 30.295799>,  <38.953270, 38.582939, 30.311285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.714050, 38.594521, 30.295799>,  <38.315350, 38.613827, 30.269991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714050, 38.594521, 30.295799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078399, 0.396146, -0.914834,
		0.018592, 0.916918, 0.398642,
		0.996749, -0.048262, 0.064520,
		39.013077, 38.580044, 30.315155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418247, 39.219154, 29.871553>,  <38.315350, 38.613827, 30.269991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418247, 39.219154, 29.871553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753502, 39.003201, 29.902689>,  <38.954655, 38.873627, 29.921371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753502, 39.003201, 29.902689>,  <38.418247, 39.219154, 29.871553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753502, 39.003201, 29.902689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256048, 0.263396, -0.930087,
		0.481635, 0.799468, 0.358997,
		0.838133, -0.539883, 0.077841,
		39.004940, 38.841236, 29.926041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671497, 39.811584, 30.246420>,  <38.418247, 39.219154, 29.871553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671497, 39.811584, 30.246420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477123, 40.159946, 30.217056>,  <38.360497, 40.368965, 30.199438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.477123, 40.159946, 30.217056>,  <38.671497, 39.811584, 30.246420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477123, 40.159946, 30.217056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690841, -0.331300, 0.642634,
		0.535352, 0.362997, 0.762648,
		-0.485939, 0.870904, -0.073411,
		38.331341, 40.421219, 30.195032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508495, 39.870064, 30.822615>,  <38.671497, 39.811584, 30.246420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508495, 39.870064, 30.822615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.281658, 40.168110, 30.682211>,  <38.145557, 40.346939, 30.597969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.281658, 40.168110, 30.682211>,  <38.508495, 39.870064, 30.822615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281658, 40.168110, 30.682211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713087, -0.230872, 0.661970,
		0.412207, 0.625698, 0.662260,
		-0.567091, 0.745118, -0.351010,
		38.111530, 40.391644, 30.576908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297318, 40.206387, 31.447283>,  <38.508495, 39.870064, 30.822615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297318, 40.206387, 31.447283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044434, 40.304615, 31.153341>,  <37.892704, 40.363552, 30.976976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044434, 40.304615, 31.153341>,  <38.297318, 40.206387, 31.447283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044434, 40.304615, 31.153341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774345, -0.232788, 0.588387,
		-0.026572, 0.941012, 0.337329,
		-0.632205, 0.245574, -0.734854,
		37.854771, 40.378288, 30.932886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806110, 40.549126, 31.764606>,  <38.297318, 40.206387, 31.447283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806110, 40.549126, 31.764606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633892, 40.430195, 31.423731>,  <37.530560, 40.358837, 31.219206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633892, 40.430195, 31.423731>,  <37.806110, 40.549126, 31.764606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633892, 40.430195, 31.423731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808233, -0.293249, 0.510651,
		-0.401735, 0.908626, -0.114053,
		-0.430545, -0.297327, -0.852190,
		37.504730, 40.340996, 31.168074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089550, 40.822575, 31.739340>,  <37.806110, 40.549126, 31.764606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089550, 40.822575, 31.739340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.116543, 40.522537, 31.476187>,  <37.132736, 40.342514, 31.318295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.116543, 40.522537, 31.476187>,  <37.089550, 40.822575, 31.739340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116543, 40.522537, 31.476187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900501, -0.329698, 0.283542,
		-0.429586, 0.573292, -0.697705,
		0.067480, -0.750090, -0.657884,
		37.136787, 40.297508, 31.278822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418427, 40.812450, 31.464333>,  <37.089550, 40.822575, 31.739340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418427, 40.812450, 31.464333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.562088, 40.445152, 31.397594>,  <36.648285, 40.224773, 31.357552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.562088, 40.445152, 31.397594>,  <36.418427, 40.812450, 31.464333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562088, 40.445152, 31.397594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876335, -0.393301, 0.278121,
		-0.321003, 0.046323, -0.945945,
		0.359158, -0.918242, -0.166846,
		36.669834, 40.169682, 31.347540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889378, 40.430229, 31.102301>,  <36.418427, 40.812450, 31.464333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889378, 40.430229, 31.102301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122105, 40.145767, 31.260164>,  <36.261742, 39.975090, 31.354881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.122105, 40.145767, 31.260164>,  <35.889378, 40.430229, 31.102301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122105, 40.145767, 31.260164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809334, -0.554223, 0.194460,
		0.080438, -0.432550, -0.898014,
		0.581815, -0.711152, 0.394658,
		36.296650, 39.932423, 31.378561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789490, 39.786903, 30.722677>,  <35.889378, 40.430229, 31.102301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789490, 39.786903, 30.722677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.948814, 39.678780, 31.073284>,  <36.044411, 39.613907, 31.283648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.948814, 39.678780, 31.073284>,  <35.789490, 39.786903, 30.722677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948814, 39.678780, 31.073284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806695, -0.558048, 0.194487,
		0.436567, -0.784548, -0.440334,
		0.398311, -0.270309, 0.876516,
		36.068306, 39.597687, 31.336239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464848, 39.059509, 30.814415>,  <35.789490, 39.786903, 30.722677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464848, 39.059509, 30.814415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629951, 39.129101, 31.172045>,  <35.729012, 39.170856, 31.386621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629951, 39.129101, 31.172045>,  <35.464848, 39.059509, 30.814415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629951, 39.129101, 31.172045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687491, -0.584387, 0.431100,
		0.597485, -0.792606, -0.121604,
		0.412756, 0.173974, 0.894072,
		35.753777, 39.181293, 31.440266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575665, 38.409756, 31.104425>,  <35.464848, 39.059509, 30.814415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575665, 38.409756, 31.104425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.532650, 38.687607, 31.388941>,  <35.506840, 38.854317, 31.559650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.532650, 38.687607, 31.388941>,  <35.575665, 38.409756, 31.104425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532650, 38.687607, 31.388941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779939, -0.502614, 0.372927,
		0.616548, -0.514657, 0.595816,
		-0.107536, 0.694627, 0.711287,
		35.500389, 38.895996, 31.602327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561771, 37.965672, 31.625597>,  <35.575665, 38.409756, 31.104425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561771, 37.965672, 31.625597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.394367, 38.316936, 31.718269>,  <35.293926, 38.527695, 31.773872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.394367, 38.316936, 31.718269>,  <35.561771, 37.965672, 31.625597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394367, 38.316936, 31.718269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753723, -0.478151, 0.450858,
		0.506707, 0.014064, 0.862004,
		-0.418509, 0.878165, 0.231682,
		35.268814, 38.580387, 31.787773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320389, 37.919189, 32.310440>,  <35.561771, 37.965672, 31.625597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320389, 37.919189, 32.310440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.121403, 38.251247, 32.209732>,  <35.002010, 38.450481, 32.149307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.121403, 38.251247, 32.209732>,  <35.320389, 37.919189, 32.310440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121403, 38.251247, 32.209732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802450, -0.330105, 0.497096,
		0.329553, 0.449319, 0.830366,
		-0.497463, 0.830147, -0.251769,
		34.972164, 38.500290, 32.134201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.785305, 41.217964, 27.780228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509808, 41.470642, 27.637909>,  <40.344509, 41.622250, 27.552517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509808, 41.470642, 27.637909>,  <40.785305, 41.217964, 27.780228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509808, 41.470642, 27.637909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536228, -0.113562, 0.836399,
		0.487944, 0.766854, 0.416948,
		-0.688745, 0.631696, -0.355797,
		40.303185, 41.660152, 27.531170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687824, 41.596058, 28.353447>,  <40.785305, 41.217964, 27.780228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687824, 41.596058, 28.353447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360390, 41.666485, 28.134754>,  <40.163929, 41.708740, 28.003538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360390, 41.666485, 28.134754>,  <40.687824, 41.596058, 28.353447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360390, 41.666485, 28.134754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547275, 0.049881, 0.835465,
		0.174371, 0.983113, 0.055526,
		-0.818587, 0.176069, -0.546731,
		40.114815, 41.719307, 27.970736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284878, 42.224369, 28.607613>,  <40.687824, 41.596058, 28.353447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284878, 42.224369, 28.607613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047226, 41.974075, 28.405441>,  <39.904633, 41.823898, 28.284138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047226, 41.974075, 28.405441>,  <40.284878, 42.224369, 28.607613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047226, 41.974075, 28.405441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693544, 0.080234, 0.715932,
		-0.407433, 0.775897, -0.481646,
		-0.594134, -0.625737, -0.505429,
		39.868984, 41.786354, 28.253813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643818, 42.465321, 28.650354>,  <40.284878, 42.224369, 28.607613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643818, 42.465321, 28.650354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598759, 42.079372, 28.555412>,  <39.571724, 41.847805, 28.498447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598759, 42.079372, 28.555412>,  <39.643818, 42.465321, 28.650354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598759, 42.079372, 28.555412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641041, -0.111945, 0.759299,
		-0.759195, 0.237690, -0.605909,
		-0.112649, -0.964869, -0.237357,
		39.564964, 41.789913, 28.484205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982567, 42.354610, 28.921907>,  <39.643818, 42.465321, 28.650354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982567, 42.354610, 28.921907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117760, 41.987881, 28.836872>,  <39.198875, 41.767841, 28.785851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117760, 41.987881, 28.836872>,  <38.982567, 42.354610, 28.921907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117760, 41.987881, 28.836872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697300, -0.395645, 0.597693,
		-0.632091, -0.053774, -0.773026,
		0.337984, -0.916828, -0.212587,
		39.219154, 41.712833, 28.773096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354839, 41.851543, 28.712803>,  <38.982567, 42.354610, 28.921907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354839, 41.851543, 28.712803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665421, 41.629433, 28.831999>,  <38.851768, 41.496166, 28.903517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665421, 41.629433, 28.831999>,  <38.354839, 41.851543, 28.712803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665421, 41.629433, 28.831999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613424, -0.557649, 0.559230,
		-0.144353, -0.617007, -0.773605,
		0.776449, -0.555275, 0.297989,
		38.898354, 41.462849, 28.921396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141415, 41.235416, 28.672922>,  <38.354839, 41.851543, 28.712803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141415, 41.235416, 28.672922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445412, 41.203228, 28.930895>,  <38.627811, 41.183914, 29.085678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445412, 41.203228, 28.930895>,  <38.141415, 41.235416, 28.672922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445412, 41.203228, 28.930895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582176, -0.525421, 0.620486,
		0.288930, -0.847028, -0.446164,
		0.759993, -0.080469, 0.644930,
		38.673409, 41.179089, 29.124374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099041, 40.568340, 28.997034>,  <38.141415, 41.235416, 28.672922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099041, 40.568340, 28.997034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338890, 40.743347, 29.265072>,  <38.482800, 40.848351, 29.425896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338890, 40.743347, 29.265072>,  <38.099041, 40.568340, 28.997034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338890, 40.743347, 29.265072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535525, -0.402857, 0.742239,
		0.594698, -0.803917, -0.007259,
		0.599623, 0.437521, 0.670096,
		38.518776, 40.874603, 29.466101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368351, 39.990520, 29.539730>,  <38.099041, 40.568340, 28.997034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368351, 39.990520, 29.539730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383148, 40.355312, 29.703154>,  <38.392029, 40.574188, 29.801207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383148, 40.355312, 29.703154>,  <38.368351, 39.990520, 29.539730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383148, 40.355312, 29.703154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513513, -0.333380, 0.790672,
		0.857284, -0.239052, 0.455981,
		0.036997, 0.911982, 0.408557,
		38.394249, 40.628906, 29.825722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042061, 39.695705, 29.471575>,  <38.368351, 39.990520, 29.539730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042061, 39.695705, 29.471575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156391, 39.312664, 29.486000>,  <39.224987, 39.082840, 29.494656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156391, 39.312664, 29.486000>,  <39.042061, 39.695705, 29.471575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156391, 39.312664, 29.486000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424589, 0.092813, -0.900617,
		0.859086, 0.272730, 0.433116,
		0.285824, -0.957604, 0.036064,
		39.242138, 39.025383, 29.496819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749016, 39.644333, 29.316021>,  <39.042061, 39.695705, 29.471575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749016, 39.644333, 29.316021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608185, 39.278111, 29.238247>,  <39.523685, 39.058376, 29.191582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608185, 39.278111, 29.238247>,  <39.749016, 39.644333, 29.316021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608185, 39.278111, 29.238247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333650, 0.071320, -0.939995,
		0.874482, -0.395825, 0.280364,
		-0.352078, -0.915552, -0.194435,
		39.502560, 39.003445, 29.179916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224625, 39.405491, 28.939959>,  <39.749016, 39.644333, 29.316021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224625, 39.405491, 28.939959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910973, 39.171036, 28.858393>,  <39.722782, 39.030361, 28.809452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910973, 39.171036, 28.858393>,  <40.224625, 39.405491, 28.939959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910973, 39.171036, 28.858393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334728, -0.122761, -0.934284,
		0.522587, -0.800856, 0.292457,
		-0.784130, -0.586139, -0.203916,
		39.675735, 38.995193, 28.797218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483765, 38.766922, 28.749903>,  <40.224625, 39.405491, 28.939959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483765, 38.766922, 28.749903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119457, 38.777222, 28.585056>,  <39.900871, 38.783401, 28.486149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119457, 38.777222, 28.585056>,  <40.483765, 38.766922, 28.749903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119457, 38.777222, 28.585056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400883, -0.184089, -0.897443,
		-0.098976, -0.982572, 0.157339,
		-0.910767, 0.025751, -0.412117,
		39.846226, 38.784946, 28.461422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482765, 38.240433, 28.250055>,  <40.483765, 38.766922, 28.749903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482765, 38.240433, 28.250055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136299, 38.406727, 28.139118>,  <39.928417, 38.506504, 28.072556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136299, 38.406727, 28.139118>,  <40.482765, 38.240433, 28.250055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136299, 38.406727, 28.139118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306437, 0.003434, -0.951885,
		-0.394776, -0.909481, -0.130370,
		-0.866169, 0.415731, -0.277343,
		39.876450, 38.531445, 28.055916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356918, 37.945137, 27.594429>,  <40.482765, 38.240433, 28.250055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356918, 37.945137, 27.594429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123531, 38.269993, 27.594431>,  <39.983498, 38.464905, 27.594433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123531, 38.269993, 27.594431>,  <40.356918, 37.945137, 27.594429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123531, 38.269993, 27.594431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322736, 0.231872, -0.917648,
		-0.745255, -0.535417, -0.397395,
		-0.583469, 0.812135, 0.000006,
		39.948490, 38.513634, 27.594433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922318, 38.044048, 26.860184>,  <40.356918, 37.945137, 27.594429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922318, 38.044048, 26.860184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931778, 38.411434, 27.018103>,  <39.937454, 38.631866, 27.112854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931778, 38.411434, 27.018103>,  <39.922318, 38.044048, 26.860184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931778, 38.411434, 27.018103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416172, 0.350019, -0.839219,
		-0.908979, 0.184148, -0.373962,
		0.023647, 0.918464, 0.394797,
		39.938873, 38.686974, 27.136541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662258, 38.299683, 26.368303>,  <39.922318, 38.044048, 26.860184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662258, 38.299683, 26.368303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858318, 38.579884, 26.575783>,  <39.975956, 38.748005, 26.700270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858318, 38.579884, 26.575783>,  <39.662258, 38.299683, 26.368303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858318, 38.579884, 26.575783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319621, 0.409189, -0.854639,
		-0.810922, 0.584690, -0.023331,
		0.490152, 0.700502, 0.518699,
		40.005363, 38.790035, 26.731392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550396, 38.976013, 25.967611>,  <39.662258, 38.299683, 26.368303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550396, 38.976013, 25.967611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883789, 39.007915, 26.186317>,  <40.083824, 39.027058, 26.317541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883789, 39.007915, 26.186317>,  <39.550396, 38.976013, 25.967611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883789, 39.007915, 26.186317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484543, 0.370105, -0.792616,
		-0.265573, 0.925560, 0.269831,
		0.833480, 0.079753, 0.546764,
		40.133835, 39.031841, 26.350348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785835, 39.556110, 25.774406>,  <39.550396, 38.976013, 25.967611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785835, 39.556110, 25.774406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128803, 39.449406, 25.950436>,  <40.334583, 39.385384, 26.056053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128803, 39.449406, 25.950436>,  <39.785835, 39.556110, 25.774406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128803, 39.449406, 25.950436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508343, 0.305948, -0.804974,
		0.080096, 0.913911, 0.397933,
		0.857422, -0.266762, 0.440075,
		40.386028, 39.369377, 26.082458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288322, 40.112892, 25.842585>,  <39.785835, 39.556110, 25.774406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288322, 40.112892, 25.842585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508251, 39.778931, 25.832518>,  <40.640209, 39.578552, 25.826477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508251, 39.778931, 25.832518>,  <40.288322, 40.112892, 25.842585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508251, 39.778931, 25.832518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505883, 0.356821, -0.785342,
		0.664665, 0.419065, 0.618551,
		0.549821, -0.834903, -0.025168,
		40.673199, 39.528461, 25.824966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935585, 40.344250, 25.682560>,  <40.288322, 40.112892, 25.842585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935585, 40.344250, 25.682560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003216, 39.953640, 25.629177>,  <41.043793, 39.719273, 25.597147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003216, 39.953640, 25.629177>,  <40.935585, 40.344250, 25.682560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003216, 39.953640, 25.629177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739943, 0.215213, -0.637313,
		0.651074, 0.009006, 0.758961,
		0.169078, -0.976525, -0.133456,
		41.053940, 39.660683, 25.589140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604481, 40.195728, 25.857683>,  <40.935585, 40.344250, 25.682560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604481, 40.195728, 25.857683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490002, 39.911762, 25.600279>,  <41.421314, 39.741383, 25.445835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490002, 39.911762, 25.600279>,  <41.604481, 40.195728, 25.857683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490002, 39.911762, 25.600279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736874, 0.266219, -0.621405,
		0.612463, -0.652029, 0.446931,
		-0.286193, -0.709919, -0.643512,
		41.404144, 39.698788, 25.407225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200321, 39.915035, 25.720575>,  <41.604481, 40.195728, 25.857683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200321, 39.915035, 25.720575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959145, 39.808342, 25.419827>,  <41.814438, 39.744328, 25.239378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959145, 39.808342, 25.419827>,  <42.200321, 39.915035, 25.720575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959145, 39.808342, 25.419827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741797, 0.159387, -0.651408,
		0.293590, -0.950500, 0.101758,
		-0.602945, -0.266730, -0.751873,
		41.778259, 39.728325, 25.194265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.374645, 39.183514, 23.052614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.626030, 39.358814, 23.309664>,  <37.776863, 39.463993, 23.463894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.626030, 39.358814, 23.309664>,  <37.374645, 39.183514, 23.052614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626030, 39.358814, 23.309664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307376, -0.619002, 0.722742,
		0.714529, -0.651746, -0.254313,
		0.628465, 0.438250, 0.642626,
		37.814571, 39.490288, 23.502451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787540, 38.609623, 23.325867>,  <37.374645, 39.183514, 23.052614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787540, 38.609623, 23.325867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.828793, 38.917301, 23.578119>,  <37.853546, 39.101910, 23.729471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.828793, 38.917301, 23.578119>,  <37.787540, 38.609623, 23.325867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828793, 38.917301, 23.578119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186153, -0.607882, 0.771898,
		0.977093, -0.197003, 0.080495,
		0.103135, 0.769200, 0.630630,
		37.859734, 39.148060, 23.767309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248158, 38.407703, 23.869463>,  <37.787540, 38.609623, 23.325867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248158, 38.407703, 23.869463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027996, 38.708687, 24.014160>,  <37.895901, 38.889278, 24.100979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027996, 38.708687, 24.014160>,  <38.248158, 38.407703, 23.869463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027996, 38.708687, 24.014160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181118, -0.530572, 0.828064,
		0.815017, 0.390251, 0.428313,
		-0.550403, 0.752461, 0.361743,
		37.862877, 38.934425, 24.122683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451054, 38.440899, 24.541536>,  <38.248158, 38.407703, 23.869463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451054, 38.440899, 24.541536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.102581, 38.636974, 24.530533>,  <37.893497, 38.754620, 24.523932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.102581, 38.636974, 24.530533>,  <38.451054, 38.440899, 24.541536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102581, 38.636974, 24.530533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335912, -0.554262, 0.761549,
		0.358054, 0.672690, 0.647523,
		-0.871184, 0.490186, -0.027509,
		37.841225, 38.784031, 24.522280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357048, 38.691826, 25.273422>,  <38.451054, 38.440899, 24.541536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357048, 38.691826, 25.273422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.004055, 38.696880, 25.085352>,  <37.792259, 38.699913, 24.972509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.004055, 38.696880, 25.085352>,  <38.357048, 38.691826, 25.273422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004055, 38.696880, 25.085352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343109, -0.701043, 0.625153,
		-0.321716, 0.713008, 0.622992,
		-0.882483, 0.012633, -0.470175,
		37.739311, 38.700668, 24.944300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812061, 38.948845, 25.715376>,  <38.357048, 38.691826, 25.273422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812061, 38.948845, 25.715376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614937, 38.746368, 25.432276>,  <37.496662, 38.624882, 25.262415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614937, 38.746368, 25.432276>,  <37.812061, 38.948845, 25.715376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614937, 38.746368, 25.432276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501000, -0.499962, 0.706426,
		-0.711432, 0.702717, -0.007213,
		-0.492812, -0.506188, -0.707750,
		37.467094, 38.594513, 25.219952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101147, 38.990639, 25.943188>,  <37.812061, 38.948845, 25.715376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101147, 38.990639, 25.943188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116196, 38.678322, 25.693726>,  <37.125225, 38.490932, 25.544048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116196, 38.678322, 25.693726>,  <37.101147, 38.990639, 25.943188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116196, 38.678322, 25.693726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628090, -0.503888, 0.592959,
		-0.777231, 0.369406, -0.509364,
		0.037620, -0.780792, -0.623658,
		37.127483, 38.444084, 25.506628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492409, 38.892078, 25.761675>,  <37.101147, 38.990639, 25.943188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492409, 38.892078, 25.761675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676796, 38.541065, 25.708849>,  <36.787430, 38.330456, 25.677153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676796, 38.541065, 25.708849>,  <36.492409, 38.892078, 25.761675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676796, 38.541065, 25.708849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776905, -0.470993, 0.417832,
		-0.428864, -0.090006, -0.898874,
		0.460971, -0.877533, -0.132066,
		36.815086, 38.277805, 25.669230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889751, 38.462040, 25.792082>,  <36.492409, 38.892078, 25.761675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889751, 38.462040, 25.792082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.184944, 38.192337, 25.803053>,  <36.362061, 38.030514, 25.809635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.184944, 38.192337, 25.803053>,  <35.889751, 38.462040, 25.792082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184944, 38.192337, 25.803053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569969, -0.601044, 0.560251,
		-0.361271, -0.429088, -0.827869,
		0.737983, -0.674262, 0.027427,
		36.406338, 37.990059, 25.811281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600704, 37.747658, 25.700726>,  <35.889751, 38.462040, 25.792082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600704, 37.747658, 25.700726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952080, 37.706387, 25.887356>,  <36.162907, 37.681622, 25.999334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952080, 37.706387, 25.887356>,  <35.600704, 37.747658, 25.700726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952080, 37.706387, 25.887356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420064, -0.632180, 0.651072,
		0.227781, -0.767921, -0.598676,
		0.878443, -0.103180, 0.466575,
		36.215614, 37.675434, 26.027328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698578, 37.059010, 25.787008>,  <35.600704, 37.747658, 25.700726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698578, 37.059010, 25.787008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.950424, 37.214573, 26.056032>,  <36.101532, 37.307911, 26.217447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.950424, 37.214573, 26.056032>,  <35.698578, 37.059010, 25.787008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950424, 37.214573, 26.056032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340659, -0.639832, 0.688888,
		0.698239, -0.662847, -0.270362,
		0.629614, 0.388907, 0.672561,
		36.139309, 37.331245, 26.257801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973705, 36.521133, 26.145983>,  <35.698578, 37.059010, 25.787008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973705, 36.521133, 26.145983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003143, 36.848633, 26.373747>,  <36.020805, 37.045132, 26.510405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003143, 36.848633, 26.373747>,  <35.973705, 36.521133, 26.145983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003143, 36.848633, 26.373747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431461, -0.488617, 0.758350,
		0.899124, -0.301492, 0.317298,
		0.073599, 0.818753, 0.569410,
		36.025223, 37.094257, 26.544569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965572, 36.256874, 26.794819>,  <35.973705, 36.521133, 26.145983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965572, 36.256874, 26.794819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910862, 36.646690, 26.865879>,  <35.878036, 36.880581, 26.908514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910862, 36.646690, 26.865879>,  <35.965572, 36.256874, 26.794819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910862, 36.646690, 26.865879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423914, -0.219668, 0.878660,
		0.895315, 0.044875, 0.443168,
		-0.136780, 0.974542, 0.177649,
		35.869827, 36.939053, 26.919174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285027, 36.336082, 27.401749>,  <35.965572, 36.256874, 26.794819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285027, 36.336082, 27.401749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011864, 36.626068, 27.365839>,  <35.847965, 36.800060, 27.344294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011864, 36.626068, 27.365839>,  <36.285027, 36.336082, 27.401749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011864, 36.626068, 27.365839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362657, -0.229780, 0.903150,
		0.634128, 0.649324, 0.419833,
		-0.682906, 0.724969, -0.089772,
		35.806992, 36.843559, 27.338907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931843, 36.661804, 27.634584>,  <36.285027, 36.336082, 27.401749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931843, 36.661804, 27.634584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240063, 36.480412, 27.813736>,  <37.424995, 36.371574, 27.921227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240063, 36.480412, 27.813736>,  <36.931843, 36.661804, 27.634584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240063, 36.480412, 27.813736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598725, 0.274024, -0.752621,
		0.218574, 0.848093, 0.482664,
		0.770554, -0.453486, 0.447880,
		37.471230, 36.344364, 27.948099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481441, 37.124836, 27.495579>,  <36.931843, 36.661804, 27.634584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481441, 37.124836, 27.495579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644119, 36.769138, 27.579338>,  <37.741726, 36.555721, 27.629593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644119, 36.769138, 27.579338>,  <37.481441, 37.124836, 27.495579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644119, 36.769138, 27.579338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617520, 0.098667, -0.780343,
		0.673254, 0.446666, 0.589252,
		0.406692, -0.889243, 0.209398,
		37.766129, 36.502365, 27.642157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176495, 37.287746, 27.532188>,  <37.481441, 37.124836, 27.495579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176495, 37.287746, 27.532188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159901, 36.888599, 27.512043>,  <38.149944, 36.649109, 27.499956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159901, 36.888599, 27.512043>,  <38.176495, 37.287746, 27.532188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159901, 36.888599, 27.512043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858340, -0.009791, -0.512988,
		0.511402, -0.064507, 0.856917,
		-0.041482, -0.997869, -0.050362,
		38.147457, 36.589237, 27.496935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824104, 36.958008, 27.792065>,  <38.176495, 37.287746, 27.532188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824104, 36.958008, 27.792065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645035, 36.716991, 27.527784>,  <38.537594, 36.572380, 27.369215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645035, 36.716991, 27.527784>,  <38.824104, 36.958008, 27.792065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645035, 36.716991, 27.527784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857072, -0.078450, -0.509189,
		0.254976, -0.794222, 0.551542,
		-0.447678, -0.602542, -0.660703,
		38.510731, 36.536228, 27.329573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408566, 36.550095, 27.525528>,  <38.824104, 36.958008, 27.792065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408566, 36.550095, 27.525528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116211, 36.457836, 27.268593>,  <38.940796, 36.402481, 27.114431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116211, 36.457836, 27.268593>,  <39.408566, 36.550095, 27.525528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116211, 36.457836, 27.268593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682480, -0.240754, -0.690115,
		0.004530, -0.942782, 0.333379,
		-0.730890, -0.230651, -0.642339,
		38.896942, 36.388641, 27.075891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606503, 35.875603, 27.144739>,  <39.408566, 36.550095, 27.525528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606503, 35.875603, 27.144739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.337078, 36.079391, 26.930542>,  <39.175423, 36.201664, 26.802023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.337078, 36.079391, 26.930542>,  <39.606503, 35.875603, 27.144739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337078, 36.079391, 26.930542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580790, -0.083290, -0.809782,
		-0.457159, -0.856450, -0.239792,
		-0.673565, 0.509467, -0.535494,
		39.135010, 36.232231, 26.769894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544613, 35.499599, 26.440943>,  <39.606503, 35.875603, 27.144739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544613, 35.499599, 26.440943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388721, 35.863338, 26.382710>,  <39.295185, 36.081581, 26.347769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388721, 35.863338, 26.382710>,  <39.544613, 35.499599, 26.440943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388721, 35.863338, 26.382710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305779, -0.021340, -0.951863,
		-0.868682, -0.415487, -0.269743,
		-0.389731, 0.909349, -0.145585,
		39.271801, 36.136143, 26.339033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217991, 35.479275, 25.747120>,  <39.544613, 35.499599, 26.440943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217991, 35.479275, 25.747120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286243, 35.863609, 25.834461>,  <39.327194, 36.094212, 25.886866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286243, 35.863609, 25.834461>,  <39.217991, 35.479275, 25.747120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286243, 35.863609, 25.834461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423599, 0.128551, -0.896682,
		-0.889634, 0.245493, -0.385076,
		0.170628, 0.960837, 0.218354,
		39.337433, 36.151859, 25.899967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780212, 35.889812, 25.236147>,  <39.217991, 35.479275, 25.747120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780212, 35.889812, 25.236147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054691, 36.141247, 25.382576>,  <39.219379, 36.292107, 25.470432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054691, 36.141247, 25.382576>,  <38.780212, 35.889812, 25.236147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054691, 36.141247, 25.382576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205449, 0.315283, -0.926492,
		-0.697796, 0.710968, 0.087205,
		0.686200, 0.628586, 0.366072,
		39.260551, 36.329823, 25.492397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580326, 36.556030, 25.104935>,  <38.780212, 35.889812, 25.236147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580326, 36.556030, 25.104935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.978218, 36.559082, 25.145844>,  <39.216953, 36.560913, 25.170389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.978218, 36.559082, 25.145844>,  <38.580326, 36.556030, 25.104935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978218, 36.559082, 25.145844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096185, 0.276624, -0.956152,
		-0.035583, 0.960948, 0.274432,
		0.994727, 0.007627, 0.102272,
		39.276638, 36.561371, 25.176525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849312, 37.190556, 24.731470>,  <38.580326, 36.556030, 25.104935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849312, 37.190556, 24.731470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163570, 36.945583, 24.766542>,  <39.352127, 36.798599, 24.787586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163570, 36.945583, 24.766542>,  <38.849312, 37.190556, 24.731470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163570, 36.945583, 24.766542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359618, 0.336743, -0.870218,
		0.503422, 0.715215, 0.484802,
		0.785647, -0.612430, 0.087681,
		39.399265, 36.761856, 24.792847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454144, 37.633488, 24.722588>,  <38.849312, 37.190556, 24.731470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454144, 37.633488, 24.722588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589668, 37.272934, 24.614721>,  <39.670982, 37.056602, 24.550001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589668, 37.272934, 24.614721>,  <39.454144, 37.633488, 24.722588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589668, 37.272934, 24.614721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435033, 0.404224, -0.804580,
		0.834239, 0.155286, 0.529086,
		0.338810, -0.901381, -0.269665,
		39.691311, 37.002518, 24.533821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172543, 37.664024, 24.592546>,  <39.454144, 37.633488, 24.722588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172543, 37.664024, 24.592546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.110523, 37.307640, 24.421827>,  <40.073311, 37.093811, 24.319395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.110523, 37.307640, 24.421827>,  <40.172543, 37.664024, 24.592546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110523, 37.307640, 24.421827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513395, 0.296438, -0.805326,
		0.844030, -0.343978, 0.411452,
		-0.155044, -0.890957, -0.426799,
		40.064011, 37.040352, 24.293787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876495, 37.183292, 24.429613>,  <40.172543, 37.664024, 24.592546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876495, 37.183292, 24.429613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582588, 37.089890, 24.174870>,  <40.406242, 37.033848, 24.022022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582588, 37.089890, 24.174870>,  <40.876495, 37.183292, 24.429613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582588, 37.089890, 24.174870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540253, 0.366277, -0.757607,
		0.410177, -0.900729, -0.142972,
		-0.734766, -0.233512, -0.636860,
		40.362160, 37.019836, 23.983812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432426, 36.653061, 24.404848>,  <40.876495, 37.183292, 24.429613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432426, 36.653061, 24.404848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.801567, 36.639950, 24.558348>,  <42.023052, 36.632084, 24.650448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.801567, 36.639950, 24.558348>,  <41.432426, 36.653061, 24.404848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801567, 36.639950, 24.558348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336661, -0.552611, 0.762417,
		0.187072, -0.832794, -0.521016,
		0.922856, -0.032780, 0.383747,
		42.078423, 36.630116, 24.673471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414833, 35.977459, 24.570509>,  <41.432426, 36.653061, 24.404848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414833, 35.977459, 24.570509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.712944, 36.139984, 24.781971>,  <41.891811, 36.237499, 24.908848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.712944, 36.139984, 24.781971>,  <41.414833, 35.977459, 24.570509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712944, 36.139984, 24.781971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264114, -0.548117, 0.793607,
		0.612218, -0.731079, -0.301184,
		0.745274, 0.406313, 0.528656,
		41.936527, 36.261879, 24.940567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859428, 35.388882, 24.798050>,  <41.414833, 35.977459, 24.570509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859428, 35.388882, 24.798050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.939331, 35.684090, 25.055864>,  <41.987274, 35.861214, 25.210552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.939331, 35.684090, 25.055864>,  <41.859428, 35.388882, 24.798050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939331, 35.684090, 25.055864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079091, -0.643501, 0.761348,
		0.976648, -0.203061, -0.070173,
		0.199756, 0.738019, 0.644535,
		41.999256, 35.905495, 25.249226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201397, 35.051888, 25.320438>,  <41.859428, 35.388882, 24.798050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201397, 35.051888, 25.320438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.120083, 35.397339, 25.504971>,  <42.071297, 35.604610, 25.615690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.120083, 35.397339, 25.504971>,  <42.201397, 35.051888, 25.320438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120083, 35.397339, 25.504971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014367, -0.473751, 0.880542,
		0.979015, 0.172369, 0.108712,
		-0.203281, 0.863625, 0.461333,
		42.059097, 35.656425, 25.643370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662971, 35.018314, 25.828747>,  <42.201397, 35.051888, 25.320438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662971, 35.018314, 25.828747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.417873, 35.303646, 25.964809>,  <42.270813, 35.474846, 26.046448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.417873, 35.303646, 25.964809>,  <42.662971, 35.018314, 25.828747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417873, 35.303646, 25.964809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031009, -0.408393, 0.912279,
		0.789671, 0.569543, 0.228122,
		-0.612746, 0.713327, 0.340157,
		42.234051, 35.517643, 26.066856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895283, 35.244705, 26.553352>,  <42.662971, 35.018314, 25.828747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895283, 35.244705, 26.553352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.515617, 35.370613, 26.553926>,  <42.287819, 35.446156, 26.554272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.515617, 35.370613, 26.553926>,  <42.895283, 35.244705, 26.553352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515617, 35.370613, 26.553926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131375, -0.400296, 0.906920,
		0.286043, 0.860631, 0.421300,
		-0.949168, 0.314767, 0.001437,
		42.230865, 35.465042, 26.554358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807602, 35.653717, 27.176609>,  <42.895283, 35.244705, 26.553352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807602, 35.653717, 27.176609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.450901, 35.502457, 27.077185>,  <42.236881, 35.411701, 27.017530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.450901, 35.502457, 27.077185>,  <42.807602, 35.653717, 27.176609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450901, 35.502457, 27.077185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142282, -0.287113, 0.947271,
		-0.429580, 0.880093, 0.202228,
		-0.891749, -0.378155, -0.248560,
		42.183376, 35.389011, 27.002617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399345, 35.811054, 27.719076>,  <42.807602, 35.653717, 27.176609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399345, 35.811054, 27.719076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.213425, 35.507133, 27.537239>,  <42.101871, 35.324780, 27.428137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.213425, 35.507133, 27.537239>,  <42.399345, 35.811054, 27.719076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213425, 35.507133, 27.537239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227760, -0.393545, 0.890644,
		-0.855617, 0.517515, 0.009869,
		-0.464806, -0.759803, -0.454593,
		42.073982, 35.279194, 27.400862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729443, 35.733871, 28.041323>,  <42.399345, 35.811054, 27.719076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729443, 35.733871, 28.041323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.759090, 35.380947, 27.855406>,  <41.776878, 35.169193, 27.743856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.759090, 35.380947, 27.855406>,  <41.729443, 35.733871, 28.041323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759090, 35.380947, 27.855406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381669, -0.455687, 0.804163,
		-0.921322, 0.117789, -0.370528,
		0.074123, -0.882313, -0.464791,
		41.781326, 35.116253, 27.715969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024239, 35.485279, 28.022058>,  <41.729443, 35.733871, 28.041323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024239, 35.485279, 28.022058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.255283, 35.160820, 27.985369>,  <41.393909, 34.966145, 27.963354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.255283, 35.160820, 27.985369>,  <41.024239, 35.485279, 28.022058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255283, 35.160820, 27.985369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453414, -0.412233, 0.790240,
		-0.678811, -0.414859, -0.605893,
		0.577608, -0.811145, -0.091725,
		41.428566, 34.917477, 27.957851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595264, 34.870407, 27.976509>,  <41.024239, 35.485279, 28.022058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595264, 34.870407, 27.976509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.939636, 34.705830, 28.096184>,  <41.146259, 34.607082, 28.167988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.939636, 34.705830, 28.096184>,  <40.595264, 34.870407, 27.976509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939636, 34.705830, 28.096184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478606, -0.455730, 0.750497,
		-0.172440, -0.789318, -0.589272,
		0.860930, -0.411445, 0.299186,
		41.197914, 34.582397, 28.185940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431313, 34.208160, 28.256775>,  <40.595264, 34.870407, 27.976509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431313, 34.208160, 28.256775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.795265, 34.294094, 28.398737>,  <41.013638, 34.345654, 28.483915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.795265, 34.294094, 28.398737>,  <40.431313, 34.208160, 28.256775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795265, 34.294094, 28.398737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272334, -0.336053, 0.901611,
		0.312964, -0.917014, -0.247262,
		0.909884, 0.214834, 0.354907,
		41.068230, 34.358543, 28.505209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571484, 33.569916, 28.678850>,  <40.431313, 34.208160, 28.256775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571484, 33.569916, 28.678850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.818642, 33.858738, 28.803326>,  <40.966938, 34.032032, 28.878010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.818642, 33.858738, 28.803326>,  <40.571484, 33.569916, 28.678850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818642, 33.858738, 28.803326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244915, -0.199336, 0.948832,
		0.747142, -0.662494, 0.053674,
		0.617896, 0.722058, 0.311187,
		41.004009, 34.075356, 28.896681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024837, 33.298409, 29.118563>,  <40.571484, 33.569916, 28.678850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024837, 33.298409, 29.118563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.014454, 33.685478, 29.218903>,  <41.008224, 33.917721, 29.279106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.014454, 33.685478, 29.218903>,  <41.024837, 33.298409, 29.118563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014454, 33.685478, 29.218903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342737, -0.244341, 0.907099,
		0.939073, -0.062430, 0.338001,
		-0.025958, 0.967677, 0.250851,
		41.006668, 33.975780, 29.294159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.594368, 39.461208, 25.163342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.260525, 39.604939, 24.996338>,  <42.060219, 39.691177, 24.896135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.260525, 39.604939, 24.996338>,  <42.594368, 39.461208, 25.163342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260525, 39.604939, 24.996338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495721, 0.159466, -0.853716,
		-0.240182, -0.919487, -0.311217,
		-0.834609, 0.359324, -0.417509,
		42.010143, 39.712734, 24.871086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597660, 39.098614, 24.623018>,  <42.594368, 39.461208, 25.163342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597660, 39.098614, 24.623018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376846, 39.428143, 24.571522>,  <42.244358, 39.625862, 24.540625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376846, 39.428143, 24.571522>,  <42.597660, 39.098614, 24.623018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376846, 39.428143, 24.571522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498714, 0.202476, -0.842786,
		-0.668240, -0.529449, -0.522626,
		-0.552032, 0.823825, -0.128741,
		42.211235, 39.675289, 24.532900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351677, 39.053341, 23.905554>,  <42.597660, 39.098614, 24.623018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351677, 39.053341, 23.905554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.346970, 39.434341, 24.027281>,  <42.344147, 39.662941, 24.100317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.346970, 39.434341, 24.027281>,  <42.351677, 39.053341, 23.905554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346970, 39.434341, 24.027281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668322, 0.233866, -0.706153,
		-0.743779, 0.195074, -0.639327,
		-0.011764, 0.952498, 0.304317,
		42.343441, 39.720093, 24.118576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296684, 39.326321, 23.266249>,  <42.351677, 39.053341, 23.905554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296684, 39.326321, 23.266249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.424576, 39.634144, 23.487358>,  <42.501312, 39.818836, 23.620024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.424576, 39.634144, 23.487358>,  <42.296684, 39.326321, 23.266249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424576, 39.634144, 23.487358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636357, 0.257839, -0.727027,
		-0.702014, 0.584212, -0.407274,
		0.319728, 0.769555, 0.552774,
		42.520493, 39.865009, 23.653191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211746, 40.031208, 22.897055>,  <42.296684, 39.326321, 23.266249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211746, 40.031208, 22.897055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.501675, 40.068802, 23.170053>,  <42.675632, 40.091358, 23.333853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.501675, 40.068802, 23.170053>,  <42.211746, 40.031208, 22.897055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501675, 40.068802, 23.170053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598498, 0.404762, -0.691352,
		-0.341222, 0.909580, 0.237133,
		0.724823, 0.093981, 0.682495,
		42.719120, 40.096996, 23.374802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519348, 40.612453, 22.722853>,  <42.211746, 40.031208, 22.897055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519348, 40.612453, 22.722853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800568, 40.441128, 22.949924>,  <42.969299, 40.338333, 23.086168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800568, 40.441128, 22.949924>,  <42.519348, 40.612453, 22.722853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800568, 40.441128, 22.949924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710176, 0.464410, -0.529125,
		-0.037003, 0.775156, 0.630685,
		0.703051, -0.428319, 0.567682,
		43.011482, 40.312634, 23.120230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067749, 41.185516, 22.697187>,  <42.519348, 40.612453, 22.722853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067749, 41.185516, 22.697187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.234280, 40.847927, 22.832468>,  <43.334198, 40.645374, 22.913637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.234280, 40.847927, 22.832468>,  <43.067749, 41.185516, 22.697187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234280, 40.847927, 22.832468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870477, 0.262568, -0.416327,
		0.262568, 0.467725, 0.843973,
		0.416327, -0.843973, 0.338203,
		43.359177, 40.594734, 22.933929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702766, 41.362900, 22.941568>,  <43.067749, 41.185516, 22.697187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702766, 41.362900, 22.941568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.727684, 40.966881, 22.891083>,  <43.742634, 40.729271, 22.860790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.727684, 40.966881, 22.891083>,  <43.702766, 41.362900, 22.941568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727684, 40.966881, 22.891083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958984, 0.094417, -0.267272,
		0.276528, -0.104387, 0.955319,
		0.062299, -0.990045, -0.126215,
		43.746372, 40.669868, 22.853218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377796, 41.237335, 23.144209>,  <43.702766, 41.362900, 22.941568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377796, 41.237335, 23.144209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.256844, 40.919308, 22.933901>,  <44.184273, 40.728493, 22.807716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.256844, 40.919308, 22.933901>,  <44.377796, 41.237335, 23.144209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256844, 40.919308, 22.933901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872568, -0.008872, -0.488411,
		0.383657, -0.606453, 0.696435,
		-0.302377, -0.795070, -0.525768,
		44.166130, 40.680786, 22.776171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904888, 40.790356, 23.148108>,  <44.377796, 41.237335, 23.144209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904888, 40.790356, 23.148108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690266, 40.676781, 22.830240>,  <44.561493, 40.608635, 22.639521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690266, 40.676781, 22.830240>,  <44.904888, 40.790356, 23.148108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690266, 40.676781, 22.830240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840543, -0.096313, -0.533115,
		0.074833, -0.953995, 0.290335,
		-0.536552, -0.283933, -0.794666,
		44.529301, 40.591602, 22.591841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207130, 40.160763, 22.889322>,  <44.904888, 40.790356, 23.148108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207130, 40.160763, 22.889322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.998051, 40.351681, 22.606770>,  <44.872604, 40.466232, 22.437239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.998051, 40.351681, 22.606770>,  <45.207130, 40.160763, 22.889322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998051, 40.351681, 22.606770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818897, 0.050702, -0.571697,
		-0.237053, -0.877279, -0.417358,
		-0.522699, 0.477295, -0.706382,
		44.841240, 40.494869, 22.394855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474560, 40.008686, 22.326582>,  <45.207130, 40.160763, 22.889322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474560, 40.008686, 22.326582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.250542, 40.291817, 22.154379>,  <45.116131, 40.461693, 22.051058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.250542, 40.291817, 22.154379>,  <45.474560, 40.008686, 22.326582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250542, 40.291817, 22.154379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653321, 0.057804, -0.754871,
		-0.509429, -0.704022, -0.494808,
		-0.560047, 0.707822, -0.430505,
		45.082527, 40.504162, 22.025227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339100, 39.824596, 21.602003>,  <45.474560, 40.008686, 22.326582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339100, 39.824596, 21.602003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.334236, 40.221443, 21.651907>,  <45.331318, 40.459549, 21.681850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.334236, 40.221443, 21.651907>,  <45.339100, 39.824596, 21.602003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334236, 40.221443, 21.651907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539490, 0.111560, -0.834569,
		-0.841904, 0.057162, -0.536591,
		-0.012156, 0.992112, 0.124761,
		45.330589, 40.519077, 21.689335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108929, 40.222374, 21.000072>,  <45.339100, 39.824596, 21.602003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108929, 40.222374, 21.000072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.416588, 40.346237, 21.223686>,  <45.601185, 40.420555, 21.357855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.416588, 40.346237, 21.223686>,  <45.108929, 40.222374, 21.000072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416588, 40.346237, 21.223686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631689, -0.235817, -0.738485,
		-0.096849, 0.921141, -0.376987,
		0.769149, 0.309660, 0.559036,
		45.647331, 40.439137, 21.391397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213051, 39.494831, 20.984558>,  <45.108929, 40.222374, 21.000072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213051, 39.494831, 20.984558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.032726, 39.280140, 20.699266>,  <44.924530, 39.151325, 20.528091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.032726, 39.280140, 20.699266>,  <45.213051, 39.494831, 20.984558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032726, 39.280140, 20.699266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623629, -0.382293, 0.681864,
		-0.638637, 0.752182, -0.162377,
		-0.450810, -0.536726, -0.713229,
		44.897484, 39.119122, 20.485298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523823, 39.488216, 21.113567>,  <45.213051, 39.494831, 20.984558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523823, 39.488216, 21.113567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.528828, 39.165726, 20.876976>,  <44.531830, 38.972233, 20.735022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.528828, 39.165726, 20.876976>,  <44.523823, 39.488216, 21.113567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528828, 39.165726, 20.876976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543705, -0.501922, 0.672651,
		-0.839183, 0.313177, -0.444625,
		0.012509, -0.806222, -0.591481,
		44.532581, 38.923859, 20.699532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819485, 39.258381, 20.866871>,  <44.523823, 39.488216, 21.113567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819485, 39.258381, 20.866871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.054020, 38.934368, 20.863899>,  <44.194740, 38.739960, 20.862116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.054020, 38.934368, 20.863899>,  <43.819485, 39.258381, 20.866871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054020, 38.934368, 20.863899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579390, -0.425765, 0.695004,
		-0.566140, -0.403202, -0.718967,
		0.586338, -0.810032, -0.007432,
		44.229923, 38.691357, 20.861670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339684, 38.818436, 21.120068>,  <43.819485, 39.258381, 20.866871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339684, 38.818436, 21.120068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.680679, 38.615475, 21.170357>,  <43.885277, 38.493698, 21.200531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.680679, 38.615475, 21.170357>,  <43.339684, 38.818436, 21.120068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680679, 38.615475, 21.170357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448432, -0.586224, 0.674722,
		-0.268653, -0.631571, -0.727285,
		0.852487, -0.507405, 0.125726,
		43.936424, 38.463253, 21.208075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184208, 38.120010, 21.169575>,  <43.339684, 38.818436, 21.120068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184208, 38.120010, 21.169575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.550259, 38.116028, 21.330791>,  <43.769890, 38.113640, 21.427521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.550259, 38.116028, 21.330791>,  <43.184208, 38.120010, 21.169575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550259, 38.116028, 21.330791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361703, -0.461849, 0.809856,
		0.178083, -0.886903, -0.426251,
		0.915127, -0.009955, 0.403043,
		43.824799, 38.113041, 21.451704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376961, 37.450397, 21.443003>,  <43.184208, 38.120010, 21.169575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376961, 37.450397, 21.443003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631020, 37.677090, 21.652922>,  <43.783455, 37.813103, 21.778873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631020, 37.677090, 21.652922>,  <43.376961, 37.450397, 21.443003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631020, 37.677090, 21.652922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275123, -0.468883, 0.839319,
		0.721732, -0.677473, -0.141889,
		0.635146, 0.566726, 0.524796,
		43.821564, 37.847107, 21.810360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686722, 36.988861, 21.766624>,  <43.376961, 37.450397, 21.443003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686722, 36.988861, 21.766624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.751297, 37.323357, 21.976252>,  <43.790043, 37.524052, 22.102028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.751297, 37.323357, 21.976252>,  <43.686722, 36.988861, 21.766624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751297, 37.323357, 21.976252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437134, -0.415505, 0.797665,
		0.884788, -0.357864, 0.298467,
		0.161441, 0.836235, 0.524068,
		43.799728, 37.574226, 22.133472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969929, 36.725128, 22.398270>,  <43.686722, 36.988861, 21.766624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969929, 36.725128, 22.398270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.833206, 37.095539, 22.462313>,  <43.751171, 37.317787, 22.500738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.833206, 37.095539, 22.462313>,  <43.969929, 36.725128, 22.398270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833206, 37.095539, 22.462313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307441, -0.271178, 0.912109,
		0.888059, 0.262541, 0.377391,
		-0.341806, 0.926032, 0.160106,
		43.730663, 37.373348, 22.510345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093079, 36.821552, 23.085697>,  <43.969929, 36.725128, 22.398270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093079, 36.821552, 23.085697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.838722, 37.124336, 23.025496>,  <43.686108, 37.306007, 22.989374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.838722, 37.124336, 23.025496>,  <44.093079, 36.821552, 23.085697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838722, 37.124336, 23.025496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427846, -0.183446, 0.885040,
		0.642331, 0.627183, 0.440514,
		-0.635892, 0.756961, -0.150505,
		43.647953, 37.351425, 22.980345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164940, 37.205853, 23.630287>,  <44.093079, 36.821552, 23.085697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164940, 37.205853, 23.630287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.793484, 37.259365, 23.491875>,  <43.570610, 37.291473, 23.408827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.793484, 37.259365, 23.491875>,  <44.164940, 37.205853, 23.630287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793484, 37.259365, 23.491875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370610, -0.292138, 0.881648,
		0.016855, 0.946973, 0.320869,
		-0.928636, 0.133777, -0.346034,
		43.514893, 37.299500, 23.388065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763142, 37.646336, 24.079321>,  <44.164940, 37.205853, 23.630287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763142, 37.646336, 24.079321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.496361, 37.428394, 23.876024>,  <43.336292, 37.297630, 23.754047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.496361, 37.428394, 23.876024>,  <43.763142, 37.646336, 24.079321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496361, 37.428394, 23.876024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417485, -0.291716, 0.860586,
		-0.617159, 0.786150, -0.032910,
		-0.666949, -0.544858, -0.508241,
		43.296276, 37.264938, 23.723553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122108, 37.733051, 24.539532>,  <43.763142, 37.646336, 24.079321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122108, 37.733051, 24.539532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.011143, 37.471710, 24.257772>,  <42.944565, 37.314907, 24.088717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.011143, 37.471710, 24.257772>,  <43.122108, 37.733051, 24.539532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011143, 37.471710, 24.257772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598626, -0.455913, 0.658628,
		-0.751459, 0.604382, -0.264637,
		-0.277411, -0.653350, -0.704398,
		42.927917, 37.275703, 24.046453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390537, 37.779736, 24.480255>,  <43.122108, 37.733051, 24.539532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390537, 37.779736, 24.480255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.490654, 37.425930, 24.322779>,  <42.550724, 37.213646, 24.228292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.490654, 37.425930, 24.322779>,  <42.390537, 37.779736, 24.480255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490654, 37.425930, 24.322779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674942, -0.450946, 0.584038,
		-0.694122, 0.119539, -0.709863,
		0.250295, -0.884510, -0.393693,
		42.565742, 37.160576, 24.204670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700932, 37.369499, 24.404669>,  <42.390537, 37.779736, 24.480255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700932, 37.369499, 24.404669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.007607, 37.112720, 24.400690>,  <42.191612, 36.958652, 24.398302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.007607, 37.112720, 24.400690>,  <41.700932, 37.369499, 24.404669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007607, 37.112720, 24.400690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517298, -0.626841, 0.582643,
		-0.380262, -0.441557, -0.812668,
		0.766684, -0.641948, -0.009947,
		42.237610, 36.920135, 24.397705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289040, 37.070484, 23.861053>,  <41.700932, 37.369499, 24.404669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289040, 37.070484, 23.861053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.912418, 37.076424, 23.726435>,  <40.686447, 37.079987, 23.645662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.912418, 37.076424, 23.726435>,  <41.289040, 37.070484, 23.861053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912418, 37.076424, 23.726435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305856, 0.456435, -0.835535,
		0.141202, -0.889633, -0.434299,
		-0.941549, 0.014854, -0.336549,
		40.629955, 37.080879, 23.625469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217060, 36.639172, 23.225674>,  <41.289040, 37.070484, 23.861053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217060, 36.639172, 23.225674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.960197, 36.945679, 23.217010>,  <40.806080, 37.129581, 23.211813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.960197, 36.945679, 23.217010>,  <41.217060, 36.639172, 23.225674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960197, 36.945679, 23.217010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498770, 0.396194, -0.770882,
		-0.582121, -0.505828, -0.636610,
		-0.642155, 0.766269, -0.021658,
		40.767551, 37.175560, 23.210512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047325, 36.744934, 22.530510>,  <41.217060, 36.639172, 23.225674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047325, 36.744934, 22.530510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.911629, 37.080269, 22.701210>,  <40.830212, 37.281467, 22.803629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.911629, 37.080269, 22.701210>,  <41.047325, 36.744934, 22.530510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911629, 37.080269, 22.701210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427853, 0.541517, -0.723672,
		-0.837769, -0.062914, -0.542388,
		-0.339241, 0.838332, 0.426748,
		40.809856, 37.331768, 22.829235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744995, 37.144802, 21.897474>,  <41.047325, 36.744934, 22.530510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744995, 37.144802, 21.897474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.798996, 37.405712, 22.195820>,  <40.831394, 37.562260, 22.374826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.798996, 37.405712, 22.195820>,  <40.744995, 37.144802, 21.897474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798996, 37.405712, 22.195820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220552, 0.714087, -0.664407,
		-0.965988, 0.254195, -0.047461,
		0.134998, 0.652277, 0.745862,
		40.839497, 37.601395, 22.419579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271824, 37.674412, 21.896654>,  <40.744995, 37.144802, 21.897474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271824, 37.674412, 21.896654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.588818, 37.821808, 22.091053>,  <40.779015, 37.910244, 22.207691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.588818, 37.821808, 22.091053>,  <40.271824, 37.674412, 21.896654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588818, 37.821808, 22.091053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131951, 0.674388, -0.726491,
		-0.595453, 0.639857, 0.485817,
		0.792480, 0.368488, 0.485996,
		40.826561, 37.932354, 22.236853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126221, 38.340435, 21.780170>,  <40.271824, 37.674412, 21.896654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126221, 38.340435, 21.780170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.503757, 38.354630, 21.911568>,  <40.730278, 38.363148, 21.990406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.503757, 38.354630, 21.911568>,  <40.126221, 38.340435, 21.780170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503757, 38.354630, 21.911568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198485, 0.733921, -0.649587,
		-0.264142, 0.678307, 0.685659,
		0.943839, 0.035490, 0.328494,
		40.786911, 38.365276, 22.010117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321068, 39.145798, 21.726492>,  <40.126221, 38.340435, 21.780170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321068, 39.145798, 21.726492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.665165, 38.942413, 21.741762>,  <40.871624, 38.820385, 21.750923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.665165, 38.942413, 21.741762>,  <40.321068, 39.145798, 21.726492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665165, 38.942413, 21.741762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362574, 0.557349, -0.746929,
		0.358505, 0.656379, 0.663807,
		0.860241, -0.508457, 0.038173,
		40.923237, 38.789875, 21.753214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309189, 39.916763, 21.952723>,  <40.321068, 39.145798, 21.726492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309189, 39.916763, 21.952723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.067638, 40.210392, 21.828484>,  <39.922710, 40.386570, 21.753941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.067638, 40.210392, 21.828484>,  <40.309189, 39.916763, 21.952723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067638, 40.210392, 21.828484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549073, -0.100627, 0.829695,
		0.577805, 0.671570, 0.463827,
		-0.603871, 0.734076, -0.310598,
		39.886478, 40.430614, 21.735304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194221, 40.437595, 22.545061>,  <40.309189, 39.916763, 21.952723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194221, 40.437595, 22.545061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.881321, 40.476986, 22.299007>,  <39.693581, 40.500618, 22.151375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.881321, 40.476986, 22.299007>,  <40.194221, 40.437595, 22.545061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881321, 40.476986, 22.299007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612179, 0.061435, 0.788329,
		0.115419, 0.993242, 0.012225,
		-0.782250, 0.098472, -0.615133,
		39.646645, 40.506527, 22.114468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795078, 40.938065, 22.867104>,  <40.194221, 40.437595, 22.545061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795078, 40.938065, 22.867104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.556034, 40.733131, 22.620407>,  <39.412605, 40.610172, 22.472389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.556034, 40.733131, 22.620407>,  <39.795078, 40.938065, 22.867104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556034, 40.733131, 22.620407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710527, -0.017997, 0.703440,
		-0.371497, 0.858596, -0.353274,
		-0.597613, -0.512337, -0.616742,
		39.376751, 40.579430, 22.435385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182327, 41.164387, 23.038885>,  <39.795078, 40.938065, 22.867104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182327, 41.164387, 23.038885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112839, 40.824455, 22.839842>,  <39.071148, 40.620495, 22.720415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112839, 40.824455, 22.839842>,  <39.182327, 41.164387, 23.038885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112839, 40.824455, 22.839842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552394, -0.334226, 0.763646,
		-0.815281, 0.407535, -0.411378,
		-0.173719, -0.849828, -0.497608,
		39.060722, 40.569508, 22.690559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457439, 41.052715, 23.184477>,  <39.182327, 41.164387, 23.038885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457439, 41.052715, 23.184477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.582890, 40.695988, 23.054064>,  <38.658161, 40.481953, 22.975817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.582890, 40.695988, 23.054064>,  <38.457439, 41.052715, 23.184477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582890, 40.695988, 23.054064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672261, -0.451030, 0.587058,
		-0.670600, 0.035062, -0.740990,
		0.313625, -0.891820, -0.326032,
		38.676975, 40.428440, 22.956255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780525, 40.681068, 23.058542>,  <38.457439, 41.052715, 23.184477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780525, 40.681068, 23.058542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061012, 40.395985, 23.065897>,  <38.229305, 40.224934, 23.070311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061012, 40.395985, 23.065897>,  <37.780525, 40.681068, 23.058542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061012, 40.395985, 23.065897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587684, -0.563217, 0.580873,
		-0.403639, -0.418123, -0.813787,
		0.701215, -0.712712, 0.018388,
		38.271378, 40.182171, 23.071413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470860, 39.944519, 22.807547>,  <37.780525, 40.681068, 23.058542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470860, 39.944519, 22.807547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.786522, 39.914806, 23.051422>,  <37.975918, 39.896980, 23.197746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.786522, 39.914806, 23.051422>,  <37.470860, 39.944519, 22.807547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786522, 39.914806, 23.051422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551461, -0.522744, 0.650100,
		0.270421, -0.849247, -0.453488,
		0.789154, -0.074280, 0.609688,
		38.023270, 39.892521, 23.234329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.713852, 43.732601, 22.057158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.671680, 43.357330, 21.925272>,  <43.646378, 43.132168, 21.846140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.671680, 43.357330, 21.925272>,  <43.713852, 43.732601, 22.057158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671680, 43.357330, 21.925272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628819, -0.193963, 0.752971,
		-0.770371, 0.286713, -0.569494,
		-0.105426, -0.938176, -0.329715,
		43.640053, 43.075878, 21.826357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930878, 43.568310, 21.964678>,  <43.713852, 43.732601, 22.057158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930878, 43.568310, 21.964678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.169907, 43.267567, 22.076117>,  <43.313324, 43.087120, 22.142979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.169907, 43.267567, 22.076117>,  <42.930878, 43.568310, 21.964678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169907, 43.267567, 22.076117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653225, -0.255004, 0.712931,
		-0.464982, -0.608011, -0.643517,
		0.597569, -0.751861, 0.278596,
		43.349178, 43.042007, 22.159695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541969, 43.129227, 22.210854>,  <42.930878, 43.568310, 21.964678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541969, 43.129227, 22.210854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.883751, 42.960526, 22.332203>,  <43.088821, 42.859306, 22.405012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.883751, 42.960526, 22.332203>,  <42.541969, 43.129227, 22.210854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883751, 42.960526, 22.332203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472412, -0.387751, 0.791502,
		-0.216183, -0.819619, -0.530556,
		0.854454, -0.421750, 0.303373,
		43.140087, 42.834000, 22.423214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316994, 42.430012, 22.446730>,  <42.541969, 43.129227, 22.210854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316994, 42.430012, 22.446730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.670364, 42.499947, 22.620623>,  <42.882385, 42.541908, 22.724958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.670364, 42.499947, 22.620623>,  <42.316994, 42.430012, 22.446730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670364, 42.499947, 22.620623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365503, -0.323422, 0.872815,
		0.293200, -0.929963, -0.221816,
		0.883426, 0.174835, 0.434731,
		42.935390, 42.552399, 22.751041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420116, 41.887115, 22.858257>,  <42.316994, 42.430012, 22.446730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420116, 41.887115, 22.858257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.651329, 42.182747, 22.996613>,  <42.790058, 42.360126, 23.079626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.651329, 42.182747, 22.996613>,  <42.420116, 41.887115, 22.858257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651329, 42.182747, 22.996613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335819, -0.170866, 0.926299,
		0.743708, -0.651590, 0.149430,
		0.578035, 0.739077, 0.345890,
		42.824741, 42.404469, 23.100380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862076, 41.635647, 23.464289>,  <42.420116, 41.887115, 22.858257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862076, 41.635647, 23.464289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.813007, 42.031799, 23.489895>,  <42.783566, 42.269489, 23.505259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.813007, 42.031799, 23.489895>,  <42.862076, 41.635647, 23.464289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813007, 42.031799, 23.489895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288265, -0.097279, 0.952596,
		0.949660, 0.098402, 0.297426,
		-0.122671, 0.990381, 0.064016,
		42.776207, 42.328915, 23.509100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995045, 41.769882, 24.095507>,  <42.862076, 41.635647, 23.464289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995045, 41.769882, 24.095507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.825775, 42.122059, 24.009953>,  <42.724213, 42.333366, 23.958620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.825775, 42.122059, 24.009953>,  <42.995045, 41.769882, 24.095507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825775, 42.122059, 24.009953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590107, -0.088689, 0.802439,
		0.687531, 0.465786, 0.557086,
		-0.423172, 0.880442, -0.213887,
		42.698822, 42.386192, 23.945786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950890, 42.204914, 24.819946>,  <42.995045, 41.769882, 24.095507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950890, 42.204914, 24.819946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.694065, 42.407711, 24.589914>,  <42.539970, 42.529388, 24.451895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.694065, 42.407711, 24.589914>,  <42.950890, 42.204914, 24.819946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694065, 42.407711, 24.589914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670675, -0.008031, 0.741708,
		0.371422, 0.861913, 0.345183,
		-0.642060, 0.506992, -0.575081,
		42.501446, 42.559807, 24.417391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699909, 42.816185, 25.280689>,  <42.950890, 42.204914, 24.819946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699909, 42.816185, 25.280689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.437832, 42.720699, 24.993986>,  <42.280586, 42.663406, 24.821964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.437832, 42.720699, 24.993986>,  <42.699909, 42.816185, 25.280689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437832, 42.720699, 24.993986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744636, 0.044000, 0.666019,
		-0.127453, 0.970092, -0.206586,
		-0.655189, -0.238718, -0.716757,
		42.241276, 42.649082, 24.778959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208221, 43.332096, 25.315876>,  <42.699909, 42.816185, 25.280689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208221, 43.332096, 25.315876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032677, 42.999386, 25.179905>,  <41.927349, 42.799759, 25.098322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032677, 42.999386, 25.179905>,  <42.208221, 43.332096, 25.315876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032677, 42.999386, 25.179905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766415, 0.149029, 0.624819,
		-0.469049, 0.534736, -0.702887,
		-0.438864, -0.831774, -0.339928,
		41.901016, 42.749855, 25.077927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455376, 43.452629, 25.360882>,  <42.208221, 43.332096, 25.315876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455376, 43.452629, 25.360882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485401, 43.058655, 25.298578>,  <41.503418, 42.822269, 25.261196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485401, 43.058655, 25.298578>,  <41.455376, 43.452629, 25.360882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485401, 43.058655, 25.298578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830178, -0.148257, 0.537423,
		-0.552422, 0.088965, -0.828804,
		0.075064, -0.984939, -0.155757,
		41.507919, 42.763172, 25.251852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825859, 43.205688, 25.261845>,  <41.455376, 43.452629, 25.360882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825859, 43.205688, 25.261845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009773, 42.871208, 25.381422>,  <41.120121, 42.670521, 25.453169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009773, 42.871208, 25.381422>,  <40.825859, 43.205688, 25.261845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009773, 42.871208, 25.381422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779751, -0.219068, 0.586513,
		-0.424953, -0.502772, -0.752752,
		0.459786, -0.836200, 0.298943,
		41.147709, 42.620350, 25.471106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462177, 43.150188, 24.672060>,  <40.825859, 43.205688, 25.261845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462177, 43.150188, 24.672060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.160370, 43.349594, 24.501326>,  <39.979286, 43.469238, 24.398884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.160370, 43.349594, 24.501326>,  <40.462177, 43.150188, 24.672060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160370, 43.349594, 24.501326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529348, 0.077824, -0.844828,
		-0.387942, -0.863381, -0.322607,
		-0.754515, 0.498515, -0.426837,
		39.934017, 43.499149, 24.373274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517078, 43.031345, 24.011303>,  <40.462177, 43.150188, 24.672060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517078, 43.031345, 24.011303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.281998, 43.354855, 24.002485>,  <40.140949, 43.548962, 23.997194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.281998, 43.354855, 24.002485>,  <40.517078, 43.031345, 24.011303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281998, 43.354855, 24.002485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368018, 0.242961, -0.897514,
		-0.720531, -0.535587, -0.440434,
		-0.587705, 0.808775, -0.022045,
		40.105686, 43.597488, 23.995872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261448, 43.087601, 23.247261>,  <40.517078, 43.031345, 24.011303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261448, 43.087601, 23.247261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.217163, 43.451168, 23.408064>,  <40.190590, 43.669308, 23.504545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.217163, 43.451168, 23.408064>,  <40.261448, 43.087601, 23.247261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217163, 43.451168, 23.408064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353423, 0.414059, -0.838837,
		-0.928889, 0.049206, -0.367075,
		-0.110715, 0.908919, 0.402005,
		40.183949, 43.723843, 23.528666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813354, 43.521164, 22.783909>,  <40.261448, 43.087601, 23.247261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813354, 43.521164, 22.783909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.024567, 43.761818, 23.023647>,  <40.151295, 43.906212, 23.167490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.024567, 43.761818, 23.023647>,  <39.813354, 43.521164, 22.783909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024567, 43.761818, 23.023647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366000, 0.475624, -0.799891,
		-0.766308, 0.641728, 0.030945,
		0.528030, 0.601637, 0.599347,
		40.182976, 43.942310, 23.203451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770752, 44.231915, 22.431513>,  <39.813354, 43.521164, 22.783909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770752, 44.231915, 22.431513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.090900, 44.220448, 22.671043>,  <40.282990, 44.213570, 22.814762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.090900, 44.220448, 22.671043>,  <39.770752, 44.231915, 22.431513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090900, 44.220448, 22.671043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575459, 0.316823, -0.753970,
		-0.168109, 0.948051, 0.270070,
		0.800367, -0.028665, 0.598825,
		40.331009, 44.211849, 22.850691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102913, 44.952881, 22.465111>,  <39.770752, 44.231915, 22.431513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102913, 44.952881, 22.465111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.391659, 44.697861, 22.572769>,  <40.564907, 44.544849, 22.637363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.391659, 44.697861, 22.572769>,  <40.102913, 44.952881, 22.465111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391659, 44.697861, 22.572769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495887, 0.205260, -0.843780,
		0.482709, 0.742561, 0.464323,
		0.721865, -0.637552, 0.269145,
		40.608219, 44.506596, 22.653513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663120, 45.275040, 22.201397>,  <40.102913, 44.952881, 22.465111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663120, 45.275040, 22.201397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.808586, 44.912552, 22.287670>,  <40.895866, 44.695061, 22.339434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.808586, 44.912552, 22.287670>,  <40.663120, 45.275040, 22.201397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808586, 44.912552, 22.287670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678365, 0.098956, -0.728031,
		0.638411, 0.411071, 0.650732,
		0.363666, -0.906216, 0.215682,
		40.917686, 44.640686, 22.352375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400150, 45.318523, 22.012533>,  <40.663120, 45.275040, 22.201397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400150, 45.318523, 22.012533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.317009, 44.927834, 22.033733>,  <41.267124, 44.693420, 22.046453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.317009, 44.927834, 22.033733>,  <41.400150, 45.318523, 22.012533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317009, 44.927834, 22.033733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492100, -0.151239, -0.857301,
		0.845362, -0.152108, 0.512081,
		-0.207849, -0.976724, 0.052999,
		41.254654, 44.634815, 22.049633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052315, 45.016258, 21.959227>,  <41.400150, 45.318523, 22.012533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052315, 45.016258, 21.959227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.772434, 44.751278, 21.852203>,  <41.604507, 44.592289, 21.787989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.772434, 44.751278, 21.852203>,  <42.052315, 45.016258, 21.959227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772434, 44.751278, 21.852203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529844, -0.229923, -0.816333,
		0.479260, -0.712951, 0.511870,
		-0.699696, -0.662447, -0.267560,
		41.562527, 44.552544, 21.771935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462086, 44.500874, 21.617512>,  <42.052315, 45.016258, 21.959227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462086, 44.500874, 21.617512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.096619, 44.387306, 21.501165>,  <41.877338, 44.319164, 21.431358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.096619, 44.387306, 21.501165>,  <42.462086, 44.500874, 21.617512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096619, 44.387306, 21.501165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354133, -0.204808, -0.912493,
		0.199502, -0.936720, 0.287671,
		-0.913668, -0.283918, -0.290864,
		41.822517, 44.302132, 21.413906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489902, 43.813465, 21.462030>,  <42.462086, 44.500874, 21.617512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489902, 43.813465, 21.462030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.173046, 43.946785, 21.257515>,  <41.982933, 44.026779, 21.134806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.173046, 43.946785, 21.257515>,  <42.489902, 43.813465, 21.462030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173046, 43.946785, 21.257515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420793, -0.308536, -0.853076,
		-0.442086, -0.890905, 0.104152,
		-0.792145, 0.333306, -0.511287,
		41.935402, 44.046776, 21.104130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159046, 43.243362, 21.206753>,  <42.489902, 43.813465, 21.462030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159046, 43.243362, 21.206753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.083397, 43.545841, 20.956186>,  <42.038006, 43.727329, 20.805845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.083397, 43.545841, 20.956186>,  <42.159046, 43.243362, 21.206753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083397, 43.545841, 20.956186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428407, -0.510476, -0.745575,
		-0.883572, -0.409368, -0.227417,
		-0.189124, 0.756196, -0.626418,
		42.026661, 43.772701, 20.768261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907322, 42.909946, 20.555172>,  <42.159046, 43.243362, 21.206753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907322, 42.909946, 20.555172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.050900, 43.279957, 20.505405>,  <42.137047, 43.501965, 20.475546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.050900, 43.279957, 20.505405>,  <41.907322, 42.909946, 20.555172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050900, 43.279957, 20.505405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427768, -0.281515, -0.858932,
		-0.829561, 0.255091, -0.496747,
		0.358948, 0.925029, -0.124414,
		42.158585, 43.557465, 20.468081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386093, 43.130234, 20.087393>,  <41.907322, 42.909946, 20.555172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386093, 43.130234, 20.087393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.358231, 42.854332, 19.799118>,  <41.341515, 42.688793, 19.626154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.358231, 42.854332, 19.799118>,  <41.386093, 43.130234, 20.087393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358231, 42.854332, 19.799118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575039, -0.562574, 0.594004,
		-0.815156, 0.455798, -0.357448,
		-0.069655, -0.689752, -0.720687,
		41.337334, 42.647408, 19.582912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759727, 42.875526, 20.207413>,  <41.386093, 43.130234, 20.087393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759727, 42.875526, 20.207413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.892738, 42.589249, 19.961746>,  <40.972546, 42.417480, 19.814346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.892738, 42.589249, 19.961746>,  <40.759727, 42.875526, 20.207413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892738, 42.589249, 19.961746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467460, -0.690680, 0.551763,
		-0.819090, 0.103623, -0.564229,
		0.332527, -0.715698, -0.614169,
		40.992496, 42.374538, 19.777496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163792, 42.619423, 19.872522>,  <40.759727, 42.875526, 20.207413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163792, 42.619423, 19.872522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.449226, 42.340618, 19.844311>,  <40.620487, 42.173336, 19.827385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.449226, 42.340618, 19.844311>,  <40.163792, 42.619423, 19.872522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449226, 42.340618, 19.844311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609361, -0.667202, 0.428393,
		-0.345649, -0.262719, -0.900836,
		0.713587, -0.697008, -0.070527,
		40.663303, 42.131516, 19.823153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794270, 41.953697, 19.714663>,  <40.163792, 42.619423, 19.872522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794270, 41.953697, 19.714663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143330, 41.860008, 19.886070>,  <40.352764, 41.803795, 19.988914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.143330, 41.860008, 19.886070>,  <39.794270, 41.953697, 19.714663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143330, 41.860008, 19.886070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451879, -0.720007, 0.526683,
		0.185178, -0.653247, -0.734151,
		0.872648, -0.234218, 0.428518,
		40.405125, 41.789742, 20.014626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815250, 41.244354, 19.786697>,  <39.794270, 41.953697, 19.714663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815250, 41.244354, 19.786697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.068737, 41.378506, 20.065531>,  <40.220829, 41.458996, 20.232832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.068737, 41.378506, 20.065531>,  <39.815250, 41.244354, 19.786697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068737, 41.378506, 20.065531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416672, -0.611250, 0.672873,
		0.651759, -0.716865, -0.247616,
		0.633715, 0.335377, 0.697085,
		40.258850, 41.479118, 20.274656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855740, 40.619144, 20.088438>,  <39.815250, 41.244354, 19.786697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855740, 40.619144, 20.088438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038132, 40.855900, 20.354296>,  <40.147568, 40.997952, 20.513811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038132, 40.855900, 20.354296>,  <39.855740, 40.619144, 20.088438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038132, 40.855900, 20.354296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421133, -0.514407, 0.747016,
		0.784048, -0.620525, 0.014707,
		0.455977, 0.591890, 0.664644,
		40.174927, 41.033466, 20.553688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128864, 40.170391, 20.569958>,  <39.855740, 40.619144, 20.088438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128864, 40.170391, 20.569958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.093822, 40.519413, 20.762196>,  <40.072800, 40.728828, 20.877539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.093822, 40.519413, 20.762196>,  <40.128864, 40.170391, 20.569958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093822, 40.519413, 20.762196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270559, -0.485152, 0.831520,
		0.958709, -0.057187, 0.278578,
		-0.087601, 0.872558, 0.480593,
		40.067543, 40.781181, 20.906374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480560, 40.039024, 21.269314>,  <40.128864, 40.170391, 20.569958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480560, 40.039024, 21.269314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.231159, 40.351723, 21.273756>,  <40.081520, 40.539341, 21.276421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.231159, 40.351723, 21.273756>,  <40.480560, 40.039024, 21.269314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231159, 40.351723, 21.273756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352543, -0.293799, 0.888480,
		0.697826, 0.550053, 0.458782,
		-0.623500, 0.781745, 0.011103,
		40.044109, 40.586246, 21.277086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138092, 39.794136, 21.728901>,  <40.480560, 40.039024, 21.269314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138092, 39.794136, 21.728901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.228687, 39.414249, 21.642418>,  <41.283043, 39.186317, 21.590528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.228687, 39.414249, 21.642418>,  <41.138092, 39.794136, 21.728901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228687, 39.414249, 21.642418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409101, 0.294200, -0.863760,
		0.883935, 0.107178, 0.455162,
		0.226485, -0.949715, -0.216207,
		41.296635, 39.129333, 21.577557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844563, 39.822159, 21.521721>,  <41.138092, 39.794136, 21.728901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844563, 39.822159, 21.521721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.687019, 39.490822, 21.362358>,  <41.592491, 39.292019, 21.266741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.687019, 39.490822, 21.362358>,  <41.844563, 39.822159, 21.521721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687019, 39.490822, 21.362358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530204, 0.149323, -0.834617,
		0.750839, -0.539958, 0.380377,
		-0.393860, -0.828340, -0.398406,
		41.568863, 39.242321, 21.242836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307434, 39.461452, 21.108847>,  <41.844563, 39.822159, 21.521721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307434, 39.461452, 21.108847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.976604, 39.300209, 20.952150>,  <41.778107, 39.203465, 20.858133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.976604, 39.300209, 20.952150>,  <42.307434, 39.461452, 21.108847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976604, 39.300209, 20.952150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470912, -0.116381, -0.874470,
		0.306914, -0.907723, 0.286083,
		-0.827070, -0.403107, -0.391739,
		41.728485, 39.179276, 20.834629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432102, 38.701637, 20.766766>,  <42.307434, 39.461452, 21.108847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432102, 38.701637, 20.766766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.116798, 38.870449, 20.587643>,  <41.927616, 38.971737, 20.480167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.116798, 38.870449, 20.587643>,  <42.432102, 38.701637, 20.766766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116798, 38.870449, 20.587643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420097, -0.162666, -0.892781,
		-0.449626, -0.891868, -0.049072,
		-0.788261, 0.422033, -0.447810,
		41.880322, 38.997059, 20.453300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403770, 38.416122, 20.078709>,  <42.432102, 38.701637, 20.766766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403770, 38.416122, 20.078709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.186008, 38.750401, 20.049768>,  <42.055351, 38.950966, 20.032404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.186008, 38.750401, 20.049768>,  <42.403770, 38.416122, 20.078709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186008, 38.750401, 20.049768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220808, 0.059563, -0.973497,
		-0.809235, -0.545957, -0.216954,
		-0.544409, 0.835693, -0.072352,
		42.022686, 39.001110, 20.028063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867790, 38.326084, 19.501505>,  <42.403770, 38.416122, 20.078709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867790, 38.326084, 19.501505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.922482, 38.720016, 19.544243>,  <41.955296, 38.956375, 19.569885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.922482, 38.720016, 19.544243>,  <41.867790, 38.326084, 19.501505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922482, 38.720016, 19.544243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208543, 0.076824, -0.974991,
		-0.968409, 0.155586, -0.194876,
		0.136724, 0.984831, 0.106843,
		41.963497, 39.015465, 19.576296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904240, 38.527664, 18.820868>,  <41.867790, 38.326084, 19.501505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904240, 38.527664, 18.820868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.011993, 38.856228, 19.021950>,  <42.076645, 39.053368, 19.142599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.011993, 38.856228, 19.021950>,  <41.904240, 38.527664, 18.820868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011993, 38.856228, 19.021950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453331, 0.352392, -0.818725,
		-0.849662, 0.448441, -0.277444,
		0.269381, 0.821414, 0.502706,
		42.092808, 39.102654, 19.172762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826054, 39.055119, 18.369537>,  <41.904240, 38.527664, 18.820868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826054, 39.055119, 18.369537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.074966, 39.195213, 18.649563>,  <42.224316, 39.279270, 18.817579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.074966, 39.195213, 18.649563>,  <41.826054, 39.055119, 18.369537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074966, 39.195213, 18.649563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506036, 0.502337, -0.701131,
		-0.597233, 0.790563, 0.135364,
		0.622286, 0.350239, 0.700066,
		42.261654, 39.300285, 18.859583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968815, 39.629669, 18.114826>,  <41.826054, 39.055119, 18.369537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968815, 39.629669, 18.114826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259457, 39.584206, 18.385860>,  <42.433842, 39.556927, 18.548481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259457, 39.584206, 18.385860>,  <41.968815, 39.629669, 18.114826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259457, 39.584206, 18.385860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677343, 0.283721, -0.678755,
		-0.115102, 0.952147, 0.283137,
		0.726607, -0.113655, 0.677587,
		42.477440, 39.550110, 18.589136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.895626, 34.227711, 31.388844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182663, 34.337738, 31.644781>,  <35.354885, 34.403755, 31.798344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182663, 34.337738, 31.644781>,  <34.895626, 34.227711, 31.388844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182663, 34.337738, 31.644781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423269, 0.557334, -0.714298,
		-0.553090, 0.783399, 0.283508,
		0.717590, 0.275071, 0.639845,
		35.397942, 34.420258, 31.836735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072437, 34.770847, 31.042923>,  <34.895626, 34.227711, 31.388844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072437, 34.770847, 31.042923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.355152, 34.723133, 31.321840>,  <35.524780, 34.694504, 31.489191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.355152, 34.723133, 31.321840>,  <35.072437, 34.770847, 31.042923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355152, 34.723133, 31.321840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656188, 0.478838, -0.583208,
		-0.264322, 0.869762, 0.416712,
		0.706789, -0.119286, 0.697295,
		35.567188, 34.687347, 31.531029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282909, 35.376961, 31.090935>,  <35.072437, 34.770847, 31.042923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282909, 35.376961, 31.090935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596367, 35.178707, 31.240730>,  <35.784443, 35.059753, 31.330606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596367, 35.178707, 31.240730>,  <35.282909, 35.376961, 31.090935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596367, 35.178707, 31.240730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613664, 0.523993, -0.590634,
		0.096512, 0.692657, 0.714781,
		0.783647, -0.495638, 0.374487,
		35.831459, 35.030014, 31.353077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807522, 35.858738, 31.360022>,  <35.282909, 35.376961, 31.090935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807522, 35.858738, 31.360022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995712, 35.513790, 31.285229>,  <36.108627, 35.306820, 31.240353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995712, 35.513790, 31.285229>,  <35.807522, 35.858738, 31.360022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995712, 35.513790, 31.285229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680370, 0.489454, -0.545464,
		0.561913, 0.129411, 0.817010,
		0.470478, -0.862373, -0.186984,
		36.136856, 35.255077, 31.229134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620495, 35.963310, 31.381878>,  <35.807522, 35.858738, 31.360022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620495, 35.963310, 31.381878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520458, 35.648312, 31.156557>,  <36.460438, 35.459312, 31.021364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520458, 35.648312, 31.156557>,  <36.620495, 35.963310, 31.381878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520458, 35.648312, 31.156557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622613, 0.314748, -0.716440,
		0.741490, -0.529894, 0.411588,
		-0.250091, -0.787493, -0.563302,
		36.445431, 35.412064, 30.987566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292732, 35.730591, 31.103348>,  <36.620495, 35.963310, 31.381878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292732, 35.730591, 31.103348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001003, 35.579399, 30.875235>,  <36.825966, 35.488686, 30.738367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001003, 35.579399, 30.875235>,  <37.292732, 35.730591, 31.103348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001003, 35.579399, 30.875235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509625, 0.256011, -0.821426,
		0.456478, -0.889715, 0.005912,
		-0.729322, -0.377975, -0.570285,
		36.782207, 35.466007, 30.704149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733852, 35.267757, 30.566868>,  <37.292732, 35.730591, 31.103348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733852, 35.267757, 30.566868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363682, 35.356922, 30.444302>,  <37.141579, 35.410423, 30.370762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363682, 35.356922, 30.444302>,  <37.733852, 35.267757, 30.566868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363682, 35.356922, 30.444302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352574, 0.210297, -0.911848,
		-0.138827, -0.951884, -0.273209,
		-0.925429, 0.222916, -0.306415,
		37.086052, 35.423798, 30.352377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812004, 35.052864, 29.905123>,  <37.733852, 35.267757, 30.566868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812004, 35.052864, 29.905123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472015, 35.263557, 29.901201>,  <37.268021, 35.389973, 29.898848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.472015, 35.263557, 29.901201>,  <37.812004, 35.052864, 29.905123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472015, 35.263557, 29.901201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241581, 0.373155, -0.895765,
		-0.468173, -0.763744, -0.444421,
		-0.849972, 0.526737, -0.009805,
		37.217022, 35.421577, 29.898260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362503, 34.875931, 29.367764>,  <37.812004, 35.052864, 29.905123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362503, 34.875931, 29.367764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269882, 35.255463, 29.453650>,  <37.214310, 35.483181, 29.505180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269882, 35.255463, 29.453650>,  <37.362503, 34.875931, 29.367764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269882, 35.255463, 29.453650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188196, 0.260234, -0.947027,
		-0.954444, -0.178882, -0.238825,
		-0.231556, 0.948831, 0.214714,
		37.200417, 35.540112, 29.518064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034359, 35.064064, 28.811190>,  <37.362503, 34.875931, 29.367764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034359, 35.064064, 28.811190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063248, 35.433601, 28.961544>,  <37.080582, 35.655323, 29.051758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063248, 35.433601, 28.961544>,  <37.034359, 35.064064, 28.811190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063248, 35.433601, 28.961544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153949, 0.362030, -0.919366,
		-0.985436, 0.124270, -0.116077,
		0.072227, 0.923846, 0.375888,
		37.084915, 35.710754, 29.074310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648796, 35.498306, 28.371250>,  <37.034359, 35.064064, 28.811190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648796, 35.498306, 28.371250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919418, 35.734474, 28.547285>,  <37.081791, 35.876175, 28.652906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919418, 35.734474, 28.547285>,  <36.648796, 35.498306, 28.371250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919418, 35.734474, 28.547285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231379, 0.396922, -0.888210,
		-0.699095, 0.702752, 0.131931,
		0.676558, 0.590417, 0.440089,
		37.122387, 35.911598, 28.679312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561085, 36.098831, 28.075108>,  <36.648796, 35.498306, 28.371250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561085, 36.098831, 28.075108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940010, 36.120838, 28.201326>,  <37.167366, 36.134045, 28.277058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940010, 36.120838, 28.201326>,  <36.561085, 36.098831, 28.075108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940010, 36.120838, 28.201326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267881, 0.404011, -0.874651,
		-0.175608, 0.913098, 0.367986,
		0.947313, 0.055020, 0.315549,
		37.224205, 36.137344, 28.295992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257072, 36.722485, 28.043180>,  <36.561085, 36.098831, 28.075108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257072, 36.722485, 28.043180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.905350, 36.845287, 27.897541>,  <35.694317, 36.918968, 27.810158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.905350, 36.845287, 27.897541>,  <36.257072, 36.722485, 28.043180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905350, 36.845287, 27.897541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408154, -0.091815, 0.908284,
		0.245417, 0.947269, 0.206038,
		-0.879307, 0.307004, -0.364098,
		35.641556, 36.937389, 27.788311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959053, 37.351429, 28.483839>,  <36.257072, 36.722485, 28.043180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959053, 37.351429, 28.483839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638508, 37.221684, 28.282801>,  <35.446182, 37.143837, 28.162178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638508, 37.221684, 28.282801>,  <35.959053, 37.351429, 28.483839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638508, 37.221684, 28.282801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514166, -0.055870, 0.855869,
		-0.305696, 0.944280, -0.122007,
		-0.801363, -0.324368, -0.502596,
		35.398098, 37.124374, 28.132021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478020, 37.689827, 28.686562>,  <35.959053, 37.351429, 28.483839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478020, 37.689827, 28.686562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296421, 37.360226, 28.550968>,  <35.187462, 37.162464, 28.469612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296421, 37.360226, 28.550968>,  <35.478020, 37.689827, 28.686562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296421, 37.360226, 28.550968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695287, 0.089713, 0.713111,
		-0.557192, 0.559442, -0.613646,
		-0.453997, -0.824000, -0.338986,
		35.160221, 37.113026, 28.449272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792377, 37.833561, 28.813416>,  <35.478020, 37.689827, 28.686562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792377, 37.833561, 28.813416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789948, 37.436813, 28.762577>,  <34.788490, 37.198765, 28.732075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789948, 37.436813, 28.762577>,  <34.792377, 37.833561, 28.813416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789948, 37.436813, 28.762577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759478, -0.078104, 0.645828,
		-0.650505, 0.100449, -0.752830,
		-0.006074, -0.991872, -0.127095,
		34.788124, 37.139252, 28.724449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144321, 37.657711, 28.640381>,  <34.792377, 37.833561, 28.813416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144321, 37.657711, 28.640381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305401, 37.324566, 28.792257>,  <34.402050, 37.124680, 28.883383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305401, 37.324566, 28.792257>,  <34.144321, 37.657711, 28.640381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305401, 37.324566, 28.792257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662664, 0.020879, 0.748626,
		-0.631434, -0.553078, -0.543503,
		0.402701, -0.832868, 0.379689,
		34.426212, 37.074707, 28.906164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587101, 37.366848, 28.938553>,  <34.144321, 37.657711, 28.640381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587101, 37.366848, 28.938553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889431, 37.160252, 29.099531>,  <34.070827, 37.036293, 29.196117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.889431, 37.160252, 29.099531>,  <33.587101, 37.366848, 28.938553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889431, 37.160252, 29.099531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544305, -0.153980, 0.824635,
		-0.363949, -0.842334, -0.397511,
		0.755827, -0.516492, 0.402445,
		34.116180, 37.005302, 29.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245323, 36.921593, 29.314919>,  <33.587101, 37.366848, 28.938553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245323, 36.921593, 29.314919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608097, 36.893356, 29.481049>,  <33.825760, 36.876415, 29.580727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608097, 36.893356, 29.481049>,  <33.245323, 36.921593, 29.314919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608097, 36.893356, 29.481049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417542, -0.019603, 0.908446,
		-0.055993, -0.997312, -0.047257,
		0.906930, -0.070599, 0.415322,
		33.880177, 36.872181, 29.605646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190849, 36.400837, 29.772993>,  <33.245323, 36.921593, 29.314919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190849, 36.400837, 29.772993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493797, 36.630283, 29.897799>,  <33.675568, 36.767952, 29.972681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493797, 36.630283, 29.897799>,  <33.190849, 36.400837, 29.772993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493797, 36.630283, 29.897799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393629, 0.019817, 0.919056,
		0.521001, -0.818885, 0.240800,
		0.757373, 0.573616, 0.312013,
		33.721008, 36.802368, 29.991402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347038, 36.210823, 30.447016>,  <33.190849, 36.400837, 29.772993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347038, 36.210823, 30.447016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514137, 36.573296, 30.420713>,  <33.614395, 36.790779, 30.404932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514137, 36.573296, 30.420713>,  <33.347038, 36.210823, 30.447016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514137, 36.573296, 30.420713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442055, 0.265951, 0.856655,
		0.793772, -0.328796, 0.511682,
		0.417747, 0.906180, -0.065758,
		33.639462, 36.845150, 30.400986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689163, 36.289444, 31.059088>,  <33.347038, 36.210823, 30.447016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689163, 36.289444, 31.059088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622124, 36.660534, 30.925674>,  <33.581902, 36.883186, 30.845627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622124, 36.660534, 30.925674>,  <33.689163, 36.289444, 31.059088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622124, 36.660534, 30.925674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387503, 0.249097, 0.887577,
		0.906506, 0.278000, 0.317747,
		-0.167596, 0.927721, -0.333534,
		33.571846, 36.938850, 30.825615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637066, 36.641804, 31.656740>,  <33.689163, 36.289444, 31.059088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637066, 36.641804, 31.656740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484482, 36.908733, 31.400877>,  <33.392933, 37.068893, 31.247358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484482, 36.908733, 31.400877>,  <33.637066, 36.641804, 31.656740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484482, 36.908733, 31.400877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491149, 0.439909, 0.751833,
		0.783111, 0.600959, 0.159951,
		-0.381457, 0.667329, -0.639658,
		33.370045, 37.108932, 31.208979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779892, 37.354870, 32.003170>,  <33.637066, 36.641804, 31.656740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779892, 37.354870, 32.003170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493313, 37.405247, 31.728699>,  <33.321365, 37.435474, 31.564016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493313, 37.405247, 31.728699>,  <33.779892, 37.354870, 32.003170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493313, 37.405247, 31.728699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454473, 0.661972, 0.596026,
		0.529297, 0.738871, -0.417031,
		-0.716449, 0.125945, -0.686177,
		33.278378, 37.443031, 31.522846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819637, 38.050938, 32.009865>,  <33.779892, 37.354870, 32.003170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819637, 38.050938, 32.009865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462303, 37.932041, 31.875050>,  <33.247902, 37.860703, 31.794161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462303, 37.932041, 31.875050>,  <33.819637, 38.050938, 32.009865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462303, 37.932041, 31.875050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449387, 0.592880, 0.668239,
		0.001193, 0.748424, -0.663220,
		-0.893336, -0.297245, -0.337040,
		33.194302, 37.842869, 31.773937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421101, 38.669853, 31.895557>,  <33.819637, 38.050938, 32.009865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421101, 38.669853, 31.895557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131535, 38.396599, 31.934067>,  <32.957794, 38.232647, 31.957172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131535, 38.396599, 31.934067>,  <33.421101, 38.669853, 31.895557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131535, 38.396599, 31.934067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502422, 0.617674, 0.605021,
		-0.472779, 0.389614, -0.790367,
		-0.723914, -0.683140, 0.096273,
		32.914360, 38.191658, 31.962948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721714, 38.955101, 31.798441>,  <33.421101, 38.669853, 31.895557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721714, 38.955101, 31.798441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708855, 38.646881, 32.053070>,  <32.701138, 38.461948, 32.205849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708855, 38.646881, 32.053070>,  <32.721714, 38.955101, 31.798441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708855, 38.646881, 32.053070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657802, 0.495832, 0.566963,
		-0.752505, -0.400511, -0.522807,
		-0.032149, -0.770546, 0.636573,
		32.699211, 38.415718, 32.244041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349922, 39.477020, 31.293415>,  <32.721714, 38.955101, 31.798441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349922, 39.477020, 31.293415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611649, 39.515621, 31.593430>,  <32.768684, 39.538784, 31.773438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611649, 39.515621, 31.593430>,  <32.349922, 39.477020, 31.293415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611649, 39.515621, 31.593430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676839, 0.367625, -0.637762,
		-0.337281, 0.924953, 0.175224,
		0.654317, 0.096507, 0.750037,
		32.807945, 39.544575, 31.818441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593685, 40.177818, 31.279428>,  <32.349922, 39.477020, 31.293415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593685, 40.177818, 31.279428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858067, 39.907761, 31.410465>,  <33.016697, 39.745728, 31.489088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858067, 39.907761, 31.410465>,  <32.593685, 40.177818, 31.279428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858067, 39.907761, 31.410465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642486, 0.283557, -0.711904,
		0.387745, 0.681013, 0.621189,
		0.660958, -0.675142, 0.327593,
		33.056355, 39.705219, 31.508743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096558, 40.526173, 31.443405>,  <32.593685, 40.177818, 31.279428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096558, 40.526173, 31.443405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252083, 40.171608, 31.342922>,  <33.345398, 39.958870, 31.282633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252083, 40.171608, 31.342922>,  <33.096558, 40.526173, 31.443405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252083, 40.171608, 31.342922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619723, 0.453380, -0.640617,
		0.681741, 0.093400, 0.725607,
		0.388809, -0.886410, -0.251206,
		33.368725, 39.905685, 31.267561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894112, 40.657257, 31.418028>,  <33.096558, 40.526173, 31.443405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894112, 40.657257, 31.418028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826912, 40.310230, 31.230793>,  <33.786594, 40.102013, 31.118452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826912, 40.310230, 31.230793>,  <33.894112, 40.657257, 31.418028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826912, 40.310230, 31.230793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728900, 0.210363, -0.651500,
		0.663687, -0.450638, 0.597030,
		-0.167998, -0.867567, -0.468085,
		33.776512, 40.049961, 31.090368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517452, 40.360245, 31.301414>,  <33.894112, 40.657257, 31.418028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517452, 40.360245, 31.301414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277596, 40.186409, 31.032623>,  <34.133682, 40.082108, 30.871347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277596, 40.186409, 31.032623>,  <34.517452, 40.360245, 31.301414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277596, 40.186409, 31.032623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590561, 0.326357, -0.738057,
		0.540058, -0.839418, 0.060954,
		-0.599645, -0.434590, -0.671979,
		34.097702, 40.056030, 30.831030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911476, 40.039021, 30.887863>,  <34.517452, 40.360245, 31.301414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911476, 40.039021, 30.887863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581848, 40.110714, 30.672909>,  <34.384071, 40.153732, 30.543936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581848, 40.110714, 30.672909>,  <34.911476, 40.039021, 30.887863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581848, 40.110714, 30.672909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564508, 0.339103, -0.752555,
		0.047343, -0.923516, -0.380626,
		-0.824068, 0.179238, -0.537387,
		34.334629, 40.164486, 30.511692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020695, 39.715439, 30.162849>,  <34.911476, 40.039021, 30.887863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020695, 39.715439, 30.162849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722561, 39.978210, 30.117382>,  <34.543678, 40.135872, 30.090101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722561, 39.978210, 30.117382>,  <35.020695, 39.715439, 30.162849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722561, 39.978210, 30.117382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354948, 0.246686, -0.901752,
		-0.564343, -0.712457, -0.417039,
		-0.745338, 0.656925, -0.113670,
		34.498959, 40.175289, 30.083281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831299, 39.735920, 29.419565>,  <35.020695, 39.715439, 30.162849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831299, 39.735920, 29.419565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680359, 40.085449, 29.542227>,  <34.589794, 40.295166, 29.615824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680359, 40.085449, 29.542227>,  <34.831299, 39.735920, 29.419565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680359, 40.085449, 29.542227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286667, 0.425091, -0.858557,
		-0.880584, -0.236070, -0.410905,
		-0.377351, 0.873824, 0.306655,
		34.567154, 40.347595, 29.634224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497017, 39.993938, 28.817558>,  <34.831299, 39.735920, 29.419565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497017, 39.993938, 28.817558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563908, 40.310394, 29.052889>,  <34.604042, 40.500267, 29.194086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563908, 40.310394, 29.052889>,  <34.497017, 39.993938, 28.817558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563908, 40.310394, 29.052889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326594, 0.518584, -0.790194,
		-0.930253, 0.324285, -0.171661,
		0.167227, 0.791144, 0.588325,
		34.614075, 40.547737, 29.229385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141075, 40.456959, 28.455877>,  <34.497017, 39.993938, 28.817558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141075, 40.456959, 28.455877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384525, 40.676388, 28.685184>,  <34.530598, 40.808044, 28.822769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384525, 40.676388, 28.685184>,  <34.141075, 40.456959, 28.455877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384525, 40.676388, 28.685184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254008, 0.549768, -0.795761,
		-0.751700, 0.629937, 0.195262,
		0.608628, 0.548575, 0.573269,
		34.567112, 40.840961, 28.857164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155151, 41.237823, 28.219145>,  <34.141075, 40.456959, 28.455877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155151, 41.237823, 28.219145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500134, 41.167419, 28.408960>,  <34.707123, 41.125175, 28.522850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500134, 41.167419, 28.408960>,  <34.155151, 41.237823, 28.219145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500134, 41.167419, 28.408960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477943, 0.591740, -0.649164,
		-0.166541, 0.786678, 0.594476,
		0.862458, -0.176013, 0.474537,
		34.758869, 41.114616, 28.551321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497581, 41.930325, 28.317310>,  <34.155151, 41.237823, 28.219145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497581, 41.930325, 28.317310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.803692, 41.675110, 28.351383>,  <34.987358, 41.521980, 28.371826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.803692, 41.675110, 28.351383>,  <34.497581, 41.930325, 28.317310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803692, 41.675110, 28.351383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579601, 0.625443, -0.522382,
		0.280024, 0.449139, 0.848446,
		0.765277, -0.638040, 0.085182,
		35.033276, 41.483700, 28.376938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104389, 42.389591, 28.200439>,  <34.497581, 41.930325, 28.317310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104389, 42.389591, 28.200439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257629, 42.021374, 28.169905>,  <35.349575, 41.800442, 28.151583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257629, 42.021374, 28.169905>,  <35.104389, 42.389591, 28.200439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257629, 42.021374, 28.169905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811154, 0.374809, -0.448940,
		0.441882, 0.110068, 0.890295,
		0.383104, -0.920545, -0.076339,
		35.372562, 41.745209, 28.147003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841869, 42.471077, 28.297791>,  <35.104389, 42.389591, 28.200439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841869, 42.471077, 28.297791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821468, 42.104824, 28.138287>,  <35.809227, 41.885071, 28.042583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821468, 42.104824, 28.138287>,  <35.841869, 42.471077, 28.297791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821468, 42.104824, 28.138287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781334, 0.212107, -0.586965,
		0.622026, -0.341500, 0.704600,
		-0.050998, -0.915635, -0.398762,
		35.806168, 41.830132, 28.018658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510498, 42.187336, 28.388798>,  <35.841869, 42.471077, 28.297791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510498, 42.187336, 28.388798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346889, 41.973534, 28.092960>,  <36.248726, 41.845253, 27.915457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346889, 41.973534, 28.092960>,  <36.510498, 42.187336, 28.388798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346889, 41.973534, 28.092960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815184, 0.150214, -0.559385,
		0.410093, -0.831707, 0.374282,
		-0.409022, -0.534508, -0.739596,
		36.224182, 41.813183, 27.871082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057549, 41.672493, 28.188501>,  <36.510498, 42.187336, 28.388798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057549, 41.672493, 28.188501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794952, 41.736900, 27.893721>,  <36.637394, 41.775543, 27.716852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794952, 41.736900, 27.893721>,  <37.057549, 41.672493, 28.188501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794952, 41.736900, 27.893721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754266, 0.153470, -0.638381,
		0.010308, -0.974946, -0.222203,
		-0.656489, 0.161020, -0.736950,
		36.598007, 41.785206, 27.672636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456566, 41.355122, 27.626177>,  <37.057549, 41.672493, 28.188501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456566, 41.355122, 27.626177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.168804, 41.597595, 27.490528>,  <36.996147, 41.743080, 27.409140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.168804, 41.597595, 27.490528>,  <37.456566, 41.355122, 27.626177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168804, 41.597595, 27.490528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576827, 0.249401, -0.777862,
		-0.386950, -0.755209, -0.529082,
		-0.719402, 0.606183, -0.339120,
		36.952984, 41.779449, 27.388792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568558, 41.348007, 26.924818>,  <37.456566, 41.355122, 27.626177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568558, 41.348007, 26.924818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.343632, 41.678688, 26.932337>,  <37.208675, 41.877098, 26.936848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.343632, 41.678688, 26.932337>,  <37.568558, 41.348007, 26.924818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343632, 41.678688, 26.932337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690239, 0.481770, -0.539878,
		-0.455376, -0.290610, -0.841534,
		-0.562319, 0.826707, 0.018796,
		37.174934, 41.926701, 26.937975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370716, 41.510220, 26.273592>,  <37.568558, 41.348007, 26.924818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370716, 41.510220, 26.273592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354214, 41.850239, 26.483629>,  <37.344311, 42.054249, 26.609652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.354214, 41.850239, 26.483629>,  <37.370716, 41.510220, 26.273592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354214, 41.850239, 26.483629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707225, 0.396079, -0.585623,
		-0.705784, 0.347197, -0.617513,
		-0.041258, 0.850044, 0.525093,
		37.341835, 42.105251, 26.641157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268238, 42.036400, 25.721210>,  <37.370716, 41.510220, 26.273592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268238, 42.036400, 25.721210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393242, 42.211983, 26.058174>,  <37.468243, 42.317333, 26.260353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393242, 42.211983, 26.058174>,  <37.268238, 42.036400, 25.721210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393242, 42.211983, 26.058174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683714, 0.511713, -0.520275,
		-0.659451, 0.738557, -0.140209,
		0.312506, 0.438958, 0.842411,
		37.486992, 42.343670, 26.310898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271179, 42.701214, 25.571032>,  <37.268238, 42.036400, 25.721210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271179, 42.701214, 25.571032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514378, 42.719662, 25.888071>,  <37.660297, 42.730728, 26.078295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514378, 42.719662, 25.888071>,  <37.271179, 42.701214, 25.571032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514378, 42.719662, 25.888071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576028, 0.661405, -0.480349,
		-0.546381, 0.748610, 0.375569,
		0.607997, 0.046115, 0.792599,
		37.696777, 42.733498, 26.125851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387810, 43.451420, 25.584278>,  <37.271179, 42.701214, 25.571032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387810, 43.451420, 25.584278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675598, 43.255039, 25.780779>,  <37.848270, 43.137211, 25.898680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675598, 43.255039, 25.780779>,  <37.387810, 43.451420, 25.584278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675598, 43.255039, 25.780779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693438, 0.547365, -0.468547,
		-0.038858, 0.677757, 0.734259,
		0.719468, -0.490956, 0.491252,
		37.891438, 43.107754, 25.928154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837681, 43.974400, 25.802032>,  <37.387810, 43.451420, 25.584278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837681, 43.974400, 25.802032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064461, 43.644936, 25.796907>,  <38.200527, 43.447258, 25.793833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064461, 43.644936, 25.796907>,  <37.837681, 43.974400, 25.802032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064461, 43.644936, 25.796907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630431, 0.443852, -0.636829,
		0.530216, 0.352969, 0.770898,
		0.566946, -0.823655, -0.012814,
		38.234543, 43.397839, 25.793062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519966, 44.302631, 25.747662>,  <37.837681, 43.974400, 25.802032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519966, 44.302631, 25.747662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545250, 43.917854, 25.641329>,  <38.560421, 43.686989, 25.577530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545250, 43.917854, 25.641329>,  <38.519966, 44.302631, 25.747662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545250, 43.917854, 25.641329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664358, 0.239326, -0.708062,
		0.744737, -0.131852, 0.654203,
		0.063208, -0.961945, -0.265832,
		38.564213, 43.629272, 25.561579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124619, 44.321358, 25.495184>,  <38.519966, 44.302631, 25.747662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124619, 44.321358, 25.495184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.043392, 43.951752, 25.365589>,  <38.994656, 43.729988, 25.287832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.043392, 43.951752, 25.365589>,  <39.124619, 44.321358, 25.495184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043392, 43.951752, 25.365589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727330, 0.079183, -0.681705,
		0.655557, -0.374077, 0.655981,
		-0.203068, -0.924011, -0.323986,
		38.982471, 43.674549, 25.268393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733551, 43.927292, 25.548521>,  <39.124619, 44.321358, 25.495184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733551, 43.927292, 25.548521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496597, 43.764988, 25.270115>,  <39.354424, 43.667606, 25.103071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496597, 43.764988, 25.270115>,  <39.733551, 43.927292, 25.548521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496597, 43.764988, 25.270115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747596, 0.045164, -0.662616,
		0.300297, -0.912863, 0.276590,
		-0.592386, -0.405759, -0.696016,
		39.318882, 43.643261, 25.061310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059013, 43.327667, 25.272373>,  <39.733551, 43.927292, 25.548521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059013, 43.327667, 25.272373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.811302, 43.462090, 24.988523>,  <39.662678, 43.542744, 24.818214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.811302, 43.462090, 24.988523>,  <40.059013, 43.327667, 25.272373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811302, 43.462090, 24.988523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720628, -0.115588, -0.683619,
		-0.311758, -0.934722, -0.170590,
		-0.619276, 0.336055, -0.709623,
		39.625519, 43.562904, 24.775637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222897, 42.529369, 25.316902>,  <40.059013, 43.327667, 25.272373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222897, 42.529369, 25.316902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.545799, 42.378254, 25.498283>,  <40.739540, 42.287586, 25.607111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.545799, 42.378254, 25.498283>,  <40.222897, 42.529369, 25.316902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545799, 42.378254, 25.498283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547717, -0.193296, 0.814028,
		-0.219884, -0.905488, -0.362963,
		0.807253, -0.377793, 0.453449,
		40.787975, 42.264919, 25.634319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991318, 41.954494, 25.589977>,  <40.222897, 42.529369, 25.316902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991318, 41.954494, 25.589977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.327801, 42.019730, 25.796190>,  <40.529690, 42.058872, 25.919918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.327801, 42.019730, 25.796190>,  <39.991318, 41.954494, 25.589977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327801, 42.019730, 25.796190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450555, -0.315714, 0.835060,
		0.298948, -0.934734, -0.192101,
		0.841208, 0.163087, 0.515531,
		40.580162, 42.068657, 25.950850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992077, 41.418186, 25.983511>,  <39.991318, 41.954494, 25.589977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992077, 41.418186, 25.983511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.245949, 41.670822, 26.161623>,  <40.398273, 41.822403, 26.268490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.245949, 41.670822, 26.161623>,  <39.992077, 41.418186, 25.983511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245949, 41.670822, 26.161623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367733, -0.259950, 0.892860,
		0.679673, -0.730424, 0.067272,
		0.634679, 0.631591, 0.445282,
		40.436352, 41.860298, 26.295208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552357, 41.025600, 26.467430>,  <39.992077, 41.418186, 25.983511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552357, 41.025600, 26.467430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.489304, 41.405201, 26.576645>,  <40.451473, 41.632961, 26.642174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.489304, 41.405201, 26.576645>,  <40.552357, 41.025600, 26.467430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489304, 41.405201, 26.576645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338636, -0.311673, 0.887798,
		0.927620, 0.047483, 0.370494,
		-0.157628, 0.949002, 0.273035,
		40.442017, 41.689903, 26.658556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761086, 40.975986, 27.093225>,  <40.552357, 41.025600, 26.467430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761086, 40.975986, 27.093225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.555405, 41.319019, 27.098066>,  <40.431995, 41.524841, 27.100971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.555405, 41.319019, 27.098066>,  <40.761086, 40.975986, 27.093225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555405, 41.319019, 27.098066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360309, -0.228800, 0.904339,
		0.778315, 0.460651, 0.426645,
		-0.514201, 0.857585, 0.012101,
		40.401146, 41.576294, 27.101696>
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
