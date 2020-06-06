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
	<24.312332, 35.236092, 34.566540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479172, 35.218292, 34.929649>,  <24.579275, 35.207615, 35.147514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.479172, 35.218292, 34.929649>,  <24.312332, 35.236092, 34.566540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.479172, 35.218292, 34.929649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120429, 0.992699, -0.006675,
		-0.900847, 0.112106, 0.419413,
		0.417099, -0.044496, 0.907771,
		24.604301, 35.204945, 35.201981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149065, 35.836952, 34.780663>,  <24.312332, 35.236092, 34.566540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149065, 35.836952, 34.780663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452240, 35.695694, 35.000050>,  <24.634146, 35.610939, 35.131683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452240, 35.695694, 35.000050>,  <24.149065, 35.836952, 34.780663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452240, 35.695694, 35.000050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429525, 0.902973, -0.012162,
		-0.490958, 0.244799, 0.836082,
		0.757937, -0.353147, 0.548469,
		24.679621, 35.589748, 35.164589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436531, 36.414532, 34.998936>,  <24.149065, 35.836952, 34.780663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436531, 36.414532, 34.998936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715023, 36.170654, 35.150478>,  <24.882118, 36.024326, 35.241405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715023, 36.170654, 35.150478>,  <24.436531, 36.414532, 34.998936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715023, 36.170654, 35.150478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594646, 0.785517, 0.171347,
		-0.402069, 0.105989, 0.909454,
		0.696231, -0.609696, 0.378857,
		24.923893, 35.987747, 35.264137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799870, 36.837257, 35.431896>,  <24.436531, 36.414532, 34.998936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799870, 36.837257, 35.431896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059404, 36.544235, 35.349564>,  <25.215126, 36.368420, 35.300163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059404, 36.544235, 35.349564>,  <24.799870, 36.837257, 35.431896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059404, 36.544235, 35.349564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750446, 0.660786, 0.013866,
		0.125854, -0.163463, 0.978489,
		0.648839, -0.732558, -0.205832,
		25.254057, 36.324467, 35.287815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335411, 36.946953, 35.849510>,  <24.799870, 36.837257, 35.431896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335411, 36.946953, 35.849510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461239, 36.723629, 35.542439>,  <25.536736, 36.589634, 35.358196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461239, 36.723629, 35.542439>,  <25.335411, 36.946953, 35.849510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461239, 36.723629, 35.542439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664531, 0.707024, -0.241897,
		0.677823, -0.434053, 0.593426,
		0.314570, -0.558313, -0.767679,
		25.555611, 36.556133, 35.312134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001268, 36.967651, 35.892723>,  <25.335411, 36.946953, 35.849510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001268, 36.967651, 35.892723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874834, 36.892105, 35.520828>,  <25.798973, 36.846775, 35.297691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874834, 36.892105, 35.520828>,  <26.001268, 36.967651, 35.892723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874834, 36.892105, 35.520828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558781, 0.754912, -0.343324,
		0.766716, -0.628041, -0.133079,
		-0.316085, -0.188870, -0.929741,
		25.780008, 36.835445, 35.241905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611326, 37.129086, 35.516243>,  <26.001268, 36.967651, 35.892723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611326, 37.129086, 35.516243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297398, 37.140335, 35.268612>,  <26.109039, 37.147083, 35.120033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297398, 37.140335, 35.268612>,  <26.611326, 37.129086, 35.516243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297398, 37.140335, 35.268612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223742, 0.944450, -0.240738,
		0.577922, -0.327451, -0.747517,
		-0.784822, 0.028123, -0.619083,
		26.061951, 37.148773, 35.082886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852217, 37.405991, 34.862164>,  <26.611326, 37.129086, 35.516243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852217, 37.405991, 34.862164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456301, 37.459393, 34.882130>,  <26.218752, 37.491436, 34.894108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456301, 37.459393, 34.882130>,  <26.852217, 37.405991, 34.862164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456301, 37.459393, 34.882130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114740, 0.954084, -0.276692,
		-0.084562, -0.268139, -0.959662,
		-0.989790, 0.133509, 0.049913,
		26.159365, 37.499447, 34.897102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654383, 37.742630, 34.300903>,  <26.852217, 37.405991, 34.862164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654383, 37.742630, 34.300903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338701, 37.819805, 34.534119>,  <26.149292, 37.866112, 34.674049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338701, 37.819805, 34.534119>,  <26.654383, 37.742630, 34.300903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338701, 37.819805, 34.534119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026403, 0.959150, -0.281663,
		-0.613564, -0.206895, -0.762059,
		-0.789203, 0.192939, 0.583038,
		26.101940, 37.877686, 34.709030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176453, 38.090492, 33.950127>,  <26.654383, 37.742630, 34.300903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176453, 38.090492, 33.950127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063660, 38.197899, 34.318558>,  <25.995983, 38.262344, 34.539616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063660, 38.197899, 34.318558>,  <26.176453, 38.090492, 33.950127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063660, 38.197899, 34.318558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061255, 0.963117, -0.262020,
		-0.957462, -0.017464, -0.288031,
		-0.281984, 0.268517, 0.921077,
		25.979065, 38.278454, 34.594879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541321, 38.459400, 33.840813>,  <26.176453, 38.090492, 33.950127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541321, 38.459400, 33.840813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741186, 38.553677, 34.174229>,  <25.861105, 38.610241, 34.374279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741186, 38.553677, 34.174229>,  <25.541321, 38.459400, 33.840813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741186, 38.553677, 34.174229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003390, 0.962796, -0.270207,
		-0.866213, 0.132187, 0.481872,
		0.499663, 0.235691, 0.833539,
		25.891085, 38.624382, 34.424290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225544, 39.052177, 34.185055>,  <25.541321, 38.459400, 33.840813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225544, 39.052177, 34.185055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617378, 39.017776, 34.257736>,  <25.852478, 38.997135, 34.301346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617378, 39.017776, 34.257736>,  <25.225544, 39.052177, 34.185055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617378, 39.017776, 34.257736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097213, 0.993814, -0.053698,
		-0.175962, 0.070266, 0.981886,
		0.979585, -0.086003, 0.181704,
		25.911253, 38.991974, 34.312248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307333, 39.383595, 34.823647>,  <25.225544, 39.052177, 34.185055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307333, 39.383595, 34.823647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637983, 39.366226, 34.599216>,  <25.836374, 39.355804, 34.464558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637983, 39.366226, 34.599216>,  <25.307333, 39.383595, 34.823647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637983, 39.366226, 34.599216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023732, 0.998822, -0.042328,
		0.562250, 0.021674, 0.826683,
		0.826627, -0.043418, -0.561073,
		25.885971, 39.353199, 34.430893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966303, 39.707569, 35.001503>,  <25.307333, 39.383595, 34.823647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966303, 39.707569, 35.001503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935011, 39.682308, 34.603531>,  <25.916237, 39.667152, 34.364746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935011, 39.682308, 34.603531>,  <25.966303, 39.707569, 35.001503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935011, 39.682308, 34.603531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041053, 0.996941, -0.066509,
		0.996090, -0.046047, -0.075397,
		-0.078229, -0.063153, -0.994933,
		25.911543, 39.663361, 34.305050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562798, 39.941372, 34.692825>,  <25.966303, 39.707569, 35.001503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562798, 39.941372, 34.692825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206026, 39.993206, 34.519543>,  <25.991962, 40.024307, 34.415573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206026, 39.993206, 34.519543>,  <26.562798, 39.941372, 34.692825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206026, 39.993206, 34.519543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053737, 0.981645, 0.182990,
		0.448968, 0.139935, -0.882522,
		-0.891931, 0.129581, -0.433207,
		25.938446, 40.032082, 34.389580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664104, 39.314114, 35.108212>,  <26.562798, 39.941372, 34.692825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664104, 39.314114, 35.108212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297352, 39.229053, 34.973091>,  <26.077301, 39.178017, 34.892021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297352, 39.229053, 34.973091>,  <26.664104, 39.314114, 35.108212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297352, 39.229053, 34.973091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060839, -0.910835, 0.408262,
		-0.394497, 0.353776, 0.848065,
		-0.916881, -0.212654, -0.337798,
		26.022287, 39.165257, 34.871750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216759, 39.038448, 35.609974>,  <26.664104, 39.314114, 35.108212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216759, 39.038448, 35.609974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077574, 38.917641, 35.254963>,  <25.994062, 38.845158, 35.041958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077574, 38.917641, 35.254963>,  <26.216759, 39.038448, 35.609974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077574, 38.917641, 35.254963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178127, -0.950743, 0.253692,
		-0.920430, -0.069817, 0.384621,
		-0.347964, -0.302017, -0.887529,
		25.973185, 38.827034, 34.988705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594915, 38.565479, 35.778709>,  <26.216759, 39.038448, 35.609974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594915, 38.565479, 35.778709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721926, 38.474987, 35.410362>,  <25.798132, 38.420692, 35.189354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721926, 38.474987, 35.410362>,  <25.594915, 38.565479, 35.778709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721926, 38.474987, 35.410362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173556, -0.968585, 0.178107,
		-0.932232, 0.103269, -0.346813,
		0.317525, -0.226229, -0.920868,
		25.817183, 38.407120, 35.134102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040661, 38.109528, 35.463295>,  <25.594915, 38.565479, 35.778709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040661, 38.109528, 35.463295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356560, 38.041302, 35.227596>,  <25.546099, 38.000366, 35.086178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356560, 38.041302, 35.227596>,  <25.040661, 38.109528, 35.463295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356560, 38.041302, 35.227596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227554, -0.973489, -0.023201,
		-0.569667, 0.152408, -0.807621,
		0.789746, -0.170560, -0.589246,
		25.593483, 37.990135, 35.050823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831532, 37.699295, 34.948605>,  <25.040661, 38.109528, 35.463295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831532, 37.699295, 34.948605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226473, 37.636906, 34.937271>,  <25.463438, 37.599472, 34.930473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226473, 37.636906, 34.937271>,  <24.831532, 37.699295, 34.948605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226473, 37.636906, 34.937271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155815, -0.987757, 0.007594,
		-0.029169, -0.003083, -0.999570,
		0.987355, -0.155970, -0.028331,
		25.522680, 37.590115, 34.928772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390800, 37.846558, 34.520241>,  <24.831532, 37.699295, 34.948605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390800, 37.846558, 34.520241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714836, 37.612610, 34.536671>,  <25.909258, 37.472240, 34.546528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714836, 37.612610, 34.536671>,  <25.390800, 37.846558, 34.520241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714836, 37.612610, 34.536671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559679, -0.750518, 0.351400,
		-0.174694, -0.307655, -0.935324,
		0.810087, -0.584868, 0.041077,
		25.957863, 37.437149, 34.548992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199074, 37.222851, 34.108929>,  <25.390800, 37.846558, 34.520241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199074, 37.222851, 34.108929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485836, 37.167362, 34.382221>,  <25.657894, 37.134071, 34.546196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485836, 37.167362, 34.382221>,  <25.199074, 37.222851, 34.108929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485836, 37.167362, 34.382221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443563, -0.846825, 0.293494,
		0.537862, -0.513463, -0.668626,
		0.716908, -0.138718, 0.683228,
		25.700909, 37.125748, 34.587189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581009, 36.667671, 33.964615>,  <25.199074, 37.222851, 34.108929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581009, 36.667671, 33.964615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628531, 36.690216, 34.361141>,  <25.657043, 36.703743, 34.599056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628531, 36.690216, 34.361141>,  <25.581009, 36.667671, 33.964615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628531, 36.690216, 34.361141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381504, -0.919160, 0.097979,
		0.916701, -0.389831, -0.087698,
		0.118804, 0.056360, 0.991317,
		25.664171, 36.707123, 34.658535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319214, 36.488556, 34.138695>,  <25.581009, 36.667671, 33.964615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319214, 36.488556, 34.138695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294619, 36.486328, 34.537933>,  <26.279861, 36.484993, 34.777477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294619, 36.486328, 34.537933>,  <26.319214, 36.488556, 34.138695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294619, 36.486328, 34.537933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750817, -0.658621, -0.049929,
		0.657642, -0.752454, 0.036319,
		-0.061490, -0.005566, 0.998092,
		26.276171, 36.484657, 34.837360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038204, 35.840912, 34.333115>,  <26.319214, 36.488556, 34.138695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038204, 35.840912, 34.333115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934484, 36.048393, 34.658989>,  <25.872253, 36.172882, 34.854515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934484, 36.048393, 34.658989>,  <26.038204, 35.840912, 34.333115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934484, 36.048393, 34.658989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724840, -0.661977, 0.190770,
		0.638257, -0.541051, 0.547623,
		-0.259298, 0.518700, 0.814687,
		25.856695, 36.204002, 34.903397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067163, 35.368019, 34.894314>,  <26.038204, 35.840912, 34.333115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067163, 35.368019, 34.894314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815863, 35.655468, 35.013561>,  <25.665081, 35.827938, 35.085110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815863, 35.655468, 35.013561>,  <26.067163, 35.368019, 34.894314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815863, 35.655468, 35.013561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700046, -0.689341, 0.186401,
		0.339459, -0.091592, 0.936151,
		-0.628254, 0.718624, 0.298122,
		25.627386, 35.871056, 35.102997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872225, 35.175892, 35.539616>,  <26.067163, 35.368019, 34.894314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872225, 35.175892, 35.539616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588858, 35.433254, 35.423569>,  <25.418837, 35.587673, 35.353939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588858, 35.433254, 35.423569>,  <25.872225, 35.175892, 35.539616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588858, 35.433254, 35.423569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694781, -0.708051, 0.126267,
		-0.124180, 0.291021, 0.948623,
		-0.708420, 0.643406, -0.290121,
		25.376331, 35.626278, 35.336533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630726, 34.913326, 35.809410>,  <25.872225, 35.175892, 35.539616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630726, 34.913326, 35.809410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003592, 35.056423, 35.831669>,  <27.227310, 35.142281, 35.845024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003592, 35.056423, 35.831669>,  <26.630726, 34.913326, 35.809410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003592, 35.056423, 35.831669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038678, 0.251219, -0.967157,
		-0.359968, 0.899396, 0.248013,
		0.932163, 0.357738, 0.055644,
		27.283241, 35.163746, 35.848362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769096, 34.485394, 36.363453>,  <26.630726, 34.913326, 35.809410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769096, 34.485394, 36.363453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128504, 34.491043, 36.187969>,  <27.344149, 34.494434, 36.082680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128504, 34.491043, 36.187969>,  <26.769096, 34.485394, 36.363453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128504, 34.491043, 36.187969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349210, 0.582524, 0.733974,
		0.265925, -0.812691, 0.518476,
		0.898519, 0.014125, -0.438707,
		27.398060, 34.495281, 36.056358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144510, 34.272472, 36.908714>,  <26.769096, 34.485394, 36.363453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144510, 34.272472, 36.908714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388346, 34.446762, 36.643826>,  <27.534647, 34.551334, 36.484890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388346, 34.446762, 36.643826>,  <27.144510, 34.272472, 36.908714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388346, 34.446762, 36.643826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414420, 0.536972, 0.734791,
		0.675764, -0.722360, 0.146758,
		0.609589, 0.435726, -0.662227,
		27.571222, 34.577480, 36.445156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779825, 34.233135, 37.289494>,  <27.144510, 34.272472, 36.908714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779825, 34.233135, 37.289494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830221, 34.502697, 36.998295>,  <27.860458, 34.664436, 36.823578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830221, 34.502697, 36.998295>,  <27.779825, 34.233135, 37.289494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830221, 34.502697, 36.998295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439225, 0.620099, 0.650045,
		0.889499, -0.401651, -0.217872,
		0.125989, 0.673909, -0.727993,
		27.868017, 34.704868, 36.779896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446381, 34.418091, 37.342407>,  <27.779825, 34.233135, 37.289494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446381, 34.418091, 37.342407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276316, 34.718948, 37.141006>,  <28.174276, 34.899464, 37.020168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276316, 34.718948, 37.141006>,  <28.446381, 34.418091, 37.342407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276316, 34.718948, 37.141006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389070, 0.654136, 0.648638,
		0.817229, 0.079879, -0.570751,
		-0.425161, 0.752148, -0.503500,
		28.148767, 34.944592, 36.989956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924595, 34.958920, 37.238159>,  <28.446381, 34.418091, 37.342407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924595, 34.958920, 37.238159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583786, 35.165890, 37.206322>,  <28.379301, 35.290070, 37.187218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583786, 35.165890, 37.206322>,  <28.924595, 34.958920, 37.238159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583786, 35.165890, 37.206322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375310, 0.709721, 0.596186,
		0.364971, 0.478089, -0.798891,
		-0.852020, 0.517423, -0.079596,
		28.328180, 35.321117, 37.182442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074207, 35.683704, 37.108883>,  <28.924595, 34.958920, 37.238159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074207, 35.683704, 37.108883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716690, 35.653721, 37.285751>,  <28.502180, 35.635731, 37.391872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716690, 35.653721, 37.285751>,  <29.074207, 35.683704, 37.108883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716690, 35.653721, 37.285751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252094, 0.731460, 0.633573,
		-0.370918, 0.677752, -0.634879,
		-0.893794, -0.074954, 0.442169,
		28.448551, 35.631233, 37.418404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508713, 36.068020, 36.728451>,  <29.074207, 35.683704, 37.108883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508713, 36.068020, 36.728451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223099, 36.012299, 37.002895>,  <28.051729, 35.978867, 37.167561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223099, 36.012299, 37.002895>,  <28.508713, 36.068020, 36.728451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223099, 36.012299, 37.002895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544549, 0.505431, 0.669332,
		-0.440021, 0.851548, -0.285039,
		-0.714036, -0.139302, 0.686110,
		28.008888, 35.970509, 37.208729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293364, 36.772587, 36.985931>,  <28.508713, 36.068020, 36.728451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293364, 36.772587, 36.985931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213331, 36.510014, 37.276878>,  <28.165312, 36.352470, 37.451447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213331, 36.510014, 37.276878>,  <28.293364, 36.772587, 36.985931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213331, 36.510014, 37.276878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508790, 0.564823, 0.649698,
		-0.837318, 0.500067, 0.220978,
		-0.200079, -0.656436, 0.727365,
		28.153307, 36.313084, 37.495087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948969, 37.129005, 37.577621>,  <28.293364, 36.772587, 36.985931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948969, 37.129005, 37.577621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049606, 36.796040, 37.775120>,  <28.109989, 36.596260, 37.893620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049606, 36.796040, 37.775120>,  <27.948969, 37.129005, 37.577621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049606, 36.796040, 37.775120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415376, 0.553658, 0.721752,
		-0.874164, 0.023503, 0.485062,
		0.251595, -0.832412, 0.493750,
		28.125084, 36.546314, 37.923244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617500, 37.154366, 38.203793>,  <27.948969, 37.129005, 37.577621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617500, 37.154366, 38.203793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949430, 36.934589, 38.242794>,  <28.148588, 36.802723, 38.266193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949430, 36.934589, 38.242794>,  <27.617500, 37.154366, 38.203793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949430, 36.934589, 38.242794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239893, 0.509012, 0.826655,
		-0.503827, -0.662588, 0.554198,
		0.829825, -0.549439, 0.097503,
		28.198378, 36.769756, 38.272045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697582, 36.813225, 38.861591>,  <27.617500, 37.154366, 38.203793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697582, 36.813225, 38.861591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063366, 36.885494, 38.716751>,  <28.282837, 36.928856, 38.629848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063366, 36.885494, 38.716751>,  <27.697582, 36.813225, 38.861591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063366, 36.885494, 38.716751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273484, 0.383612, 0.882070,
		0.298272, -0.905648, 0.301388,
		0.914462, 0.180673, -0.362101,
		28.337704, 36.939697, 38.608120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171841, 36.858582, 39.538914>,  <27.697582, 36.813225, 38.861591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171841, 36.858582, 39.538914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377424, 37.008286, 39.230167>,  <28.500774, 37.098106, 39.044922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377424, 37.008286, 39.230167>,  <28.171841, 36.858582, 39.538914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377424, 37.008286, 39.230167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600692, 0.485335, 0.635311,
		0.612384, -0.790177, 0.024628,
		0.513961, 0.374260, -0.771864,
		28.531612, 37.120564, 38.998608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951159, 36.862511, 39.760010>,  <28.171841, 36.858582, 39.538914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951159, 36.862511, 39.760010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860186, 37.137520, 39.484161>,  <28.805601, 37.302525, 39.318653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860186, 37.137520, 39.484161>,  <28.951159, 36.862511, 39.760010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860186, 37.137520, 39.484161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651306, 0.633870, 0.417145,
		0.723930, -0.354285, -0.591952,
		-0.227433, 0.687526, -0.689625,
		28.791956, 37.343777, 39.277275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535469, 36.965172, 39.326401>,  <28.951159, 36.862511, 39.760010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535469, 36.965172, 39.326401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297707, 37.286243, 39.345936>,  <29.155048, 37.478886, 39.357658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297707, 37.286243, 39.345936>,  <29.535469, 36.965172, 39.326401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297707, 37.286243, 39.345936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792633, 0.574555, 0.204007,
		0.135689, 0.159978, -0.977750,
		-0.594408, 0.802679, 0.048842,
		29.119385, 37.527046, 39.360588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373926, 36.425087, 38.758244>,  <29.535469, 36.965172, 39.326401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373926, 36.425087, 38.758244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974190, 36.412682, 38.765743>,  <28.734348, 36.405239, 38.770241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974190, 36.412682, 38.765743>,  <29.373926, 36.425087, 38.758244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974190, 36.412682, 38.765743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011071, -0.231263, -0.972828,
		0.034512, -0.972397, 0.230768,
		-0.999343, -0.031019, 0.018747,
		28.674387, 36.403378, 38.771366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125029, 35.854115, 38.422344>,  <29.373926, 36.425087, 38.758244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125029, 35.854115, 38.422344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807331, 36.096783, 38.408943>,  <28.616713, 36.242386, 38.400902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807331, 36.096783, 38.408943>,  <29.125029, 35.854115, 38.422344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807331, 36.096783, 38.408943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371823, -0.528909, -0.762891,
		-0.480542, -0.593468, 0.645659,
		-0.794246, 0.606672, -0.033498,
		28.569057, 36.278786, 38.398891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396980, 35.526833, 38.613457>,  <29.125029, 35.854115, 38.422344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396980, 35.526833, 38.613457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311245, 35.849190, 38.392696>,  <28.259804, 36.042603, 38.260239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311245, 35.849190, 38.392696>,  <28.396980, 35.526833, 38.613457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311245, 35.849190, 38.392696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351138, -0.590832, -0.726374,
		-0.911461, 0.038102, 0.409619,
		-0.214340, 0.805894, -0.551900,
		28.246943, 36.090958, 38.227127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787783, 35.417877, 38.397442>,  <28.396980, 35.526833, 38.613457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787783, 35.417877, 38.397442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954180, 35.664906, 38.130444>,  <28.054018, 35.813122, 37.970245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954180, 35.664906, 38.130444>,  <27.787783, 35.417877, 38.397442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954180, 35.664906, 38.130444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377135, -0.550763, -0.744600,
		-0.827479, 0.561484, 0.003796,
		0.415990, 0.617572, -0.667500,
		28.078978, 35.850178, 37.930195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304043, 35.530132, 37.926243>,  <27.787783, 35.417877, 38.397442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304043, 35.530132, 37.926243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648857, 35.618256, 37.743656>,  <27.855745, 35.671131, 37.634106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648857, 35.618256, 37.743656>,  <27.304043, 35.530132, 37.926243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648857, 35.618256, 37.743656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341431, -0.413188, -0.844216,
		-0.374596, 0.883594, -0.280961,
		0.862034, 0.220311, -0.456465,
		27.907467, 35.684349, 37.606716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160109, 35.855686, 37.258064>,  <27.304043, 35.530132, 37.926243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160109, 35.855686, 37.258064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521246, 35.686546, 37.226887>,  <27.737928, 35.585064, 37.208179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521246, 35.686546, 37.226887>,  <27.160109, 35.855686, 37.258064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521246, 35.686546, 37.226887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273800, -0.425614, -0.862488,
		0.331525, 0.800033, -0.500038,
		0.902842, -0.422847, -0.077947,
		27.792099, 35.559692, 37.203503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361429, 35.851910, 36.481594>,  <27.160109, 35.855686, 37.258064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361429, 35.851910, 36.481594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584791, 35.575317, 36.664913>,  <27.718809, 35.409363, 36.774902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584791, 35.575317, 36.664913>,  <27.361429, 35.851910, 36.481594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584791, 35.575317, 36.664913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036917, -0.572618, -0.818991,
		0.828745, 0.440411, -0.345281,
		0.558407, -0.691481, 0.458296,
		27.752314, 35.367874, 36.802402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943798, 35.778481, 36.045547>,  <27.361429, 35.851910, 36.481594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943798, 35.778481, 36.045547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879961, 35.448097, 36.261814>,  <27.841660, 35.249866, 36.391575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879961, 35.448097, 36.261814>,  <27.943798, 35.778481, 36.045547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879961, 35.448097, 36.261814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188797, -0.512043, -0.837955,
		0.968961, -0.235808, -0.074220,
		-0.159593, -0.825958, 0.540670,
		27.832083, 35.200310, 36.424015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490095, 35.360092, 35.762878>,  <27.943798, 35.778481, 36.045547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490095, 35.360092, 35.762878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211246, 35.117290, 35.915493>,  <28.043938, 34.971611, 36.007061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211246, 35.117290, 35.915493>,  <28.490095, 35.360092, 35.762878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211246, 35.117290, 35.915493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017774, -0.517364, -0.855581,
		0.716732, -0.603225, 0.349877,
		-0.697122, -0.607004, 0.381534,
		28.002110, 34.935188, 36.029953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688110, 34.628853, 35.587822>,  <28.490095, 35.360092, 35.762878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688110, 34.628853, 35.587822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301657, 34.560860, 35.665474>,  <28.069784, 34.520065, 35.712067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301657, 34.560860, 35.665474>,  <28.688110, 34.628853, 35.587822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301657, 34.560860, 35.665474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007202, -0.734300, -0.678787,
		0.257933, -0.657199, 0.708209,
		-0.966136, -0.169981, 0.194133,
		28.011816, 34.509865, 35.723713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562473, 33.896816, 35.845417>,  <28.688110, 34.628853, 35.587822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562473, 33.896816, 35.845417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265347, 34.045387, 35.622612>,  <28.087070, 34.134529, 35.488930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265347, 34.045387, 35.622612>,  <28.562473, 33.896816, 35.845417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265347, 34.045387, 35.622612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122111, -0.742868, -0.658206,
		-0.658265, -0.556944, 0.506460,
		-0.742817, 0.371430, -0.557013,
		28.042501, 34.156818, 35.455509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166990, 33.233849, 35.640244>,  <28.562473, 33.896816, 35.845417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166990, 33.233849, 35.640244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160444, 33.554653, 35.401413>,  <28.156517, 33.747135, 35.258114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160444, 33.554653, 35.401413>,  <28.166990, 33.233849, 35.640244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160444, 33.554653, 35.401413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264106, -0.572482, -0.776216,
		-0.964355, -0.170396, -0.202448,
		-0.016366, 0.802016, -0.597079,
		28.155535, 33.795258, 35.222290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962805, 32.930870, 34.969631>,  <28.166990, 33.233849, 35.640244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962805, 32.930870, 34.969631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165638, 33.274399, 34.940506>,  <28.287338, 33.480515, 34.923031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165638, 33.274399, 34.940506>,  <27.962805, 32.930870, 34.969631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165638, 33.274399, 34.940506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453006, -0.337433, -0.825181,
		-0.733249, 0.385450, -0.560156,
		0.507081, 0.858817, -0.072811,
		28.317762, 33.532043, 34.918663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857704, 32.413139, 34.449059>,  <27.962805, 32.930870, 34.969631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857704, 32.413139, 34.449059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556358, 32.437500, 34.187149>,  <27.375551, 32.452114, 34.030003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556358, 32.437500, 34.187149>,  <27.857704, 32.413139, 34.449059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556358, 32.437500, 34.187149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102380, -0.972700, -0.208263,
		-0.649584, -0.223934, 0.726564,
		-0.753365, 0.060898, -0.654777,
		27.330349, 32.455769, 33.990715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305325, 31.721088, 34.679924>,  <27.857704, 32.413139, 34.449059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305325, 31.721088, 34.679924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174618, 31.552170, 34.341721>,  <28.096193, 31.450819, 34.138798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174618, 31.552170, 34.341721>,  <28.305325, 31.721088, 34.679924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174618, 31.552170, 34.341721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712712, -0.697648, 0.073001,
		-0.620698, -0.578751, 0.528944,
		-0.326767, -0.422296, -0.845511,
		28.076588, 31.425482, 34.088066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248087, 30.946402, 34.771557>,  <28.305325, 31.721088, 34.679924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248087, 30.946402, 34.771557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308695, 31.024500, 34.383965>,  <28.345060, 31.071360, 34.151409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308695, 31.024500, 34.383965>,  <28.248087, 30.946402, 34.771557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308695, 31.024500, 34.383965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662596, -0.747501, -0.047009,
		-0.733491, -0.634918, -0.242631,
		0.151520, 0.195247, -0.968979,
		28.354151, 31.083075, 34.093269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319250, 30.328007, 34.408314>,  <28.248087, 30.946402, 34.771557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319250, 30.328007, 34.408314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528711, 30.634293, 34.258934>,  <28.654388, 30.818064, 34.169308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528711, 30.634293, 34.258934>,  <28.319250, 30.328007, 34.408314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528711, 30.634293, 34.258934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831072, -0.555545, 0.026255,
		-0.187364, -0.324113, -0.927278,
		0.523654, 0.765716, -0.373451,
		28.685808, 30.864008, 34.146900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685347, 30.025993, 33.810062>,  <28.319250, 30.328007, 34.408314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685347, 30.025993, 33.810062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855242, 30.351004, 33.969761>,  <28.957178, 30.546011, 34.065582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855242, 30.351004, 33.969761>,  <28.685347, 30.025993, 33.810062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855242, 30.351004, 33.969761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904762, -0.396414, -0.155763,
		0.031706, 0.427383, -0.903515,
		0.424737, 0.812527, 0.399248,
		28.982662, 30.594761, 34.089535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113634, 30.543926, 33.309200>,  <28.685347, 30.025993, 33.810062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113634, 30.543926, 33.309200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264725, 30.536449, 33.679493>,  <29.355379, 30.531963, 33.901669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264725, 30.536449, 33.679493>,  <29.113634, 30.543926, 33.309200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264725, 30.536449, 33.679493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860703, -0.361488, -0.358492,
		0.341341, 0.932189, -0.120455,
		0.377726, -0.018692, 0.925729,
		29.378042, 30.530842, 33.957211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806099, 30.673597, 33.267258>,  <29.113634, 30.543926, 33.309200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806099, 30.673597, 33.267258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818724, 30.483532, 33.618992>,  <29.826300, 30.369493, 33.830032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818724, 30.483532, 33.618992>,  <29.806099, 30.673597, 33.267258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818724, 30.483532, 33.618992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912851, -0.344603, -0.218979,
		0.407071, 0.809611, 0.422876,
		0.031563, -0.475162, 0.879332,
		29.828192, 30.340982, 33.882790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368460, 30.931168, 33.864216>,  <29.806099, 30.673597, 33.267258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368460, 30.931168, 33.864216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306171, 30.536840, 33.839180>,  <30.268799, 30.300245, 33.824158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306171, 30.536840, 33.839180>,  <30.368460, 30.931168, 33.864216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306171, 30.536840, 33.839180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983131, -0.148520, -0.106747,
		0.095938, -0.078153, 0.992315,
		-0.155721, -0.985816, -0.062586,
		30.259455, 30.241095, 33.820404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997046, 30.588280, 33.772083>,  <30.368460, 30.931168, 33.864216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997046, 30.588280, 33.772083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792475, 30.250393, 33.708965>,  <30.669733, 30.047661, 33.671093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792475, 30.250393, 33.708965>,  <30.997046, 30.588280, 33.772083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792475, 30.250393, 33.708965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850376, -0.471055, -0.234454,
		0.123718, -0.254090, 0.959235,
		-0.511425, -0.844716, -0.157794,
		30.639048, 29.996979, 33.661629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436487, 30.113916, 34.008621>,  <30.997046, 30.588280, 33.772083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436487, 30.113916, 34.008621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199310, 29.901859, 33.766178>,  <31.057003, 29.774624, 33.620712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199310, 29.901859, 33.766178>,  <31.436487, 30.113916, 34.008621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199310, 29.901859, 33.766178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802632, -0.449680, -0.391880,
		-0.064801, -0.718843, 0.692145,
		-0.592944, -0.530144, -0.606106,
		31.021427, 29.742817, 33.584347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553638, 29.409063, 34.025047>,  <31.436487, 30.113916, 34.008621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553638, 29.409063, 34.025047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444727, 29.487303, 33.648197>,  <31.379379, 29.534246, 33.422085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444727, 29.487303, 33.648197>,  <31.553638, 29.409063, 34.025047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444727, 29.487303, 33.648197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845702, -0.418386, -0.331273,
		-0.458970, -0.886958, -0.051502,
		-0.272278, 0.195600, -0.942128,
		31.363043, 29.545982, 33.365559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715252, 28.733372, 33.631397>,  <31.553638, 29.409063, 34.025047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715252, 28.733372, 33.631397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693214, 29.062630, 33.405334>,  <31.679991, 29.260183, 33.269699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693214, 29.062630, 33.405334>,  <31.715252, 28.733372, 33.631397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693214, 29.062630, 33.405334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816622, -0.288543, -0.499872,
		-0.574537, -0.489059, -0.656299,
		-0.055096, 0.823143, -0.565155,
		31.676685, 29.309572, 33.235786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702267, 28.617508, 32.970161>,  <31.715252, 28.733372, 33.631397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702267, 28.617508, 32.970161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822218, 28.998869, 32.956924>,  <31.894190, 29.227686, 32.948982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822218, 28.998869, 32.956924>,  <31.702267, 28.617508, 32.970161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822218, 28.998869, 32.956924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816569, -0.274466, -0.507822,
		-0.493241, 0.125264, -0.860826,
		0.299880, 0.953403, -0.033091,
		31.912182, 29.284889, 32.946999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795122, 28.836599, 32.245438>,  <31.702267, 28.617508, 32.970161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795122, 28.836599, 32.245438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021145, 29.066830, 32.481884>,  <32.156757, 29.204967, 32.623753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021145, 29.066830, 32.481884>,  <31.795122, 28.836599, 32.245438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021145, 29.066830, 32.481884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792473, -0.179287, -0.582961,
		-0.229558, 0.797852, -0.557436,
		0.565057, 0.575576, 0.591119,
		32.190662, 29.239502, 32.659218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049950, 29.245867, 31.728361>,  <31.795122, 28.836599, 32.245438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049950, 29.245867, 31.728361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294827, 29.260015, 32.044327>,  <32.441753, 29.268505, 32.233906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294827, 29.260015, 32.044327>,  <32.049950, 29.245867, 31.728361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294827, 29.260015, 32.044327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789933, -0.071551, -0.609005,
		0.034977, 0.996809, -0.071746,
		0.612195, 0.035373, 0.789915,
		32.478485, 29.270628, 32.281300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542202, 29.605419, 31.494473>,  <32.049950, 29.245867, 31.728361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542202, 29.605419, 31.494473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725235, 29.462431, 31.820131>,  <32.835056, 29.376638, 32.015526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725235, 29.462431, 31.820131>,  <32.542202, 29.605419, 31.494473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725235, 29.462431, 31.820131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882455, 0.070283, -0.465117,
		0.109044, 0.931277, 0.347610,
		0.457583, -0.357468, 0.814146,
		32.862511, 29.355190, 32.064377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156979, 30.012863, 31.579636>,  <32.542202, 29.605419, 31.494473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156979, 30.012863, 31.579636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206295, 29.678619, 31.793760>,  <33.235886, 29.478073, 31.922235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206295, 29.678619, 31.793760>,  <33.156979, 30.012863, 31.579636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206295, 29.678619, 31.793760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961744, -0.032365, -0.272030,
		0.244636, 0.548373, 0.799650,
		0.123294, -0.835607, 0.535313,
		33.243282, 29.427937, 31.954353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766560, 30.124887, 31.917822>,  <33.156979, 30.012863, 31.579636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766560, 30.124887, 31.917822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704243, 29.729933, 31.906540>,  <33.666851, 29.492960, 31.899771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704243, 29.729933, 31.906540>,  <33.766560, 30.124887, 31.917822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704243, 29.729933, 31.906540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971779, -0.148088, -0.183617,
		0.177125, -0.056014, 0.982593,
		-0.155795, -0.987387, -0.028204,
		33.657505, 29.433716, 31.898079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281437, 29.837376, 32.338024>,  <33.766560, 30.124887, 31.917822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281437, 29.837376, 32.338024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141949, 29.568039, 32.077255>,  <34.058254, 29.406437, 31.920794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141949, 29.568039, 32.077255>,  <34.281437, 29.837376, 32.338024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141949, 29.568039, 32.077255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919734, -0.379621, -0.099883,
		-0.180228, -0.634428, 0.751678,
		-0.348721, -0.673342, -0.651924,
		34.037331, 29.366035, 31.881678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736618, 29.345457, 32.333328>,  <34.281437, 29.837376, 32.338024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736618, 29.345457, 32.333328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563435, 29.182535, 32.011669>,  <34.459522, 29.084782, 31.818674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563435, 29.182535, 32.011669>,  <34.736618, 29.345457, 32.333328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563435, 29.182535, 32.011669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806630, -0.573262, -0.143938,
		-0.402359, -0.710966, 0.576745,
		-0.432961, -0.407305, -0.804144,
		34.433548, 29.060343, 31.770426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846699, 28.638229, 32.301552>,  <34.736618, 29.345457, 32.333328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846699, 28.638229, 32.301552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782967, 28.742620, 31.920712>,  <34.744728, 28.805256, 31.692205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782967, 28.742620, 31.920712>,  <34.846699, 28.638229, 32.301552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782967, 28.742620, 31.920712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838559, -0.473184, -0.270030,
		-0.520993, -0.841420, -0.143456,
		-0.159328, 0.260980, -0.952105,
		34.735168, 28.820915, 31.635080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807529, 27.988422, 32.054676>,  <34.846699, 28.638229, 32.301552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807529, 27.988422, 32.054676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887745, 28.256968, 31.769285>,  <34.935875, 28.418095, 31.598049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887745, 28.256968, 31.769285>,  <34.807529, 27.988422, 32.054676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887745, 28.256968, 31.769285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676901, -0.621435, -0.394491,
		-0.708229, -0.403845, -0.579069,
		0.200540, 0.671363, -0.713481,
		34.947906, 28.458376, 31.555241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870590, 27.544142, 31.506567>,  <34.807529, 27.988422, 32.054676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870590, 27.544142, 31.506567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052402, 27.884924, 31.402588>,  <35.161491, 28.089394, 31.340200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052402, 27.884924, 31.402588>,  <34.870590, 27.544142, 31.506567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052402, 27.884924, 31.402588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825974, -0.512380, -0.235019,
		-0.333417, -0.107886, -0.936586,
		0.454532, 0.851955, -0.259947,
		35.188763, 28.140511, 31.324604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147781, 27.450079, 30.869928>,  <34.870590, 27.544142, 31.506567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147781, 27.450079, 30.869928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383198, 27.754086, 30.980198>,  <35.524448, 27.936489, 31.046360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383198, 27.754086, 30.980198>,  <35.147781, 27.450079, 30.869928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383198, 27.754086, 30.980198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737746, -0.365391, -0.567645,
		-0.330691, 0.537458, -0.775746,
		0.588537, 0.760018, 0.275676,
		35.559757, 27.982092, 31.062901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666950, 27.487410, 30.330036>,  <35.147781, 27.450079, 30.869928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666950, 27.487410, 30.330036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820255, 27.728567, 30.609930>,  <35.912239, 27.873262, 30.777866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820255, 27.728567, 30.609930>,  <35.666950, 27.487410, 30.330036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820255, 27.728567, 30.609930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905537, -0.096010, -0.413261,
		-0.181971, 0.792023, -0.582739,
		0.383261, 0.602894, 0.699736,
		35.935234, 27.909435, 30.819851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891529, 28.021917, 30.043427>,  <35.666950, 27.487410, 30.330036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891529, 28.021917, 30.043427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117302, 28.027288, 30.373573>,  <36.252766, 28.030512, 30.571661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117302, 28.027288, 30.373573>,  <35.891529, 28.021917, 30.043427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117302, 28.027288, 30.373573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820076, 0.105075, -0.562526,
		-0.094278, 0.994374, 0.048297,
		0.564435, 0.013427, 0.825368,
		36.286633, 28.031317, 30.621183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360336, 28.404928, 29.961264>,  <35.891529, 28.021917, 30.043427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360336, 28.404928, 29.961264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536907, 28.200766, 30.256458>,  <36.642849, 28.078268, 30.433575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536907, 28.200766, 30.256458>,  <36.360336, 28.404928, 29.961264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536907, 28.200766, 30.256458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859080, 0.002937, -0.511833,
		0.259076, 0.859928, 0.439777,
		0.441431, -0.510407, 0.737986,
		36.669338, 28.047644, 30.477854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990959, 28.744486, 29.960018>,  <36.360336, 28.404928, 29.961264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990959, 28.744486, 29.960018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009941, 28.388731, 30.141891>,  <37.021332, 28.175278, 30.251017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009941, 28.388731, 30.141891>,  <36.990959, 28.744486, 29.960018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009941, 28.388731, 30.141891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858442, -0.196421, -0.473811,
		0.510711, 0.412806, 0.754165,
		0.047458, -0.889387, 0.454684,
		37.024178, 28.121914, 30.278297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546707, 28.724400, 30.311489>,  <36.990959, 28.744486, 29.960018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546707, 28.724400, 30.311489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457817, 28.336195, 30.274128>,  <37.404484, 28.103273, 30.251711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457817, 28.336195, 30.274128>,  <37.546707, 28.724400, 30.311489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457817, 28.336195, 30.274128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888806, -0.162272, -0.428594,
		0.400798, -0.178263, 0.898656,
		-0.222229, -0.970510, -0.093403,
		37.391148, 28.045042, 30.246107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078178, 28.372463, 30.537979>,  <37.546707, 28.724400, 30.311489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078178, 28.372463, 30.537979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892117, 28.118315, 30.291424>,  <37.780479, 27.965826, 30.143490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892117, 28.118315, 30.291424>,  <38.078178, 28.372463, 30.537979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892117, 28.118315, 30.291424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833586, -0.080038, -0.546561,
		0.297934, -0.768048, 0.566866,
		-0.465156, -0.635370, -0.616388,
		37.752571, 27.927704, 30.106508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600830, 27.825613, 30.272915>,  <38.078178, 28.372463, 30.537979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600830, 27.825613, 30.272915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303497, 27.806963, 30.005995>,  <38.125099, 27.795773, 29.845842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303497, 27.806963, 30.005995>,  <38.600830, 27.825613, 30.272915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303497, 27.806963, 30.005995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659701, 0.114020, -0.742829,
		0.110722, -0.992384, -0.053994,
		-0.743327, -0.046628, -0.667301,
		38.080498, 27.792976, 29.805805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876934, 27.576664, 29.688597>,  <38.600830, 27.825613, 30.272915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876934, 27.576664, 29.688597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521088, 27.692657, 29.547464>,  <38.307579, 27.762255, 29.462786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521088, 27.692657, 29.547464>,  <38.876934, 27.576664, 29.688597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521088, 27.692657, 29.547464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420087, 0.216455, -0.881291,
		-0.179190, -0.932231, -0.314382,
		-0.889617, 0.289987, -0.352831,
		38.254204, 27.779654, 29.441614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860222, 27.218681, 28.971313>,  <38.876934, 27.576664, 29.688597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860222, 27.218681, 28.971313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583851, 27.507851, 28.970522>,  <38.418030, 27.681353, 28.970047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583851, 27.507851, 28.970522>,  <38.860222, 27.218681, 28.971313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583851, 27.507851, 28.970522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327090, 0.310172, -0.892640,
		-0.644695, -0.617396, -0.450767,
		-0.690927, 0.722922, -0.001977,
		38.376572, 27.724728, 28.969929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601070, 27.193083, 28.355223>,  <38.860222, 27.218681, 28.971313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601070, 27.193083, 28.355223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560383, 27.571217, 28.479158>,  <38.535969, 27.798096, 28.553520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560383, 27.571217, 28.479158>,  <38.601070, 27.193083, 28.355223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560383, 27.571217, 28.479158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220844, 0.325139, -0.919518,
		-0.969990, -0.025106, -0.241844,
		-0.101718, 0.945333, 0.309837,
		38.529869, 27.854816, 28.572109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202744, 27.637911, 27.804546>,  <38.601070, 27.193083, 28.355223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202744, 27.637911, 27.804546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408791, 27.896309, 28.029879>,  <38.532421, 28.051348, 28.165077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408791, 27.896309, 28.029879>,  <38.202744, 27.637911, 27.804546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408791, 27.896309, 28.029879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353850, 0.438336, -0.826227,
		-0.780666, 0.624943, -0.002788,
		0.515122, 0.645994, 0.563330,
		38.563328, 28.090107, 28.198877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195068, 28.272717, 27.474083>,  <38.202744, 27.637911, 27.804546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195068, 28.272717, 27.474083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504353, 28.308479, 27.725210>,  <38.689922, 28.329937, 27.875887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504353, 28.308479, 27.725210>,  <38.195068, 28.272717, 27.474083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504353, 28.308479, 27.725210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501936, 0.518773, -0.692052,
		-0.387568, 0.850224, 0.356244,
		0.773209, 0.089405, 0.627818,
		38.736317, 28.335300, 27.913555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389565, 28.951836, 27.402603>,  <38.195068, 28.272717, 27.474083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389565, 28.951836, 27.402603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720055, 28.785536, 27.554657>,  <38.918350, 28.685755, 27.645889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720055, 28.785536, 27.554657>,  <38.389565, 28.951836, 27.402603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720055, 28.785536, 27.554657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559196, 0.523604, -0.642759,
		0.068189, 0.743633, 0.665102,
		0.826226, -0.415752, 0.380132,
		38.967922, 28.660810, 27.668697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844334, 29.455128, 27.307102>,  <38.389565, 28.951836, 27.402603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844334, 29.455128, 27.307102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057774, 29.120876, 27.359240>,  <39.185837, 28.920324, 27.390522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057774, 29.120876, 27.359240>,  <38.844334, 29.455128, 27.307102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057774, 29.120876, 27.359240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705337, 0.354667, -0.613768,
		0.466654, 0.419445, 0.778653,
		0.533604, -0.835630, 0.130344,
		39.217854, 28.870188, 27.398342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486145, 29.702093, 27.494627>,  <38.844334, 29.455128, 27.307102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486145, 29.702093, 27.494627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565254, 29.328861, 27.374464>,  <39.612720, 29.104921, 27.302366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565254, 29.328861, 27.374464>,  <39.486145, 29.702093, 27.494627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565254, 29.328861, 27.374464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765095, 0.338518, -0.547754,
		0.612792, -0.121507, 0.780847,
		0.197775, -0.933082, -0.300405,
		39.624588, 29.048937, 27.284342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256302, 29.596243, 27.616949>,  <39.486145, 29.702093, 27.494627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256302, 29.596243, 27.616949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121780, 29.340910, 27.339985>,  <40.041069, 29.187710, 27.173805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121780, 29.340910, 27.339985>,  <40.256302, 29.596243, 27.616949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121780, 29.340910, 27.339985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811163, 0.177189, -0.557331,
		0.478449, -0.749092, 0.458201,
		-0.336304, -0.638330, -0.692412,
		40.020889, 29.149410, 27.132261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825012, 29.124897, 27.478792>,  <40.256302, 29.596243, 27.616949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825012, 29.124897, 27.478792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592098, 29.049433, 27.162474>,  <40.452351, 29.004154, 26.972683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592098, 29.049433, 27.162474>,  <40.825012, 29.124897, 27.478792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592098, 29.049433, 27.162474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792721, 0.084078, -0.603758,
		0.180395, -0.978436, 0.100599,
		-0.582281, -0.188662, -0.790794,
		40.417416, 28.992834, 26.925236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016808, 28.489807, 27.102753>,  <40.825012, 29.124897, 27.478792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016808, 28.489807, 27.102753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832737, 28.718103, 26.830725>,  <40.722294, 28.855082, 26.667507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832737, 28.718103, 26.830725>,  <41.016808, 28.489807, 27.102753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832737, 28.718103, 26.830725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850151, 0.062488, -0.522818,
		-0.255898, -0.818749, -0.513971,
		-0.460174, 0.570741, -0.680070,
		40.694683, 28.889326, 26.626703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213722, 28.229179, 26.489649>,  <41.016808, 28.489807, 27.102753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213722, 28.229179, 26.489649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078461, 28.584906, 26.366508>,  <40.997303, 28.798342, 26.292625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078461, 28.584906, 26.366508>,  <41.213722, 28.229179, 26.489649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078461, 28.584906, 26.366508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862992, 0.162559, -0.478350,
		-0.375360, -0.427428, -0.822442,
		-0.338156, 0.889314, -0.307848,
		40.977013, 28.851700, 26.274155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489056, 28.268539, 25.819895>,  <41.213722, 28.229179, 26.489649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489056, 28.268539, 25.819895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385754, 28.644987, 25.907164>,  <41.323772, 28.870855, 25.959524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385754, 28.644987, 25.907164>,  <41.489056, 28.268539, 25.819895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385754, 28.644987, 25.907164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812460, 0.333769, -0.478025,
		-0.522697, 0.053801, -0.850819,
		-0.258259, 0.941118, 0.218171,
		41.308277, 28.927322, 25.972614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380692, 28.577868, 25.231438>,  <41.489056, 28.268539, 25.819895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380692, 28.577868, 25.231438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461575, 28.877594, 25.483671>,  <41.510105, 29.057430, 25.635012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461575, 28.877594, 25.483671>,  <41.380692, 28.577868, 25.231438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461575, 28.877594, 25.483671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764580, 0.281573, -0.579771,
		-0.611987, 0.599366, -0.515977,
		0.202210, 0.749318, 0.630582,
		41.522236, 29.102390, 25.672846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392178, 29.161463, 24.862118>,  <41.380692, 28.577868, 25.231438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392178, 29.161463, 24.862118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587757, 29.298147, 25.183157>,  <41.705105, 29.380157, 25.375780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587757, 29.298147, 25.183157>,  <41.392178, 29.161463, 24.862118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587757, 29.298147, 25.183157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685411, 0.418629, -0.595786,
		-0.539577, 0.841418, -0.029525,
		0.488946, 0.341709, 0.802600,
		41.734440, 29.400660, 25.423937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634270, 29.854874, 24.679424>,  <41.392178, 29.161463, 24.862118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634270, 29.854874, 24.679424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859829, 29.760164, 24.995895>,  <41.995163, 29.703339, 25.185778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859829, 29.760164, 24.995895>,  <41.634270, 29.854874, 24.679424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859829, 29.760164, 24.995895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813830, 0.322153, -0.483630,
		-0.140369, 0.916600, 0.374353,
		0.563895, -0.236773, 0.791177,
		42.028996, 29.689133, 25.233248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892765, 30.441832, 24.931227>,  <41.634270, 29.854874, 24.679424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892765, 30.441832, 24.931227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157223, 30.164444, 25.045763>,  <42.315899, 29.998013, 25.114485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157223, 30.164444, 25.045763>,  <41.892765, 30.441832, 24.931227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157223, 30.164444, 25.045763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723669, 0.488739, -0.487274,
		0.197963, 0.529374, 0.824969,
		0.661145, -0.693467, 0.286339,
		42.355568, 29.956404, 25.131664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485123, 30.818996, 25.060255>,  <41.892765, 30.441832, 24.931227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485123, 30.818996, 25.060255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624149, 30.447964, 25.005415>,  <42.707565, 30.225344, 24.972511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624149, 30.447964, 25.005415>,  <42.485123, 30.818996, 25.060255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624149, 30.447964, 25.005415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888060, 0.372564, -0.269341,
		0.300914, -0.028142, 0.953236,
		0.347562, -0.927580, -0.137101,
		42.728416, 30.169689, 24.964285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144268, 30.854305, 25.316669>,  <42.485123, 30.818996, 25.060255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144268, 30.854305, 25.316669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144341, 30.511364, 25.110779>,  <43.144382, 30.305599, 24.987246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144341, 30.511364, 25.110779>,  <43.144268, 30.854305, 25.316669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144341, 30.511364, 25.110779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897352, 0.227292, -0.378282,
		0.441315, -0.461822, 0.769390,
		0.000177, -0.857355, -0.514725,
		43.144394, 30.254158, 24.956362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823322, 30.538677, 25.420296>,  <43.144268, 30.854305, 25.316669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823322, 30.538677, 25.420296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707821, 30.391443, 25.066769>,  <43.638519, 30.303102, 24.854652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707821, 30.391443, 25.066769>,  <43.823322, 30.538677, 25.420296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707821, 30.391443, 25.066769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925944, 0.127338, -0.355546,
		0.243415, -0.921031, 0.304058,
		-0.288751, -0.368086, -0.883819,
		43.621197, 30.281017, 24.801622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326862, 30.061512, 25.220121>,  <43.823322, 30.538677, 25.420296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326862, 30.061512, 25.220121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123741, 30.163538, 24.890984>,  <44.001869, 30.224754, 24.693501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123741, 30.163538, 24.890984>,  <44.326862, 30.061512, 25.220121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123741, 30.163538, 24.890984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855135, 0.264874, -0.445629,
		0.104285, -0.929937, -0.352621,
		-0.507807, 0.255066, -0.822845,
		43.971397, 30.240057, 24.644131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697380, 29.875807, 24.704857>,  <44.326862, 30.061512, 25.220121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697380, 29.875807, 24.704857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472153, 30.121677, 24.483904>,  <44.337017, 30.269199, 24.351332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472153, 30.121677, 24.483904>,  <44.697380, 29.875807, 24.704857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472153, 30.121677, 24.483904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826207, 0.403895, -0.392747,
		-0.018307, -0.677527, -0.735271,
		-0.563069, 0.614676, -0.552383,
		44.303230, 30.306080, 24.318190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991116, 29.899633, 23.962830>,  <44.697380, 29.875807, 24.704857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991116, 29.899633, 23.962830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774780, 30.232061, 24.014692>,  <44.644978, 30.431519, 24.045811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774780, 30.232061, 24.014692>,  <44.991116, 29.899633, 23.962830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774780, 30.232061, 24.014692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683235, 0.523975, -0.508566,
		-0.490592, -0.186467, -0.851205,
		-0.540841, 0.831072, 0.129657,
		44.612530, 30.481382, 24.053589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767517, 30.231350, 23.246294>,  <44.991116, 29.899633, 23.962830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767517, 30.231350, 23.246294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774437, 30.505028, 23.537931>,  <44.778591, 30.669235, 23.712914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774437, 30.505028, 23.537931>,  <44.767517, 30.231350, 23.246294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774437, 30.505028, 23.537931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647051, 0.548256, -0.529850,
		-0.762250, 0.480929, -0.433222,
		0.017304, 0.684195, 0.729094,
		44.779629, 30.710287, 23.756660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831226, 31.006176, 23.023806>,  <44.767517, 30.231350, 23.246294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831226, 31.006176, 23.023806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003284, 30.949957, 23.380505>,  <45.106522, 30.916225, 23.594524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003284, 30.949957, 23.380505>,  <44.831226, 31.006176, 23.023806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003284, 30.949957, 23.380505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767879, 0.576377, -0.279557,
		-0.474693, 0.805007, 0.355851,
		0.430150, -0.140547, 0.891750,
		45.132328, 30.907793, 23.648029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184967, 31.669636, 23.261946>,  <44.831226, 31.006176, 23.023806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184967, 31.669636, 23.261946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349281, 31.352499, 23.442017>,  <45.447872, 31.162218, 23.550058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349281, 31.352499, 23.442017>,  <45.184967, 31.669636, 23.261946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349281, 31.352499, 23.442017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893081, 0.449271, -0.023695,
		-0.183465, 0.411778, 0.892625,
		0.410788, -0.792840, 0.450176,
		45.472519, 31.114647, 23.577070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556530, 31.914734, 23.914415>,  <45.184967, 31.669636, 23.261946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556530, 31.914734, 23.914415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690342, 31.636337, 23.660271>,  <45.770630, 31.469299, 23.507784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690342, 31.636337, 23.660271>,  <45.556530, 31.914734, 23.914415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690342, 31.636337, 23.660271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736667, 0.613601, -0.284283,
		0.587718, -0.372949, 0.717981,
		0.334531, -0.695991, -0.635363,
		45.790703, 31.427540, 23.469662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718666, 32.263424, 23.304829>,  <45.556530, 31.914734, 23.914415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718666, 32.263424, 23.304829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.671772, 32.513073, 22.995838>,  <45.643635, 32.662865, 22.810444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.671772, 32.513073, 22.995838>,  <45.718666, 32.263424, 23.304829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671772, 32.513073, 22.995838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375860, 0.747866, 0.547198,
		0.919231, -0.226192, -0.322261,
		-0.117236, 0.624126, -0.772478,
		45.636600, 32.700310, 22.764095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.351631, 31.920151, 23.037514>,  <45.718666, 32.263424, 23.304829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.351631, 31.920151, 23.037514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517559, 32.244656, 23.202332>,  <46.617115, 32.439358, 23.301222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.517559, 32.244656, 23.202332>,  <46.351631, 31.920151, 23.037514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.517559, 32.244656, 23.202332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546266, -0.140112, 0.825810,
		0.727680, -0.567648, 0.385043,
		0.414821, 0.811261, 0.412043,
		46.642006, 32.488033, 23.325945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.443375, 31.754854, 23.786459>,  <46.351631, 31.920151, 23.037514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.443375, 31.754854, 23.786459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401558, 32.146675, 23.717705>,  <46.376469, 32.381767, 23.676453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401558, 32.146675, 23.717705>,  <46.443375, 31.754854, 23.786459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401558, 32.146675, 23.717705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711107, 0.047199, 0.701498,
		0.695268, 0.195565, 0.691634,
		-0.104544, 0.979554, -0.171884,
		46.370193, 32.440540, 23.666140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.430107, 32.166222, 24.386641>,  <46.443375, 31.754854, 23.786459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.430107, 32.166222, 24.386641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224949, 32.350605, 24.096966>,  <46.101852, 32.461235, 23.923161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224949, 32.350605, 24.096966>,  <46.430107, 32.166222, 24.386641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.224949, 32.350605, 24.096966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801871, 0.043934, 0.595880,
		0.306494, 0.886332, 0.347098,
		-0.512898, 0.460962, -0.724189,
		46.071079, 32.488895, 23.879709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.154671, 32.817226, 24.643559>,  <46.430107, 32.166222, 24.386641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.154671, 32.817226, 24.643559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917007, 32.694462, 24.346161>,  <45.774410, 32.620804, 24.167723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917007, 32.694462, 24.346161>,  <46.154671, 32.817226, 24.643559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917007, 32.694462, 24.346161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789789, 0.397681, 0.466994,
		0.152349, 0.864672, -0.478678,
		-0.594158, -0.306908, -0.743494,
		45.738762, 32.602390, 24.123112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683567, 33.308170, 24.649015>,  <46.154671, 32.817226, 24.643559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683567, 33.308170, 24.649015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529461, 33.010635, 24.430553>,  <45.436996, 32.832115, 24.299477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529461, 33.010635, 24.430553>,  <45.683567, 33.308170, 24.649015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529461, 33.010635, 24.430553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914311, 0.227559, 0.335041,
		-0.124933, 0.628433, -0.767765,
		-0.385263, -0.743834, -0.546153,
		45.413883, 32.787487, 24.266706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072388, 33.584473, 24.532879>,  <45.683567, 33.308170, 24.649015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072388, 33.584473, 24.532879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037411, 33.197655, 24.437229>,  <45.016426, 32.965565, 24.379839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037411, 33.197655, 24.437229>,  <45.072388, 33.584473, 24.532879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037411, 33.197655, 24.437229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974128, 0.032786, 0.223609,
		-0.208399, 0.252491, -0.944891,
		-0.087438, -0.967044, -0.239125,
		45.011181, 32.907543, 24.365492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562317, 33.647232, 23.991564>,  <45.072388, 33.584473, 24.532879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562317, 33.647232, 23.991564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580780, 33.314953, 24.213486>,  <44.591858, 33.115585, 24.346640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580780, 33.314953, 24.213486>,  <44.562317, 33.647232, 23.991564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580780, 33.314953, 24.213486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948843, 0.137208, 0.284379,
		-0.312357, -0.539548, -0.781870,
		0.046157, -0.830700, 0.554804,
		44.594627, 33.065742, 24.379927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989388, 33.290745, 23.846659>,  <44.562317, 33.647232, 23.991564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989388, 33.290745, 23.846659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101898, 33.175495, 24.212799>,  <44.169403, 33.106346, 24.432484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101898, 33.175495, 24.212799>,  <43.989388, 33.290745, 23.846659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101898, 33.175495, 24.212799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958694, -0.042312, 0.281275,
		-0.042312, -0.956658, -0.288124,
		-0.281275, 0.288124, -0.915352,
		44.186279, 33.089058, 24.487404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593567, 32.680107, 23.968716>,  <43.989388, 33.290745, 23.846659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593567, 32.680107, 23.968716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717289, 32.812473, 24.325327>,  <43.791523, 32.891895, 24.539293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717289, 32.812473, 24.325327>,  <43.593567, 32.680107, 23.968716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717289, 32.812473, 24.325327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933846, -0.071371, 0.350483,
		0.179611, -0.940956, 0.286952,
		0.309309, 0.330919, 0.891527,
		43.810081, 32.911751, 24.592785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167046, 32.373409, 24.279596>,  <43.593567, 32.680107, 23.968716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167046, 32.373409, 24.279596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315910, 32.632252, 24.545755>,  <43.405228, 32.787556, 24.705452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315910, 32.632252, 24.545755>,  <43.167046, 32.373409, 24.279596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315910, 32.632252, 24.545755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909846, 0.112594, 0.399378,
		0.183520, -0.754041, 0.630669,
		0.372157, 0.647105, 0.665398,
		43.427559, 32.826382, 24.745375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867767, 32.217007, 24.926868>,  <43.167046, 32.373409, 24.279596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867767, 32.217007, 24.926868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010521, 32.585987, 24.985811>,  <43.096172, 32.807377, 25.021177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010521, 32.585987, 24.985811>,  <42.867767, 32.217007, 24.926868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010521, 32.585987, 24.985811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793378, 0.216038, 0.569104,
		0.493136, -0.320018, 0.808953,
		0.356888, 0.922451, 0.147359,
		43.117588, 32.862724, 25.030020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029285, 32.266441, 25.673296>,  <42.867767, 32.217007, 24.926868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029285, 32.266441, 25.673296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955559, 32.632137, 25.528969>,  <42.911324, 32.851555, 25.442373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955559, 32.632137, 25.528969>,  <43.029285, 32.266441, 25.673296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955559, 32.632137, 25.528969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786993, 0.082638, 0.611402,
		0.588787, 0.396652, 0.704271,
		-0.184314, 0.914242, -0.360818,
		42.900265, 32.906410, 25.420723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870441, 32.712894, 26.335943>,  <43.029285, 32.266441, 25.673296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870441, 32.712894, 26.335943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737629, 32.922829, 26.022432>,  <42.657944, 33.048790, 25.834326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737629, 32.922829, 26.022432>,  <42.870441, 32.712894, 26.335943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737629, 32.922829, 26.022432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782980, 0.310021, 0.539286,
		0.526023, 0.792741, 0.307997,
		-0.332028, 0.524832, -0.783778,
		42.638020, 33.080280, 25.787298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756416, 33.423454, 26.615280>,  <42.870441, 32.712894, 26.335943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756416, 33.423454, 26.615280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548393, 33.409790, 26.273903>,  <42.423580, 33.401592, 26.069077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548393, 33.409790, 26.273903>,  <42.756416, 33.423454, 26.615280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548393, 33.409790, 26.273903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784176, 0.415127, 0.461234,
		0.338531, 0.909122, -0.242681,
		-0.520062, -0.034162, -0.853445,
		42.392376, 33.399540, 26.017870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544563, 34.027866, 26.501223>,  <42.756416, 33.423454, 26.615280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544563, 34.027866, 26.501223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278404, 33.791313, 26.319012>,  <42.118710, 33.649380, 26.209686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278404, 33.791313, 26.319012>,  <42.544563, 34.027866, 26.501223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278404, 33.791313, 26.319012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670936, 0.206288, 0.712243,
		-0.327242, 0.779555, -0.534048,
		-0.665400, -0.591387, -0.455526,
		42.078785, 33.613895, 26.182354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870155, 34.431011, 26.650169>,  <42.544563, 34.027866, 26.501223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870155, 34.431011, 26.650169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776878, 34.078056, 26.486698>,  <41.720913, 33.866283, 26.388615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776878, 34.078056, 26.486698>,  <41.870155, 34.431011, 26.650169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776878, 34.078056, 26.486698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862957, -0.005947, 0.505243,
		-0.448249, 0.470491, -0.760073,
		-0.233192, -0.882385, -0.408679,
		41.706921, 33.813339, 26.364094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197205, 34.494076, 26.347971>,  <41.870155, 34.431011, 26.650169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197205, 34.494076, 26.347971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287254, 34.117317, 26.447691>,  <41.341282, 33.891262, 26.507523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287254, 34.117317, 26.447691>,  <41.197205, 34.494076, 26.347971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287254, 34.117317, 26.447691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830179, -0.051492, 0.555113,
		-0.510023, -0.331931, -0.793535,
		0.225120, -0.941897, 0.249301,
		41.354790, 33.834747, 26.522482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608784, 34.154121, 26.166485>,  <41.197205, 34.494076, 26.347971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608784, 34.154121, 26.166485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761395, 33.886345, 26.421448>,  <40.852959, 33.725677, 26.574427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761395, 33.886345, 26.421448>,  <40.608784, 34.154121, 26.166485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761395, 33.886345, 26.421448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858014, 0.000058, 0.513627,
		-0.343880, -0.742866, -0.574367,
		0.381522, -0.669441, 0.637409,
		40.875851, 33.685513, 26.612671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138042, 33.595875, 26.233181>,  <40.608784, 34.154121, 26.166485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138042, 33.595875, 26.233181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377361, 33.563335, 26.552032>,  <40.520954, 33.543812, 26.743343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377361, 33.563335, 26.552032>,  <40.138042, 33.595875, 26.233181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377361, 33.563335, 26.552032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798496, -0.143257, 0.584707,
		0.066631, -0.986337, -0.150667,
		0.598302, -0.081347, 0.797131,
		40.556850, 33.538933, 26.791172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813332, 33.093208, 26.655195>,  <40.138042, 33.595875, 26.233181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813332, 33.093208, 26.655195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031010, 33.285263, 26.930389>,  <40.161617, 33.400494, 27.095505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031010, 33.285263, 26.930389>,  <39.813332, 33.093208, 26.655195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031010, 33.285263, 26.930389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644772, -0.285311, 0.709131,
		0.536768, -0.829499, 0.154312,
		0.544196, 0.480135, 0.687984,
		40.194267, 33.429302, 27.136784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771767, 32.608231, 27.218239>,  <39.813332, 33.093208, 26.655195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771767, 32.608231, 27.218239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875069, 32.958580, 27.381283>,  <39.937050, 33.168789, 27.479109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875069, 32.958580, 27.381283>,  <39.771767, 32.608231, 27.218239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875069, 32.958580, 27.381283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511280, -0.234074, 0.826923,
		0.819693, -0.421962, 0.387366,
		0.258257, 0.875875, 0.407609,
		39.952545, 33.221344, 27.503565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986546, 32.492813, 27.972862>,  <39.771767, 32.608231, 27.218239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986546, 32.492813, 27.972862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870461, 32.867550, 27.894779>,  <39.800812, 33.092392, 27.847929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870461, 32.867550, 27.894779>,  <39.986546, 32.492813, 27.972862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870461, 32.867550, 27.894779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606498, -0.022274, 0.794773,
		0.740228, 0.349043, 0.574657,
		-0.290210, 0.936842, -0.195206,
		39.783398, 33.148602, 27.836218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801262, 32.697670, 28.549103>,  <39.986546, 32.492813, 27.972862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801262, 32.697670, 28.549103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625198, 32.992397, 28.343828>,  <39.519562, 33.169235, 28.220663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625198, 32.992397, 28.343828>,  <39.801262, 32.697670, 28.549103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625198, 32.992397, 28.343828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753362, 0.007941, 0.657557,
		0.488576, 0.676044, 0.551596,
		-0.440157, 0.736818, -0.513186,
		39.493153, 33.213444, 28.189873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448269, 33.157455, 29.037472>,  <39.801262, 32.697670, 28.549103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448269, 33.157455, 29.037472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260895, 33.217850, 28.689272>,  <39.148468, 33.254086, 28.480352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260895, 33.217850, 28.689272>,  <39.448269, 33.157455, 29.037472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260895, 33.217850, 28.689272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852549, 0.181244, 0.490216,
		0.231790, 0.971778, 0.043825,
		-0.468438, 0.150990, -0.870499,
		39.120365, 33.263145, 28.428122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964809, 33.556904, 29.276972>,  <39.448269, 33.157455, 29.037472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964809, 33.556904, 29.276972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820370, 33.467300, 28.914883>,  <38.733707, 33.413540, 28.697630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820370, 33.467300, 28.914883>,  <38.964809, 33.556904, 29.276972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820370, 33.467300, 28.914883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928587, 0.175525, 0.326981,
		0.085644, 0.958651, -0.271393,
		-0.361096, -0.224008, -0.905223,
		38.712040, 33.400097, 28.643316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486740, 34.042065, 29.136658>,  <38.964809, 33.556904, 29.276972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486740, 34.042065, 29.136658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398609, 33.716064, 28.922283>,  <38.345730, 33.520466, 28.793657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398609, 33.716064, 28.922283>,  <38.486740, 34.042065, 29.136658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398609, 33.716064, 28.922283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923481, -0.002618, 0.383634,
		-0.314065, 0.579455, -0.752060,
		-0.220330, -0.815000, -0.535938,
		38.332512, 33.471565, 28.761501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698421, 34.150425, 28.951792>,  <38.486740, 34.042065, 29.136658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698421, 34.150425, 28.951792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768414, 33.771454, 28.844639>,  <37.810410, 33.544071, 28.780348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768414, 33.771454, 28.844639>,  <37.698421, 34.150425, 28.951792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768414, 33.771454, 28.844639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939701, -0.241907, 0.241749,
		-0.293842, 0.209427, -0.932629,
		0.174981, -0.947429, -0.267882,
		37.820908, 33.487225, 28.764275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180374, 34.009483, 28.611416>,  <37.698421, 34.150425, 28.951792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180374, 34.009483, 28.611416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313534, 33.645786, 28.711378>,  <37.393429, 33.427567, 28.771355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313534, 33.645786, 28.711378>,  <37.180374, 34.009483, 28.611416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313534, 33.645786, 28.711378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918770, -0.253116, 0.302976,
		-0.212223, -0.330472, -0.919647,
		0.332902, -0.909242, 0.249910,
		37.413403, 33.373013, 28.786350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712463, 33.482826, 28.300150>,  <37.180374, 34.009483, 28.611416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712463, 33.482826, 28.300150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916500, 33.307686, 28.596281>,  <37.038921, 33.202602, 28.773960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916500, 33.307686, 28.596281>,  <36.712463, 33.482826, 28.300150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916500, 33.307686, 28.596281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859014, -0.302927, 0.412710,
		0.043561, -0.846476, -0.530642,
		0.510095, -0.437851, 0.740330,
		37.069530, 33.176331, 28.818380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443054, 32.758629, 28.406057>,  <36.712463, 33.482826, 28.300150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443054, 32.758629, 28.406057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618492, 32.848911, 28.754009>,  <36.723755, 32.903080, 28.962780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618492, 32.848911, 28.754009>,  <36.443054, 32.758629, 28.406057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618492, 32.848911, 28.754009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674399, -0.557106, 0.484580,
		0.593990, -0.799180, -0.092125,
		0.438591, 0.225707, 0.869882,
		36.750069, 32.916622, 29.014975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462566, 32.144756, 28.721163>,  <36.443054, 32.758629, 28.406057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462566, 32.144756, 28.721163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518536, 32.412422, 29.013092>,  <36.552116, 32.573021, 29.188250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518536, 32.412422, 29.013092>,  <36.462566, 32.144756, 28.721163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518536, 32.412422, 29.013092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581458, -0.541067, 0.607580,
		0.801453, -0.509378, 0.313381,
		0.139928, 0.669164, 0.729822,
		36.560513, 32.613171, 29.232038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389442, 31.738873, 29.333805>,  <36.462566, 32.144756, 28.721163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389442, 31.738873, 29.333805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347851, 32.116085, 29.460222>,  <36.322895, 32.342411, 29.536074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347851, 32.116085, 29.460222>,  <36.389442, 31.738873, 29.333805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347851, 32.116085, 29.460222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565712, -0.317435, 0.761055,
		0.818021, -0.099656, 0.566490,
		-0.103980, 0.943029, 0.316045,
		36.316658, 32.398994, 29.555037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271938, 31.727461, 30.044125>,  <36.389442, 31.738873, 29.333805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271938, 31.727461, 30.044125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103619, 32.080345, 29.959620>,  <36.002625, 32.292076, 29.908916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103619, 32.080345, 29.959620>,  <36.271938, 31.727461, 30.044125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103619, 32.080345, 29.959620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739579, -0.198780, 0.643047,
		0.525307, 0.426842, 0.736110,
		-0.420803, 0.882209, -0.211263,
		35.977379, 32.345009, 29.896240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108932, 32.088123, 30.686584>,  <36.271938, 31.727461, 30.044125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108932, 32.088123, 30.686584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871334, 32.238480, 30.402086>,  <35.728775, 32.328693, 30.231388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871334, 32.238480, 30.402086>,  <36.108932, 32.088123, 30.686584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871334, 32.238480, 30.402086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784777, -0.076357, 0.615057,
		0.176888, 0.923511, 0.340349,
		-0.594000, 0.375894, -0.711244,
		35.693134, 32.351250, 30.188713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674171, 32.466702, 31.114351>,  <36.108932, 32.088123, 30.686584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674171, 32.466702, 31.114351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467407, 32.442070, 30.772823>,  <35.343349, 32.427292, 30.567907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467407, 32.442070, 30.772823>,  <35.674171, 32.466702, 31.114351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467407, 32.442070, 30.772823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855888, 0.018578, 0.516827,
		-0.015964, 0.997929, -0.062310,
		-0.516915, -0.061581, -0.853819,
		35.312332, 32.423595, 30.516678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140007, 32.905029, 31.204725>,  <35.674171, 32.466702, 31.114351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140007, 32.905029, 31.204725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028511, 32.644382, 30.922535>,  <34.961613, 32.487995, 30.753220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028511, 32.644382, 30.922535>,  <35.140007, 32.905029, 31.204725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028511, 32.644382, 30.922535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891884, -0.096785, 0.441787,
		-0.356157, 0.752347, -0.554190,
		-0.278740, -0.651618, -0.705477,
		34.944889, 32.448898, 30.710892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484253, 33.064857, 31.070221>,  <35.140007, 32.905029, 31.204725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484253, 33.064857, 31.070221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500244, 32.693718, 30.921894>,  <34.509838, 32.471035, 30.832899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500244, 32.693718, 30.921894>,  <34.484253, 33.064857, 31.070221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500244, 32.693718, 30.921894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821918, -0.241568, 0.515845,
		-0.568202, 0.284159, -0.772270,
		0.039974, -0.927846, -0.370815,
		34.512238, 32.415363, 30.810650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838291, 32.874329, 30.855724>,  <34.484253, 33.064857, 31.070221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838291, 32.874329, 30.855724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017414, 32.523685, 30.926176>,  <34.124889, 32.313297, 30.968447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017414, 32.523685, 30.926176>,  <33.838291, 32.874329, 30.855724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017414, 32.523685, 30.926176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676461, -0.203344, 0.707851,
		-0.584694, -0.436127, -0.684051,
		0.447810, -0.876610, 0.176129,
		34.151756, 32.260704, 30.979015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260899, 32.447166, 30.949312>,  <33.838291, 32.874329, 30.855724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260899, 32.447166, 30.949312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579792, 32.263882, 31.106520>,  <33.771130, 32.153912, 31.200844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579792, 32.263882, 31.106520>,  <33.260899, 32.447166, 30.949312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579792, 32.263882, 31.106520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537801, -0.243379, 0.807178,
		-0.274210, -0.854872, -0.440458,
		0.797232, -0.458215, 0.393014,
		33.818962, 32.126419, 31.224424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920662, 31.872755, 31.235037>,  <33.260899, 32.447166, 30.949312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920662, 31.872755, 31.235037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279594, 31.880993, 31.411388>,  <33.494953, 31.885937, 31.517199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279594, 31.880993, 31.411388>,  <32.920662, 31.872755, 31.235037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279594, 31.880993, 31.411388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422948, -0.245365, 0.872302,
		0.126143, -0.969212, -0.211462,
		0.897331, 0.020597, 0.440877,
		33.548794, 31.887171, 31.543652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831253, 31.439684, 31.790743>,  <32.920662, 31.872755, 31.235037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831253, 31.439684, 31.790743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157215, 31.657450, 31.870291>,  <33.352791, 31.788109, 31.918018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157215, 31.657450, 31.870291>,  <32.831253, 31.439684, 31.790743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157215, 31.657450, 31.870291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281196, 0.071326, 0.956996,
		0.506819, -0.835777, 0.211211,
		0.814901, 0.544416, 0.198867,
		33.401684, 31.820774, 31.929951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192539, 31.008785, 32.251629>,  <32.831253, 31.439684, 31.790743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192539, 31.008785, 32.251629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326962, 31.382141, 32.301983>,  <33.407616, 31.606155, 32.332195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326962, 31.382141, 32.301983>,  <33.192539, 31.008785, 32.251629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326962, 31.382141, 32.301983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193937, -0.062214, 0.979039,
		0.921658, -0.353428, 0.160112,
		0.336058, 0.933391, 0.125882,
		33.427780, 31.662159, 32.339748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810772, 30.979509, 32.617420>,  <33.192539, 31.008785, 32.251629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810772, 30.979509, 32.617420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614269, 31.321877, 32.682007>,  <33.496368, 31.527296, 32.720757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614269, 31.321877, 32.682007>,  <33.810772, 30.979509, 32.617420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614269, 31.321877, 32.682007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197481, -0.289996, 0.936431,
		0.848332, 0.428142, 0.311490,
		-0.491257, 0.855919, 0.161463,
		33.466892, 31.578651, 32.730446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059284, 31.185688, 33.246326>,  <33.810772, 30.979509, 32.617420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059284, 31.185688, 33.246326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743561, 31.425625, 33.193897>,  <33.554127, 31.569588, 33.162437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743561, 31.425625, 33.193897>,  <34.059284, 31.185688, 33.246326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743561, 31.425625, 33.193897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245941, -0.113269, 0.962644,
		0.562589, 0.792059, 0.236931,
		-0.789308, 0.599844, -0.131076,
		33.506767, 31.605577, 33.154575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039459, 31.666121, 33.870609>,  <34.059284, 31.185688, 33.246326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039459, 31.666121, 33.870609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687241, 31.649256, 33.681778>,  <33.475910, 31.639137, 33.568481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687241, 31.649256, 33.681778>,  <34.039459, 31.666121, 33.870609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687241, 31.649256, 33.681778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454705, -0.205823, 0.866533,
		-0.133698, 0.977681, 0.162067,
		-0.880550, -0.042161, -0.472074,
		33.423077, 31.636608, 33.540157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776989, 32.326214, 33.954254>,  <34.039459, 31.666121, 33.870609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776989, 32.326214, 33.954254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903996, 32.266438, 34.328815>,  <33.980198, 32.230572, 34.553551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903996, 32.266438, 34.328815>,  <33.776989, 32.326214, 33.954254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903996, 32.266438, 34.328815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891995, 0.382146, -0.241472,
		-0.321756, 0.911938, 0.254641,
		0.317517, -0.149443, 0.936402,
		33.999252, 32.221603, 34.609737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975033, 32.969460, 34.198357>,  <33.776989, 32.326214, 33.954254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975033, 32.969460, 34.198357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163357, 32.700981, 34.427383>,  <34.276352, 32.539894, 34.564800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163357, 32.700981, 34.427383>,  <33.975033, 32.969460, 34.198357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163357, 32.700981, 34.427383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874104, 0.442797, -0.199685,
		-0.119504, 0.594497, 0.795168,
		0.470810, -0.671196, 0.572568,
		34.304600, 32.499622, 34.599155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395355, 33.371479, 34.590618>,  <33.975033, 32.969460, 34.198357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395355, 33.371479, 34.590618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539303, 32.998280, 34.591469>,  <34.625671, 32.774361, 34.591980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539303, 32.998280, 34.591469>,  <34.395355, 33.371479, 34.590618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539303, 32.998280, 34.591469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890276, 0.342706, -0.299935,
		0.279112, 0.109829, 0.953957,
		0.359869, -0.933001, 0.002124,
		34.647263, 32.718380, 34.592106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111183, 33.474617, 34.860256>,  <34.395355, 33.371479, 34.590618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111183, 33.474617, 34.860256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121052, 33.115501, 34.684364>,  <35.126972, 32.900032, 34.578831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121052, 33.115501, 34.684364>,  <35.111183, 33.474617, 34.860256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121052, 33.115501, 34.684364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954620, 0.151752, -0.256265,
		0.296802, -0.413448, 0.860796,
		0.024675, -0.897793, -0.439726,
		35.128456, 32.846165, 34.552444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798664, 33.308823, 34.926659>,  <35.111183, 33.474617, 34.860256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798664, 33.308823, 34.926659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652832, 33.064606, 34.645424>,  <35.565334, 32.918076, 34.476685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652832, 33.064606, 34.645424>,  <35.798664, 33.308823, 34.926659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652832, 33.064606, 34.645424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893961, -0.018172, -0.447775,
		0.260608, -0.791777, 0.552424,
		-0.364577, -0.610539, -0.703083,
		35.543461, 32.881443, 34.434498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226074, 32.709373, 34.953255>,  <35.798664, 33.308823, 34.926659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226074, 32.709373, 34.953255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050873, 32.752995, 34.596321>,  <35.945751, 32.779167, 34.382160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050873, 32.752995, 34.596321>,  <36.226074, 32.709373, 34.953255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050873, 32.752995, 34.596321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898676, 0.027499, -0.437751,
		-0.023198, -0.993656, -0.110044,
		-0.438000, 0.109049, -0.892337,
		35.919472, 32.785709, 34.328621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653008, 32.393974, 34.624634>,  <36.226074, 32.709373, 34.953255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653008, 32.393974, 34.624634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466137, 32.583130, 34.325802>,  <36.354015, 32.696621, 34.146503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466137, 32.583130, 34.325802>,  <36.653008, 32.393974, 34.624634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466137, 32.583130, 34.325802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862668, 0.058607, -0.502363,
		-0.193776, -0.879173, -0.435323,
		-0.467177, 0.472885, -0.747078,
		36.325985, 32.724995, 34.101677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034504, 32.048111, 33.962204>,  <36.653008, 32.393974, 34.624634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034504, 32.048111, 33.962204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872261, 32.400673, 33.865360>,  <36.774918, 32.612209, 33.807255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872261, 32.400673, 33.865360>,  <37.034504, 32.048111, 33.962204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872261, 32.400673, 33.865360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836654, 0.251333, -0.486663,
		-0.368098, -0.399950, -0.839371,
		-0.405603, 0.881403, -0.242105,
		36.750580, 32.665092, 33.792728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240501, 32.140121, 33.313004>,  <37.034504, 32.048111, 33.962204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240501, 32.140121, 33.313004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135815, 32.508678, 33.427925>,  <37.073002, 32.729813, 33.496876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135815, 32.508678, 33.427925>,  <37.240501, 32.140121, 33.313004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135815, 32.508678, 33.427925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825033, 0.368047, -0.428792,
		-0.500826, 0.124810, -0.856502,
		-0.261715, 0.921393, 0.287300,
		37.057301, 32.785095, 33.514114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179855, 32.503395, 32.679939>,  <37.240501, 32.140121, 33.313004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179855, 32.503395, 32.679939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202835, 32.793087, 32.954803>,  <37.216621, 32.966904, 33.119720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202835, 32.793087, 32.954803>,  <37.179855, 32.503395, 32.679939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202835, 32.793087, 32.954803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779196, 0.397777, -0.484383,
		-0.624142, 0.563256, -0.541469,
		0.057448, 0.724234, 0.687157,
		37.220070, 33.010357, 33.160950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062592, 33.076832, 32.291897>,  <37.179855, 32.503395, 32.679939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062592, 33.076832, 32.291897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257515, 33.169788, 32.628593>,  <37.374470, 33.225563, 32.830612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257515, 33.169788, 32.628593>,  <37.062592, 33.076832, 32.291897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257515, 33.169788, 32.628593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764545, 0.352184, -0.539849,
		-0.421904, 0.906620, -0.006054,
		0.487306, 0.232393, 0.841740,
		37.403706, 33.239506, 32.881115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275410, 33.713913, 32.145439>,  <37.062592, 33.076832, 32.291897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275410, 33.713913, 32.145439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530560, 33.602985, 32.432831>,  <37.683651, 33.536430, 32.605267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530560, 33.602985, 32.432831>,  <37.275410, 33.713913, 32.145439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530560, 33.602985, 32.432831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769575, 0.193830, -0.608428,
		0.029464, 0.941024, 0.337055,
		0.637877, -0.277316, 0.718477,
		37.721924, 33.519791, 32.648373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698795, 34.208359, 32.233940>,  <37.275410, 33.713913, 32.145439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698795, 34.208359, 32.233940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895840, 33.887707, 32.369423>,  <38.014065, 33.695316, 32.450710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895840, 33.887707, 32.369423>,  <37.698795, 34.208359, 32.233940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895840, 33.887707, 32.369423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747409, 0.190349, -0.636512,
		0.445777, 0.566702, 0.692915,
		0.492609, -0.801633, 0.338705,
		38.043621, 33.647217, 32.471035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331627, 34.405327, 32.331070>,  <37.698795, 34.208359, 32.233940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331627, 34.405327, 32.331070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370228, 34.007286, 32.322571>,  <38.393387, 33.768459, 32.317471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370228, 34.007286, 32.322571>,  <38.331627, 34.405327, 32.331070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370228, 34.007286, 32.322571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781099, 0.088944, -0.618040,
		0.616905, 0.043046, 0.785860,
		0.096501, -0.995106, -0.021247,
		38.399178, 33.708755, 32.316196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981506, 34.367088, 32.493042>,  <38.331627, 34.405327, 32.331070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981506, 34.367088, 32.493042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909454, 34.004646, 32.339928>,  <38.866222, 33.787182, 32.248058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909454, 34.004646, 32.339928>,  <38.981506, 34.367088, 32.493042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909454, 34.004646, 32.339928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929656, -0.029673, -0.367231,
		0.321391, -0.422013, 0.847710,
		-0.180131, -0.906104, -0.382790,
		38.855415, 33.732815, 32.225090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476143, 33.762012, 32.588764>,  <38.981506, 34.367088, 32.493042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476143, 33.762012, 32.588764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306293, 33.614799, 32.257889>,  <39.204384, 33.526470, 32.059364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306293, 33.614799, 32.257889>,  <39.476143, 33.762012, 32.588764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306293, 33.614799, 32.257889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876909, 0.060104, -0.476884,
		0.225227, -0.927868, 0.297210,
		-0.424622, -0.368033, -0.827193,
		39.178905, 33.504391, 32.009731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079880, 33.455872, 32.164776>,  <39.476143, 33.762012, 32.588764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079880, 33.455872, 32.164776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763920, 33.473518, 31.920115>,  <39.574345, 33.484104, 31.773317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763920, 33.473518, 31.920115>,  <40.079880, 33.455872, 32.164776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763920, 33.473518, 31.920115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611615, 0.129245, -0.780527,
		0.044619, -0.990631, -0.129072,
		-0.789896, 0.044116, -0.611652,
		39.526951, 33.486752, 31.736618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210968, 33.007366, 31.677351>,  <40.079880, 33.455872, 32.164776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210968, 33.007366, 31.677351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957813, 33.275341, 31.522102>,  <39.805920, 33.436127, 31.428953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957813, 33.275341, 31.522102>,  <40.210968, 33.007366, 31.677351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957813, 33.275341, 31.522102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554213, 0.041947, -0.831317,
		-0.540649, -0.741233, -0.397835,
		-0.632887, 0.669936, -0.388122,
		39.767948, 33.476322, 31.405666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296497, 32.912811, 30.971586>,  <40.210968, 33.007366, 31.677351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296497, 32.912811, 30.971586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099751, 33.260891, 30.983027>,  <39.981701, 33.469738, 30.989891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099751, 33.260891, 30.983027>,  <40.296497, 32.912811, 30.971586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099751, 33.260891, 30.983027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412078, 0.261605, -0.872785,
		-0.766981, -0.417508, -0.487266,
		-0.491866, 0.870201, 0.028600,
		39.952190, 33.521950, 30.991606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887157, 32.869228, 30.361559>,  <40.296497, 32.912811, 30.971586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887157, 32.869228, 30.361559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929672, 33.252064, 30.469406>,  <39.955181, 33.481766, 30.534115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929672, 33.252064, 30.469406>,  <39.887157, 32.869228, 30.361559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929672, 33.252064, 30.469406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474347, 0.189509, -0.859699,
		-0.873899, 0.219265, -0.433848,
		0.106284, 0.957084, 0.269619,
		39.961555, 33.539188, 30.550291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677460, 33.179379, 29.756508>,  <39.887157, 32.869228, 30.361559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677460, 33.179379, 29.756508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904594, 33.432148, 29.967501>,  <40.040874, 33.583809, 30.094097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904594, 33.432148, 29.967501>,  <39.677460, 33.179379, 29.756508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904594, 33.432148, 29.967501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442489, 0.306016, -0.842946,
		-0.694092, 0.712061, -0.105851,
		0.567837, 0.631920, 0.527483,
		40.074947, 33.621723, 30.125746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784477, 33.761852, 29.271875>,  <39.677460, 33.179379, 29.756508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784477, 33.761852, 29.271875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067738, 33.812256, 29.549768>,  <40.237694, 33.842499, 29.716503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067738, 33.812256, 29.549768>,  <39.784477, 33.761852, 29.271875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067738, 33.812256, 29.549768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686381, 0.107866, -0.719198,
		-0.165560, 0.986148, -0.010102,
		0.708146, 0.126005, 0.694731,
		40.280182, 33.850056, 29.758188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225178, 34.452621, 29.123573>,  <39.784477, 33.761852, 29.271875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225178, 34.452621, 29.123573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431496, 34.178860, 29.329700>,  <40.555286, 34.014603, 29.453377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431496, 34.178860, 29.329700>,  <40.225178, 34.452621, 29.123573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431496, 34.178860, 29.329700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734874, 0.044268, -0.676757,
		0.440362, 0.727760, 0.525782,
		0.515792, -0.684402, 0.515318,
		40.586235, 33.973537, 29.484297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831032, 34.748337, 29.145994>,  <40.225178, 34.452621, 29.123573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831032, 34.748337, 29.145994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907475, 34.365192, 29.231768>,  <40.953339, 34.135307, 29.283232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907475, 34.365192, 29.231768>,  <40.831032, 34.748337, 29.145994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907475, 34.365192, 29.231768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807010, 0.028962, -0.589827,
		0.558762, 0.285769, 0.778538,
		0.191102, -0.957861, 0.214436,
		40.964806, 34.077835, 29.296099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546116, 34.833664, 29.310993>,  <40.831032, 34.748337, 29.145994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546116, 34.833664, 29.310993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496834, 34.437077, 29.293972>,  <41.467266, 34.199123, 29.283760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496834, 34.437077, 29.293972>,  <41.546116, 34.833664, 29.310993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496834, 34.437077, 29.293972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825436, -0.078581, -0.558999,
		0.550886, -0.103994, 0.828076,
		-0.123203, -0.991469, -0.042551,
		41.459873, 34.139637, 29.281206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170620, 34.439411, 29.659189>,  <41.546116, 34.833664, 29.310993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170620, 34.439411, 29.659189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993027, 34.187550, 29.404188>,  <41.886471, 34.036430, 29.251186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993027, 34.187550, 29.404188>,  <42.170620, 34.439411, 29.659189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993027, 34.187550, 29.404188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865652, -0.117712, -0.486611,
		0.231356, -0.767904, 0.597325,
		-0.443984, -0.629656, -0.637505,
		41.859833, 33.998653, 29.212936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569740, 33.904694, 29.717630>,  <42.170620, 34.439411, 29.659189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569740, 33.904694, 29.717630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396111, 33.888718, 29.357634>,  <42.291935, 33.879131, 29.141636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396111, 33.888718, 29.357634>,  <42.569740, 33.904694, 29.717630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396111, 33.888718, 29.357634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854462, -0.334786, -0.397256,
		-0.285440, -0.941447, 0.179446,
		-0.434072, -0.039937, -0.899993,
		42.265888, 33.876736, 29.087635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706566, 33.251537, 29.331898>,  <42.569740, 33.904694, 29.717630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706566, 33.251537, 29.331898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615688, 33.524426, 29.053917>,  <42.561161, 33.688160, 28.887129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615688, 33.524426, 29.053917>,  <42.706566, 33.251537, 29.331898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615688, 33.524426, 29.053917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824961, -0.244395, -0.509619,
		-0.517515, -0.689091, -0.507280,
		-0.227197, 0.682221, -0.694950,
		42.547527, 33.729092, 28.845432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845402, 32.948380, 28.682501>,  <42.706566, 33.251537, 29.331898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845402, 32.948380, 28.682501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850082, 33.334686, 28.578844>,  <42.852890, 33.566471, 28.516649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850082, 33.334686, 28.578844>,  <42.845402, 32.948380, 28.682501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850082, 33.334686, 28.578844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867913, -0.138508, -0.477013,
		-0.496578, -0.219334, -0.839823,
		0.011697, 0.965768, -0.259144,
		42.853592, 33.624416, 28.501101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042316, 32.877239, 27.939737>,  <42.845402, 32.948380, 28.682501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042316, 32.877239, 27.939737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110935, 33.249565, 28.068832>,  <43.152107, 33.472961, 28.146290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110935, 33.249565, 28.068832>,  <43.042316, 32.877239, 27.939737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110935, 33.249565, 28.068832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874325, 0.007125, -0.485288,
		-0.454012, 0.365427, -0.812611,
		0.171547, 0.930813, 0.322737,
		43.162399, 33.528809, 28.165653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182148, 33.109837, 27.323141>,  <43.042316, 32.877239, 27.939737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182148, 33.109837, 27.323141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295090, 33.389076, 27.586330>,  <43.362854, 33.556622, 27.744244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295090, 33.389076, 27.586330>,  <43.182148, 33.109837, 27.323141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295090, 33.389076, 27.586330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797512, 0.210376, -0.565434,
		-0.533153, 0.684394, -0.497346,
		0.282350, 0.698102, 0.657975,
		43.379795, 33.598507, 27.783724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241947, 33.807739, 26.951319>,  <43.182148, 33.109837, 27.323141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241947, 33.807739, 26.951319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461487, 33.776066, 27.284184>,  <43.593212, 33.757061, 27.483902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461487, 33.776066, 27.284184>,  <43.241947, 33.807739, 26.951319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461487, 33.776066, 27.284184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818139, 0.255110, -0.515332,
		-0.171488, 0.963664, 0.204799,
		0.548853, -0.079181, 0.832160,
		43.626144, 33.752312, 27.533831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786362, 34.207386, 26.777069>,  <43.241947, 33.807739, 26.951319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786362, 34.207386, 26.777069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922359, 34.054184, 27.120630>,  <44.003960, 33.962261, 27.326767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922359, 34.054184, 27.120630>,  <43.786362, 34.207386, 26.777069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922359, 34.054184, 27.120630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940020, 0.111537, -0.322368,
		0.027669, 0.916988, 0.397954,
		0.339994, -0.383005, 0.858901,
		44.024357, 33.939281, 27.378300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355824, 34.601070, 27.121962>,  <43.786362, 34.207386, 26.777069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355824, 34.601070, 27.121962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409504, 34.238907, 27.283073>,  <44.441711, 34.021610, 27.379740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409504, 34.238907, 27.283073>,  <44.355824, 34.601070, 27.121962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409504, 34.238907, 27.283073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990109, 0.105739, -0.092210,
		0.040897, 0.411171, 0.910640,
		0.134204, -0.905405, 0.402780,
		44.449764, 33.967285, 27.403908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792770, 34.700970, 27.664639>,  <44.355824, 34.601070, 27.121962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792770, 34.700970, 27.664639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813469, 34.328335, 27.520708>,  <44.825890, 34.104755, 27.434349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813469, 34.328335, 27.520708>,  <44.792770, 34.700970, 27.664639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813469, 34.328335, 27.520708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974336, 0.126136, -0.186438,
		0.219070, -0.340945, 0.914202,
		0.051749, -0.931583, -0.359827,
		44.828995, 34.048859, 27.412760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541245, 34.571766, 27.656109>,  <44.792770, 34.700970, 27.664639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541245, 34.571766, 27.656109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417377, 34.259583, 27.438858>,  <45.343056, 34.072273, 27.308508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417377, 34.259583, 27.438858>,  <45.541245, 34.571766, 27.656109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417377, 34.259583, 27.438858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869389, -0.001089, -0.494127,
		0.385055, -0.625205, 0.678860,
		-0.309671, -0.780460, -0.543127,
		45.324478, 34.025444, 27.275921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084663, 34.125336, 27.726078>,  <45.541245, 34.571766, 27.656109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084663, 34.125336, 27.726078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871986, 34.031406, 27.400583>,  <45.744381, 33.975048, 27.205286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871986, 34.031406, 27.400583>,  <46.084663, 34.125336, 27.726078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871986, 34.031406, 27.400583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829757, 0.048126, -0.556046,
		0.169732, -0.970847, 0.169256,
		-0.531690, -0.234820, -0.813736,
		45.712479, 33.960960, 27.156462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.310013, 33.478676, 27.458435>,  <46.084663, 34.125336, 27.726078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.310013, 33.478676, 27.458435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149807, 33.695717, 27.163092>,  <46.053684, 33.825939, 26.985886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149807, 33.695717, 27.163092>,  <46.310013, 33.478676, 27.458435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149807, 33.695717, 27.163092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810434, -0.166211, -0.561757,
		-0.427533, -0.823382, -0.373172,
		-0.400516, 0.542601, -0.738357,
		46.029652, 33.858498, 26.941584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243298, 32.786922, 27.167063>,  <46.310013, 33.478676, 27.458435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243298, 32.786922, 27.167063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438030, 32.455528, 27.277777>,  <46.554871, 32.256691, 27.344206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438030, 32.455528, 27.277777>,  <46.243298, 32.786922, 27.167063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438030, 32.455528, 27.277777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792862, -0.286144, 0.538045,
		-0.366562, -0.481388, -0.796177,
		0.486829, -0.828485, 0.276785,
		46.584080, 32.206982, 27.360813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756786, 32.318588, 27.079010>,  <46.243298, 32.786922, 27.167063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756786, 32.318588, 27.079010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043152, 32.165585, 27.312643>,  <46.214970, 32.073784, 27.452824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043152, 32.165585, 27.312643>,  <45.756786, 32.318588, 27.079010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043152, 32.165585, 27.312643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681538, -0.201259, 0.703563,
		-0.151564, -0.901768, -0.404776,
		0.715915, -0.382505, 0.584085,
		46.257927, 32.050831, 27.487869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420311, 31.823463, 27.309267>,  <45.756786, 32.318588, 27.079010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420311, 31.823463, 27.309267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726013, 31.838940, 27.566769>,  <45.909435, 31.848227, 27.721270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726013, 31.838940, 27.566769>,  <45.420311, 31.823463, 27.309267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726013, 31.838940, 27.566769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589869, -0.361584, 0.722019,
		0.260706, -0.931536, -0.253520,
		0.764256, 0.038691, 0.643752,
		45.955292, 31.850548, 27.759893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573143, 31.148129, 27.659292>,  <45.420311, 31.823463, 27.309267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573143, 31.148129, 27.659292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705105, 31.447407, 27.889549>,  <45.784283, 31.626974, 28.027704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705105, 31.447407, 27.889549>,  <45.573143, 31.148129, 27.659292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705105, 31.447407, 27.889549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596017, -0.307796, 0.741637,
		0.732072, -0.587760, 0.344397,
		0.329901, 0.748198, 0.575644,
		45.804073, 31.671865, 28.062243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372932, 30.852884, 28.404968>,  <45.573143, 31.148129, 27.659292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372932, 30.852884, 28.404968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502518, 31.210941, 28.527454>,  <45.580269, 31.425776, 28.600946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502518, 31.210941, 28.527454>,  <45.372932, 30.852884, 28.404968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502518, 31.210941, 28.527454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676339, -0.007194, 0.736555,
		0.661525, -0.445721, 0.603090,
		0.323960, 0.895143, 0.306217,
		45.599705, 31.479485, 28.619320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634205, 30.853788, 29.170191>,  <45.372932, 30.852884, 28.404968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634205, 30.853788, 29.170191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499203, 31.215040, 29.064020>,  <45.418201, 31.431791, 29.000319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499203, 31.215040, 29.064020>,  <45.634205, 30.853788, 29.170191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.499203, 31.215040, 29.064020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644934, -0.016459, 0.764061,
		0.685677, 0.429055, 0.588013,
		-0.337502, 0.903129, -0.265427,
		45.397953, 31.485979, 28.984392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463173, 31.163002, 29.810305>,  <45.634205, 30.853788, 29.170191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463173, 31.163002, 29.810305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265213, 31.394833, 29.551332>,  <45.146439, 31.533932, 29.395950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265213, 31.394833, 29.551332>,  <45.463173, 31.163002, 29.810305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265213, 31.394833, 29.551332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730099, 0.126676, 0.671496,
		0.471198, 0.805012, 0.360456,
		-0.494901, 0.579577, -0.647428,
		45.116741, 31.568707, 29.357103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222950, 31.817663, 30.188877>,  <45.463173, 31.163002, 29.810305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222950, 31.817663, 30.188877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986153, 31.767588, 29.870413>,  <44.844074, 31.737541, 29.679335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986153, 31.767588, 29.870413>,  <45.222950, 31.817663, 30.188877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986153, 31.767588, 29.870413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805930, 0.098013, 0.583842,
		0.004943, 0.987280, -0.158917,
		-0.591991, -0.125190, -0.796162,
		44.808556, 31.730030, 29.631565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751896, 32.255116, 30.304970>,  <45.222950, 31.817663, 30.188877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751896, 32.255116, 30.304970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572395, 32.006966, 30.047674>,  <44.464695, 31.858076, 29.893297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572395, 32.006966, 30.047674>,  <44.751896, 32.255116, 30.304970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572395, 32.006966, 30.047674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889355, 0.239504, 0.389468,
		-0.087558, 0.746842, -0.659212,
		-0.448755, -0.620375, -0.643237,
		44.437767, 31.820852, 29.854704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178085, 32.695271, 30.061344>,  <44.751896, 32.255116, 30.304970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178085, 32.695271, 30.061344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100178, 32.313808, 29.969603>,  <44.053432, 32.084930, 29.914557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100178, 32.313808, 29.969603>,  <44.178085, 32.695271, 30.061344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100178, 32.313808, 29.969603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951908, 0.127396, 0.278643,
		-0.236511, 0.272597, -0.932606,
		-0.194767, -0.953657, -0.229356,
		44.041748, 32.027710, 29.900795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561348, 32.684250, 29.709492>,  <44.178085, 32.695271, 30.061344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561348, 32.684250, 29.709492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574146, 32.295784, 29.804001>,  <43.581825, 32.062706, 29.860706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574146, 32.295784, 29.804001>,  <43.561348, 32.684250, 29.709492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574146, 32.295784, 29.804001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969320, 0.027486, 0.244259,
		-0.243709, -0.236839, -0.940486,
		0.031999, -0.971160, 0.236271,
		43.583748, 32.004436, 29.874882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949635, 32.416214, 29.453062>,  <43.561348, 32.684250, 29.709492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949635, 32.416214, 29.453062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057613, 32.136616, 29.717949>,  <43.122402, 31.968857, 29.876881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057613, 32.136616, 29.717949>,  <42.949635, 32.416214, 29.453062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057613, 32.136616, 29.717949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940357, -0.043517, 0.337395,
		-0.207020, -0.713799, -0.669054,
		0.269947, -0.698997, 0.662217,
		43.138599, 31.926916, 29.916615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390415, 31.984219, 29.480305>,  <42.949635, 32.416214, 29.453062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390415, 31.984219, 29.480305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617180, 31.959045, 29.808855>,  <42.753239, 31.943941, 30.005985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617180, 31.959045, 29.808855>,  <42.390415, 31.984219, 29.480305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617180, 31.959045, 29.808855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823108, -0.002963, 0.567877,
		-0.033310, -0.998013, -0.053487,
		0.566907, -0.062942, 0.821374,
		42.787251, 31.940166, 30.055267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192528, 31.381508, 29.806738>,  <42.390415, 31.984219, 29.480305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192528, 31.381508, 29.806738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350765, 31.587551, 30.110888>,  <42.445709, 31.711178, 30.293377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350765, 31.587551, 30.110888>,  <42.192528, 31.381508, 29.806738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350765, 31.587551, 30.110888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804242, -0.205506, 0.557640,
		0.443506, -0.832124, 0.332974,
		0.395597, 0.515109, 0.760372,
		42.469444, 31.742085, 30.338999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897690, 30.978424, 30.265352>,  <42.192528, 31.381508, 29.806738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897690, 30.978424, 30.265352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037167, 31.267574, 30.503971>,  <42.120853, 31.441065, 30.647142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037167, 31.267574, 30.503971>,  <41.897690, 30.978424, 30.265352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037167, 31.267574, 30.503971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773740, -0.137165, 0.618475,
		0.528905, -0.677229, 0.511488,
		0.348691, 0.722874, 0.596547,
		42.141773, 31.484436, 30.682936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882381, 30.720070, 30.995930>,  <41.897690, 30.978424, 30.265352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882381, 30.720070, 30.995930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876411, 31.120024, 30.997272>,  <41.872829, 31.359995, 30.998077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876411, 31.120024, 30.997272>,  <41.882381, 30.720070, 30.995930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876411, 31.120024, 30.997272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581390, -0.011408, 0.813545,
		0.813488, 0.010188, 0.581492,
		-0.014922, 0.999883, 0.003358,
		41.871933, 31.419989, 30.998280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955986, 30.805674, 31.633472>,  <41.882381, 30.720070, 30.995930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955986, 30.805674, 31.633472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793247, 31.145031, 31.497997>,  <41.695606, 31.348644, 31.416712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793247, 31.145031, 31.497997>,  <41.955986, 30.805674, 31.633472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793247, 31.145031, 31.497997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673919, -0.028454, 0.738258,
		0.616695, 0.528602, 0.583324,
		-0.406842, 0.848393, -0.338688,
		41.671196, 31.399549, 31.396391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856396, 31.198692, 32.225853>,  <41.955986, 30.805674, 31.633472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856396, 31.198692, 32.225853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621681, 31.367924, 31.949684>,  <41.480850, 31.469461, 31.783983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621681, 31.367924, 31.949684>,  <41.856396, 31.198692, 32.225853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621681, 31.367924, 31.949684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761925, 0.000174, 0.647666,
		0.274132, 0.906094, 0.322250,
		-0.586790, 0.423076, -0.690423,
		41.445644, 31.494846, 31.742558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588909, 31.907187, 32.494175>,  <41.856396, 31.198692, 32.225853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588909, 31.907187, 32.494175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339596, 31.757929, 32.219284>,  <41.190006, 31.668375, 32.054348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339596, 31.757929, 32.219284>,  <41.588909, 31.907187, 32.494175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339596, 31.757929, 32.219284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759073, 0.077469, 0.646380,
		-0.187954, 0.924533, -0.331529,
		-0.623283, -0.373144, -0.687228,
		41.152611, 31.645987, 32.013115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041187, 32.287243, 32.581120>,  <41.588909, 31.907187, 32.494175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041187, 32.287243, 32.581120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871727, 31.981403, 32.386837>,  <40.770050, 31.797901, 32.270267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871727, 31.981403, 32.386837>,  <41.041187, 32.287243, 32.581120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871727, 31.981403, 32.386837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876416, 0.210459, 0.433131,
		-0.228949, 0.609179, -0.759265,
		-0.423649, -0.764596, -0.485710,
		40.744633, 31.752024, 32.241123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357494, 32.480995, 32.265488>,  <41.041187, 32.287243, 32.581120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357494, 32.480995, 32.265488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368164, 32.081562, 32.283890>,  <40.374565, 31.841902, 32.294933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368164, 32.081562, 32.283890>,  <40.357494, 32.480995, 32.265488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368164, 32.081562, 32.283890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880507, -0.001681, 0.474030,
		-0.473282, -0.053155, -0.879306,
		0.026675, -0.998585, 0.046008,
		40.376167, 31.781986, 32.297691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727837, 32.322571, 32.079227>,  <40.357494, 32.480995, 32.265488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727837, 32.322571, 32.079227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853436, 31.989563, 32.261799>,  <39.928795, 31.789759, 32.371342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853436, 31.989563, 32.261799>,  <39.727837, 32.322571, 32.079227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853436, 31.989563, 32.261799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838958, -0.018237, 0.543891,
		-0.444474, -0.553702, -0.704171,
		0.313996, -0.832515, 0.456427,
		39.947636, 31.739809, 32.398727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074203, 31.853239, 32.195160>,  <39.727837, 32.322571, 32.079227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074203, 31.853239, 32.195160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336479, 31.715900, 32.464138>,  <39.493843, 31.633497, 32.625526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336479, 31.715900, 32.464138>,  <39.074203, 31.853239, 32.195160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336479, 31.715900, 32.464138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743713, -0.140064, 0.653661,
		-0.130226, -0.928717, -0.347168,
		0.655692, -0.343317, 0.672459,
		39.533184, 31.612896, 32.665871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725533, 31.269657, 32.533756>,  <39.074203, 31.853239, 32.195160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725533, 31.269657, 32.533756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047318, 31.344479, 32.759274>,  <39.240387, 31.389372, 32.894585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047318, 31.344479, 32.759274>,  <38.725533, 31.269657, 32.533756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047318, 31.344479, 32.759274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555745, -0.098138, 0.825540,
		0.209749, -0.977435, 0.025006,
		0.804458, 0.187054, 0.563789,
		39.288654, 31.400595, 32.928410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922413, 30.689541, 33.042271>,  <38.725533, 31.269657, 32.533756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922413, 30.689541, 33.042271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068123, 31.027765, 33.198391>,  <39.155548, 31.230700, 33.292061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068123, 31.027765, 33.198391>,  <38.922413, 30.689541, 33.042271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068123, 31.027765, 33.198391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587955, -0.116202, 0.800504,
		0.722227, -0.521082, 0.454821,
		0.364276, 0.845560, 0.390297,
		39.177406, 31.281433, 33.315479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995632, 30.560196, 33.827229>,  <38.922413, 30.689541, 33.042271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995632, 30.560196, 33.827229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043480, 30.955519, 33.789406>,  <39.072189, 31.192713, 33.766712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043480, 30.955519, 33.789406>,  <38.995632, 30.560196, 33.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043480, 30.955519, 33.789406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399719, 0.135116, 0.906625,
		0.908800, -0.070652, 0.411208,
		0.119616, 0.988308, -0.094553,
		39.079365, 31.252010, 33.761040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237206, 30.692860, 34.421307>,  <38.995632, 30.560196, 33.827229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237206, 30.692860, 34.421307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097321, 31.040495, 34.281368>,  <39.013390, 31.249075, 34.197407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097321, 31.040495, 34.281368>,  <39.237206, 30.692860, 34.421307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097321, 31.040495, 34.281368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457244, 0.167591, 0.873408,
		0.817697, 0.465405, 0.338776,
		-0.349712, 0.869087, -0.349842,
		38.992405, 31.301222, 34.176414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421646, 31.259552, 34.977352>,  <39.237206, 30.692860, 34.421307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421646, 31.259552, 34.977352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097126, 31.357546, 34.765022>,  <38.902416, 31.416342, 34.637623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097126, 31.357546, 34.765022>,  <39.421646, 31.259552, 34.977352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097126, 31.357546, 34.765022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449506, 0.319175, 0.834309,
		0.373819, 0.915483, -0.148825,
		-0.811297, 0.244983, -0.530829,
		38.853737, 31.431040, 34.605774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088940, 31.830297, 35.348312>,  <39.421646, 31.259552, 34.977352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088940, 31.830297, 35.348312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799740, 31.692442, 35.108814>,  <38.626221, 31.609730, 34.965115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799740, 31.692442, 35.108814>,  <39.088940, 31.830297, 35.348312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799740, 31.692442, 35.108814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637522, -0.001057, 0.770431,
		-0.266153, 0.938735, -0.218950,
		-0.722999, -0.344638, -0.598746,
		38.582840, 31.589050, 34.929192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523476, 32.126698, 35.693226>,  <39.088940, 31.830297, 35.348312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523476, 32.126698, 35.693226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385807, 31.857853, 35.430984>,  <38.303204, 31.696547, 35.273640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385807, 31.857853, 35.430984>,  <38.523476, 32.126698, 35.693226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385807, 31.857853, 35.430984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679789, -0.303262, 0.667771,
		-0.647635, 0.675499, -0.352519,
		-0.344173, -0.672111, -0.655600,
		38.282555, 31.656219, 35.234303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787457, 32.269455, 35.745369>,  <38.523476, 32.126698, 35.693226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787457, 32.269455, 35.745369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866417, 31.896053, 35.625629>,  <37.913795, 31.672012, 35.553787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866417, 31.896053, 35.625629>,  <37.787457, 32.269455, 35.745369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866417, 31.896053, 35.625629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713463, -0.346219, 0.609182,
		-0.672312, 0.093317, -0.734363,
		0.197403, -0.933501, -0.299345,
		37.925636, 31.616003, 35.535828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168949, 31.958122, 35.741638>,  <37.787457, 32.269455, 35.745369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168949, 31.958122, 35.741638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413605, 31.641672, 35.740070>,  <37.560398, 31.451801, 35.739128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413605, 31.641672, 35.740070>,  <37.168949, 31.958122, 35.741638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413605, 31.641672, 35.740070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624423, -0.485789, 0.611641,
		-0.485789, -0.371656, -0.791126,
		-0.611641, 0.791126, 0.003921,
		37.597095, 31.404335, 35.738895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698586, 31.401279, 35.674458>,  <37.168949, 31.958122, 35.741638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698586, 31.401279, 35.674458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042370, 31.262297, 35.824448>,  <37.248638, 31.178907, 35.914444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042370, 31.262297, 35.824448>,  <36.698586, 31.401279, 35.674458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042370, 31.262297, 35.824448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509919, -0.634722, 0.580612,
		0.036270, -0.690219, -0.722690,
		0.859458, -0.347454, 0.374977,
		37.300205, 31.158060, 35.936939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649300, 30.622826, 35.777897>,  <36.698586, 31.401279, 35.674458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649300, 30.622826, 35.777897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938416, 30.764523, 36.015244>,  <37.111885, 30.849541, 36.157654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938416, 30.764523, 36.015244>,  <36.649300, 30.622826, 35.777897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938416, 30.764523, 36.015244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400478, -0.485045, 0.777399,
		0.563200, -0.799526, -0.208717,
		0.722788, 0.354244, 0.593370,
		37.155251, 30.870796, 36.193256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876171, 29.958679, 36.213512>,  <36.649300, 30.622826, 35.777897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876171, 29.958679, 36.213512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010006, 30.295902, 36.381943>,  <37.090305, 30.498236, 36.483002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010006, 30.295902, 36.381943>,  <36.876171, 29.958679, 36.213512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010006, 30.295902, 36.381943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072304, -0.468479, 0.880511,
		0.939587, -0.264163, -0.217703,
		0.334588, 0.843057, 0.421076,
		37.110382, 30.548819, 36.508266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384987, 29.714296, 36.577442>,  <36.876171, 29.958679, 36.213512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384987, 29.714296, 36.577442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267654, 30.062853, 36.734734>,  <37.197254, 30.271988, 36.829109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267654, 30.062853, 36.734734>,  <37.384987, 29.714296, 36.577442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267654, 30.062853, 36.734734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056334, -0.394856, 0.917014,
		0.954350, 0.291139, 0.066733,
		-0.293329, 0.871394, 0.393232,
		37.179657, 30.324270, 36.852703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804111, 29.808039, 37.072613>,  <37.384987, 29.714296, 36.577442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804111, 29.808039, 37.072613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499115, 30.044962, 37.176750>,  <37.316116, 30.187115, 37.239231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499115, 30.044962, 37.176750>,  <37.804111, 29.808039, 37.072613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499115, 30.044962, 37.176750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082707, -0.309852, 0.947181,
		0.641689, 0.743750, 0.187272,
		-0.762492, 0.592307, 0.260342,
		37.270367, 30.222654, 37.254852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069927, 30.093588, 37.776661>,  <37.804111, 29.808039, 37.072613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069927, 30.093588, 37.776661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676933, 30.165867, 37.758453>,  <37.441135, 30.209234, 37.747528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676933, 30.165867, 37.758453>,  <38.069927, 30.093588, 37.776661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676933, 30.165867, 37.758453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047505, -0.006678, 0.998849,
		0.180186, 0.983516, 0.015145,
		-0.982485, 0.180698, -0.045519,
		37.382187, 30.220076, 37.744797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891201, 30.565601, 38.311817>,  <38.069927, 30.093588, 37.776661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891201, 30.565601, 38.311817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562859, 30.360104, 38.212013>,  <37.365852, 30.236805, 38.152130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562859, 30.360104, 38.212013>,  <37.891201, 30.565601, 38.311817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562859, 30.360104, 38.212013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242177, -0.082560, 0.966713,
		-0.517243, 0.853962, -0.056647,
		-0.820859, -0.513744, -0.249513,
		37.316601, 30.205980, 38.137157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242699, 30.835896, 38.650658>,  <37.891201, 30.565601, 38.311817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242699, 30.835896, 38.650658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187862, 30.453848, 38.545624>,  <37.154961, 30.224619, 38.482601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187862, 30.453848, 38.545624>,  <37.242699, 30.835896, 38.650658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187862, 30.453848, 38.545624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345747, -0.202279, 0.916265,
		-0.928260, 0.216397, -0.302500,
		-0.137087, -0.955121, -0.262586,
		37.146736, 30.167313, 38.466846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703197, 30.736465, 39.044388>,  <37.242699, 30.835896, 38.650658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703197, 30.736465, 39.044388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888424, 30.393126, 38.956020>,  <36.999557, 30.187120, 38.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888424, 30.393126, 38.956020>,  <36.703197, 30.736465, 39.044388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888424, 30.393126, 38.956020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052922, -0.275585, 0.959819,
		-0.884744, -0.432765, -0.173039,
		0.463063, -0.858352, -0.220920,
		37.027344, 30.135620, 38.889744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282372, 30.203403, 39.233387>,  <36.703197, 30.736465, 39.044388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282372, 30.203403, 39.233387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658031, 30.073006, 39.276714>,  <36.883427, 29.994768, 39.302711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658031, 30.073006, 39.276714>,  <36.282372, 30.203403, 39.233387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658031, 30.073006, 39.276714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160595, -0.137903, 0.977339,
		-0.303669, -0.935260, -0.181864,
		0.939146, -0.325994, 0.108321,
		36.939774, 29.975208, 39.309212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294960, 29.679693, 39.823914>,  <36.282372, 30.203403, 39.233387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294960, 29.679693, 39.823914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330929, 29.314428, 39.982937>,  <36.352512, 29.095270, 40.078350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330929, 29.314428, 39.982937>,  <36.294960, 29.679693, 39.823914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330929, 29.314428, 39.982937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381201, 0.400335, 0.833317,
		-0.920108, 0.076612, 0.384098,
		0.089926, -0.913161, 0.397556,
		36.357906, 29.040480, 40.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124699, 29.637110, 40.548244>,  <36.294960, 29.679693, 39.823914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124699, 29.637110, 40.548244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362640, 29.316814, 40.520046>,  <36.505405, 29.124638, 40.503128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362640, 29.316814, 40.520046>,  <36.124699, 29.637110, 40.548244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362640, 29.316814, 40.520046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446638, 0.256338, 0.857208,
		-0.668329, -0.541397, 0.510123,
		0.594853, -0.800737, -0.070491,
		36.541096, 29.076593, 40.498898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080643, 29.297785, 41.202503>,  <36.124699, 29.637110, 40.548244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080643, 29.297785, 41.202503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423431, 29.228380, 41.008389>,  <36.629105, 29.186737, 40.891922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423431, 29.228380, 41.008389>,  <36.080643, 29.297785, 41.202503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423431, 29.228380, 41.008389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515041, 0.322017, 0.794379,
		0.018435, -0.930698, 0.365323,
		0.856967, -0.173512, -0.485284,
		36.680523, 29.176327, 40.862804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568443, 28.817585, 41.590309>,  <36.080643, 29.297785, 41.202503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568443, 28.817585, 41.590309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764343, 29.077570, 41.357864>,  <36.881882, 29.233561, 41.218395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764343, 29.077570, 41.357864>,  <36.568443, 28.817585, 41.590309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764343, 29.077570, 41.357864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531327, 0.305953, 0.789990,
		0.691259, -0.695658, -0.195504,
		0.489748, 0.649964, -0.581115,
		36.911266, 29.272558, 41.183529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176853, 28.920446, 41.803802>,  <36.568443, 28.817585, 41.590309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176853, 28.920446, 41.803802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137554, 29.267822, 41.609417>,  <37.113976, 29.476248, 41.492786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137554, 29.267822, 41.609417>,  <37.176853, 28.920446, 41.803802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137554, 29.267822, 41.609417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527325, 0.459566, 0.714651,
		0.843964, -0.186047, -0.503102,
		-0.098250, 0.868438, -0.485965,
		37.108078, 29.528355, 41.463627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842800, 29.261534, 41.561340>,  <37.176853, 28.920446, 41.803802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842800, 29.261534, 41.561340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563450, 29.538748, 41.632866>,  <37.395840, 29.705076, 41.675781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563450, 29.538748, 41.632866>,  <37.842800, 29.261534, 41.561340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563450, 29.538748, 41.632866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589876, 0.415820, 0.692199,
		0.405364, 0.588892, -0.699204,
		-0.698374, 0.693036, 0.178815,
		37.353939, 29.746658, 41.686512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037476, 29.932384, 41.378204>,  <37.842800, 29.261534, 41.561340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037476, 29.932384, 41.378204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800270, 29.931068, 41.700279>,  <37.657948, 29.930279, 41.893524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800270, 29.931068, 41.700279>,  <38.037476, 29.932384, 41.378204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800270, 29.931068, 41.700279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682627, 0.528283, 0.504913,
		-0.427025, 0.849062, -0.311036,
		-0.593018, -0.003289, 0.805183,
		37.622364, 29.930082, 41.941833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892445, 30.618496, 41.386177>,  <38.037476, 29.932384, 41.378204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892445, 30.618496, 41.386177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925755, 30.420708, 41.732254>,  <37.945740, 30.302034, 41.939899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925755, 30.420708, 41.732254>,  <37.892445, 30.618496, 41.386177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925755, 30.420708, 41.732254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818106, 0.529662, 0.223967,
		-0.569007, 0.689170, 0.448638,
		0.083275, -0.494472, 0.865195,
		37.950737, 30.272366, 41.991814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451416, 31.078745, 41.703472>,  <37.892445, 30.618496, 41.386177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451416, 31.078745, 41.703472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318676, 30.854614, 42.007027>,  <38.239033, 30.720137, 42.189159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318676, 30.854614, 42.007027>,  <38.451416, 31.078745, 41.703472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318676, 30.854614, 42.007027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603432, 0.492262, 0.627334,
		-0.725083, 0.666119, 0.174760,
		-0.331852, -0.560325, 0.758888,
		38.219120, 30.686518, 42.234692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760445, 31.403255, 41.522869>,  <38.451416, 31.078745, 41.703472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760445, 31.403255, 41.522869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966911, 31.585899, 41.233021>,  <38.090794, 31.695486, 41.059113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966911, 31.585899, 41.233021>,  <37.760445, 31.403255, 41.522869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966911, 31.585899, 41.233021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144552, -0.880346, -0.451770,
		-0.844199, 0.128445, -0.520413,
		0.516171, 0.456611, -0.724620,
		38.121761, 31.722883, 41.015636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473370, 31.247219, 40.726051>,  <37.760445, 31.403255, 41.522869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473370, 31.247219, 40.726051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864803, 31.326305, 40.748966>,  <38.099663, 31.373756, 40.762714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864803, 31.326305, 40.748966>,  <37.473370, 31.247219, 40.726051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864803, 31.326305, 40.748966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196007, -0.809974, -0.552742,
		-0.062885, 0.552133, -0.831381,
		0.978584, 0.197716, 0.057287,
		38.158379, 31.385620, 40.766151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807743, 30.965942, 40.139771>,  <37.473370, 31.247219, 40.726051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807743, 30.965942, 40.139771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144558, 31.110250, 40.300182>,  <38.346645, 31.196836, 40.396427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144558, 31.110250, 40.300182>,  <37.807743, 30.965942, 40.139771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144558, 31.110250, 40.300182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538722, -0.524484, -0.659314,
		-0.027529, 0.771207, -0.635989,
		0.842034, 0.360771, 0.401027,
		38.397167, 31.218481, 40.420490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224487, 31.279575, 39.565701>,  <37.807743, 30.965942, 40.139771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224487, 31.279575, 39.565701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467762, 31.187986, 39.869724>,  <38.613728, 31.133032, 40.052139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467762, 31.187986, 39.869724>,  <38.224487, 31.279575, 39.565701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467762, 31.187986, 39.869724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703365, -0.288389, -0.649700,
		0.367956, 0.929733, -0.014341,
		0.608183, -0.228973, 0.760056,
		38.650215, 31.119295, 40.097740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896278, 31.640802, 39.566647>,  <38.224487, 31.279575, 39.565701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896278, 31.640802, 39.566647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072899, 31.341040, 39.764000>,  <39.178871, 31.161182, 39.882412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072899, 31.341040, 39.764000>,  <38.896278, 31.640802, 39.566647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072899, 31.341040, 39.764000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721673, -0.030105, -0.691579,
		0.533127, 0.661426, 0.527533,
		0.441547, -0.749406, 0.493383,
		39.205364, 31.116219, 39.912014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651611, 31.701872, 39.524155>,  <38.896278, 31.640802, 39.566647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651611, 31.701872, 39.524155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531906, 31.327667, 39.599266>,  <39.460083, 31.103146, 39.644333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531906, 31.327667, 39.599266>,  <39.651611, 31.701872, 39.524155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531906, 31.327667, 39.599266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683773, -0.347526, -0.641624,
		0.665504, -0.063616, 0.743678,
		-0.299265, -0.935510, 0.187781,
		39.442127, 31.047014, 39.655602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230808, 31.406273, 39.612286>,  <39.651611, 31.701872, 39.524155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230808, 31.406273, 39.612286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997295, 31.089100, 39.542477>,  <39.857189, 30.898796, 39.500591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997295, 31.089100, 39.542477>,  <40.230808, 31.406273, 39.612286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997295, 31.089100, 39.542477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678599, -0.358509, -0.641073,
		0.445761, -0.492675, 0.747375,
		-0.583781, -0.792933, -0.174520,
		39.822163, 30.851219, 39.490120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546467, 30.765512, 39.736572>,  <40.230808, 31.406273, 39.612286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546467, 30.765512, 39.736572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254208, 30.690420, 39.473995>,  <40.078854, 30.645365, 39.316448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254208, 30.690420, 39.473995>,  <40.546467, 30.765512, 39.736572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254208, 30.690420, 39.473995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672740, -0.362025, -0.645258,
		-0.116512, -0.913069, 0.390807,
		-0.730648, -0.187732, -0.656439,
		40.035015, 30.634100, 39.277065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307369, 30.117395, 39.774086>,  <40.546467, 30.765512, 39.736572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307369, 30.117395, 39.774086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350407, 30.314707, 39.428810>,  <40.376228, 30.433094, 39.221645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350407, 30.314707, 39.428810>,  <40.307369, 30.117395, 39.774086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350407, 30.314707, 39.428810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840877, -0.508371, -0.185698,
		-0.530422, -0.705858, -0.469486,
		0.107597, 0.493278, -0.863191,
		40.382687, 30.462690, 39.169853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369236, 29.702808, 39.062023>,  <40.307369, 30.117395, 39.774086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369236, 29.702808, 39.062023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583763, 30.034145, 39.126778>,  <40.712479, 30.232948, 39.165630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583763, 30.034145, 39.126778>,  <40.369236, 29.702808, 39.062023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583763, 30.034145, 39.126778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829466, -0.481826, -0.282543,
		-0.156042, 0.285813, -0.945496,
		0.536319, 0.828345, 0.161887,
		40.744659, 30.282648, 39.175343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093838, 29.971876, 38.895287>,  <40.369236, 29.702808, 39.062023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093838, 29.971876, 38.895287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081486, 30.104179, 38.518002>,  <41.074074, 30.183561, 38.291630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081486, 30.104179, 38.518002>,  <41.093838, 29.971876, 38.895287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081486, 30.104179, 38.518002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661889, 0.700340, 0.267258,
		0.748966, 0.632552, 0.197303,
		-0.030875, 0.330759, -0.943210,
		41.072224, 30.203407, 38.235039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062801, 30.698746, 38.870216>,  <41.093838, 29.971876, 38.895287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062801, 30.698746, 38.870216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875607, 30.508474, 38.572300>,  <40.763290, 30.394312, 38.393551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875607, 30.508474, 38.572300>,  <41.062801, 30.698746, 38.870216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875607, 30.508474, 38.572300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849898, 0.473228, 0.231796,
		0.242194, 0.741474, -0.625746,
		-0.467991, -0.475681, -0.744790,
		40.735210, 30.365770, 38.348862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645061, 31.125389, 38.336452>,  <41.062801, 30.698746, 38.870216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645061, 31.125389, 38.336452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394688, 30.858719, 38.498318>,  <40.244465, 30.698717, 38.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394688, 30.858719, 38.498318>,  <40.645061, 31.125389, 38.336452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394688, 30.858719, 38.498318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260839, 0.667963, 0.696986,
		-0.734964, 0.330713, -0.591994,
		-0.625932, -0.666675, 0.404666,
		40.206909, 30.658716, 38.619717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001251, 30.744951, 38.175144>,  <40.645061, 31.125389, 38.336452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001251, 30.744951, 38.175144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971443, 30.348789, 38.221695>,  <39.953560, 30.111092, 38.249626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971443, 30.348789, 38.221695>,  <40.001251, 30.744951, 38.175144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971443, 30.348789, 38.221695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541928, 0.138187, 0.828987,
		-0.837115, -0.001295, -0.547025,
		-0.074518, -0.990405, 0.116380,
		39.949089, 30.051668, 38.256607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271648, 30.369526, 38.115993>,  <40.001251, 30.744951, 38.175144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271648, 30.369526, 38.115993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544106, 30.234156, 38.375690>,  <39.707581, 30.152933, 38.531509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544106, 30.234156, 38.375690>,  <39.271648, 30.369526, 38.115993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544106, 30.234156, 38.375690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586480, 0.278619, 0.760535,
		-0.438274, -0.898799, -0.008699,
		0.681144, -0.338425, 0.649239,
		39.748447, 30.132627, 38.570461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971546, 29.986849, 38.647785>,  <39.271648, 30.369526, 38.115993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971546, 29.986849, 38.647785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289665, 30.179752, 38.794720>,  <39.480537, 30.295494, 38.882881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289665, 30.179752, 38.794720>,  <38.971546, 29.986849, 38.647785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289665, 30.179752, 38.794720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571288, 0.393480, 0.720280,
		0.202824, -0.782688, 0.588441,
		0.795294, 0.482259, 0.367333,
		39.528252, 30.324430, 38.904919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948517, 29.893702, 39.360634>,  <38.971546, 29.986849, 38.647785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948517, 29.893702, 39.360634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230762, 30.176872, 39.372948>,  <39.400108, 30.346775, 39.380337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230762, 30.176872, 39.372948>,  <38.948517, 29.893702, 39.360634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230762, 30.176872, 39.372948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462941, 0.427668, 0.776393,
		0.536464, -0.562085, 0.629497,
		0.705614, 0.707927, 0.030784,
		39.442448, 30.389250, 39.382183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218067, 29.829704, 39.997463>,  <38.948517, 29.893702, 39.360634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218067, 29.829704, 39.997463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277435, 30.213634, 39.902214>,  <39.313057, 30.443993, 39.845062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277435, 30.213634, 39.902214>,  <39.218067, 29.829704, 39.997463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277435, 30.213634, 39.902214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529782, 0.280496, 0.800408,
		0.835046, 0.007357, 0.550131,
		0.148421, 0.959827, -0.238125,
		39.321960, 30.501583, 39.830776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523888, 30.301601, 40.625565>,  <39.218067, 29.829704, 39.997463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523888, 30.301601, 40.625565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316517, 30.547895, 40.388210>,  <39.192093, 30.695671, 40.245800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316517, 30.547895, 40.388210>,  <39.523888, 30.301601, 40.625565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316517, 30.547895, 40.388210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330147, 0.495991, 0.803116,
		0.788819, 0.612262, -0.053853,
		-0.518428, 0.615734, -0.593383,
		39.160988, 30.732616, 40.210194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510101, 30.843718, 40.983418>,  <39.523888, 30.301601, 40.625565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510101, 30.843718, 40.983418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232857, 30.915070, 40.704056>,  <39.066509, 30.957882, 40.536438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232857, 30.915070, 40.704056>,  <39.510101, 30.843718, 40.983418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232857, 30.915070, 40.704056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385573, 0.726884, 0.568307,
		0.609037, 0.663188, -0.435035,
		-0.693115, 0.178382, -0.698406,
		39.024921, 30.968584, 40.494534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599049, 31.536312, 40.830788>,  <39.510101, 30.843718, 40.983418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599049, 31.536312, 40.830788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225876, 31.432354, 40.731110>,  <39.001972, 31.369978, 40.671303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225876, 31.432354, 40.731110>,  <39.599049, 31.536312, 40.830788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225876, 31.432354, 40.731110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355886, 0.770681, 0.528579,
		0.054672, 0.581811, -0.811485,
		-0.932929, -0.259897, -0.249193,
		38.945995, 31.354385, 40.656353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161873, 32.117237, 40.515457>,  <39.599049, 31.536312, 40.830788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161873, 32.117237, 40.515457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938305, 31.848679, 40.710121>,  <38.804165, 31.687544, 40.826920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938305, 31.848679, 40.710121>,  <39.161873, 32.117237, 40.515457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938305, 31.848679, 40.710121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224017, 0.687319, 0.690947,
		-0.798390, 0.277163, -0.534560,
		-0.558919, -0.671396, 0.486660,
		38.770630, 31.647261, 40.856117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404575, 32.456413, 40.637165>,  <39.161873, 32.117237, 40.515457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404575, 32.456413, 40.637165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490326, 32.148239, 40.877319>,  <38.541775, 31.963333, 41.021412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490326, 32.148239, 40.877319>,  <38.404575, 32.456413, 40.637165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490326, 32.148239, 40.877319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397343, 0.492732, 0.774167,
		-0.892279, -0.404522, -0.200500,
		0.214375, -0.770440, 0.600388,
		38.554638, 31.917107, 41.057434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253162, 33.187237, 40.722786>,  <38.404575, 32.456413, 40.637165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253162, 33.187237, 40.722786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925980, 33.416824, 40.707256>,  <37.729671, 33.554577, 40.697937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925980, 33.416824, 40.707256>,  <38.253162, 33.187237, 40.722786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925980, 33.416824, 40.707256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575149, -0.817351, 0.033764,
		-0.012353, 0.049946, 0.998675,
		-0.817955, 0.573970, -0.038824,
		37.680592, 33.589016, 40.695610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791080, 33.433132, 41.333668>,  <38.253162, 33.187237, 40.722786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791080, 33.433132, 41.333668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652485, 33.808121, 41.346867>,  <37.569328, 34.033115, 41.354786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652485, 33.808121, 41.346867>,  <37.791080, 33.433132, 41.333668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652485, 33.808121, 41.346867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074228, -0.062471, 0.995282,
		0.935113, 0.342403, 0.091233,
		-0.346487, 0.937474, 0.033002,
		37.548538, 34.089363, 41.356766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186142, 34.001789, 41.612759>,  <37.791080, 33.433132, 41.333668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186142, 34.001789, 41.612759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795860, 34.077389, 41.657085>,  <37.561691, 34.122749, 41.683681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795860, 34.077389, 41.657085>,  <38.186142, 34.001789, 41.612759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795860, 34.077389, 41.657085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080312, -0.162064, 0.983507,
		0.203846, 0.968511, 0.142948,
		-0.975703, 0.189004, 0.110819,
		37.503151, 34.134090, 41.690331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267948, 34.471596, 42.234394>,  <38.186142, 34.001789, 41.612759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267948, 34.471596, 42.234394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937675, 34.258636, 42.159775>,  <37.739513, 34.130859, 42.115002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937675, 34.258636, 42.159775>,  <38.267948, 34.471596, 42.234394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937675, 34.258636, 42.159775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001256, -0.328942, 0.944349,
		-0.564138, 0.779964, 0.270932,
		-0.825680, -0.532403, -0.186548,
		37.689972, 34.098915, 42.103809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809673, 34.598351, 42.766636>,  <38.267948, 34.471596, 42.234394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809673, 34.598351, 42.766636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670101, 34.950909, 42.639267>,  <38.586357, 35.162441, 42.562843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670101, 34.950909, 42.639267>,  <38.809673, 34.598351, 42.766636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670101, 34.950909, 42.639267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818449, 0.452114, 0.354589,
		0.456498, -0.136889, -0.879131,
		-0.348928, 0.881393, -0.318426,
		38.565422, 35.215328, 42.543739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344894, 34.961903, 42.363949>,  <38.809673, 34.598351, 42.766636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344894, 34.961903, 42.363949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090443, 35.250500, 42.473343>,  <38.937771, 35.423656, 42.538979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090443, 35.250500, 42.473343>,  <39.344894, 34.961903, 42.363949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090443, 35.250500, 42.473343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770922, 0.609009, 0.186513,
		-0.031988, 0.329483, -0.943620,
		-0.636126, 0.721491, 0.273487,
		38.899605, 35.466946, 42.555389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330677, 35.641754, 41.915955>,  <39.344894, 34.961903, 42.363949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330677, 35.641754, 41.915955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236694, 35.713188, 42.298138>,  <39.180305, 35.756046, 42.527447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236694, 35.713188, 42.298138>,  <39.330677, 35.641754, 41.915955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236694, 35.713188, 42.298138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793789, 0.602561, 0.082573,
		-0.560978, 0.777836, -0.283330,
		-0.234952, 0.178583, 0.955461,
		39.166210, 35.766762, 42.584778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787365, 36.235783, 42.061382>,  <39.330677, 35.641754, 41.915955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787365, 36.235783, 42.061382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985928, 35.895775, 42.131866>,  <40.105064, 35.691772, 42.174156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985928, 35.895775, 42.131866>,  <39.787365, 36.235783, 42.061382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985928, 35.895775, 42.131866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587719, 0.179700, -0.788856,
		0.638877, 0.495156, 0.588776,
		0.496410, -0.850017, 0.176206,
		40.134850, 35.640770, 42.184727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545727, 36.346294, 42.318741>,  <39.787365, 36.235783, 42.061382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545727, 36.346294, 42.318741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471863, 36.031551, 42.083195>,  <40.427544, 35.842705, 41.941868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471863, 36.031551, 42.083195>,  <40.545727, 36.346294, 42.318741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471863, 36.031551, 42.083195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675244, 0.333777, -0.657753,
		0.714105, -0.519085, 0.469685,
		-0.184659, -0.786857, -0.588861,
		40.416466, 35.795494, 41.906536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132828, 35.957474, 42.213551>,  <40.545727, 36.346294, 42.318741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132828, 35.957474, 42.213551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925808, 35.887722, 41.878471>,  <40.801594, 35.845871, 41.677425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925808, 35.887722, 41.878471>,  <41.132828, 35.957474, 42.213551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925808, 35.887722, 41.878471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822956, 0.166601, -0.543127,
		0.234270, -0.970483, 0.057280,
		-0.517552, -0.174378, -0.837694,
		40.770542, 35.835411, 41.627163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726902, 35.927910, 41.732563>,  <41.132828, 35.957474, 42.213551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726902, 35.927910, 41.732563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408791, 35.879696, 41.494907>,  <41.217922, 35.850765, 41.352314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408791, 35.879696, 41.494907>,  <41.726902, 35.927910, 41.732563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408791, 35.879696, 41.494907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599375, -0.009228, -0.800415,
		0.090998, -0.992666, 0.079587,
		-0.795279, -0.120539, -0.594140,
		41.170208, 35.843533, 41.316666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870422, 35.280991, 41.390865>,  <41.726902, 35.927910, 41.732563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870422, 35.280991, 41.390865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648224, 35.538940, 41.180893>,  <41.514904, 35.693710, 41.054909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648224, 35.538940, 41.180893>,  <41.870422, 35.280991, 41.390865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648224, 35.538940, 41.180893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540639, -0.199532, -0.817250,
		-0.631767, -0.737780, -0.237807,
		-0.555500, 0.644879, -0.524930,
		41.481575, 35.732403, 41.023415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499729, 34.938305, 40.727745>,  <41.870422, 35.280991, 41.390865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499729, 34.938305, 40.727745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604984, 35.321022, 40.678268>,  <41.668137, 35.550652, 40.648582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604984, 35.321022, 40.678268>,  <41.499729, 34.938305, 40.727745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604984, 35.321022, 40.678268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504846, -0.245818, -0.827468,
		-0.822124, 0.155295, -0.547719,
		0.263141, 0.956795, -0.123693,
		41.683926, 35.608059, 40.641159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291393, 35.158844, 40.063221>,  <41.499729, 34.938305, 40.727745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291393, 35.158844, 40.063221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621826, 35.352924, 40.177876>,  <41.820087, 35.469372, 40.246670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621826, 35.352924, 40.177876>,  <41.291393, 35.158844, 40.063221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621826, 35.352924, 40.177876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503185, -0.406038, -0.762849,
		-0.253751, 0.774410, -0.579569,
		0.826084, 0.485204, 0.286639,
		41.869652, 35.498486, 40.263866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585476, 35.513340, 39.490479>,  <41.291393, 35.158844, 40.063221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585476, 35.513340, 39.490479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895588, 35.459736, 39.737377>,  <42.081654, 35.427574, 39.885517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895588, 35.459736, 39.737377>,  <41.585476, 35.513340, 39.490479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895588, 35.459736, 39.737377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618185, -0.039515, -0.785039,
		0.129590, 0.990192, 0.052206,
		0.775276, -0.134006, 0.617243,
		42.128170, 35.419533, 39.922550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982323, 36.142918, 39.490711>,  <41.585476, 35.513340, 39.490479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982323, 36.142918, 39.490711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190571, 35.806179, 39.547638>,  <42.315521, 35.604137, 39.581795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190571, 35.806179, 39.547638>,  <41.982323, 36.142918, 39.490711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190571, 35.806179, 39.547638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561999, 0.212411, -0.799399,
		0.642738, 0.496167, 0.583700,
		0.520620, -0.841843, 0.142321,
		42.346756, 35.553627, 39.590336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797680, 36.047821, 39.264217>,  <41.982323, 36.142918, 39.490711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797680, 36.047821, 39.264217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749252, 35.651073, 39.279892>,  <42.720196, 35.413025, 39.289295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749252, 35.651073, 39.279892>,  <42.797680, 36.047821, 39.264217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749252, 35.651073, 39.279892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772581, -0.118937, -0.623677,
		0.623267, -0.045234, 0.780700,
		-0.121065, -0.991871, 0.039182,
		42.712933, 35.353512, 39.291645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347919, 35.801647, 39.410103>,  <42.797680, 36.047821, 39.264217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347919, 35.801647, 39.410103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156757, 35.517742, 39.203087>,  <43.042061, 35.347401, 39.078876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156757, 35.517742, 39.203087>,  <43.347919, 35.801647, 39.410103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156757, 35.517742, 39.203087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804416, -0.116935, -0.582444,
		0.352879, -0.694668, 0.626828,
		-0.477903, -0.709763, -0.517538,
		43.013386, 35.304813, 39.047825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710453, 35.217144, 39.529823>,  <43.347919, 35.801647, 39.410103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710453, 35.217144, 39.529823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541397, 35.173489, 39.169945>,  <43.439964, 35.147297, 38.954018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541397, 35.173489, 39.169945>,  <43.710453, 35.217144, 39.529823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541397, 35.173489, 39.169945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905878, -0.081023, -0.415717,
		-0.027525, -0.990719, 0.133111,
		-0.422643, -0.109140, -0.899701,
		43.414604, 35.140747, 38.900036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199673, 34.966393, 39.125111>,  <43.710453, 35.217144, 39.529823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199673, 34.966393, 39.125111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963898, 35.049999, 38.812988>,  <43.822433, 35.100163, 38.625713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963898, 35.049999, 38.812988>,  <44.199673, 34.966393, 39.125111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963898, 35.049999, 38.812988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790676, -0.048652, -0.610298,
		-0.165524, -0.976701, -0.136585,
		-0.589434, 0.209014, -0.780308,
		43.787067, 35.112705, 38.578896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247620, 34.422935, 38.435120>,  <44.199673, 34.966393, 39.125111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247620, 34.422935, 38.435120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118042, 34.786026, 38.328468>,  <44.040295, 35.003880, 38.264477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118042, 34.786026, 38.328468>,  <44.247620, 34.422935, 38.435120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118042, 34.786026, 38.328468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682265, 0.028900, -0.730533,
		-0.655421, -0.418560, -0.628674,
		-0.323940, 0.907729, -0.266627,
		44.020859, 35.058346, 38.248482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044178, 34.225834, 37.833050>,  <44.247620, 34.422935, 38.435120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044178, 34.225834, 37.833050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195278, 34.583469, 37.929306>,  <44.285938, 34.798050, 37.987061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195278, 34.583469, 37.929306>,  <44.044178, 34.225834, 37.833050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195278, 34.583469, 37.929306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805118, -0.188828, -0.562254,
		-0.457264, 0.406139, -0.791177,
		0.377749, 0.894089, 0.240645,
		44.308601, 34.851696, 38.001499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508492, 34.409088, 37.385075>,  <44.044178, 34.225834, 37.833050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508492, 34.409088, 37.385075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620491, 34.714081, 37.618389>,  <44.687691, 34.897076, 37.758377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620491, 34.714081, 37.618389>,  <44.508492, 34.409088, 37.385075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620491, 34.714081, 37.618389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930209, -0.065295, -0.361176,
		-0.237304, 0.643708, -0.727548,
		0.279997, 0.762480, 0.583289,
		44.704491, 34.942825, 37.793377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944859, 33.690445, 37.268612>,  <44.508492, 34.409088, 37.385075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944859, 33.690445, 37.268612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087826, 34.046097, 37.154282>,  <45.173607, 34.259487, 37.085682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087826, 34.046097, 37.154282>,  <44.944859, 33.690445, 37.268612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087826, 34.046097, 37.154282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738649, -0.081832, 0.669105,
		0.571534, -0.450273, -0.686005,
		0.357417, 0.889133, -0.285824,
		45.195049, 34.312836, 37.068535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629951, 33.628716, 37.232311>,  <44.944859, 33.690445, 37.268612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629951, 33.628716, 37.232311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583149, 34.025654, 37.248077>,  <45.555069, 34.263817, 37.257538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583149, 34.025654, 37.248077>,  <45.629951, 33.628716, 37.232311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583149, 34.025654, 37.248077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822450, 0.074573, 0.563928,
		0.556675, 0.098395, -0.824883,
		-0.117002, 0.992349, 0.039412,
		45.548050, 34.323360, 37.259899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249752, 33.870247, 36.965050>,  <45.629951, 33.628716, 37.232311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249752, 33.870247, 36.965050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530552, 34.151443, 36.919441>,  <46.699032, 34.320160, 36.892075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530552, 34.151443, 36.919441>,  <46.249752, 33.870247, 36.965050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530552, 34.151443, 36.919441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071721, -0.089507, -0.993400,
		-0.708554, 0.705548, -0.012415,
		0.702003, 0.702987, -0.114024,
		46.741154, 34.362339, 36.885235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961700, 34.505558, 36.494942>,  <46.249752, 33.870247, 36.965050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961700, 34.505558, 36.494942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345329, 34.392452, 36.488964>,  <46.575508, 34.324589, 36.485378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345329, 34.392452, 36.488964>,  <45.961700, 34.505558, 36.494942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345329, 34.392452, 36.488964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020263, -0.015900, -0.999668,
		0.282437, 0.959057, -0.020979,
		0.959072, -0.282768, -0.014943,
		46.633049, 34.307621, 36.484482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785599, 35.141323, 36.345772>,  <45.961700, 34.505558, 36.494942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785599, 35.141323, 36.345772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585564, 34.883530, 36.577133>,  <45.465542, 34.728851, 36.715950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585564, 34.883530, 36.577133>,  <45.785599, 35.141323, 36.345772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585564, 34.883530, 36.577133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787090, 0.059757, -0.613937,
		0.361111, -0.762275, -0.537154,
		-0.500088, -0.644489, 0.578400,
		45.435535, 34.690182, 36.750652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414177, 35.584949, 36.247971>,  <45.785599, 35.141323, 36.345772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414177, 35.584949, 36.247971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.159855, 35.536839, 36.552940>,  <46.007263, 35.507973, 36.735924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.159855, 35.536839, 36.552940>,  <46.414177, 35.584949, 36.247971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159855, 35.536839, 36.552940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314120, -0.861963, -0.397931,
		0.705043, -0.492498, 0.510255,
		-0.635801, -0.120277, 0.762424,
		45.969116, 35.500755, 36.781666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220329, 35.680733, 35.450058>,  <46.414177, 35.584949, 36.247971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220329, 35.680733, 35.450058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383953, 35.337681, 35.574726>,  <46.482128, 35.131847, 35.649529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383953, 35.337681, 35.574726>,  <46.220329, 35.680733, 35.450058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383953, 35.337681, 35.574726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594589, -0.008580, -0.803984,
		0.692196, 0.514193, 0.506429,
		0.409057, -0.857632, 0.311673,
		46.506672, 35.080391, 35.668228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953362, 35.718647, 35.641338>,  <46.220329, 35.680733, 35.450058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953362, 35.718647, 35.641338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849556, 35.370758, 35.473419>,  <46.787273, 35.162025, 35.372669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849556, 35.370758, 35.473419>,  <46.953362, 35.718647, 35.641338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849556, 35.370758, 35.473419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810449, 0.040266, -0.584424,
		0.525193, -0.491890, 0.694419,
		-0.259511, -0.869726, -0.419799,
		46.771702, 35.109840, 35.347481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.520931, 35.297874, 35.609879>,  <46.953362, 35.718647, 35.641338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.520931, 35.297874, 35.609879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288399, 35.122334, 35.335808>,  <47.148880, 35.017010, 35.171368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288399, 35.122334, 35.335808>,  <47.520931, 35.297874, 35.609879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288399, 35.122334, 35.335808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747570, 0.044385, -0.662698,
		0.321236, -0.897463, 0.302269,
		-0.581332, -0.438850, -0.685175,
		47.113998, 34.990677, 35.130257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.957905, 35.433804, 34.998768>,  <47.520931, 35.297874, 35.609879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.957905, 35.433804, 34.998768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.761124, 35.180317, 34.759975>,  <47.643055, 35.028225, 34.616699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.761124, 35.180317, 34.759975>,  <47.957905, 35.433804, 34.998768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.761124, 35.180317, 34.759975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868510, 0.309479, 0.387187,
		-0.060616, 0.708957, -0.702642,
		-0.491952, -0.633721, -0.596977,
		47.613537, 34.990200, 34.580883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.593426, 26.945168, 30.814697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.320164, 26.994936, 30.526859>,  <41.156208, 27.024797, 30.354156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.320164, 26.994936, 30.526859>,  <41.593426, 26.945168, 30.814697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320164, 26.994936, 30.526859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730238, -0.126058, 0.671462,
		-0.007166, 0.984189, 0.176975,
		-0.683155, 0.124422, -0.719596,
		41.115219, 27.032263, 30.310980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067482, 27.375502, 31.078005>,  <41.593426, 26.945168, 30.814697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067482, 27.375502, 31.078005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867016, 27.218647, 30.769445>,  <40.746735, 27.124535, 30.584309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867016, 27.218647, 30.769445>,  <41.067482, 27.375502, 31.078005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867016, 27.218647, 30.769445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848301, 0.046555, 0.527464,
		-0.170925, 0.918729, -0.355981,
		-0.501169, -0.392136, -0.771401,
		40.716663, 27.101006, 30.538025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424992, 27.743937, 31.116371>,  <41.067482, 27.375502, 31.078005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424992, 27.743937, 31.116371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350990, 27.415949, 30.899698>,  <40.306587, 27.219156, 30.769693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350990, 27.415949, 30.899698>,  <40.424992, 27.743937, 31.116371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350990, 27.415949, 30.899698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833296, -0.161300, 0.528772,
		-0.520951, 0.549209, -0.653437,
		-0.185007, -0.819970, -0.541684,
		40.295486, 27.169958, 30.737194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714146, 27.772793, 30.853365>,  <40.424992, 27.743937, 31.116371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714146, 27.772793, 30.853365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821926, 27.387712, 30.863195>,  <39.886597, 27.156664, 30.869093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821926, 27.387712, 30.863195>,  <39.714146, 27.772793, 30.853365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821926, 27.387712, 30.863195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876304, -0.234531, 0.420817,
		-0.399357, -0.134925, -0.906813,
		0.269455, -0.962699, 0.024574,
		39.902763, 27.098902, 30.870567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098434, 27.440054, 30.586567>,  <39.714146, 27.772793, 30.853365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098434, 27.440054, 30.586567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.318893, 27.198534, 30.816927>,  <39.451168, 27.053623, 30.955143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.318893, 27.198534, 30.816927>,  <39.098434, 27.440054, 30.586567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318893, 27.198534, 30.816927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772431, -0.108182, 0.625817,
		-0.315566, -0.789762, -0.526017,
		0.551152, -0.603799, 0.575899,
		39.484238, 27.017395, 30.989697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770916, 26.844044, 30.643358>,  <39.098434, 27.440054, 30.586567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770916, 26.844044, 30.643358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.017517, 26.845346, 30.958296>,  <39.165478, 26.846128, 31.147259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.017517, 26.845346, 30.958296>,  <38.770916, 26.844044, 30.643358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017517, 26.845346, 30.958296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786082, -0.054254, 0.615737,
		0.044723, -0.998522, -0.030887,
		0.616503, 0.003258, 0.787346,
		39.202469, 26.846325, 31.194500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491993, 26.317720, 31.090717>,  <38.770916, 26.844044, 30.643358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491993, 26.317720, 31.090717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.723927, 26.527479, 31.340134>,  <38.863087, 26.653336, 31.489784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.723927, 26.527479, 31.340134>,  <38.491993, 26.317720, 31.090717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723927, 26.527479, 31.340134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771329, 0.106839, 0.627405,
		0.262393, -0.844742, 0.466434,
		0.579829, 0.524400, 0.623540,
		38.897877, 26.684799, 31.527197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266102, 26.062061, 31.714039>,  <38.491993, 26.317720, 31.090717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266102, 26.062061, 31.714039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455326, 26.400776, 31.811337>,  <38.568863, 26.604004, 31.869715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455326, 26.400776, 31.811337>,  <38.266102, 26.062061, 31.714039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455326, 26.400776, 31.811337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713412, 0.206171, 0.669729,
		0.516966, -0.490356, 0.701638,
		0.473064, 0.846784, 0.243242,
		38.597244, 26.654812, 31.884310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457439, 25.962990, 32.479317>,  <38.266102, 26.062061, 31.714039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457439, 25.962990, 32.479317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444092, 26.349148, 32.375854>,  <38.436085, 26.580843, 32.313778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444092, 26.349148, 32.375854>,  <38.457439, 25.962990, 32.479317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444092, 26.349148, 32.375854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720373, 0.156164, 0.675778,
		0.692784, 0.208878, 0.690232,
		-0.033365, 0.965392, -0.258658,
		38.434082, 26.638765, 32.298256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630470, 26.343225, 33.026772>,  <38.457439, 25.962990, 32.479317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630470, 26.343225, 33.026772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405159, 26.583755, 32.800098>,  <38.269974, 26.728073, 32.664093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405159, 26.583755, 32.800098>,  <38.630470, 26.343225, 33.026772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405159, 26.583755, 32.800098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692662, 0.030278, 0.720626,
		0.450489, 0.798431, 0.399461,
		-0.563275, 0.601325, -0.566683,
		38.236176, 26.764153, 32.630093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439899, 26.905218, 33.470314>,  <38.630470, 26.343225, 33.026772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439899, 26.905218, 33.470314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175114, 26.937496, 33.172245>,  <38.016243, 26.956863, 32.993404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175114, 26.937496, 33.172245>,  <38.439899, 26.905218, 33.470314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175114, 26.937496, 33.172245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697274, 0.298422, 0.651731,
		0.274968, 0.951017, -0.141279,
		-0.661968, 0.080695, -0.745176,
		37.976524, 26.961704, 32.948692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113926, 27.595655, 33.622345>,  <38.439899, 26.905218, 33.470314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113926, 27.595655, 33.622345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875782, 27.364960, 33.398590>,  <37.732895, 27.226542, 33.264336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875782, 27.364960, 33.398590>,  <38.113926, 27.595655, 33.622345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875782, 27.364960, 33.398590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761832, 0.184036, 0.621081,
		-0.255255, 0.795928, -0.548947,
		-0.595362, -0.576740, -0.559388,
		37.697174, 27.191938, 33.230774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471878, 27.894140, 33.710720>,  <38.113926, 27.595655, 33.622345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471878, 27.894140, 33.710720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370697, 27.528780, 33.583149>,  <37.309990, 27.309565, 33.506607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370697, 27.528780, 33.583149>,  <37.471878, 27.894140, 33.710720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370697, 27.528780, 33.583149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765275, -0.012784, 0.643576,
		-0.591919, 0.406865, -0.695768,
		-0.252954, -0.913399, -0.318931,
		37.294811, 27.254761, 33.487469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776081, 27.908388, 33.582638>,  <37.471878, 27.894140, 33.710720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776081, 27.908388, 33.582638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.860588, 27.518768, 33.615128>,  <36.911293, 27.284996, 33.634621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.860588, 27.518768, 33.615128>,  <36.776081, 27.908388, 33.582638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860588, 27.518768, 33.615128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639196, -0.074812, 0.765396,
		-0.739457, -0.213619, -0.638413,
		0.211264, -0.974049, 0.081225,
		36.923965, 27.226553, 33.639496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141766, 27.641710, 33.753551>,  <36.776081, 27.908388, 33.582638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141766, 27.641710, 33.753551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397900, 27.348619, 33.845703>,  <36.551582, 27.172764, 33.900993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397900, 27.348619, 33.845703>,  <36.141766, 27.641710, 33.753551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397900, 27.348619, 33.845703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478754, -0.146207, 0.865689,
		-0.600633, -0.664629, -0.444419,
		0.640339, -0.732729, 0.230377,
		36.590000, 27.128801, 33.914818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746632, 27.155615, 33.980518>,  <36.141766, 27.641710, 33.753551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746632, 27.155615, 33.980518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109821, 27.078619, 34.129398>,  <36.327736, 27.032421, 34.218727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109821, 27.078619, 34.129398>,  <35.746632, 27.155615, 33.980518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109821, 27.078619, 34.129398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418015, -0.354381, 0.836467,
		-0.029114, -0.915074, -0.402233,
		0.907973, -0.192492, 0.372198,
		36.382214, 27.020872, 34.241058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716766, 26.416731, 34.234692>,  <35.746632, 27.155615, 33.980518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716766, 26.416731, 34.234692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997562, 26.613035, 34.441132>,  <36.166042, 26.730818, 34.564995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997562, 26.613035, 34.441132>,  <35.716766, 26.416731, 34.234692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997562, 26.613035, 34.441132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433006, -0.281238, 0.856394,
		0.565432, -0.824657, 0.015076,
		0.701992, 0.490760, 0.516102,
		36.208160, 26.760263, 34.595963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808735, 25.983126, 34.733833>,  <35.716766, 26.416731, 34.234692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808735, 25.983126, 34.733833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968365, 26.327362, 34.860401>,  <36.064144, 26.533903, 34.936344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968365, 26.327362, 34.860401>,  <35.808735, 25.983126, 34.733833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968365, 26.327362, 34.860401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335794, -0.183947, 0.923800,
		0.853217, -0.474921, 0.215571,
		0.399078, 0.860589, 0.316423,
		36.088089, 26.585539, 34.955326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114033, 25.876762, 35.396309>,  <35.808735, 25.983126, 34.733833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114033, 25.876762, 35.396309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038128, 26.269306, 35.384167>,  <35.992584, 26.504833, 35.376881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038128, 26.269306, 35.384167>,  <36.114033, 25.876762, 35.396309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038128, 26.269306, 35.384167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240576, -0.016505, 0.970490,
		0.951899, 0.191469, 0.239223,
		-0.189767, 0.981360, -0.030352,
		35.981197, 26.563715, 35.375061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111946, 26.088083, 36.097591>,  <36.114033, 25.876762, 35.396309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111946, 26.088083, 36.097591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992664, 26.428429, 35.924572>,  <35.921097, 26.632637, 35.820759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992664, 26.428429, 35.924572>,  <36.111946, 26.088083, 36.097591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992664, 26.428429, 35.924572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477710, 0.259290, 0.839382,
		0.826357, 0.456943, 0.329145,
		-0.298206, 0.850865, -0.432552,
		35.903202, 26.683689, 35.794807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141811, 26.629049, 36.509182>,  <36.111946, 26.088083, 36.097591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141811, 26.629049, 36.509182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.865456, 26.795330, 36.272587>,  <35.699642, 26.895098, 36.130630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.865456, 26.795330, 36.272587>,  <36.141811, 26.629049, 36.509182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865456, 26.795330, 36.272587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481760, 0.345305, 0.805402,
		0.539051, 0.841401, -0.038300,
		-0.690892, 0.415702, -0.591490,
		35.658188, 26.920040, 36.095139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178158, 27.031763, 37.132076>,  <36.141811, 26.629049, 36.509182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178158, 27.031763, 37.132076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.373478, 27.263935, 37.392742>,  <36.490669, 27.403238, 37.549141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.373478, 27.263935, 37.392742>,  <36.178158, 27.031763, 37.132076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373478, 27.263935, 37.392742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563869, 0.360078, -0.743233,
		-0.666044, 0.730373, -0.151461,
		0.488299, 0.580431, 0.651662,
		36.519966, 27.438065, 37.588242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476101, 27.573986, 36.722416>,  <36.178158, 27.031763, 37.132076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476101, 27.573986, 36.722416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719044, 27.590576, 37.039753>,  <36.864811, 27.600531, 37.230156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719044, 27.590576, 37.039753>,  <36.476101, 27.573986, 36.722416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719044, 27.590576, 37.039753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727377, 0.372518, -0.576327,
		-0.319438, 0.927098, 0.196085,
		0.607356, 0.041473, 0.793346,
		36.901249, 27.603018, 37.277756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957108, 28.070658, 36.562077>,  <36.476101, 27.573986, 36.722416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957108, 28.070658, 36.562077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138241, 27.912174, 36.881565>,  <37.246922, 27.817083, 37.073257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138241, 27.912174, 36.881565>,  <36.957108, 28.070658, 36.562077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138241, 27.912174, 36.881565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890334, 0.153355, -0.428705,
		0.047369, 0.905262, 0.422205,
		0.452837, -0.396211, 0.798721,
		37.274094, 27.793310, 37.121181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518394, 28.566132, 36.851643>,  <36.957108, 28.070658, 36.562077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518394, 28.566132, 36.851643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620659, 28.192324, 36.950684>,  <37.682018, 27.968039, 37.010109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620659, 28.192324, 36.950684>,  <37.518394, 28.566132, 36.851643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620659, 28.192324, 36.950684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844247, 0.091027, -0.528167,
		0.471046, 0.344068, 0.812239,
		0.255661, -0.934522, 0.247601,
		37.697357, 27.911966, 37.024963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259422, 28.487860, 36.871117>,  <37.518394, 28.566132, 36.851643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259422, 28.487860, 36.871117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183796, 28.095673, 36.849445>,  <38.138420, 27.860359, 36.836441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183796, 28.095673, 36.849445>,  <38.259422, 28.487860, 36.871117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183796, 28.095673, 36.849445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741451, -0.106366, -0.662522,
		0.643820, -0.165429, 0.747080,
		-0.189064, -0.980469, -0.054177,
		38.127075, 27.801533, 36.833191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851349, 28.155502, 37.116051>,  <38.259422, 28.487860, 36.871117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851349, 28.155502, 37.116051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.660404, 27.890213, 36.885483>,  <38.545837, 27.731039, 36.747143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.660404, 27.890213, 36.885483>,  <38.851349, 28.155502, 37.116051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660404, 27.890213, 36.885483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834663, -0.137158, -0.533408,
		0.274708, -0.735746, 0.619042,
		-0.477360, -0.663224, -0.576422,
		38.517197, 27.691246, 36.712555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307400, 27.591125, 36.924580>,  <38.851349, 28.155502, 37.116051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307400, 27.591125, 36.924580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031029, 27.589846, 36.635410>,  <38.865208, 27.589077, 36.461910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031029, 27.589846, 36.635410>,  <39.307400, 27.591125, 36.924580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031029, 27.589846, 36.635410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701842, -0.242718, -0.669706,
		-0.173324, -0.970092, 0.169944,
		-0.690925, -0.003198, -0.722920,
		38.823750, 27.588886, 36.418533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555054, 27.086685, 36.518105>,  <39.307400, 27.591125, 36.924580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555054, 27.086685, 36.518105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319942, 27.326738, 36.301086>,  <39.178875, 27.470770, 36.170876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319942, 27.326738, 36.301086>,  <39.555054, 27.086685, 36.518105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319942, 27.326738, 36.301086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748274, 0.148315, -0.646598,
		-0.307576, -0.786031, -0.536240,
		-0.587778, 0.600132, -0.542548,
		39.143608, 27.506779, 36.138321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898815, 27.080564, 35.941326>,  <39.555054, 27.086685, 36.518105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898815, 27.080564, 35.941326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.637852, 27.357786, 35.818661>,  <39.481274, 27.524118, 35.745060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.637852, 27.357786, 35.818661>,  <39.898815, 27.080564, 35.941326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637852, 27.357786, 35.818661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695430, 0.386619, -0.605725,
		-0.301238, -0.608442, -0.734203,
		-0.652406, 0.693054, -0.306665,
		39.442131, 27.565702, 35.726662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036621, 27.133327, 35.167198>,  <39.898815, 27.080564, 35.941326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036621, 27.133327, 35.167198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807892, 27.459658, 35.201710>,  <39.670654, 27.655457, 35.222416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.807892, 27.459658, 35.201710>,  <40.036621, 27.133327, 35.167198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807892, 27.459658, 35.201710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416003, 0.379002, -0.826619,
		-0.707078, -0.436788, -0.556109,
		-0.571823, 0.815827, 0.086279,
		39.636345, 27.704407, 35.227592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649807, 27.155813, 34.500694>,  <40.036621, 27.133327, 35.167198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649807, 27.155813, 34.500694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668949, 27.515900, 34.673817>,  <39.680435, 27.731951, 34.777691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668949, 27.515900, 34.673817>,  <39.649807, 27.155813, 34.500694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668949, 27.515900, 34.673817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484719, 0.357936, -0.798079,
		-0.873360, 0.247981, -0.419222,
		0.047854, 0.900215, 0.432808,
		39.683304, 27.785965, 34.803658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445210, 27.597151, 33.973270>,  <39.649807, 27.155813, 34.500694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445210, 27.597151, 33.973270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628704, 27.830910, 34.241013>,  <39.738800, 27.971165, 34.401657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628704, 27.830910, 34.241013>,  <39.445210, 27.597151, 33.973270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628704, 27.830910, 34.241013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567396, 0.387070, -0.726800,
		-0.683828, 0.713201, -0.154022,
		0.458738, 0.584398, 0.669357,
		39.766327, 28.006229, 34.441818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511925, 28.315760, 33.710148>,  <39.445210, 27.597151, 33.973270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511925, 28.315760, 33.710148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801674, 28.292377, 33.984921>,  <39.975521, 28.278349, 34.149784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801674, 28.292377, 33.984921>,  <39.511925, 28.315760, 33.710148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801674, 28.292377, 33.984921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626492, 0.471684, -0.620501,
		-0.287741, 0.879828, 0.378297,
		0.724371, -0.058456, 0.686928,
		40.018986, 28.274841, 34.190998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900471, 28.939430, 33.700245>,  <39.511925, 28.315760, 33.710148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900471, 28.939430, 33.700245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.158554, 28.688679, 33.874935>,  <40.313404, 28.538229, 33.979748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.158554, 28.688679, 33.874935>,  <39.900471, 28.939430, 33.700245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158554, 28.688679, 33.874935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710246, 0.281521, -0.645211,
		0.281521, 0.726479, 0.626876,
		0.645211, -0.626876, 0.436725,
		40.352116, 28.500616, 34.005951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445343, 29.300714, 33.952442>,  <39.900471, 28.939430, 33.700245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445343, 29.300714, 33.952442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.579067, 28.925262, 33.918488>,  <40.659302, 28.699991, 33.898113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.579067, 28.925262, 33.918488>,  <40.445343, 29.300714, 33.952442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579067, 28.925262, 33.918488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749630, 0.319419, -0.579678,
		0.571219, 0.130158, 0.810412,
		0.334311, -0.938632, -0.084888,
		40.679359, 28.643673, 33.893021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164234, 29.407543, 33.871220>,  <40.445343, 29.300714, 33.952442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164234, 29.407543, 33.871220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.134514, 29.022684, 33.766335>,  <41.116684, 28.791769, 33.703403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.134514, 29.022684, 33.766335>,  <41.164234, 29.407543, 33.871220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134514, 29.022684, 33.766335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751410, 0.118859, -0.649041,
		0.655639, -0.245252, 0.714135,
		-0.074298, -0.962145, -0.262214,
		41.112225, 28.734041, 33.687672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791359, 29.242516, 33.712193>,  <41.164234, 29.407543, 33.871220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791359, 29.242516, 33.712193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.614147, 28.924629, 33.546227>,  <41.507820, 28.733898, 33.446648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.614147, 28.924629, 33.546227>,  <41.791359, 29.242516, 33.712193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614147, 28.924629, 33.546227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604185, 0.077259, -0.793090,
		0.662336, -0.602047, 0.445926,
		-0.443026, -0.794714, -0.414919,
		41.481239, 28.686214, 33.421749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299500, 28.801760, 33.531277>,  <41.791359, 29.242516, 33.712193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299500, 28.801760, 33.531277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.993782, 28.724056, 33.285313>,  <41.810352, 28.677435, 33.137733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.993782, 28.724056, 33.285313>,  <42.299500, 28.801760, 33.531277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993782, 28.724056, 33.285313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642711, -0.151611, -0.750957,
		0.052652, -0.969164, 0.240727,
		-0.764297, -0.194257, -0.614910,
		41.764492, 28.665779, 33.100838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525875, 28.209749, 33.178841>,  <42.299500, 28.801760, 33.531277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525875, 28.209749, 33.178841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.239433, 28.375967, 32.954514>,  <42.067570, 28.475697, 32.819916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.239433, 28.375967, 32.954514>,  <42.525875, 28.209749, 33.178841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239433, 28.375967, 32.954514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558402, -0.141008, -0.817499,
		-0.418786, -0.898577, -0.131064,
		-0.716104, 0.415544, -0.560819,
		42.024601, 28.500629, 32.786266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.444584, 27.854206, 32.562683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.286839, 28.203957, 32.449585>,  <42.192192, 28.413807, 32.381725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.286839, 28.203957, 32.449585>,  <42.444584, 27.854206, 32.562683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286839, 28.203957, 32.449585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403180, -0.111861, -0.908258,
		-0.825789, -0.472177, -0.308419,
		-0.394359, 0.874377, -0.282746,
		42.168530, 28.466270, 32.364761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207851, 27.774691, 31.828962>,  <42.444584, 27.854206, 32.562683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207851, 27.774691, 31.828962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.191643, 28.171026, 31.880491>,  <42.181919, 28.408829, 31.911407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.191643, 28.171026, 31.880491>,  <42.207851, 27.774691, 31.828962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191643, 28.171026, 31.880491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340528, 0.134902, -0.930506,
		-0.939361, 0.006164, -0.342875,
		-0.040519, 0.990840, 0.128821,
		42.179485, 28.468279, 31.919138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730450, 28.126654, 31.324448>,  <42.207851, 27.774691, 31.828962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730450, 28.126654, 31.324448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.994831, 28.400757, 31.446804>,  <42.153458, 28.565218, 31.520218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.994831, 28.400757, 31.446804>,  <41.730450, 28.126654, 31.324448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994831, 28.400757, 31.446804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243175, 0.190049, -0.951182,
		-0.709938, 0.703068, -0.041025,
		0.660949, 0.685257, 0.305891,
		42.193115, 28.606335, 31.538572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765121, 28.594137, 30.805992>,  <41.730450, 28.126654, 31.324448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765121, 28.594137, 30.805992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.094265, 28.660677, 31.023331>,  <42.291752, 28.700602, 31.153734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.094265, 28.660677, 31.023331>,  <41.765121, 28.594137, 30.805992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094265, 28.660677, 31.023331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556968, -0.046609, -0.829225,
		-0.112618, 0.984965, -0.131005,
		0.822863, 0.166351, 0.543345,
		42.341125, 28.710583, 31.186335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174717, 29.086903, 30.415434>,  <41.765121, 28.594137, 30.805992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174717, 29.086903, 30.415434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.428192, 28.914736, 30.672552>,  <42.580276, 28.811436, 30.826822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.428192, 28.914736, 30.672552>,  <42.174717, 29.086903, 30.415434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428192, 28.914736, 30.672552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668439, -0.113607, -0.735040,
		0.389398, 0.895453, 0.215715,
		0.633687, -0.430415, 0.642794,
		42.618298, 28.785612, 30.865391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875362, 29.600698, 30.518803>,  <42.174717, 29.086903, 30.415434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875362, 29.600698, 30.518803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.929657, 29.211170, 30.591742>,  <42.962234, 28.977453, 30.635506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.929657, 29.211170, 30.591742>,  <42.875362, 29.600698, 30.518803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929657, 29.211170, 30.591742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686009, -0.040414, -0.726470,
		0.714820, 0.223699, 0.662564,
		0.135734, -0.973820, 0.182348,
		42.970379, 28.919024, 30.646446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501392, 29.646048, 30.327074>,  <42.875362, 29.600698, 30.518803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501392, 29.646048, 30.327074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.433586, 29.252029, 30.339390>,  <43.392902, 29.015617, 30.346779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.433586, 29.252029, 30.339390>,  <43.501392, 29.646048, 30.327074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433586, 29.252029, 30.339390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611202, -0.129585, -0.780795,
		0.773108, -0.113540, 0.624029,
		-0.169516, -0.985046, 0.030787,
		43.382732, 28.956516, 30.348625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060883, 29.367916, 30.092682>,  <43.501392, 29.646048, 30.327074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060883, 29.367916, 30.092682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.827011, 29.046604, 30.047266>,  <43.686687, 28.853817, 30.020016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.827011, 29.046604, 30.047266>,  <44.060883, 29.367916, 30.092682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827011, 29.046604, 30.047266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508427, -0.253756, -0.822867,
		0.632181, -0.538840, 0.556776,
		-0.584678, -0.803281, -0.113541,
		43.651608, 28.805620, 30.013205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418507, 28.825130, 30.193720>,  <44.060883, 29.367916, 30.092682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418507, 28.825130, 30.193720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.130199, 28.768478, 29.922298>,  <43.957214, 28.734488, 29.759445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.130199, 28.768478, 29.922298>,  <44.418507, 28.825130, 30.193720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130199, 28.768478, 29.922298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692380, -0.194014, -0.694959,
		-0.033221, -0.970721, 0.237901,
		-0.720768, -0.141631, -0.678553,
		43.913971, 28.725988, 29.718733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548664, 28.174860, 29.817719>,  <44.418507, 28.825130, 30.193720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548664, 28.174860, 29.817719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.319492, 28.366526, 29.551741>,  <44.181988, 28.481525, 29.392155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.319492, 28.366526, 29.551741>,  <44.548664, 28.174860, 29.817719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319492, 28.366526, 29.551741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648775, -0.230629, -0.725190,
		-0.500842, -0.846882, -0.178736,
		-0.572929, 0.479166, -0.664945,
		44.147614, 28.510275, 29.352257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583805, 27.821796, 29.196514>,  <44.548664, 28.174860, 29.817719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583805, 27.821796, 29.196514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.416538, 28.165289, 29.078047>,  <44.316177, 28.371386, 29.006966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.416538, 28.165289, 29.078047>,  <44.583805, 27.821796, 29.196514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416538, 28.165289, 29.078047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584037, 0.004449, -0.811715,
		-0.695728, -0.512405, -0.503392,
		-0.418166, 0.858732, -0.296168,
		44.291088, 28.422909, 28.989197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449726, 27.681253, 28.518877>,  <44.583805, 27.821796, 29.196514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449726, 27.681253, 28.518877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.464535, 28.078152, 28.566339>,  <44.473419, 28.316290, 28.594816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.464535, 28.078152, 28.566339>,  <44.449726, 27.681253, 28.518877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464535, 28.078152, 28.566339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450155, 0.089447, -0.888459,
		-0.892182, 0.086308, -0.443353,
		0.037025, 0.992245, 0.118655,
		44.475643, 28.375826, 28.601936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303547, 27.918139, 27.806997>,  <44.449726, 27.681253, 28.518877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303547, 27.918139, 27.806997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.458862, 28.240311, 27.986111>,  <44.552052, 28.433615, 28.093578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.458862, 28.240311, 27.986111>,  <44.303547, 27.918139, 27.806997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458862, 28.240311, 27.986111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486871, 0.233262, -0.841751,
		-0.782424, 0.544857, -0.301568,
		0.388290, 0.805431, 0.447785,
		44.575348, 28.481939, 28.120445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297611, 28.498995, 27.296295>,  <44.303547, 27.918139, 27.806997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297611, 28.498995, 27.296295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.569538, 28.591785, 27.574587>,  <44.732693, 28.647459, 27.741562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.569538, 28.591785, 27.574587>,  <44.297611, 28.498995, 27.296295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569538, 28.591785, 27.574587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581703, 0.407165, -0.704158,
		-0.446624, 0.883405, 0.141856,
		0.679815, 0.231975, 0.695729,
		44.773483, 28.661379, 27.783306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561272, 29.285856, 27.252831>,  <44.297611, 28.498995, 27.296295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561272, 29.285856, 27.252831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.847542, 29.062191, 27.420233>,  <45.019302, 28.927992, 27.520674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.847542, 29.062191, 27.420233>,  <44.561272, 29.285856, 27.252831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847542, 29.062191, 27.420233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678200, 0.413170, -0.607730,
		0.166907, 0.718767, 0.674920,
		0.715672, -0.559165, 0.418507,
		45.062244, 28.894442, 27.545784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115059, 29.663099, 27.121670>,  <44.561272, 29.285856, 27.252831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115059, 29.663099, 27.121670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.280354, 29.311569, 27.217085>,  <45.379532, 29.100651, 27.274334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.280354, 29.311569, 27.217085>,  <45.115059, 29.663099, 27.121670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280354, 29.311569, 27.217085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865054, 0.297025, -0.404299,
		0.284456, 0.373423, 0.882973,
		0.413240, -0.878824, 0.238540,
		45.404324, 29.047922, 27.288647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815868, 29.925117, 27.147924>,  <45.115059, 29.663099, 27.121670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815868, 29.925117, 27.147924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.843929, 29.527086, 27.175926>,  <45.860767, 29.288267, 27.192726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.843929, 29.527086, 27.175926>,  <45.815868, 29.925117, 27.147924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843929, 29.527086, 27.175926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947168, 0.044427, -0.317648,
		0.312974, 0.088588, 0.945621,
		0.070151, -0.995077, 0.070004,
		45.864975, 29.228563, 27.196928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464176, 29.757820, 27.539516>,  <45.815868, 29.925117, 27.147924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464176, 29.757820, 27.539516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.346764, 29.439802, 27.327198>,  <46.276318, 29.248991, 27.199806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.346764, 29.439802, 27.327198>,  <46.464176, 29.757820, 27.539516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346764, 29.439802, 27.327198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898785, -0.040393, -0.436525,
		0.325616, -0.605207, 0.726429,
		-0.293531, -0.795043, -0.530798,
		46.258705, 29.201290, 27.167959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.040749, 29.370493, 27.433043>,  <46.464176, 29.757820, 27.539516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.040749, 29.370493, 27.433043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.828541, 29.185976, 27.148577>,  <46.701218, 29.075266, 26.977898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.828541, 29.185976, 27.148577>,  <47.040749, 29.370493, 27.433043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828541, 29.185976, 27.148577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802278, -0.002376, -0.596946,
		0.273677, -0.887245, 0.371346,
		-0.530520, -0.461293, -0.711167,
		46.669384, 29.047588, 26.935226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.431698, 28.775896, 27.250143>,  <47.040749, 29.370493, 27.433043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.431698, 28.775896, 27.250143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.207245, 28.875990, 26.934546>,  <47.072575, 28.936047, 26.745186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.207245, 28.875990, 26.934546>,  <47.431698, 28.775896, 27.250143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207245, 28.875990, 26.934546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815020, 0.000655, -0.579432,
		-0.144477, -0.968185, -0.204313,
		-0.561132, 0.250234, -0.788996,
		47.038906, 28.951059, 26.697847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.661327, 28.394608, 26.743591>,  <47.431698, 28.775896, 27.250143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.661327, 28.394608, 26.743591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.487560, 28.705343, 26.561251>,  <47.383301, 28.891785, 26.451847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.487560, 28.705343, 26.561251>,  <47.661327, 28.394608, 26.743591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.487560, 28.705343, 26.561251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765381, 0.051571, -0.641508,
		-0.474841, -0.627580, -0.616983,
		-0.434416, 0.776842, -0.455850,
		47.357235, 28.938396, 26.424496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447235, 28.263174, 26.049984>,  <47.661327, 28.394608, 26.743591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447235, 28.263174, 26.049984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.508930, 28.657873, 26.070135>,  <47.545948, 28.894693, 26.082226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.508930, 28.657873, 26.070135>,  <47.447235, 28.263174, 26.049984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.508930, 28.657873, 26.070135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395620, -0.014956, -0.918293,
		-0.905371, 0.161561, -0.392684,
		0.154234, 0.986749, 0.050376,
		47.555199, 28.953897, 26.085247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.093109, 28.319157, 25.362202>,  <47.447235, 28.263174, 26.049984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.093109, 28.319157, 25.362202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.980808, 28.000132, 25.148634>,  <46.913429, 27.808716, 25.020493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.980808, 28.000132, 25.148634>,  <47.093109, 28.319157, 25.362202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.980808, 28.000132, 25.148634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644998, 0.568735, -0.510409,
		0.710742, 0.201078, -0.674102,
		-0.280753, -0.797564, -0.533919,
		46.896584, 27.760862, 24.988459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083366, 28.462770, 24.791298>,  <47.093109, 28.319157, 25.362202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083366, 28.462770, 24.791298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.809895, 28.171803, 24.767815>,  <46.645813, 27.997223, 24.753725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.809895, 28.171803, 24.767815>,  <47.083366, 28.462770, 24.791298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.809895, 28.171803, 24.767815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550978, 0.567250, -0.612087,
		0.478546, -0.386123, -0.788608,
		-0.683679, -0.727418, -0.058710,
		46.604790, 27.953577, 24.750202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282513, 28.498724, 24.563883>,  <47.083366, 28.462770, 24.791298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282513, 28.498724, 24.563883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.005058, 28.429964, 24.284079>,  <45.838585, 28.388708, 24.116196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.005058, 28.429964, 24.284079>,  <46.282513, 28.498724, 24.563883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005058, 28.429964, 24.284079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692054, -0.110339, 0.713363,
		-0.199810, 0.978916, -0.042429,
		-0.693640, -0.171900, -0.699509,
		45.796967, 28.378393, 24.074226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822670, 28.893288, 24.672964>,  <46.282513, 28.498724, 24.563883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822670, 28.893288, 24.672964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.622932, 28.620970, 24.458611>,  <45.503090, 28.457579, 24.329998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.622932, 28.620970, 24.458611>,  <45.822670, 28.893288, 24.672964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622932, 28.620970, 24.458611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696176, -0.052903, 0.715919,
		-0.515745, 0.730560, -0.447537,
		-0.499346, -0.680796, -0.535883,
		45.473129, 28.416731, 24.297846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203106, 29.036165, 24.614101>,  <45.822670, 28.893288, 24.672964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203106, 29.036165, 24.614101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.215054, 28.637081, 24.589830>,  <45.222221, 28.397631, 24.575268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.215054, 28.637081, 24.589830>,  <45.203106, 29.036165, 24.614101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215054, 28.637081, 24.589830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763780, -0.061939, 0.642498,
		-0.644785, 0.027157, -0.763881,
		0.029866, -0.997710, -0.060679,
		45.224014, 28.337769, 24.571627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584301, 28.944550, 24.767426>,  <45.203106, 29.036165, 24.614101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584301, 28.944550, 24.767426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.724072, 28.571457, 24.803017>,  <44.807934, 28.347601, 24.824371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.724072, 28.571457, 24.803017>,  <44.584301, 28.944550, 24.767426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724072, 28.571457, 24.803017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748482, -0.220749, 0.625335,
		-0.563627, -0.285105, -0.775267,
		0.349426, -0.932729, 0.088976,
		44.828899, 28.291637, 24.829710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034130, 28.430883, 24.718403>,  <44.584301, 28.944550, 24.767426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034130, 28.430883, 24.718403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.318161, 28.229551, 24.915358>,  <44.488579, 28.108751, 25.033531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.318161, 28.229551, 24.915358>,  <44.034130, 28.430883, 24.718403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318161, 28.229551, 24.915358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688930, -0.352152, 0.633533,
		-0.145482, -0.789079, -0.596816,
		0.710077, -0.503333, 0.492389,
		44.531185, 28.078552, 25.063074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771893, 27.696239, 24.848455>,  <44.034130, 28.430883, 24.718403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771893, 27.696239, 24.848455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.052086, 27.787289, 25.119013>,  <44.220203, 27.841919, 25.281347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.052086, 27.787289, 25.119013>,  <43.771893, 27.696239, 24.848455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052086, 27.787289, 25.119013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619858, -0.275660, 0.734702,
		0.353690, -0.933916, -0.052001,
		0.700485, 0.227624, 0.676394,
		44.262230, 27.855576, 25.321932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547947, 27.252981, 25.349098>,  <43.771893, 27.696239, 24.848455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547947, 27.252981, 25.349098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.803532, 27.488337, 25.547302>,  <43.956882, 27.629549, 25.666224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.803532, 27.488337, 25.547302>,  <43.547947, 27.252981, 25.349098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803532, 27.488337, 25.547302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534600, -0.123512, 0.836031,
		0.553113, -0.799089, 0.235634,
		0.638959, 0.588389, 0.495509,
		43.995220, 27.664854, 25.695955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755085, 26.892635, 25.965626>,  <43.547947, 27.252981, 25.349098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755085, 26.892635, 25.965626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.774712, 27.291544, 25.987682>,  <43.786488, 27.530890, 26.000916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.774712, 27.291544, 25.987682>,  <43.755085, 26.892635, 25.965626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774712, 27.291544, 25.987682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603228, -0.014411, 0.797438,
		0.796058, -0.072392, 0.600875,
		0.049068, 0.997272, 0.055141,
		43.789433, 27.590725, 26.004225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799896, 26.977444, 26.633450>,  <43.755085, 26.892635, 25.965626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799896, 26.977444, 26.633450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.701340, 27.344152, 26.507708>,  <43.642204, 27.564178, 26.432262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.701340, 27.344152, 26.507708>,  <43.799896, 26.977444, 26.633450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701340, 27.344152, 26.507708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555642, 0.132134, 0.820854,
		0.794074, 0.376921, 0.476841,
		-0.246390, 0.916772, -0.314357,
		43.627422, 27.619184, 26.413401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804096, 27.280071, 27.260859>,  <43.799896, 26.977444, 26.633450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804096, 27.280071, 27.260859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.593567, 27.500227, 27.001610>,  <43.467251, 27.632320, 26.846062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.593567, 27.500227, 27.001610>,  <43.804096, 27.280071, 27.260859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593567, 27.500227, 27.001610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668998, 0.202418, 0.715170,
		0.524812, 0.810000, 0.261671,
		-0.526321, 0.550387, -0.648120,
		43.435669, 27.665342, 26.807173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619640, 27.786577, 27.645275>,  <43.804096, 27.280071, 27.260859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619640, 27.786577, 27.645275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379047, 27.896336, 27.345163>,  <43.234692, 27.962191, 27.165096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379047, 27.896336, 27.345163>,  <43.619640, 27.786577, 27.645275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379047, 27.896336, 27.345163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727295, 0.200502, 0.656385,
		0.330542, 0.940481, 0.078968,
		-0.601485, 0.274396, -0.750282,
		43.198601, 27.978655, 27.120079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419086, 28.504623, 27.829138>,  <43.619640, 27.786577, 27.645275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419086, 28.504623, 27.829138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.177784, 28.288019, 27.594923>,  <43.033005, 28.158056, 27.454395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.177784, 28.288019, 27.594923>,  <43.419086, 28.504623, 27.829138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177784, 28.288019, 27.594923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699391, 0.006318, 0.714711,
		-0.383324, 0.840670, -0.382539,
		-0.603254, -0.541510, -0.585535,
		42.996807, 28.125566, 27.419262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843296, 28.760704, 27.940203>,  <43.419086, 28.504623, 27.829138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843296, 28.760704, 27.940203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.731213, 28.415346, 27.772377>,  <42.663963, 28.208132, 27.671682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.731213, 28.415346, 27.772377>,  <42.843296, 28.760704, 27.940203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731213, 28.415346, 27.772377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627798, -0.165820, 0.760509,
		-0.726192, 0.476500, -0.495574,
		-0.280207, -0.863395, -0.419563,
		42.647152, 28.156328, 27.646507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099064, 28.773693, 27.710278>,  <42.843296, 28.760704, 27.940203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099064, 28.773693, 27.710278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.190937, 28.386827, 27.753803>,  <42.246063, 28.154709, 27.779919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.190937, 28.386827, 27.753803>,  <42.099064, 28.773693, 27.710278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190937, 28.386827, 27.753803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764610, -0.110139, 0.635013,
		-0.602176, -0.229056, -0.764799,
		0.229687, -0.967163, 0.108815,
		42.259842, 28.096680, 27.786448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528545, 28.444208, 27.950146>,  <42.099064, 28.773693, 27.710278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528545, 28.444208, 27.950146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778740, 28.138233, 28.011646>,  <41.928856, 27.954647, 28.048546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778740, 28.138233, 28.011646>,  <41.528545, 28.444208, 27.950146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778740, 28.138233, 28.011646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541891, -0.284117, 0.790968,
		-0.561361, -0.578052, -0.592225,
		0.625482, -0.764940, 0.153749,
		41.966385, 27.908751, 28.057772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131321, 27.772686, 27.931732>,  <41.528545, 28.444208, 27.950146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131321, 27.772686, 27.931732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.470818, 27.731710, 28.139246>,  <41.674515, 27.707125, 28.263754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.470818, 27.731710, 28.139246>,  <41.131321, 27.772686, 27.931732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470818, 27.731710, 28.139246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524505, -0.287911, 0.801250,
		0.067285, -0.952162, -0.298093,
		0.848744, -0.102439, 0.518786,
		41.725441, 27.700979, 28.294882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088409, 27.061291, 28.222818>,  <41.131321, 27.772686, 27.931732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088409, 27.061291, 28.222818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.329594, 27.296354, 28.438629>,  <41.474304, 27.437393, 28.568115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.329594, 27.296354, 28.438629>,  <41.088409, 27.061291, 28.222818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329594, 27.296354, 28.438629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431117, -0.329011, 0.840172,
		0.671246, -0.739193, 0.054968,
		0.602965, 0.587660, 0.539526,
		41.510483, 27.472652, 28.600487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234398, 26.665585, 28.801697>,  <41.088409, 27.061291, 28.222818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234398, 26.665585, 28.801697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.382843, 27.009647, 28.941643>,  <41.471909, 27.216085, 29.025610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.382843, 27.009647, 28.941643>,  <41.234398, 26.665585, 28.801697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382843, 27.009647, 28.941643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299585, -0.245718, 0.921884,
		0.878935, -0.446934, 0.166503,
		0.371109, 0.860158, 0.349865,
		41.494175, 27.267694, 29.046602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772442, 26.507799, 29.331438>,  <41.234398, 26.665585, 28.801697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772442, 26.507799, 29.331438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.585819, 26.858879, 29.375200>,  <41.473846, 27.069527, 29.401459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.585819, 26.858879, 29.375200>,  <41.772442, 26.507799, 29.331438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585819, 26.858879, 29.375200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347129, -0.295469, 0.890056,
		0.813528, 0.377282, 0.442527,
		-0.466555, 0.877700, 0.109407,
		41.445854, 27.122189, 29.408022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845345, 26.544783, 29.993874>,  <41.772442, 26.507799, 29.331438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845345, 26.544783, 29.993874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550343, 26.794580, 29.891043>,  <41.373341, 26.944460, 29.829344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550343, 26.794580, 29.891043>,  <41.845345, 26.544783, 29.993874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550343, 26.794580, 29.891043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425529, -0.134121, 0.894951,
		0.524412, 0.769427, 0.364656,
		-0.737507, 0.624495, -0.257079,
		41.329090, 26.981930, 29.813919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.959019, 28.287273, 35.130379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.665436, 28.292198, 34.858746>,  <40.489285, 28.295153, 34.695766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.665436, 28.292198, 34.858746>,  <40.959019, 28.287273, 35.130379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665436, 28.292198, 34.858746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676413, -0.103637, 0.729195,
		-0.061402, 0.994539, 0.084392,
		-0.733959, 0.012310, -0.679083,
		40.445248, 28.295891, 34.655022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379250, 28.739901, 35.422894>,  <40.959019, 28.287273, 35.130379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379250, 28.739901, 35.422894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.208534, 28.524031, 35.132626>,  <40.106106, 28.394508, 34.958466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.208534, 28.524031, 35.132626>,  <40.379250, 28.739901, 35.422894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208534, 28.524031, 35.132626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753911, -0.230857, 0.615081,
		-0.499471, 0.809602, -0.308341,
		-0.426788, -0.539676, -0.725673,
		40.080498, 28.362127, 34.914925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637779, 28.845098, 35.499744>,  <40.379250, 28.739901, 35.422894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637779, 28.845098, 35.499744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.639275, 28.514257, 35.274929>,  <39.640171, 28.315752, 35.140041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.639275, 28.514257, 35.274929>,  <39.637779, 28.845098, 35.499744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639275, 28.514257, 35.274929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688282, -0.409854, 0.598571,
		-0.725433, 0.384605, -0.570812,
		0.003736, -0.827103, -0.562038,
		39.640396, 28.266127, 35.106319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049507, 28.783558, 35.585209>,  <39.637779, 28.845098, 35.499744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049507, 28.783558, 35.585209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.194763, 28.430534, 35.465729>,  <39.281918, 28.218721, 35.394039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.194763, 28.430534, 35.465729>,  <39.049507, 28.783558, 35.585209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194763, 28.430534, 35.465729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659349, -0.469928, 0.586879,
		-0.658322, -0.016171, -0.752563,
		0.363140, -0.882556, -0.298702,
		39.303703, 28.165768, 35.376118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573540, 28.405972, 35.312698>,  <39.049507, 28.783558, 35.585209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573540, 28.405972, 35.312698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.849972, 28.143650, 35.434242>,  <39.015831, 27.986258, 35.507168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.849972, 28.143650, 35.434242>,  <38.573540, 28.405972, 35.312698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849972, 28.143650, 35.434242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676974, -0.440025, 0.589986,
		-0.253211, -0.613431, -0.748056,
		0.691079, -0.655805, 0.303857,
		39.057297, 27.946909, 35.525398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334370, 27.715218, 35.125511>,  <38.573540, 28.405972, 35.312698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334370, 27.715218, 35.125511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.561508, 27.664803, 35.450882>,  <38.697792, 27.634554, 35.646103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.561508, 27.664803, 35.450882>,  <38.334370, 27.715218, 35.125511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561508, 27.664803, 35.450882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773879, -0.418461, 0.475397,
		0.280470, -0.899447, -0.335160,
		0.567845, -0.126039, 0.813429,
		38.731861, 27.626991, 35.694912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933243, 27.342518, 35.549660>,  <38.334370, 27.715218, 35.125511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933243, 27.342518, 35.549660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215363, 27.418549, 35.822838>,  <38.384636, 27.464167, 35.986744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215363, 27.418549, 35.822838>,  <37.933243, 27.342518, 35.549660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215363, 27.418549, 35.822838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681866, -0.081640, 0.726907,
		0.193924, -0.978369, 0.072025,
		0.705303, 0.190077, 0.682948,
		38.426952, 27.475571, 36.027721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894020, 26.809048, 36.015663>,  <37.933243, 27.342518, 35.549660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894020, 26.809048, 36.015663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094006, 27.072214, 36.240936>,  <38.213997, 27.230114, 36.376102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094006, 27.072214, 36.240936>,  <37.894020, 26.809048, 36.015663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094006, 27.072214, 36.240936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667495, -0.121599, 0.734619,
		0.551801, -0.743209, 0.378361,
		0.499967, 0.657917, 0.563186,
		38.243996, 27.269588, 36.409893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745373, 26.511839, 36.701824>,  <37.894020, 26.809048, 36.015663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745373, 26.511839, 36.701824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852062, 26.896700, 36.724182>,  <37.916077, 27.127617, 36.737598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852062, 26.896700, 36.724182>,  <37.745373, 26.511839, 36.701824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852062, 26.896700, 36.724182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636185, 0.132203, 0.760126,
		0.723967, -0.238303, 0.647367,
		0.266724, 0.962151, 0.055894,
		37.932079, 27.185345, 36.740952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733891, 26.658705, 37.377907>,  <37.745373, 26.511839, 36.701824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733891, 26.658705, 37.377907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.766075, 27.038239, 37.255764>,  <37.785385, 27.265959, 37.182480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.766075, 27.038239, 37.255764>,  <37.733891, 26.658705, 37.377907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766075, 27.038239, 37.255764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594072, 0.291642, 0.749682,
		0.800377, 0.121083, 0.587141,
		0.080462, 0.948833, -0.305356,
		37.790215, 27.322889, 37.164158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985619, 27.122868, 37.999428>,  <37.733891, 26.658705, 37.377907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985619, 27.122868, 37.999428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753525, 27.296474, 37.723759>,  <37.614269, 27.400639, 37.558357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753525, 27.296474, 37.723759>,  <37.985619, 27.122868, 37.999428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753525, 27.296474, 37.723759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767607, -0.008586, 0.640863,
		0.272229, 0.900863, 0.338137,
		-0.580234, 0.434018, -0.689171,
		37.579456, 27.426680, 37.517006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683517, 27.699120, 38.282135>,  <37.985619, 27.122868, 37.999428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683517, 27.699120, 38.282135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.434895, 27.639948, 37.974426>,  <37.285721, 27.604445, 37.789803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.434895, 27.639948, 37.974426>,  <37.683517, 27.699120, 38.282135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434895, 27.639948, 37.974426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745694, 0.412592, 0.523171,
		0.240003, 0.898824, -0.366762,
		-0.621562, -0.147930, -0.769271,
		37.248425, 27.595570, 37.743645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316231, 28.288643, 38.016235>,  <37.683517, 27.699120, 38.282135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316231, 28.288643, 38.016235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.057812, 27.987164, 37.967972>,  <36.902760, 27.806276, 37.939014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.057812, 27.987164, 37.967972>,  <37.316231, 28.288643, 38.016235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057812, 27.987164, 37.967972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674223, 0.489372, 0.553117,
		-0.357835, 0.438694, -0.824319,
		-0.646048, -0.753699, -0.120664,
		36.863998, 27.761053, 37.931774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318954, 28.855049, 38.436832>,  <37.316231, 28.288643, 38.016235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318954, 28.855049, 38.436832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.589706, 29.074787, 38.632812>,  <37.752159, 29.206631, 38.750401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.589706, 29.074787, 38.632812>,  <37.318954, 28.855049, 38.436832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589706, 29.074787, 38.632812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688160, 0.708523, 0.156305,
		-0.261275, -0.442962, 0.857625,
		0.676884, 0.549344, 0.489948,
		37.792770, 29.239590, 38.779797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768204, 29.067389, 38.034866>,  <37.318954, 28.855049, 38.436832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768204, 29.067389, 38.034866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.783432, 29.433744, 38.194714>,  <36.792568, 29.653559, 38.290623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.783432, 29.433744, 38.194714>,  <36.768204, 29.067389, 38.034866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783432, 29.433744, 38.194714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106539, 0.393912, -0.912953,
		-0.993580, 0.077330, -0.082582,
		0.038069, 0.915889, 0.399622,
		36.794853, 29.708511, 38.314602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168316, 29.640453, 37.844482>,  <36.768204, 29.067389, 38.034866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168316, 29.640453, 37.844482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507984, 29.831352, 37.934940>,  <36.711784, 29.945892, 37.989216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507984, 29.831352, 37.934940>,  <36.168316, 29.640453, 37.844482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507984, 29.831352, 37.934940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079200, 0.538449, -0.838928,
		-0.522146, 0.694482, 0.495034,
		0.849171, 0.477249, 0.226146,
		36.762737, 29.974527, 38.002785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068504, 30.387264, 37.705280>,  <36.168316, 29.640453, 37.844482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068504, 30.387264, 37.705280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465256, 30.339430, 37.722652>,  <36.703304, 30.310730, 37.733074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465256, 30.339430, 37.722652>,  <36.068504, 30.387264, 37.705280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465256, 30.339430, 37.722652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101950, 0.542893, -0.833591,
		0.076108, 0.831244, 0.550673,
		0.991874, -0.119584, 0.043427,
		36.762817, 30.303555, 37.735680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352089, 31.026241, 37.613747>,  <36.068504, 30.387264, 37.705280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352089, 31.026241, 37.613747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.645973, 30.774683, 37.512009>,  <36.822304, 30.623747, 37.450966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.645973, 30.774683, 37.512009>,  <36.352089, 31.026241, 37.613747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645973, 30.774683, 37.512009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118593, 0.488227, -0.864621,
		0.667936, 0.605081, 0.433287,
		0.734709, -0.628897, -0.254346,
		36.866386, 30.586014, 37.435703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859432, 31.503901, 37.292618>,  <36.352089, 31.026241, 37.613747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859432, 31.503901, 37.292618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.957825, 31.132652, 37.180843>,  <37.016861, 30.909903, 37.113781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.957825, 31.132652, 37.180843>,  <36.859432, 31.503901, 37.292618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957825, 31.132652, 37.180843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223038, 0.334755, -0.915529,
		0.943263, 0.162881, 0.289351,
		0.245984, -0.928121, -0.279434,
		37.031620, 30.854216, 37.097012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579174, 31.560400, 37.071930>,  <36.859432, 31.503901, 37.292618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579174, 31.560400, 37.071930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461880, 31.219545, 36.898552>,  <37.391502, 31.015032, 36.794525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461880, 31.219545, 36.898552>,  <37.579174, 31.560400, 37.071930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461880, 31.219545, 36.898552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267109, 0.362297, -0.892969,
		0.917969, -0.377625, 0.121377,
		-0.293232, -0.852139, -0.433445,
		37.373909, 30.963903, 36.768520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246189, 31.212202, 36.887714>,  <37.579174, 31.560400, 37.071930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246189, 31.212202, 36.887714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913361, 31.111710, 36.689911>,  <37.713665, 31.051414, 36.571228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913361, 31.111710, 36.689911>,  <38.246189, 31.212202, 36.887714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913361, 31.111710, 36.689911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434789, 0.258154, -0.862737,
		0.344406, -0.932866, -0.105570,
		-0.832071, -0.251231, -0.494510,
		37.663738, 31.036341, 36.541557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428478, 30.710968, 36.327194>,  <38.246189, 31.212202, 36.887714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428478, 30.710968, 36.327194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.073009, 30.860010, 36.220291>,  <37.859730, 30.949436, 36.156151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.073009, 30.860010, 36.220291>,  <38.428478, 30.710968, 36.327194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073009, 30.860010, 36.220291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378879, 0.268363, -0.885682,
		-0.258290, -0.888338, -0.379660,
		-0.888671, 0.372608, -0.267257,
		37.806408, 30.971792, 36.140114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473835, 30.431200, 35.713482>,  <38.428478, 30.710968, 36.327194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473835, 30.431200, 35.713482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200684, 30.723381, 35.709061>,  <38.036793, 30.898689, 35.706409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200684, 30.723381, 35.709061>,  <38.473835, 30.431200, 35.713482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200684, 30.723381, 35.709061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326239, 0.291384, -0.899257,
		-0.653642, -0.617687, -0.437281,
		-0.682876, 0.730451, -0.011053,
		37.995819, 30.942516, 35.705746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923473, 30.383198, 35.142075>,  <38.473835, 30.431200, 35.713482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923473, 30.383198, 35.142075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949551, 30.764708, 35.259418>,  <37.965195, 30.993614, 35.329826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949551, 30.764708, 35.259418>,  <37.923473, 30.383198, 35.142075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949551, 30.764708, 35.259418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329749, 0.256882, -0.908447,
		-0.941815, 0.155959, -0.297760,
		0.065192, 0.953776, 0.293363,
		37.969109, 31.050840, 35.347427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753201, 30.681196, 34.533070>,  <37.923473, 30.383198, 35.142075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753201, 30.681196, 34.533070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928600, 30.973598, 34.742203>,  <38.033840, 31.149040, 34.867683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928600, 30.973598, 34.742203>,  <37.753201, 30.681196, 34.533070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928600, 30.973598, 34.742203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393392, 0.366933, -0.842973,
		-0.808060, 0.575321, -0.126671,
		0.438500, 0.731004, 0.522830,
		38.060150, 31.192900, 34.899052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677315, 31.307537, 34.096222>,  <37.753201, 30.681196, 34.533070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677315, 31.307537, 34.096222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979424, 31.368362, 34.351234>,  <38.160690, 31.404858, 34.504242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979424, 31.368362, 34.351234>,  <37.677315, 31.307537, 34.096222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979424, 31.368362, 34.351234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606189, 0.207773, -0.767701,
		-0.249200, 0.966285, 0.064746,
		0.755271, 0.152063, 0.637529,
		38.206005, 31.413980, 34.542492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872604, 31.877371, 33.842518>,  <37.677315, 31.307537, 34.096222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872604, 31.877371, 33.842518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.177647, 31.741087, 34.062462>,  <38.360672, 31.659317, 34.194427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.177647, 31.741087, 34.062462>,  <37.872604, 31.877371, 33.842518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177647, 31.741087, 34.062462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632442, 0.214263, -0.744384,
		0.135807, 0.915427, 0.378880,
		0.762610, -0.340712, 0.549857,
		38.406429, 31.638874, 34.227417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385521, 32.305859, 33.615906>,  <37.872604, 31.877371, 33.842518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385521, 32.305859, 33.615906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578281, 31.995342, 33.778454>,  <38.693939, 31.809032, 33.875984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578281, 31.995342, 33.778454>,  <38.385521, 32.305859, 33.615906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578281, 31.995342, 33.778454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676876, 0.035300, -0.735250,
		0.556425, 0.629382, 0.542466,
		0.481902, -0.776294, 0.406371,
		38.722851, 31.762453, 33.900364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433887, 33.020916, 33.658161>,  <38.385521, 32.305859, 33.615906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433887, 33.020916, 33.658161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219025, 33.180111, 33.360687>,  <38.090107, 33.275627, 33.182201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219025, 33.180111, 33.360687>,  <38.433887, 33.020916, 33.658161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219025, 33.180111, 33.360687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826746, -0.073642, 0.557736,
		0.167205, 0.914430, 0.368591,
		-0.537154, 0.397987, -0.743688,
		38.057877, 33.299507, 33.137581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083572, 33.606888, 33.951740>,  <38.433887, 33.020916, 33.658161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083572, 33.606888, 33.951740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.883816, 33.490120, 33.625454>,  <37.763962, 33.420059, 33.429684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.883816, 33.490120, 33.625454>,  <38.083572, 33.606888, 33.951740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883816, 33.490120, 33.625454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840548, -0.064927, 0.537832,
		-0.209964, 0.954237, -0.212947,
		-0.499393, -0.291918, -0.815714,
		37.733997, 33.402546, 33.380741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437542, 33.909691, 34.091686>,  <38.083572, 33.606888, 33.951740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437542, 33.909691, 34.091686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371815, 33.645233, 33.798870>,  <37.332378, 33.486557, 33.623180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371815, 33.645233, 33.798870>,  <37.437542, 33.909691, 34.091686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371815, 33.645233, 33.798870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946587, -0.103040, 0.305542,
		-0.277438, 0.743146, -0.608902,
		-0.164321, -0.661148, -0.732040,
		37.322517, 33.446888, 33.579258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691742, 34.012596, 33.884220>,  <37.437542, 33.909691, 34.091686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691742, 34.012596, 33.884220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.795189, 33.642574, 33.772942>,  <36.857258, 33.420563, 33.706173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.795189, 33.642574, 33.772942>,  <36.691742, 34.012596, 33.884220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795189, 33.642574, 33.772942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871894, -0.347519, 0.345010,
		-0.415832, 0.153335, -0.896422,
		0.258621, -0.925051, -0.278201,
		36.872776, 33.365059, 33.689480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198509, 33.748451, 33.425388>,  <36.691742, 34.012596, 33.884220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198509, 33.748451, 33.425388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378025, 33.415554, 33.555595>,  <36.485733, 33.215816, 33.633720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378025, 33.415554, 33.555595>,  <36.198509, 33.748451, 33.425388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378025, 33.415554, 33.555595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892843, -0.402237, 0.202574,
		-0.037654, -0.381551, -0.923580,
		0.448790, -0.832240, 0.325520,
		36.512661, 33.165882, 33.653252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867912, 33.268005, 33.065960>,  <36.198509, 33.748451, 33.425388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867912, 33.268005, 33.065960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.998825, 33.111275, 33.409904>,  <36.077374, 33.017235, 33.616272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.998825, 33.111275, 33.409904>,  <35.867912, 33.268005, 33.065960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998825, 33.111275, 33.409904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914368, -0.360870, 0.183586,
		0.238363, -0.846311, -0.476382,
		0.327283, -0.391829, 0.859858,
		36.097012, 32.993725, 33.667862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408241, 32.642544, 33.149784>,  <35.867912, 33.268005, 33.065960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408241, 32.642544, 33.149784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.570972, 32.702068, 33.510303>,  <35.668613, 32.737785, 33.726616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.570972, 32.702068, 33.510303>,  <35.408241, 32.642544, 33.149784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570972, 32.702068, 33.510303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790027, -0.438038, 0.428929,
		0.458634, -0.886554, -0.060640,
		0.406831, 0.148814, 0.901301,
		35.693020, 32.746712, 33.780693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034306, 32.102600, 33.536907>,  <35.408241, 32.642544, 33.149784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034306, 32.102600, 33.536907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.216278, 32.318623, 33.820137>,  <35.325462, 32.448238, 33.990074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.216278, 32.318623, 33.820137>,  <35.034306, 32.102600, 33.536907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216278, 32.318623, 33.820137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616860, -0.382362, 0.687956,
		0.642280, -0.749756, 0.159194,
		0.454930, 0.540060, 0.708078,
		35.352757, 32.480640, 34.032562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192944, 31.651209, 34.064648>,  <35.034306, 32.102600, 33.536907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192944, 31.651209, 34.064648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.173050, 32.011665, 34.236916>,  <35.161114, 32.227940, 34.340275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.173050, 32.011665, 34.236916>,  <35.192944, 31.651209, 34.064648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173050, 32.011665, 34.236916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683430, -0.345147, 0.643270,
		0.728320, -0.262338, 0.633032,
		-0.049735, 0.901140, 0.430667,
		35.158131, 32.282009, 34.366116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166481, 31.531555, 34.739758>,  <35.192944, 31.651209, 34.064648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166481, 31.531555, 34.739758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009747, 31.896673, 34.693680>,  <34.915707, 32.115746, 34.666035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009747, 31.896673, 34.693680>,  <35.166481, 31.531555, 34.739758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009747, 31.896673, 34.693680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816359, -0.287204, 0.501070,
		0.424290, 0.290377, 0.857706,
		-0.391836, 0.912795, -0.115194,
		34.892197, 32.170513, 34.659122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908005, 31.648598, 35.365246>,  <35.166481, 31.531555, 34.739758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908005, 31.648598, 35.365246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.722462, 31.912472, 35.128719>,  <34.611137, 32.070797, 34.986805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.722462, 31.912472, 35.128719>,  <34.908005, 31.648598, 35.365246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722462, 31.912472, 35.128719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858011, -0.168342, 0.485261,
		0.220575, 0.732447, 0.644102,
		-0.463858, 0.659683, -0.591316,
		34.583305, 32.110378, 34.951324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509872, 32.160255, 35.806747>,  <34.908005, 31.648598, 35.365246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509872, 32.160255, 35.806747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.348083, 32.164459, 35.440952>,  <34.251011, 32.166981, 35.221474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.348083, 32.164459, 35.440952>,  <34.509872, 32.160255, 35.806747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348083, 32.164459, 35.440952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911991, -0.079412, 0.402451,
		-0.068392, 0.996787, 0.041704,
		-0.404470, 0.010509, -0.914491,
		34.226742, 32.167610, 35.166603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.708363, 34.480022, 30.865442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497337, 34.255646, 30.610250>,  <40.370724, 34.121017, 30.457136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497337, 34.255646, 30.610250>,  <40.708363, 34.480022, 30.865442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497337, 34.255646, 30.610250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658504, -0.204429, 0.724279,
		-0.536703, 0.802215, -0.261536,
		-0.527562, -0.560945, -0.637980,
		40.339069, 34.087360, 30.418856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097374, 34.850422, 30.790182>,  <40.708363, 34.480022, 30.865442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097374, 34.850422, 30.790182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051826, 34.458691, 30.723309>,  <40.024498, 34.223652, 30.683186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051826, 34.458691, 30.723309>,  <40.097374, 34.850422, 30.790182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051826, 34.458691, 30.723309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618518, -0.061807, 0.783336,
		-0.777476, 0.192603, -0.598695,
		-0.113869, -0.979328, -0.167182,
		40.017666, 34.164890, 30.673155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364487, 34.717831, 31.040771>,  <40.097374, 34.850422, 30.790182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364487, 34.717831, 31.040771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516785, 34.350742, 30.995480>,  <39.608162, 34.130489, 30.968304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516785, 34.350742, 30.995480>,  <39.364487, 34.717831, 31.040771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516785, 34.350742, 30.995480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583810, -0.333539, 0.740215,
		-0.717078, -0.215727, -0.662768,
		0.380743, -0.917722, -0.113230,
		39.631008, 34.075424, 30.961512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896072, 34.260597, 30.917425>,  <39.364487, 34.717831, 31.040771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896072, 34.260597, 30.917425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171791, 33.995304, 31.034044>,  <39.337223, 33.836128, 31.104015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171791, 33.995304, 31.034044>,  <38.896072, 34.260597, 30.917425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171791, 33.995304, 31.034044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653866, -0.396217, 0.644571,
		-0.311978, -0.634936, -0.706772,
		0.689296, -0.663226, 0.291552,
		39.378578, 33.796337, 31.121510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671154, 33.648090, 30.826540>,  <38.896072, 34.260597, 30.917425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671154, 33.648090, 30.826540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926113, 33.618973, 31.133375>,  <39.079090, 33.601501, 31.317476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926113, 33.618973, 31.133375>,  <38.671154, 33.648090, 30.826540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926113, 33.618973, 31.133375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719447, -0.412684, 0.558648,
		0.275899, -0.907961, -0.315415,
		0.637398, -0.072794, 0.767089,
		39.117332, 33.597134, 31.363503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652145, 32.949432, 31.013771>,  <38.671154, 33.648090, 30.826540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652145, 32.949432, 31.013771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767139, 33.181652, 31.318483>,  <38.836136, 33.320984, 31.501310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767139, 33.181652, 31.318483>,  <38.652145, 32.949432, 31.013771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767139, 33.181652, 31.318483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631569, -0.483034, 0.606464,
		0.720050, -0.655467, 0.227794,
		0.287485, 0.580553, 0.761782,
		38.853386, 33.355820, 31.547018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388935, 32.725113, 31.621990>,  <38.652145, 32.949432, 31.013771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388935, 32.725113, 31.621990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568672, 33.036476, 31.797340>,  <38.676514, 33.223293, 31.902552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568672, 33.036476, 31.797340>,  <38.388935, 32.725113, 31.621990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568672, 33.036476, 31.797340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432578, -0.239763, 0.869132,
		0.781647, -0.580166, 0.228988,
		0.449338, 0.778409, 0.438377,
		38.703472, 33.270000, 31.928854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629414, 32.460632, 32.291359>,  <38.388935, 32.725113, 31.621990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629414, 32.460632, 32.291359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571301, 32.856094, 32.306614>,  <38.536434, 33.093372, 32.315769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571301, 32.856094, 32.306614>,  <38.629414, 32.460632, 32.291359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571301, 32.856094, 32.306614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564412, -0.114476, 0.817517,
		0.812608, 0.097243, 0.574640,
		-0.145280, 0.988655, 0.038139,
		38.527718, 33.152691, 32.318054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720200, 32.575657, 32.983616>,  <38.629414, 32.460632, 32.291359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720200, 32.575657, 32.983616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529648, 32.902912, 32.854797>,  <38.415318, 33.099266, 32.777508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529648, 32.902912, 32.854797>,  <38.720200, 32.575657, 32.983616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529648, 32.902912, 32.854797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598401, -0.033333, 0.800503,
		0.644186, 0.574056, 0.505454,
		-0.476382, 0.818137, -0.322044,
		38.386734, 33.148354, 32.758183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072620, 32.527557, 33.655941>,  <38.720200, 32.575657, 32.983616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072620, 32.527557, 33.655941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091549, 32.128269, 33.670422>,  <39.102905, 31.888695, 33.679111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091549, 32.128269, 33.670422>,  <39.072620, 32.527557, 33.655941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091549, 32.128269, 33.670422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784668, 0.014718, -0.619741,
		0.618107, 0.057731, 0.783971,
		0.047317, -0.998224, 0.036203,
		39.105743, 31.828802, 33.681282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683926, 32.355816, 33.848217>,  <39.072620, 32.527557, 33.655941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683926, 32.355816, 33.848217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536358, 32.029949, 33.669235>,  <39.447819, 31.834429, 33.561848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536358, 32.029949, 33.669235>,  <39.683926, 32.355816, 33.848217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536358, 32.029949, 33.669235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802138, -0.035862, -0.596060,
		0.469545, -0.578819, 0.666706,
		-0.368920, -0.814667, -0.447454,
		39.425682, 31.785549, 33.535000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285503, 31.861986, 33.726376>,  <39.683926, 32.355816, 33.848217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285503, 31.861986, 33.726376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986328, 31.741146, 33.489964>,  <39.806824, 31.668642, 33.348114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986328, 31.741146, 33.489964>,  <40.285503, 31.861986, 33.726376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986328, 31.741146, 33.489964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663763, -0.338440, -0.666991,
		0.001468, -0.891176, 0.453656,
		-0.747942, -0.302099, -0.591033,
		39.761944, 31.650517, 33.312653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466923, 31.110666, 33.418694>,  <40.285503, 31.861986, 33.726376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466923, 31.110666, 33.418694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187984, 31.271511, 33.181370>,  <40.020622, 31.368017, 33.038975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187984, 31.271511, 33.181370>,  <40.466923, 31.110666, 33.418694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187984, 31.271511, 33.181370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581146, -0.167290, -0.796419,
		-0.419504, -0.900178, -0.117027,
		-0.697341, 0.402111, -0.593314,
		39.978783, 31.392145, 33.003376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272038, 30.611200, 32.936470>,  <40.466923, 31.110666, 33.418694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272038, 30.611200, 32.936470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183445, 30.963148, 32.768291>,  <40.130291, 31.174316, 32.667385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183445, 30.963148, 32.768291>,  <40.272038, 30.611200, 32.936470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183445, 30.963148, 32.768291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713260, -0.147850, -0.685128,
		-0.664986, -0.451632, -0.594830,
		-0.221480, 0.879869, -0.420449,
		40.117001, 31.227108, 32.642159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530483, 30.480217, 32.284184>,  <40.272038, 30.611200, 32.936470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530483, 30.480217, 32.284184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433708, 30.868046, 32.269249>,  <40.375641, 31.100742, 32.260288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433708, 30.868046, 32.269249>,  <40.530483, 30.480217, 32.284184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433708, 30.868046, 32.269249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549015, 0.105068, -0.829182,
		-0.800029, -0.221112, -0.557730,
		-0.241942, 0.969572, -0.037336,
		40.361126, 31.158918, 32.258049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294693, 30.741060, 31.640915>,  <40.530483, 30.480217, 32.284184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294693, 30.741060, 31.640915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430229, 31.066414, 31.830055>,  <40.511551, 31.261627, 31.943539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430229, 31.066414, 31.830055>,  <40.294693, 30.741060, 31.640915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430229, 31.066414, 31.830055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501869, 0.268845, -0.822101,
		-0.795809, 0.515874, -0.317116,
		0.338845, 0.813386, 0.472850,
		40.531883, 31.310431, 31.971910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346104, 31.234653, 31.095249>,  <40.294693, 30.741060, 31.640915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346104, 31.234653, 31.095249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586376, 31.364599, 31.387453>,  <40.730541, 31.442568, 31.562775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586376, 31.364599, 31.387453>,  <40.346104, 31.234653, 31.095249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586376, 31.364599, 31.387453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647917, 0.337503, -0.682859,
		-0.468386, 0.883490, -0.007754,
		0.600682, 0.324866, 0.730509,
		40.766582, 31.462059, 31.606606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549088, 31.925472, 30.897196>,  <40.346104, 31.234653, 31.095249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549088, 31.925472, 30.897196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827282, 31.793758, 31.152655>,  <40.994198, 31.714729, 31.305931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827282, 31.793758, 31.152655>,  <40.549088, 31.925472, 30.897196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827282, 31.793758, 31.152655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717744, 0.276539, -0.639038,
		0.033814, 0.902828, 0.428671,
		0.695486, -0.329284, 0.638648,
		41.035927, 31.694973, 31.344250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120647, 32.482330, 31.004200>,  <40.549088, 31.925472, 30.897196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120647, 32.482330, 31.004200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289871, 32.131359, 31.094654>,  <41.391403, 31.920776, 31.148926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289871, 32.131359, 31.094654>,  <41.120647, 32.482330, 31.004200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289871, 32.131359, 31.094654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822501, 0.267165, -0.502110,
		0.380152, 0.398418, 0.834714,
		0.423057, -0.877431, 0.226136,
		41.416790, 31.868130, 31.162495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801224, 32.675430, 31.211681>,  <41.120647, 32.482330, 31.004200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801224, 32.675430, 31.211681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825768, 32.285439, 31.126215>,  <41.840496, 32.051445, 31.074934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825768, 32.285439, 31.126215>,  <41.801224, 32.675430, 31.211681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825768, 32.285439, 31.126215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882366, 0.153053, -0.444979,
		0.466546, -0.161228, 0.869678,
		0.061364, -0.974977, -0.213668,
		41.844177, 31.992945, 31.062115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430500, 32.706306, 31.266491>,  <41.801224, 32.675430, 31.211681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430500, 32.706306, 31.266491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339157, 32.355991, 31.096388>,  <42.284351, 32.145802, 30.994326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339157, 32.355991, 31.096388>,  <42.430500, 32.706306, 31.266491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339157, 32.355991, 31.096388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895297, -0.017303, -0.445133,
		0.382485, -0.482383, 0.788043,
		-0.228361, -0.875789, -0.425258,
		42.270649, 32.093254, 30.968811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997658, 32.318871, 31.399063>,  <42.430500, 32.706306, 31.266491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997658, 32.318871, 31.399063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821045, 32.152985, 31.080803>,  <42.715076, 32.053452, 30.889847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821045, 32.152985, 31.080803>,  <42.997658, 32.318871, 31.399063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821045, 32.152985, 31.080803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896786, -0.232332, -0.376559,
		-0.028688, -0.879790, 0.474497,
		-0.441534, -0.414719, -0.795648,
		42.688583, 32.028568, 30.842108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413799, 31.702965, 31.279173>,  <42.997658, 32.318871, 31.399063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413799, 31.702965, 31.279173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220631, 31.785599, 30.938795>,  <43.104729, 31.835180, 30.734570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220631, 31.785599, 30.938795>,  <43.413799, 31.702965, 31.279173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220631, 31.785599, 30.938795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855989, -0.093453, -0.508477,
		-0.184569, -0.973955, -0.131706,
		-0.482926, 0.206588, -0.850943,
		43.075752, 31.847574, 30.683512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.607967, 28.244358, 26.299089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750103, 28.512354, 26.559811>,  <39.835384, 28.673151, 26.716244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750103, 28.512354, 26.559811>,  <39.607967, 28.244358, 26.299089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750103, 28.512354, 26.559811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491542, -0.459175, 0.739963,
		0.795059, -0.583328, 0.166163,
		0.355343, 0.669990, 0.651801,
		39.856705, 28.713350, 26.755350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944256, 27.833897, 26.881477>,  <39.607967, 28.244358, 26.299089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944256, 27.833897, 26.881477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846340, 28.202461, 27.002195>,  <39.787590, 28.423601, 27.074625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846340, 28.202461, 27.002195>,  <39.944256, 27.833897, 26.881477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846340, 28.202461, 27.002195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513905, -0.387242, 0.765471,
		0.822182, 0.032283, 0.568309,
		-0.244785, 0.921413, 0.301793,
		39.772903, 28.478886, 27.092733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966751, 27.859926, 27.622128>,  <39.944256, 27.833897, 26.881477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966751, 27.859926, 27.622128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744827, 28.179235, 27.528368>,  <39.611671, 28.370821, 27.472113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744827, 28.179235, 27.528368>,  <39.966751, 27.859926, 27.622128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744827, 28.179235, 27.528368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560499, -0.150428, 0.814379,
		0.614835, 0.583210, 0.530890,
		-0.554814, 0.798272, -0.234400,
		39.578384, 28.418716, 27.458048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980236, 28.125174, 28.290895>,  <39.966751, 27.859926, 27.622128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980236, 28.125174, 28.290895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665565, 28.288746, 28.105888>,  <39.476765, 28.386889, 27.994884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665565, 28.288746, 28.105888>,  <39.980236, 28.125174, 28.290895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665565, 28.288746, 28.105888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555591, -0.142271, 0.819193,
		0.269191, 0.901407, 0.339119,
		-0.786673, 0.408931, -0.462515,
		39.429565, 28.411425, 27.967134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681080, 28.560068, 28.752151>,  <39.980236, 28.125174, 28.290895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681080, 28.560068, 28.752151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382969, 28.509676, 28.490252>,  <39.204102, 28.479441, 28.333111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382969, 28.509676, 28.490252>,  <39.681080, 28.560068, 28.752151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382969, 28.509676, 28.490252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632047, -0.179236, 0.753917,
		-0.212333, 0.975707, 0.053954,
		-0.745273, -0.125980, -0.654750,
		39.159386, 28.471882, 28.293827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119133, 28.969469, 28.944822>,  <39.681080, 28.560068, 28.752151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119133, 28.969469, 28.944822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.949459, 28.689854, 28.714546>,  <38.847656, 28.522085, 28.576382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.949459, 28.689854, 28.714546>,  <39.119133, 28.969469, 28.944822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949459, 28.689854, 28.714546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639751, -0.218612, 0.736836,
		-0.640928, 0.680850, -0.354478,
		-0.424182, -0.699036, -0.575689,
		38.822205, 28.480143, 28.541840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423195, 29.025324, 29.117126>,  <39.119133, 28.969469, 28.944822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423195, 29.025324, 29.117126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454094, 28.663755, 28.948860>,  <38.472633, 28.446814, 28.847900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454094, 28.663755, 28.948860>,  <38.423195, 29.025324, 29.117126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454094, 28.663755, 28.948860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587939, -0.382059, 0.712993,
		-0.805208, 0.192246, -0.560964,
		0.077251, -0.903920, -0.420666,
		38.477268, 28.392580, 28.822660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796143, 28.852760, 29.142078>,  <38.423195, 29.025324, 29.117126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796143, 28.852760, 29.142078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946053, 28.495472, 29.042717>,  <38.035999, 28.281099, 28.983101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946053, 28.495472, 29.042717>,  <37.796143, 28.852760, 29.142078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946053, 28.495472, 29.042717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524800, -0.425260, 0.737387,
		-0.764284, -0.145990, -0.628137,
		0.374773, -0.893219, -0.248403,
		38.058483, 28.227507, 28.968197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262196, 28.430632, 29.010914>,  <37.796143, 28.852760, 29.142078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262196, 28.430632, 29.010914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558315, 28.187868, 29.126585>,  <37.735985, 28.042210, 29.195988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558315, 28.187868, 29.126585>,  <37.262196, 28.430632, 29.010914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558315, 28.187868, 29.126585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528545, -0.259604, 0.808236,
		-0.415456, -0.751176, -0.512963,
		0.740295, -0.606910, 0.289176,
		37.780403, 28.005795, 29.213339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971798, 27.835978, 29.050735>,  <37.262196, 28.430632, 29.010914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971798, 27.835978, 29.050735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300190, 27.796030, 29.275599>,  <37.497223, 27.772060, 29.410517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300190, 27.796030, 29.275599>,  <36.971798, 27.835978, 29.050735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300190, 27.796030, 29.275599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538817, -0.461222, 0.704948,
		0.188878, -0.881646, -0.432464,
		0.820976, -0.099870, 0.562160,
		37.546482, 27.766069, 29.444246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074921, 27.109190, 29.274359>,  <36.971798, 27.835978, 29.050735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074921, 27.109190, 29.274359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239391, 27.372536, 29.526546>,  <37.338074, 27.530542, 29.677858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239391, 27.372536, 29.526546>,  <37.074921, 27.109190, 29.274359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239391, 27.372536, 29.526546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616485, -0.308641, 0.724353,
		0.671475, -0.686512, 0.278965,
		0.411177, 0.658363, 0.630469,
		37.362743, 27.570045, 29.715687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127110, 26.818077, 29.982830>,  <37.074921, 27.109190, 29.274359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127110, 26.818077, 29.982830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176678, 27.209686, 30.047520>,  <37.206421, 27.444653, 30.086334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176678, 27.209686, 30.047520>,  <37.127110, 26.818077, 29.982830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176678, 27.209686, 30.047520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596789, -0.056676, 0.800394,
		0.792771, -0.195702, 0.577248,
		0.123923, 0.979024, 0.161724,
		37.213856, 27.503393, 30.096037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086617, 26.834677, 30.670025>,  <37.127110, 26.818077, 29.982830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086617, 26.834677, 30.670025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067535, 27.214499, 30.546041>,  <37.056087, 27.442390, 30.471651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067535, 27.214499, 30.546041>,  <37.086617, 26.834677, 30.670025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067535, 27.214499, 30.546041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524048, 0.240384, 0.817061,
		0.850352, 0.201404, 0.486146,
		-0.047698, 0.949553, -0.309956,
		37.053226, 27.499365, 30.453054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277790, 27.287722, 31.309456>,  <37.086617, 26.834677, 30.670025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277790, 27.287722, 31.309456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.075687, 27.530088, 31.063665>,  <36.954426, 27.675508, 30.916191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.075687, 27.530088, 31.063665>,  <37.277790, 27.287722, 31.309456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075687, 27.530088, 31.063665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594281, 0.271999, 0.756867,
		0.625734, 0.747585, 0.222653,
		-0.505261, 0.605915, -0.614474,
		36.924110, 27.711863, 30.879324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726093, 27.665548, 31.824085>,  <37.277790, 27.287722, 31.309456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726093, 27.665548, 31.824085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870605, 27.382359, 32.066818>,  <37.957314, 27.212444, 32.212460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870605, 27.382359, 32.066818>,  <37.726093, 27.665548, 31.824085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870605, 27.382359, 32.066818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817718, -0.072205, -0.571072,
		0.448122, 0.702535, 0.552839,
		0.361281, -0.707976, 0.606833,
		37.978989, 27.169966, 32.248867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336815, 27.884089, 32.007042>,  <37.726093, 27.665548, 31.824085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336815, 27.884089, 32.007042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.355602, 27.488750, 32.064968>,  <38.366875, 27.251549, 32.099724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.355602, 27.488750, 32.064968>,  <38.336815, 27.884089, 32.007042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355602, 27.488750, 32.064968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907940, -0.018200, -0.418704,
		0.416459, 0.151151, 0.896502,
		0.046971, -0.988343, 0.144815,
		38.369694, 27.192247, 32.108414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109230, 27.752838, 32.302586>,  <38.336815, 27.884089, 32.007042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109230, 27.752838, 32.302586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.949501, 27.418039, 32.152931>,  <38.853664, 27.217159, 32.063141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.949501, 27.418039, 32.152931>,  <39.109230, 27.752838, 32.302586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949501, 27.418039, 32.152931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897260, -0.272960, -0.347010,
		0.188324, -0.474263, 0.860005,
		-0.399321, -0.836999, -0.374133,
		38.829704, 27.166939, 32.040691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607330, 27.334007, 32.404266>,  <39.109230, 27.752838, 32.302586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607330, 27.334007, 32.404266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402122, 27.114063, 32.140610>,  <39.278996, 26.982098, 31.982416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402122, 27.114063, 32.140610>,  <39.607330, 27.334007, 32.404266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402122, 27.114063, 32.140610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849150, -0.212820, -0.483376,
		0.125511, -0.807689, 0.576094,
		-0.513022, -0.549860, -0.659138,
		39.248215, 26.949106, 31.942867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042011, 26.772285, 32.168728>,  <39.607330, 27.334007, 32.404266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042011, 26.772285, 32.168728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780430, 26.805746, 31.867968>,  <39.623482, 26.825823, 31.687511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780430, 26.805746, 31.867968>,  <40.042011, 26.772285, 32.168728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780430, 26.805746, 31.867968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725044, -0.214469, -0.654457,
		-0.216043, -0.973137, 0.079558,
		-0.653939, 0.083707, -0.751902,
		39.584244, 26.830841, 31.642399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175938, 26.188784, 31.742256>,  <40.042011, 26.772285, 32.168728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175938, 26.188784, 31.742256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.976311, 26.439131, 31.502518>,  <39.856533, 26.589340, 31.358675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.976311, 26.439131, 31.502518>,  <40.175938, 26.188784, 31.742256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976311, 26.439131, 31.502518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642538, -0.196802, -0.740549,
		-0.581441, -0.754689, -0.303927,
		-0.499071, 0.625870, -0.599345,
		39.826588, 26.626892, 31.322714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066383, 25.834793, 31.004723>,  <40.175938, 26.188784, 31.742256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066383, 25.834793, 31.004723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.055752, 26.233231, 30.971035>,  <40.049374, 26.472292, 30.950823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.055752, 26.233231, 30.971035>,  <40.066383, 25.834793, 31.004723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055752, 26.233231, 30.971035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560546, -0.054906, -0.826301,
		-0.827697, -0.069169, -0.556896,
		-0.026577, 0.996093, -0.084218,
		40.047779, 26.532059, 30.945770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215202, 25.927090, 30.311600>,  <40.066383, 25.834793, 31.004723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215202, 25.927090, 30.311600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.248112, 26.310949, 30.419155>,  <40.267857, 26.541265, 30.483688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.248112, 26.310949, 30.419155>,  <40.215202, 25.927090, 30.311600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248112, 26.310949, 30.419155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564314, 0.177527, -0.806247,
		-0.821450, 0.218068, -0.526939,
		0.082271, 0.959651, 0.268888,
		40.272793, 26.598845, 30.499821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079239, 26.437729, 29.674911>,  <40.215202, 25.927090, 30.311600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079239, 26.437729, 29.674911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.298840, 26.624355, 29.952303>,  <40.430599, 26.736330, 30.118738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.298840, 26.624355, 29.952303>,  <40.079239, 26.437729, 29.674911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298840, 26.624355, 29.952303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554972, 0.416918, -0.719851,
		-0.624981, 0.780062, -0.030041,
		0.549003, 0.466565, 0.693478,
		40.463539, 26.764324, 30.160347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165821, 27.087194, 29.433455>,  <40.079239, 26.437729, 29.674911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165821, 27.087194, 29.433455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467606, 27.068239, 29.695309>,  <40.648674, 27.056866, 29.852421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467606, 27.068239, 29.695309>,  <40.165821, 27.087194, 29.433455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467606, 27.068239, 29.695309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641525, 0.264029, -0.720232,
		-0.138712, 0.963350, 0.229600,
		0.754457, -0.047390, 0.654637,
		40.693943, 27.054022, 29.891699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391758, 27.806511, 29.580364>,  <40.165821, 27.087194, 29.433455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391758, 27.806511, 29.580364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.708687, 27.578991, 29.668625>,  <40.898846, 27.442478, 29.721581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.708687, 27.578991, 29.668625>,  <40.391758, 27.806511, 29.580364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708687, 27.578991, 29.668625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545602, 0.498755, -0.673470,
		0.273020, 0.653994, 0.705515,
		0.792325, -0.568801, 0.220651,
		40.946384, 27.408350, 29.734819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869114, 28.276175, 29.646706>,  <40.391758, 27.806511, 29.580364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869114, 28.276175, 29.646706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.037319, 27.920918, 29.572546>,  <41.138241, 27.707764, 29.528051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.037319, 27.920918, 29.572546>,  <40.869114, 28.276175, 29.646706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037319, 27.920918, 29.572546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506478, 0.399328, -0.764210,
		0.752763, 0.227457, 0.617747,
		0.420508, -0.888144, -0.185398,
		41.163471, 27.654474, 29.516926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605469, 28.450159, 29.478161>,  <40.869114, 28.276175, 29.646706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605469, 28.450159, 29.478161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.569199, 28.076866, 29.339104>,  <41.547436, 27.852890, 29.255671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.569199, 28.076866, 29.339104>,  <41.605469, 28.450159, 29.478161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569199, 28.076866, 29.339104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470089, 0.267632, -0.841065,
		0.877949, -0.239686, 0.414435,
		-0.090675, -0.933233, -0.347641,
		41.541996, 27.796896, 29.234812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347706, 28.202271, 29.354626>,  <41.605469, 28.450159, 29.478161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347706, 28.202271, 29.354626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.089893, 27.990005, 29.134453>,  <41.935207, 27.862646, 29.002348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.089893, 27.990005, 29.134453>,  <42.347706, 28.202271, 29.354626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089893, 27.990005, 29.134453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523673, 0.218154, -0.823514,
		0.557087, -0.819028, 0.137287,
		-0.644531, -0.530662, -0.550434,
		41.896534, 27.830807, 28.969322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872746, 27.885538, 29.681171>,  <42.347706, 28.202271, 29.354626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872746, 27.885538, 29.681171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.106892, 28.194260, 29.780500>,  <43.247379, 28.379494, 29.840097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.106892, 28.194260, 29.780500>,  <42.872746, 27.885538, 29.681171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106892, 28.194260, 29.780500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378247, -0.010940, 0.925640,
		0.717131, -0.635765, 0.285529,
		0.585366, 0.771805, 0.248321,
		43.282501, 28.425800, 29.854998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105541, 27.664883, 30.381756>,  <42.872746, 27.885538, 29.681171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105541, 27.664883, 30.381756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.195812, 28.054543, 30.377758>,  <43.249977, 28.288338, 30.375360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.195812, 28.054543, 30.377758>,  <43.105541, 27.664883, 30.381756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195812, 28.054543, 30.377758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286148, 0.076091, 0.955159,
		0.931229, -0.212702, 0.295924,
		0.225681, 0.974150, -0.009994,
		43.263515, 28.346788, 30.374760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476223, 27.768078, 30.922867>,  <43.105541, 27.664883, 30.381756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476223, 27.768078, 30.922867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.328274, 28.130381, 30.840115>,  <43.239506, 28.347763, 30.790464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.328274, 28.130381, 30.840115>,  <43.476223, 27.768078, 30.922867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328274, 28.130381, 30.840115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323915, 0.082985, 0.942440,
		0.870791, 0.415590, 0.262695,
		-0.369869, 0.905759, -0.206878,
		43.217312, 28.402109, 30.778051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551815, 28.204653, 31.556576>,  <43.476223, 27.768078, 30.922867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551815, 28.204653, 31.556576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.267975, 28.414196, 31.368090>,  <43.097672, 28.539923, 31.254997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.267975, 28.414196, 31.368090>,  <43.551815, 28.204653, 31.556576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267975, 28.414196, 31.368090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437611, 0.196487, 0.877433,
		0.552239, 0.828833, 0.089820,
		-0.709597, 0.523860, -0.471215,
		43.055096, 28.571354, 31.226725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414684, 28.804045, 31.911991>,  <43.551815, 28.204653, 31.556576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414684, 28.804045, 31.911991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.087528, 28.813112, 31.682020>,  <42.891235, 28.818552, 31.544039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.087528, 28.813112, 31.682020>,  <43.414684, 28.804045, 31.911991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087528, 28.813112, 31.682020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552774, 0.246337, 0.796090,
		0.159672, 0.968919, -0.188946,
		-0.817891, 0.022668, -0.574926,
		42.842159, 28.819912, 31.509542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084057, 29.388908, 32.054249>,  <43.414684, 28.804045, 31.911991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084057, 29.388908, 32.054249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.809055, 29.151220, 31.887281>,  <42.644054, 29.008608, 31.787102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.809055, 29.151220, 31.887281>,  <43.084057, 29.388908, 32.054249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809055, 29.151220, 31.887281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657077, 0.264317, 0.705965,
		-0.309166, 0.759632, -0.572167,
		-0.687507, -0.594218, -0.417419,
		42.602802, 28.972956, 31.762056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454613, 29.696833, 32.234528>,  <43.084057, 29.388908, 32.054249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454613, 29.696833, 32.234528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.370968, 29.323277, 32.118511>,  <42.320782, 29.099144, 32.048901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.370968, 29.323277, 32.118511>,  <42.454613, 29.696833, 32.234528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370968, 29.323277, 32.118511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676771, -0.075888, 0.732272,
		-0.705872, 0.349417, -0.616160,
		-0.209110, -0.933889, -0.290043,
		42.308235, 29.043110, 32.031498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672810, 29.674051, 32.080025>,  <42.454613, 29.696833, 32.234528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672810, 29.674051, 32.080025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.817760, 29.310095, 32.160801>,  <41.904732, 29.091721, 32.209267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.817760, 29.310095, 32.160801>,  <41.672810, 29.674051, 32.080025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817760, 29.310095, 32.160801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741177, -0.149953, 0.654347,
		-0.565104, -0.386794, -0.728730,
		0.362373, -0.909893, 0.201944,
		41.926472, 29.037127, 32.221386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151115, 29.140709, 32.069038>,  <41.672810, 29.674051, 32.080025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151115, 29.140709, 32.069038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.409206, 28.929523, 32.289921>,  <41.564060, 28.802813, 32.422451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.409206, 28.929523, 32.289921>,  <41.151115, 29.140709, 32.069038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409206, 28.929523, 32.289921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724466, -0.193366, 0.661633,
		-0.242544, -0.826958, -0.507260,
		0.645230, -0.527968, 0.552203,
		41.602776, 28.771135, 32.455582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780083, 28.409449, 32.340557>,  <41.151115, 29.140709, 32.069038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780083, 28.409449, 32.340557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.087479, 28.490870, 32.583206>,  <41.271915, 28.539722, 32.728794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.087479, 28.490870, 32.583206>,  <40.780083, 28.409449, 32.340557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087479, 28.490870, 32.583206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560490, -0.243178, 0.791653,
		0.308661, -0.948383, -0.072790,
		0.768491, 0.203554, 0.606619,
		41.318027, 28.551935, 32.765190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669724, 27.887142, 32.828091>,  <40.780083, 28.409449, 32.340557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669724, 27.887142, 32.828091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937492, 28.121204, 33.011158>,  <41.098156, 28.261642, 33.120998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937492, 28.121204, 33.011158>,  <40.669724, 27.887142, 32.828091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937492, 28.121204, 33.011158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343074, -0.302933, 0.889119,
		0.658917, -0.752213, -0.002040,
		0.669425, 0.585155, 0.457672,
		41.138321, 28.296751, 33.148460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002377, 27.525143, 33.243031>,  <40.669724, 27.887142, 32.828091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002377, 27.525143, 33.243031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.021160, 27.898718, 33.384766>,  <41.032429, 28.122862, 33.469807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.021160, 27.898718, 33.384766>,  <41.002377, 27.525143, 33.243031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021160, 27.898718, 33.384766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389410, -0.309552, 0.867489,
		0.919866, -0.178721, 0.349148,
		0.046959, 0.933936, 0.354342,
		41.035248, 28.178898, 33.491070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193073, 27.406595, 33.926075>,  <41.002377, 27.525143, 33.243031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193073, 27.406595, 33.926075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.067715, 27.786066, 33.943024>,  <40.992500, 28.013748, 33.953194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.067715, 27.786066, 33.943024>,  <41.193073, 27.406595, 33.926075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067715, 27.786066, 33.943024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620953, -0.238486, 0.746687,
		0.718469, 0.207699, 0.663824,
		-0.313399, 0.948676, 0.042373,
		40.973694, 28.070669, 33.955734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136013, 27.722359, 34.641636>,  <41.193073, 27.406595, 33.926075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136013, 27.722359, 34.641636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.876404, 27.951765, 34.441692>,  <40.720638, 28.089409, 34.321728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.876404, 27.951765, 34.441692>,  <41.136013, 27.722359, 34.641636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876404, 27.951765, 34.441692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685486, -0.155872, 0.711206,
		0.329973, 0.804230, 0.494300,
		-0.649020, 0.573514, -0.499854,
		40.681698, 28.123819, 34.291737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.384510, 31.085140, 30.858488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.312195, 31.305191, 30.532377>,  <43.268806, 31.437222, 30.336710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.312195, 31.305191, 30.532377>,  <43.384510, 31.085140, 30.858488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312195, 31.305191, 30.532377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983148, 0.123944, -0.134378,
		0.027124, -0.825833, -0.563262,
		-0.180787, 0.550125, -0.815278,
		43.257957, 31.470228, 30.287794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650700, 30.777430, 30.253904>,  <43.384510, 31.085140, 30.858488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650700, 30.777430, 30.253904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.615028, 31.162302, 30.150944>,  <43.593624, 31.393225, 30.089167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.615028, 31.162302, 30.150944>,  <43.650700, 30.777430, 30.253904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615028, 31.162302, 30.150944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885961, -0.041451, -0.461904,
		-0.455105, -0.269242, -0.848757,
		-0.089182, 0.962180, -0.257402,
		43.588272, 31.450956, 30.073723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762901, 30.824572, 29.551991>,  <43.650700, 30.777430, 30.253904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762901, 30.824572, 29.551991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.850651, 31.194811, 29.675373>,  <43.903301, 31.416954, 29.749403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.850651, 31.194811, 29.675373>,  <43.762901, 30.824572, 29.551991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850651, 31.194811, 29.675373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856641, -0.031422, -0.514955,
		-0.466948, 0.377205, -0.799797,
		0.219375, 0.925596, 0.308457,
		43.916462, 31.472490, 29.767910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811386, 31.236341, 28.963606>,  <43.762901, 30.824572, 29.551991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811386, 31.236341, 28.963606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.032501, 31.436148, 29.230412>,  <44.165169, 31.556032, 29.390495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.032501, 31.436148, 29.230412>,  <43.811386, 31.236341, 28.963606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032501, 31.436148, 29.230412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757470, 0.032461, -0.652063,
		-0.347369, 0.865696, -0.360425,
		0.552788, 0.499517, 0.667014,
		44.198338, 31.586002, 29.430515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107933, 31.712845, 28.528591>,  <43.811386, 31.236341, 28.963606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107933, 31.712845, 28.528591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.318863, 31.714203, 28.868454>,  <44.445423, 31.715017, 29.072371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.318863, 31.714203, 28.868454>,  <44.107933, 31.712845, 28.528591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318863, 31.714203, 28.868454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834380, 0.186737, -0.518593,
		-0.160424, 0.982404, 0.095637,
		0.527327, 0.003397, 0.849656,
		44.477062, 31.715221, 29.123350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460217, 32.375187, 28.601582>,  <44.107933, 31.712845, 28.528591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460217, 32.375187, 28.601582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.670918, 32.123352, 28.830021>,  <44.797337, 31.972250, 28.967085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.670918, 32.123352, 28.830021>,  <44.460217, 32.375187, 28.601582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670918, 32.123352, 28.830021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830604, 0.238460, -0.503223,
		0.180641, 0.739428, 0.648549,
		0.526750, -0.629590, 0.571096,
		44.828941, 31.934475, 29.001350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157616, 32.663506, 28.585085>,  <44.460217, 32.375187, 28.601582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157616, 32.663506, 28.585085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.232559, 32.289490, 28.705481>,  <45.277527, 32.065079, 28.777718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.232559, 32.289490, 28.705481>,  <45.157616, 32.663506, 28.585085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232559, 32.289490, 28.705481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888060, 0.030281, -0.458729,
		0.419816, 0.353245, 0.836046,
		0.187360, -0.935041, 0.300991,
		45.288769, 32.008976, 28.795778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833977, 32.786991, 28.716291>,  <45.157616, 32.663506, 28.585085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833977, 32.786991, 28.716291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.761818, 32.394402, 28.690460>,  <45.718521, 32.158848, 28.674961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.761818, 32.394402, 28.690460>,  <45.833977, 32.786991, 28.716291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761818, 32.394402, 28.690460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700531, -0.082121, -0.708881,
		0.690443, -0.173119, 0.702366,
		-0.180400, -0.981471, -0.064576,
		45.707699, 32.099960, 28.671087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.481762, 32.411522, 28.852642>,  <45.833977, 32.786991, 28.716291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.481762, 32.411522, 28.852642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.246948, 32.185066, 28.621170>,  <46.106060, 32.049191, 28.482286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.246948, 32.185066, 28.621170>,  <46.481762, 32.411522, 28.852642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246948, 32.185066, 28.621170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716317, -0.030194, -0.697121,
		0.377197, -0.823755, 0.423262,
		-0.587037, -0.566141, -0.578681,
		46.070839, 32.015224, 28.447565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916264, 31.966576, 28.641310>,  <46.481762, 32.411522, 28.852642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916264, 31.966576, 28.641310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.625557, 31.935030, 28.368372>,  <46.451134, 31.916103, 28.204609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.625557, 31.935030, 28.368372>,  <46.916264, 31.966576, 28.641310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.625557, 31.935030, 28.368372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684829, -0.006377, -0.728676,
		0.053118, -0.996865, 0.058646,
		-0.726766, -0.078868, -0.682343,
		46.407528, 31.911371, 28.163670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.109608, 31.406412, 28.319244>,  <46.916264, 31.966576, 28.641310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.109608, 31.406412, 28.319244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.878693, 31.621468, 28.073421>,  <46.740143, 31.750500, 27.925928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.878693, 31.621468, 28.073421>,  <47.109608, 31.406412, 28.319244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.878693, 31.621468, 28.073421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657689, -0.139887, -0.740187,
		-0.483920, -0.831491, -0.272843,
		-0.577292, 0.537637, -0.614557,
		46.705505, 31.782759, 27.889055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041569, 31.074038, 27.727518>,  <47.109608, 31.406412, 28.319244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041569, 31.074038, 27.727518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.947556, 31.445265, 27.611969>,  <46.891148, 31.668001, 27.542639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.947556, 31.445265, 27.611969>,  <47.041569, 31.074038, 27.727518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.947556, 31.445265, 27.611969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649503, -0.071143, -0.757024,
		-0.723121, -0.365552, -0.586062,
		-0.235037, 0.928068, -0.288872,
		46.877045, 31.723686, 27.525307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.918041, 31.077856, 27.060926>,  <47.041569, 31.074038, 27.727518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.918041, 31.077856, 27.060926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.037296, 31.447716, 27.155701>,  <47.108849, 31.669632, 27.212564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.037296, 31.447716, 27.155701>,  <46.918041, 31.077856, 27.060926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037296, 31.447716, 27.155701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730555, -0.061287, -0.680098,
		-0.614330, 0.375859, -0.693778,
		0.298141, 0.924648, 0.236935,
		47.126740, 31.725111, 27.226782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119781, 30.606153, 26.532354>,  <46.918041, 31.077856, 27.060926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119781, 30.606153, 26.532354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.379799, 30.379623, 26.735023>,  <47.535809, 30.243706, 26.856625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.379799, 30.379623, 26.735023>,  <47.119781, 30.606153, 26.532354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.379799, 30.379623, 26.735023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531648, -0.137463, -0.835736,
		0.542946, 0.812639, 0.211727,
		0.650047, -0.566324, 0.506673,
		47.574814, 30.209726, 26.887026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160049, 30.169176, 26.075825>,  <47.119781, 30.606153, 26.532354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160049, 30.169176, 26.075825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.222752, 29.782827, 25.993345>,  <47.260372, 29.551018, 25.943857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.222752, 29.782827, 25.993345>,  <47.160049, 30.169176, 26.075825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.222752, 29.782827, 25.993345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665603, -0.257563, 0.700453,
		-0.729657, 0.027445, -0.683262,
		0.156759, -0.965872, -0.206200,
		47.269779, 29.493067, 25.931484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530785, 29.849051, 25.944569>,  <47.160049, 30.169176, 26.075825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530785, 29.849051, 25.944569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.775848, 29.548637, 26.043039>,  <46.922886, 29.368389, 26.102121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.775848, 29.548637, 26.043039>,  <46.530785, 29.849051, 25.944569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.775848, 29.548637, 26.043039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704126, -0.377197, 0.601605,
		-0.358961, -0.541924, -0.759911,
		0.612661, -0.751026, 0.246184,
		46.959644, 29.323328, 26.116892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159740, 29.233944, 25.783863>,  <46.530785, 29.849051, 25.944569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159740, 29.233944, 25.783863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.433365, 29.142490, 26.060930>,  <46.597542, 29.087618, 26.227169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.433365, 29.142490, 26.060930>,  <46.159740, 29.233944, 25.783863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433365, 29.142490, 26.060930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707151, -0.440735, 0.552893,
		0.178873, -0.868033, -0.463167,
		0.684063, -0.228631, 0.692666,
		46.638584, 29.073900, 26.268730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064964, 28.572655, 25.879654>,  <46.159740, 29.233944, 25.783863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064964, 28.572655, 25.879654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.235859, 28.721117, 26.209433>,  <46.338394, 28.810194, 26.407299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.235859, 28.721117, 26.209433>,  <46.064964, 28.572655, 25.879654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235859, 28.721117, 26.209433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727233, -0.400734, 0.557265,
		0.537215, -0.837650, 0.098707,
		0.427237, 0.371154, 0.824447,
		46.364029, 28.832462, 26.456766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104095, 28.111616, 26.455135>,  <46.064964, 28.572655, 25.879654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104095, 28.111616, 26.455135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.123085, 28.457266, 26.655550>,  <46.134480, 28.664656, 26.775799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.123085, 28.457266, 26.655550>,  <46.104095, 28.111616, 26.455135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123085, 28.457266, 26.655550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715890, -0.320372, 0.620374,
		0.696597, -0.388139, 0.603408,
		0.047476, 0.864124, 0.501034,
		46.137329, 28.716503, 26.805861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.020081, 27.941395, 27.052866>,  <46.104095, 28.111616, 26.455135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.020081, 27.941395, 27.052866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.952454, 28.332956, 27.098755>,  <45.911877, 28.567894, 27.126287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.952454, 28.332956, 27.098755>,  <46.020081, 27.941395, 27.052866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952454, 28.332956, 27.098755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623891, -0.196403, 0.756430,
		0.763004, 0.056316, 0.643936,
		-0.169071, 0.978904, 0.114721,
		45.901733, 28.626627, 27.133171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113998, 28.060978, 27.744129>,  <46.020081, 27.941395, 27.052866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113998, 28.060978, 27.744129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.905643, 28.377676, 27.616493>,  <45.780632, 28.567694, 27.539911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.905643, 28.377676, 27.616493>,  <46.113998, 28.060978, 27.744129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905643, 28.377676, 27.616493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664074, -0.140974, 0.734256,
		0.536359, 0.594364, 0.599208,
		-0.520888, 0.791744, -0.319089,
		45.749378, 28.615200, 27.520767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829502, 28.231382, 28.345585>,  <46.113998, 28.060978, 27.744129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829502, 28.231382, 28.345585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.621292, 28.466885, 28.098225>,  <45.496365, 28.608187, 27.949808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.621292, 28.466885, 28.098225>,  <45.829502, 28.231382, 28.345585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621292, 28.466885, 28.098225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803789, -0.093540, 0.587514,
		0.288057, 0.802880, 0.521926,
		-0.520524, 0.588757, -0.618401,
		45.465134, 28.643511, 27.912704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636524, 28.840288, 28.739904>,  <45.829502, 28.231382, 28.345585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636524, 28.840288, 28.739904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.377201, 28.806896, 28.437189>,  <45.221607, 28.786861, 28.255560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.377201, 28.806896, 28.437189>,  <45.636524, 28.840288, 28.739904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377201, 28.806896, 28.437189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761203, 0.092518, 0.641881,
		0.016434, 0.992206, -0.123523,
		-0.648306, -0.083478, -0.756790,
		45.182709, 28.781853, 28.210152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170124, 29.470884, 28.745266>,  <45.636524, 28.840288, 28.739904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170124, 29.470884, 28.745266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.995071, 29.158707, 28.566656>,  <44.890041, 28.971399, 28.459490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.995071, 29.158707, 28.566656>,  <45.170124, 29.470884, 28.745266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995071, 29.158707, 28.566656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792546, 0.100264, 0.601514,
		-0.424678, 0.617133, -0.662417,
		-0.437630, -0.780445, -0.446526,
		44.863781, 28.924574, 28.432699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481617, 29.689547, 28.610317>,  <45.170124, 29.470884, 28.745266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481617, 29.689547, 28.610317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.493023, 29.289864, 28.621450>,  <44.499866, 29.050055, 28.628130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.493023, 29.289864, 28.621450>,  <44.481617, 29.689547, 28.610317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493023, 29.289864, 28.621450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765885, -0.003948, 0.642966,
		-0.642345, -0.039653, -0.765389,
		0.028517, -0.999206, 0.027834,
		44.501579, 28.990103, 28.629801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779427, 29.519373, 28.582329>,  <44.481617, 29.689547, 28.610317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779427, 29.519373, 28.582329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.947021, 29.187931, 28.730846>,  <44.047581, 28.989065, 28.819956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.947021, 29.187931, 28.730846>,  <43.779427, 29.519373, 28.582329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947021, 29.187931, 28.730846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821297, -0.171478, 0.544120,
		-0.387194, -0.532921, -0.752380,
		0.418990, -0.828607, 0.371291,
		44.072720, 28.939348, 28.842234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232803, 29.023834, 28.610672>,  <43.779427, 29.519373, 28.582329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232803, 29.023834, 28.610672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.515446, 28.863533, 28.843946>,  <43.685032, 28.767353, 28.983912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.515446, 28.863533, 28.843946>,  <43.232803, 29.023834, 28.610672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515446, 28.863533, 28.843946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694894, -0.237479, 0.678768,
		-0.133522, -0.884875, -0.446283,
		0.706608, -0.400750, 0.583185,
		43.727428, 28.743307, 29.018902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899784, 28.452360, 28.951874>,  <43.232803, 29.023834, 28.610672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899784, 28.452360, 28.951874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.216236, 28.550171, 29.176132>,  <43.406105, 28.608858, 29.310686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.216236, 28.550171, 29.176132>,  <42.899784, 28.452360, 28.951874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216236, 28.550171, 29.176132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597441, 0.112514, 0.793980,
		0.131082, -0.963089, 0.235112,
		0.791127, 0.244542, 0.560640,
		43.453575, 28.623529, 29.344326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762009, 27.631115, 29.006477>,  <42.899784, 28.452360, 28.951874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762009, 27.631115, 29.006477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.427319, 27.647125, 28.788015>,  <42.226505, 27.656731, 28.656939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.427319, 27.647125, 28.788015>,  <42.762009, 27.631115, 29.006477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427319, 27.647125, 28.788015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547449, 0.036231, -0.836054,
		-0.013680, -0.998541, -0.052230,
		-0.836727, 0.040030, -0.546155,
		42.176300, 27.659132, 28.624168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798496, 27.027128, 28.493773>,  <42.762009, 27.631115, 29.006477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798496, 27.027128, 28.493773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.535004, 27.301386, 28.369864>,  <42.376907, 27.465940, 28.295517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.535004, 27.301386, 28.369864>,  <42.798496, 27.027128, 28.493773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535004, 27.301386, 28.369864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431180, 0.006624, -0.902241,
		-0.616566, -0.727905, -0.300000,
		-0.658734, 0.685646, -0.309774,
		42.337383, 27.507080, 28.276932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520588, 26.829792, 27.931629>,  <42.798496, 27.027128, 28.493773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520588, 26.829792, 27.931629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.431175, 27.217577, 27.891277>,  <42.377529, 27.450249, 27.867067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.431175, 27.217577, 27.891277>,  <42.520588, 26.829792, 27.931629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431175, 27.217577, 27.891277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543085, 0.037935, -0.838820,
		-0.809379, -0.242285, -0.534981,
		-0.223528, 0.969463, -0.100878,
		42.364117, 27.508415, 27.861013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375618, 26.924524, 27.236053>,  <42.520588, 26.829792, 27.931629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375618, 26.924524, 27.236053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.465965, 27.294151, 27.359394>,  <42.520172, 27.515928, 27.433399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.465965, 27.294151, 27.359394>,  <42.375618, 26.924524, 27.236053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465965, 27.294151, 27.359394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478596, 0.170436, -0.861335,
		-0.848487, 0.342122, -0.403760,
		0.225867, 0.924069, 0.308351,
		42.533726, 27.571373, 27.451899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187805, 27.352640, 26.745955>,  <42.375618, 26.924524, 27.236053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187805, 27.352640, 26.745955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.440372, 27.583904, 26.952662>,  <42.591911, 27.722662, 27.076685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.440372, 27.583904, 26.952662>,  <42.187805, 27.352640, 26.745955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440372, 27.583904, 26.952662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501003, 0.204491, -0.840939,
		-0.591871, 0.789883, -0.160541,
		0.631415, 0.578159, 0.516766,
		42.629795, 27.757353, 27.107691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224529, 27.967722, 26.341515>,  <42.187805, 27.352640, 26.745955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224529, 27.967722, 26.341515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.563084, 27.954094, 26.554104>,  <42.766216, 27.945917, 26.681658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.563084, 27.954094, 26.554104>,  <42.224529, 27.967722, 26.341515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563084, 27.954094, 26.554104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491473, 0.434350, -0.754847,
		-0.205128, 0.900099, 0.384374,
		0.846391, -0.034069, 0.531472,
		42.817001, 27.943872, 26.713545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714268, 28.506216, 26.029102>,  <42.224529, 27.967722, 26.341515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714268, 28.506216, 26.029102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.947212, 28.266649, 26.248978>,  <43.086979, 28.122910, 26.380903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.947212, 28.266649, 26.248978>,  <42.714268, 28.506216, 26.029102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947212, 28.266649, 26.248978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746930, 0.127317, -0.652600,
		0.320868, 0.790626, 0.521492,
		0.582357, -0.598916, 0.549690,
		43.121918, 28.086975, 26.413885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851654, 29.240232, 26.125669>,  <42.714268, 28.506216, 26.029102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851654, 29.240232, 26.125669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.596127, 29.371710, 25.847425>,  <42.442810, 29.450596, 25.680479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.596127, 29.371710, 25.847425>,  <42.851654, 29.240232, 26.125669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596127, 29.371710, 25.847425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757486, -0.110485, 0.643435,
		0.134637, 0.937953, 0.319559,
		-0.638818, 0.328691, -0.695610,
		42.404480, 29.470318, 25.638742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406742, 29.750605, 26.457594>,  <42.851654, 29.240232, 26.125669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406742, 29.750605, 26.457594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.190483, 29.662195, 26.132917>,  <42.060726, 29.609150, 25.938110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.190483, 29.662195, 26.132917>,  <42.406742, 29.750605, 26.457594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190483, 29.662195, 26.132917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804753, -0.145223, 0.575572,
		-0.245092, 0.964396, -0.099353,
		-0.540651, -0.221023, -0.811693,
		42.028286, 29.595888, 25.889410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758141, 30.232883, 26.313305>,  <42.406742, 29.750605, 26.457594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758141, 30.232883, 26.313305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.669941, 29.894966, 26.118284>,  <41.617023, 29.692215, 26.001272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.669941, 29.894966, 26.118284>,  <41.758141, 30.232883, 26.313305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669941, 29.894966, 26.118284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898434, -0.018694, 0.438710,
		-0.379734, 0.534766, -0.754869,
		-0.220496, -0.844794, -0.487551,
		41.603790, 29.641529, 25.972019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081264, 30.164709, 26.221680>,  <41.758141, 30.232883, 26.313305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081264, 30.164709, 26.221680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.132320, 29.781637, 26.118483>,  <41.162952, 29.551794, 26.056564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.132320, 29.781637, 26.118483>,  <41.081264, 30.164709, 26.221680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132320, 29.781637, 26.118483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962245, -0.182620, 0.201830,
		-0.240403, 0.222491, -0.944830,
		0.127639, -0.957678, -0.257993,
		41.170612, 29.494333, 26.041084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527370, 29.936382, 25.759302>,  <41.081264, 30.164709, 26.221680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527370, 29.936382, 25.759302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.663914, 29.607267, 25.941071>,  <40.745842, 29.409800, 26.050131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.663914, 29.607267, 25.941071>,  <40.527370, 29.936382, 25.759302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663914, 29.607267, 25.941071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939708, -0.309302, 0.145880,
		0.020525, -0.476819, -0.878762,
		0.341361, -0.822785, 0.454419,
		40.766323, 29.360432, 26.077396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963867, 29.415596, 25.680080>,  <40.527370, 29.936382, 25.759302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963867, 29.415596, 25.680080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.202164, 29.290915, 25.976171>,  <40.345142, 29.216106, 26.153826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.202164, 29.290915, 25.976171>,  <39.963867, 29.415596, 25.680080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202164, 29.290915, 25.976171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796130, -0.350991, 0.492932,
		0.106164, -0.882976, -0.457256,
		0.595740, -0.311704, 0.740226,
		40.380886, 29.197403, 26.198238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555260, 28.910498, 25.865583>,  <39.963867, 29.415596, 25.680080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555260, 28.910498, 25.865583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829472, 28.952377, 26.153774>,  <39.993999, 28.977505, 26.326689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829472, 28.952377, 26.153774>,  <39.555260, 28.910498, 25.865583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829472, 28.952377, 26.153774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630157, -0.410296, 0.659211,
		0.364629, -0.905922, -0.215292,
		0.685528, 0.104699, 0.720479,
		40.035130, 28.983788, 26.369919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.583694, 34.232414, 25.906263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.717915, 33.996578, 26.200144>,  <45.798447, 33.855076, 26.376472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.717915, 33.996578, 26.200144>,  <45.583694, 34.232414, 25.906263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717915, 33.996578, 26.200144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912675, -0.010311, 0.408557,
		-0.233307, -0.807634, -0.541567,
		0.335548, -0.589594, 0.734701,
		45.818581, 33.819702, 26.420555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053593, 33.633331, 26.118553>,  <45.583694, 34.232414, 25.906263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053593, 33.633331, 26.118553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.264988, 33.689251, 26.453493>,  <45.391827, 33.722805, 26.654457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.264988, 33.689251, 26.453493>,  <45.053593, 33.633331, 26.118553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264988, 33.689251, 26.453493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839719, -0.058888, 0.539819,
		0.124779, -0.988426, 0.086275,
		0.528491, 0.139805, 0.837348,
		45.423534, 33.731194, 26.704697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924923, 33.042664, 26.484642>,  <45.053593, 33.633331, 26.118553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924923, 33.042664, 26.484642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.040474, 33.330128, 26.737650>,  <45.109806, 33.502605, 26.889454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.040474, 33.330128, 26.737650>,  <44.924923, 33.042664, 26.484642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040474, 33.330128, 26.737650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855045, -0.103508, 0.508118,
		0.430634, -0.687617, 0.584583,
		0.288882, 0.718658, 0.632518,
		45.127140, 33.545727, 26.927404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811138, 32.727627, 27.072346>,  <44.924923, 33.042664, 26.484642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811138, 32.727627, 27.072346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.818203, 33.117970, 27.159420>,  <44.822441, 33.352177, 27.211664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.818203, 33.117970, 27.159420>,  <44.811138, 32.727627, 27.072346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818203, 33.117970, 27.159420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794712, -0.118419, 0.595323,
		0.606730, -0.183512, 0.773436,
		0.017659, 0.975859, 0.217688,
		44.823502, 33.410728, 27.224726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585629, 32.730865, 27.760830>,  <44.811138, 32.727627, 27.072346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585629, 32.730865, 27.760830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.548042, 33.117737, 27.666393>,  <44.525490, 33.349857, 27.609732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.548042, 33.117737, 27.666393>,  <44.585629, 32.730865, 27.760830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548042, 33.117737, 27.666393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807559, 0.064643, 0.586233,
		0.582253, 0.245747, 0.774978,
		-0.093968, 0.967176, -0.236094,
		44.519852, 33.407890, 27.595566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524666, 33.084988, 28.253719>,  <44.585629, 32.730865, 27.760830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524666, 33.084988, 28.253719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.389179, 33.379528, 28.019434>,  <44.307888, 33.556252, 27.878862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.389179, 33.379528, 28.019434>,  <44.524666, 33.084988, 28.253719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389179, 33.379528, 28.019434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792937, 0.111694, 0.598978,
		0.506476, 0.667321, 0.546044,
		-0.338721, 0.736347, -0.585714,
		44.287563, 33.600433, 27.843719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366985, 33.679935, 28.666801>,  <44.524666, 33.084988, 28.253719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366985, 33.679935, 28.666801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.145725, 33.712910, 28.335205>,  <44.012970, 33.732693, 28.136248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.145725, 33.712910, 28.335205>,  <44.366985, 33.679935, 28.666801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145725, 33.712910, 28.335205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804945, 0.203537, 0.557347,
		0.214673, 0.975591, -0.046234,
		-0.553154, 0.082431, -0.828991,
		43.979778, 33.737640, 28.086508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035862, 34.390770, 28.650429>,  <44.366985, 33.679935, 28.666801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035862, 34.390770, 28.650429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.821213, 34.161648, 28.402580>,  <43.692425, 34.024174, 28.253870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.821213, 34.161648, 28.402580>,  <44.035862, 34.390770, 28.650429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821213, 34.161648, 28.402580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843366, 0.339876, 0.416195,
		-0.027804, 0.745908, -0.665468,
		-0.536620, -0.572805, -0.619624,
		43.660225, 33.989807, 28.216694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419418, 34.760666, 28.547161>,  <44.035862, 34.390770, 28.650429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419418, 34.760666, 28.547161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.324051, 34.395775, 28.413902>,  <43.266830, 34.176838, 28.333946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.324051, 34.395775, 28.413902>,  <43.419418, 34.760666, 28.547161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324051, 34.395775, 28.413902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933719, 0.120984, 0.336943,
		-0.267065, 0.391402, -0.880614,
		-0.238420, -0.912232, -0.333148,
		43.252525, 34.122105, 28.313957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823368, 34.831627, 28.157166>,  <43.419418, 34.760666, 28.547161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823368, 34.831627, 28.157166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.844387, 34.444851, 28.256985>,  <42.856998, 34.212788, 28.316875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.844387, 34.444851, 28.256985>,  <42.823368, 34.831627, 28.157166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844387, 34.444851, 28.256985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968586, 0.011474, 0.248413,
		-0.243063, -0.254760, -0.935958,
		0.052546, -0.966936, 0.249546,
		42.860149, 34.154770, 28.331848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148033, 34.668682, 28.022898>,  <42.823368, 34.831627, 28.157166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148033, 34.668682, 28.022898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.267982, 34.358421, 28.245047>,  <42.339951, 34.172264, 28.378336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.267982, 34.358421, 28.245047>,  <42.148033, 34.668682, 28.022898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267982, 34.358421, 28.245047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912216, -0.062780, 0.404871,
		-0.279174, -0.628029, -0.726390,
		0.299874, -0.775654, 0.555371,
		42.357944, 34.125725, 28.411657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901455, 33.938957, 27.837389>,  <42.148033, 34.668682, 28.022898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901455, 33.938957, 27.837389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.971905, 33.950157, 28.230978>,  <42.014175, 33.956879, 28.467131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.971905, 33.950157, 28.230978>,  <41.901455, 33.938957, 27.837389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971905, 33.950157, 28.230978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899092, -0.402393, 0.172379,
		0.400769, -0.915039, -0.045695,
		0.176121, 0.028000, 0.983970,
		42.024742, 33.958557, 28.526169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357853, 33.391201, 27.771976>,  <41.901455, 33.938957, 27.837389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357853, 33.391201, 27.771976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.094322, 33.403870, 27.471325>,  <40.936203, 33.411472, 27.290934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.094322, 33.403870, 27.471325>,  <41.357853, 33.391201, 27.771976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094322, 33.403870, 27.471325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743816, -0.122189, -0.657121,
		-0.112642, -0.992002, 0.056956,
		-0.658825, 0.031655, -0.751630,
		40.896675, 33.413372, 27.245836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521606, 32.898670, 27.355686>,  <41.357853, 33.391201, 27.771976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521606, 32.898670, 27.355686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.290066, 33.109089, 27.106462>,  <41.151142, 33.235340, 26.956928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.290066, 33.109089, 27.106462>,  <41.521606, 32.898670, 27.355686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290066, 33.109089, 27.106462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609898, -0.227866, -0.759014,
		-0.541253, -0.819358, -0.188937,
		-0.578852, 0.526051, -0.623058,
		41.116409, 33.266903, 26.919544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617931, 32.595848, 26.753260>,  <41.521606, 32.898670, 27.355686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617931, 32.595848, 26.753260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.515266, 32.969563, 26.654276>,  <41.453667, 33.193790, 26.594887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.515266, 32.969563, 26.654276>,  <41.617931, 32.595848, 26.753260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515266, 32.969563, 26.654276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803210, 0.063786, -0.592272,
		-0.537566, -0.350775, -0.766798,
		-0.256665, 0.934285, -0.247457,
		41.438267, 33.249847, 26.580038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544731, 32.585743, 26.020952>,  <41.617931, 32.595848, 26.753260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544731, 32.585743, 26.020952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575558, 32.970345, 26.126453>,  <41.594055, 33.201107, 26.189754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575558, 32.970345, 26.126453>,  <41.544731, 32.585743, 26.020952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575558, 32.970345, 26.126453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666575, 0.147039, -0.730793,
		-0.741444, 0.232131, -0.629584,
		0.077066, 0.961507, 0.263754,
		41.598679, 33.258797, 26.205580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275181, 32.955746, 25.443539>,  <41.544731, 32.585743, 26.020952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275181, 32.955746, 25.443539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533558, 33.147415, 25.681246>,  <41.688583, 33.262417, 25.823870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533558, 33.147415, 25.681246>,  <41.275181, 32.955746, 25.443539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533558, 33.147415, 25.681246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684709, -0.019458, -0.728557,
		-0.337539, 0.877507, -0.340660,
		0.645942, 0.479169, 0.594269,
		41.727341, 33.291164, 25.859526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701927, 33.221470, 24.896368>,  <41.275181, 32.955746, 25.443539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701927, 33.221470, 24.896368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.887444, 33.284721, 25.245054>,  <41.998753, 33.322674, 25.454266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.887444, 33.284721, 25.245054>,  <41.701927, 33.221470, 24.896368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887444, 33.284721, 25.245054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879625, 0.035107, -0.474371,
		-0.105616, 0.986794, -0.122813,
		0.463795, 0.158130, 0.871716,
		42.026581, 33.332161, 25.506569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143673, 33.765556, 24.739199>,  <41.701927, 33.221470, 24.896368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143673, 33.765556, 24.739199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.299389, 33.580341, 25.057707>,  <42.392818, 33.469212, 25.248812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.299389, 33.580341, 25.057707>,  <42.143673, 33.765556, 24.739199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299389, 33.580341, 25.057707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865788, -0.111151, -0.487911,
		0.314429, 0.879340, 0.357626,
		0.389289, -0.463041, 0.796271,
		42.416176, 33.441429, 25.296589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743233, 34.142712, 25.124069>,  <42.143673, 33.765556, 24.739199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743233, 34.142712, 25.124069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.787735, 33.751175, 25.192762>,  <42.814438, 33.516254, 25.233978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.787735, 33.751175, 25.192762>,  <42.743233, 34.142712, 25.124069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787735, 33.751175, 25.192762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878430, 0.016053, -0.477601,
		0.464739, 0.203992, 0.861629,
		0.111259, -0.978841, 0.171732,
		42.821114, 33.457523, 25.244282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430435, 34.056664, 25.298868>,  <42.743233, 34.142712, 25.124069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430435, 34.056664, 25.298868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.328129, 33.680180, 25.210583>,  <43.266747, 33.454288, 25.157612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.328129, 33.680180, 25.210583>,  <43.430435, 34.056664, 25.298868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328129, 33.680180, 25.210583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930132, -0.177349, -0.321563,
		0.263514, -0.287535, 0.920806,
		-0.255764, -0.941207, -0.220712,
		43.251400, 33.397816, 25.144369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884064, 33.697266, 25.657570>,  <43.430435, 34.056664, 25.298868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884064, 33.697266, 25.657570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.740891, 33.465294, 25.364841>,  <43.654987, 33.326111, 25.189205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.740891, 33.465294, 25.364841>,  <43.884064, 33.697266, 25.657570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740891, 33.465294, 25.364841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920115, -0.352491, -0.170700,
		-0.158966, -0.734458, 0.659773,
		-0.357936, -0.579932, -0.731820,
		43.633511, 33.291313, 25.145296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202042, 33.159554, 25.777534>,  <43.884064, 33.697266, 25.657570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202042, 33.159554, 25.777534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.092102, 33.120335, 25.394943>,  <44.026138, 33.096802, 25.165388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.092102, 33.120335, 25.394943>,  <44.202042, 33.159554, 25.777534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092102, 33.120335, 25.394943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931087, -0.275317, -0.239327,
		-0.239868, -0.956340, 0.166962,
		-0.274845, -0.098049, -0.956476,
		44.009647, 33.090919, 25.108000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489483, 32.601978, 25.639046>,  <44.202042, 33.159554, 25.777534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489483, 32.601978, 25.639046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.393639, 32.750454, 25.280201>,  <44.336132, 32.839539, 25.064894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.393639, 32.750454, 25.280201>,  <44.489483, 32.601978, 25.639046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393639, 32.750454, 25.280201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849023, -0.368070, -0.379058,
		-0.470902, -0.852491, -0.226958,
		-0.239607, 0.371191, -0.897110,
		44.321758, 32.861813, 25.011068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624630, 32.046806, 25.200100>,  <44.489483, 32.601978, 25.639046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624630, 32.046806, 25.200100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.628288, 32.381859, 24.981636>,  <44.630482, 32.582890, 24.850557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.628288, 32.381859, 24.981636>,  <44.624630, 32.046806, 25.200100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628288, 32.381859, 24.981636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934162, -0.202006, -0.294169,
		-0.356733, -0.507513, -0.784329,
		0.009144, 0.837630, -0.546161,
		44.631031, 32.633148, 24.817787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517139, 31.567057, 24.733763>,  <44.624630, 32.046806, 25.200100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517139, 31.567057, 24.733763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.590691, 31.336491, 24.415281>,  <44.634819, 31.198151, 24.224194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.590691, 31.336491, 24.415281>,  <44.517139, 31.567057, 24.733763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590691, 31.336491, 24.415281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885439, -0.448868, 0.120476,
		-0.426833, 0.682835, -0.592916,
		0.183876, -0.576414, -0.796201,
		44.645855, 31.163567, 24.176420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920341, 31.570984, 24.279675>,  <44.517139, 31.567057, 24.733763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920341, 31.570984, 24.279675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.124863, 31.232489, 24.219734>,  <44.247574, 31.029392, 24.183771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.124863, 31.232489, 24.219734>,  <43.920341, 31.570984, 24.279675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124863, 31.232489, 24.219734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830247, -0.531418, 0.168183,
		-0.221955, 0.038420, -0.974300,
		0.511299, -0.846238, -0.149848,
		44.278252, 30.978617, 24.174780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663937, 31.184177, 23.665663>,  <43.920341, 31.570984, 24.279675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663937, 31.184177, 23.665663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.844837, 30.913748, 23.898348>,  <43.953377, 30.751490, 24.037960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.844837, 30.913748, 23.898348>,  <43.663937, 31.184177, 23.665663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844837, 30.913748, 23.898348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837915, -0.545522, 0.017432,
		0.305552, -0.495311, -0.813207,
		0.452256, -0.676072, 0.581714,
		43.980515, 30.710926, 24.072863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297031, 30.522203, 23.578669>,  <43.663937, 31.184177, 23.665663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297031, 30.522203, 23.578669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.509666, 30.422497, 23.902466>,  <43.637249, 30.362673, 24.096745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.509666, 30.422497, 23.902466>,  <43.297031, 30.522203, 23.578669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509666, 30.422497, 23.902466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794533, -0.477899, 0.374607,
		0.293477, -0.842305, -0.452099,
		0.531591, -0.249268, 0.809491,
		43.669144, 30.347715, 24.145313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249714, 29.835897, 23.652288>,  <43.297031, 30.522203, 23.578669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249714, 29.835897, 23.652288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.344841, 29.952019, 24.023052>,  <43.401917, 30.021692, 24.245510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.344841, 29.952019, 24.023052>,  <43.249714, 29.835897, 23.652288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344841, 29.952019, 24.023052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726246, -0.580541, 0.368157,
		0.644987, -0.760721, 0.072768,
		0.237820, 0.290304, 0.926911,
		43.416187, 30.039110, 24.301126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128304, 29.247227, 24.083986>,  <43.249714, 29.835897, 23.652288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128304, 29.247227, 24.083986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.151482, 29.552258, 24.341705>,  <43.165390, 29.735275, 24.496336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.151482, 29.552258, 24.341705>,  <43.128304, 29.247227, 24.083986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151482, 29.552258, 24.341705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633756, -0.470561, 0.613943,
		0.771360, -0.443903, 0.456020,
		0.057946, 0.762576, 0.644298,
		43.168865, 29.781031, 24.534994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180340, 28.983547, 24.743753>,  <43.128304, 29.247227, 24.083986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180340, 28.983547, 24.743753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.047310, 29.352701, 24.821394>,  <42.967491, 29.574194, 24.867979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.047310, 29.352701, 24.821394>,  <43.180340, 28.983547, 24.743753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047310, 29.352701, 24.821394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743374, -0.383194, 0.548232,
		0.580333, 0.038040, 0.813490,
		-0.332579, 0.922884, 0.194102,
		42.947536, 29.629566, 24.879625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113773, 28.987223, 25.423660>,  <43.180340, 28.983547, 24.743753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113773, 28.987223, 25.423660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.869370, 29.283541, 25.312027>,  <42.722725, 29.461332, 25.245047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.869370, 29.283541, 25.312027>,  <43.113773, 28.987223, 25.423660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869370, 29.283541, 25.312027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704578, -0.348192, 0.618331,
		0.360881, 0.574444, 0.734697,
		-0.611012, 0.740795, -0.279085,
		42.686066, 29.505779, 25.228302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457291, 28.788015, 26.008858>,  <43.113773, 28.987223, 25.423660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457291, 28.788015, 26.008858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.470383, 28.406540, 26.128458>,  <43.478237, 28.177654, 26.200218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.470383, 28.406540, 26.128458>,  <43.457291, 28.788015, 26.008858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470383, 28.406540, 26.128458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729856, -0.181575, -0.659046,
		0.682817, 0.239801, 0.690113,
		0.032733, -0.953691, 0.299003,
		43.480202, 28.120432, 26.218159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111229, 28.835878, 26.280827>,  <43.457291, 28.788015, 26.008858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111229, 28.835878, 26.280827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.019646, 28.452917, 26.210445>,  <43.964695, 28.223141, 26.168217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.019646, 28.452917, 26.210445>,  <44.111229, 28.835878, 26.280827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019646, 28.452917, 26.210445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871737, -0.121226, -0.474742,
		0.433188, -0.262082, 0.862358,
		-0.228961, -0.957401, -0.175952,
		43.950958, 28.165697, 26.157660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783081, 28.621256, 26.197277>,  <44.111229, 28.835878, 26.280827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783081, 28.621256, 26.197277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.553856, 28.324097, 26.058884>,  <44.416321, 28.145802, 25.975847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.553856, 28.324097, 26.058884>,  <44.783081, 28.621256, 26.197277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553856, 28.324097, 26.058884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704820, -0.231380, -0.670591,
		0.418126, -0.628146, 0.656204,
		-0.573061, -0.742897, -0.345983,
		44.381939, 28.101227, 25.955090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108189, 27.892963, 26.288500>,  <44.783081, 28.621256, 26.197277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108189, 27.892963, 26.288500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.864017, 27.907677, 25.972012>,  <44.717514, 27.916506, 25.782120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.864017, 27.907677, 25.972012>,  <45.108189, 27.892963, 26.288500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864017, 27.907677, 25.972012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769740, -0.207986, -0.603525,
		-0.186758, -0.977440, 0.098652,
		-0.610428, 0.036777, -0.791218,
		44.680889, 27.918713, 25.734646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353195, 27.377836, 25.735262>,  <45.108189, 27.892963, 26.288500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353195, 27.377836, 25.735262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.118557, 27.618574, 25.518488>,  <44.977776, 27.763016, 25.388424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.118557, 27.618574, 25.518488>,  <45.353195, 27.377836, 25.735262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118557, 27.618574, 25.518488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642303, -0.061874, -0.763949,
		-0.493309, -0.796214, -0.350270,
		-0.586595, 0.601842, -0.541934,
		44.942577, 27.799128, 25.355907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383717, 27.164972, 24.993450>,  <45.353195, 27.377836, 25.735262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383717, 27.164972, 24.993450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.197472, 27.512388, 24.925518>,  <45.085724, 27.720839, 24.884760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.197472, 27.512388, 24.925518>,  <45.383717, 27.164972, 24.993450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197472, 27.512388, 24.925518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379449, 0.022562, -0.924938,
		-0.799513, -0.495106, -0.340071,
		-0.465615, 0.868539, -0.169829,
		45.057789, 27.772949, 24.874569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317913, 27.109308, 24.290695>,  <45.383717, 27.164972, 24.993450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317913, 27.109308, 24.290695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.241306, 27.491673, 24.379736>,  <45.195343, 27.721092, 24.433161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.241306, 27.491673, 24.379736>,  <45.317913, 27.109308, 24.290695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241306, 27.491673, 24.379736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414746, 0.284380, -0.864358,
		-0.889554, -0.073218, -0.450925,
		-0.191521, 0.955912, 0.222604,
		45.183849, 27.778446, 24.446518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881855, 27.361418, 23.698097>,  <45.317913, 27.109308, 24.290695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881855, 27.361418, 23.698097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.054893, 27.678288, 23.870293>,  <45.158718, 27.868410, 23.973610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.054893, 27.678288, 23.870293>,  <44.881855, 27.361418, 23.698097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054893, 27.678288, 23.870293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518837, 0.171755, -0.837441,
		-0.737338, 0.585628, -0.336709,
		0.432598, 0.792174, 0.430488,
		45.184673, 27.915939, 23.999439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999126, 27.732054, 23.177519>,  <44.881855, 27.361418, 23.698097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999126, 27.732054, 23.177519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.259548, 27.870878, 23.447535>,  <45.415802, 27.954172, 23.609545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.259548, 27.870878, 23.447535>,  <44.999126, 27.732054, 23.177519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259548, 27.870878, 23.447535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613130, 0.283792, -0.737248,
		-0.447441, 0.893874, -0.028030,
		0.651052, 0.347060, 0.675041,
		45.454865, 27.974997, 23.650047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.525318, 26.766747, 35.883381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831245, 26.988594, 36.014500>,  <35.014801, 27.121702, 36.093170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831245, 26.988594, 36.014500>,  <34.525318, 26.766747, 35.883381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831245, 26.988594, 36.014500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385755, 0.013283, -0.922506,
		-0.515993, 0.831999, -0.203788,
		0.764817, 0.554619, 0.327801,
		35.060692, 27.154980, 36.112839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721424, 27.245110, 35.290985>,  <34.525318, 26.766747, 35.883381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721424, 27.245110, 35.290985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012226, 27.195492, 35.561119>,  <35.186707, 27.165722, 35.723198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012226, 27.195492, 35.561119>,  <34.721424, 27.245110, 35.290985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012226, 27.195492, 35.561119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682865, 0.027747, -0.730017,
		0.071815, 0.991889, 0.104878,
		0.727006, -0.124044, 0.675334,
		35.230328, 27.158279, 35.763718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294403, 27.602121, 35.142822>,  <34.721424, 27.245110, 35.290985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294403, 27.602121, 35.142822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494751, 27.345695, 35.375431>,  <35.614960, 27.191841, 35.514996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494751, 27.345695, 35.375431>,  <35.294403, 27.602121, 35.142822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494751, 27.345695, 35.375431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616996, -0.206733, -0.759327,
		0.606997, 0.739120, 0.291987,
		0.500871, -0.641063, 0.581521,
		35.645012, 27.153376, 35.549889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952236, 27.827557, 35.271061>,  <35.294403, 27.602121, 35.142822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952236, 27.827557, 35.271061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945869, 27.428711, 35.300747>,  <35.942051, 27.189404, 35.318558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945869, 27.428711, 35.300747>,  <35.952236, 27.827557, 35.271061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945869, 27.428711, 35.300747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778229, -0.058957, -0.625206,
		0.627778, 0.047805, 0.776923,
		-0.015917, -0.997115, 0.074216,
		35.941093, 27.129576, 35.323013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611568, 27.721766, 35.299892>,  <35.952236, 27.827557, 35.271061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611568, 27.721766, 35.299892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455429, 27.365076, 35.208275>,  <36.361744, 27.151062, 35.153305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455429, 27.365076, 35.208275>,  <36.611568, 27.721766, 35.299892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455429, 27.365076, 35.208275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681352, -0.112485, -0.723261,
		0.619184, -0.438383, 0.651485,
		-0.390347, -0.891722, -0.229044,
		36.338326, 27.097559, 35.139561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177711, 27.300900, 35.222401>,  <36.611568, 27.721766, 35.299892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177711, 27.300900, 35.222401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879795, 27.121157, 35.025070>,  <36.701046, 27.013311, 34.906673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879795, 27.121157, 35.025070>,  <37.177711, 27.300900, 35.222401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879795, 27.121157, 35.025070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524264, 0.063339, -0.849197,
		0.412840, -0.891104, 0.188409,
		-0.744788, -0.449358, -0.493322,
		36.656357, 26.986349, 34.877075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517723, 26.706324, 34.790157>,  <37.177711, 27.300900, 35.222401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517723, 26.706324, 34.790157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169460, 26.799314, 34.616760>,  <36.960503, 26.855108, 34.512722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169460, 26.799314, 34.616760>,  <37.517723, 26.706324, 34.790157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169460, 26.799314, 34.616760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427340, -0.078934, -0.900639,
		-0.243597, -0.969393, -0.030623,
		-0.870655, 0.232479, -0.433488,
		36.908264, 26.869059, 34.486713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555614, 26.278391, 34.276608>,  <37.517723, 26.706324, 34.790157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555614, 26.278391, 34.276608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272900, 26.536062, 34.159657>,  <37.103271, 26.690664, 34.089485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272900, 26.536062, 34.159657>,  <37.555614, 26.278391, 34.276608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272900, 26.536062, 34.159657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373757, -0.010874, -0.927463,
		-0.600632, -0.764797, -0.233081,
		-0.706787, 0.644179, -0.292379,
		37.060863, 26.729317, 34.071941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301437, 25.980549, 33.707481>,  <37.555614, 26.278391, 34.276608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301437, 25.980549, 33.707481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184933, 26.361614, 33.672607>,  <37.115028, 26.590254, 33.651684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184933, 26.361614, 33.672607>,  <37.301437, 25.980549, 33.707481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184933, 26.361614, 33.672607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322552, 0.011999, -0.946476,
		-0.900625, -0.303796, -0.310778,
		-0.291264, 0.952662, -0.087183,
		37.097553, 26.647413, 33.646454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950600, 26.117414, 33.005936>,  <37.301437, 25.980549, 33.707481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950600, 26.117414, 33.005936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090065, 26.457830, 33.162991>,  <37.173744, 26.662081, 33.257225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090065, 26.457830, 33.162991>,  <36.950600, 26.117414, 33.005936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090065, 26.457830, 33.162991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500061, 0.185403, -0.845911,
		-0.792702, 0.491277, -0.360930,
		0.348659, 0.851042, 0.392638,
		37.194664, 26.713142, 33.280781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756454, 26.622925, 32.480598>,  <36.950600, 26.117414, 33.005936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756454, 26.622925, 32.480598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052425, 26.781059, 32.698299>,  <37.230007, 26.875940, 32.828918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052425, 26.781059, 32.698299>,  <36.756454, 26.622925, 32.480598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052425, 26.781059, 32.698299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522744, 0.171283, -0.835105,
		-0.423370, 0.902425, -0.079923,
		0.739930, 0.395337, 0.544254,
		37.274403, 26.899660, 32.861576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071373, 27.121586, 32.041092>,  <36.756454, 26.622925, 32.480598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071373, 27.121586, 32.041092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352627, 27.057848, 32.318283>,  <37.521378, 27.019606, 32.484596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352627, 27.057848, 32.318283>,  <37.071373, 27.121586, 32.041092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352627, 27.057848, 32.318283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710529, 0.195157, -0.676064,
		-0.027511, 0.967741, 0.250441,
		0.703130, -0.159346, 0.692977,
		37.563564, 27.010044, 32.526176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898018, 27.841854, 31.697287>,  <37.071373, 27.121586, 32.041092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898018, 27.841854, 31.697287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709656, 27.946299, 31.360224>,  <36.596638, 28.008965, 31.157986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709656, 27.946299, 31.360224>,  <36.898018, 27.841854, 31.697287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709656, 27.946299, 31.360224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823261, 0.213169, 0.526118,
		0.317003, 0.941478, 0.114579,
		-0.470904, 0.261110, -0.842657,
		36.568386, 28.024632, 31.107426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537991, 28.403969, 31.839163>,  <36.898018, 27.841854, 31.697287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537991, 28.403969, 31.839163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355618, 28.253359, 31.516586>,  <36.246193, 28.162992, 31.323040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355618, 28.253359, 31.516586>,  <36.537991, 28.403969, 31.839163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355618, 28.253359, 31.516586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880145, 0.325296, 0.345726,
		0.132158, 0.867417, -0.479710,
		-0.455936, -0.376525, -0.806443,
		36.218838, 28.140402, 31.274652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153542, 29.018120, 31.596775>,  <36.537991, 28.403969, 31.839163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153542, 29.018120, 31.596775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991848, 28.686678, 31.441853>,  <35.894833, 28.487814, 31.348898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991848, 28.686678, 31.441853>,  <36.153542, 29.018120, 31.596775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991848, 28.686678, 31.441853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914386, 0.376341, 0.149217,
		0.022118, 0.414468, -0.909795,
		-0.404239, -0.828604, -0.387307,
		35.870575, 28.438097, 31.325661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846142, 29.181158, 30.921953>,  <36.153542, 29.018120, 31.596775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846142, 29.181158, 30.921953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651501, 28.867376, 31.075758>,  <35.534718, 28.679108, 31.168041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651501, 28.867376, 31.075758>,  <35.846142, 29.181158, 30.921953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651501, 28.867376, 31.075758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848218, 0.529601, 0.007037,
		-0.209158, -0.322726, -0.923093,
		-0.486600, -0.784456, 0.384512,
		35.505520, 28.632040, 31.191111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189095, 29.297489, 30.569809>,  <35.846142, 29.181158, 30.921953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189095, 29.297489, 30.569809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114208, 29.037334, 30.864277>,  <35.069275, 28.881241, 31.040956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114208, 29.037334, 30.864277>,  <35.189095, 29.297489, 30.569809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114208, 29.037334, 30.864277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926193, 0.366564, 0.088307,
		-0.327286, -0.665302, -0.671012,
		-0.187218, -0.650388, 0.736169,
		35.058044, 28.842218, 31.085127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457077, 29.056952, 30.419035>,  <35.189095, 29.297489, 30.569809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457077, 29.056952, 30.419035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547375, 28.973162, 30.799595>,  <34.601555, 28.922888, 31.027931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547375, 28.973162, 30.799595>,  <34.457077, 29.056952, 30.419035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547375, 28.973162, 30.799595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924046, 0.263233, 0.277215,
		-0.308509, -0.941716, -0.134140,
		0.225748, -0.209475, 0.951398,
		34.615101, 28.910318, 31.085014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869041, 28.684057, 30.730381>,  <34.457077, 29.056952, 30.419035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869041, 28.684057, 30.730381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066349, 28.838196, 31.042328>,  <34.184734, 28.930679, 31.229496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066349, 28.838196, 31.042328>,  <33.869041, 28.684057, 30.730381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066349, 28.838196, 31.042328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866767, 0.141979, 0.478076,
		0.073498, -0.911785, 0.404036,
		0.493267, 0.385343, 0.779871,
		34.214329, 28.953800, 31.276289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850616, 28.218512, 31.354694>,  <33.869041, 28.684057, 30.730381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850616, 28.218512, 31.354694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894737, 28.595041, 31.482283>,  <33.921207, 28.820959, 31.558836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894737, 28.595041, 31.482283>,  <33.850616, 28.218512, 31.354694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894737, 28.595041, 31.482283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859578, -0.070767, 0.506080,
		0.498958, -0.329999, 0.801337,
		0.110298, 0.941325, 0.318970,
		33.927826, 28.877439, 31.577974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416958, 28.142662, 31.882349>,  <33.850616, 28.218512, 31.354694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416958, 28.142662, 31.882349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491383, 28.535622, 31.888971>,  <33.536037, 28.771397, 31.892944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491383, 28.535622, 31.888971>,  <33.416958, 28.142662, 31.882349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491383, 28.535622, 31.888971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741710, 0.129388, 0.658122,
		0.644396, -0.134733, 0.752729,
		0.186065, 0.982398, 0.016556,
		33.547203, 28.830341, 31.893938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330540, 28.292450, 32.559036>,  <33.416958, 28.142662, 31.882349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330540, 28.292450, 32.559036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326641, 28.651327, 32.382423>,  <33.324303, 28.866653, 32.276455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326641, 28.651327, 32.382423>,  <33.330540, 28.292450, 32.559036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326641, 28.651327, 32.382423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648831, 0.330310, 0.685502,
		0.760870, 0.293160, 0.578908,
		-0.009743, 0.897192, -0.441534,
		33.323719, 28.920485, 32.249962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414337, 28.849501, 33.100361>,  <33.330540, 28.292450, 32.559036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414337, 28.849501, 33.100361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236294, 28.993649, 32.772457>,  <33.129467, 29.080137, 32.575714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236294, 28.993649, 32.772457>,  <33.414337, 28.849501, 33.100361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236294, 28.993649, 32.772457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707830, 0.419144, 0.568589,
		0.548503, 0.833337, 0.068517,
		-0.445108, 0.360371, -0.819763,
		33.102760, 29.101761, 32.526527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307060, 29.470703, 33.299431>,  <33.414337, 28.849501, 33.100361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307060, 29.470703, 33.299431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058083, 29.432045, 32.988762>,  <32.908695, 29.408850, 32.802361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058083, 29.432045, 32.988762>,  <33.307060, 29.470703, 33.299431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058083, 29.432045, 32.988762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742180, 0.387897, 0.546538,
		0.248449, 0.916622, -0.313173,
		-0.622448, -0.096644, -0.776671,
		32.871349, 29.403051, 32.755760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905407, 30.058382, 33.322731>,  <33.307060, 29.470703, 33.299431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905407, 30.058382, 33.322731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685150, 29.814152, 33.095051>,  <32.552994, 29.667614, 32.958443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685150, 29.814152, 33.095051>,  <32.905407, 30.058382, 33.322731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685150, 29.814152, 33.095051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830775, 0.334492, 0.444891,
		-0.081249, 0.717851, -0.691439,
		-0.550647, -0.610577, -0.569196,
		32.519955, 29.630980, 32.924294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405235, 30.467720, 32.855396>,  <32.905407, 30.058382, 33.322731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405235, 30.467720, 32.855396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252766, 30.103966, 32.922005>,  <32.161285, 29.885714, 32.961967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252766, 30.103966, 32.922005>,  <32.405235, 30.467720, 32.855396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252766, 30.103966, 32.922005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894572, 0.408261, 0.181834,
		-0.233339, -0.079653, -0.969127,
		-0.381174, -0.909384, 0.166519,
		32.138412, 29.831150, 32.971962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826988, 30.875933, 33.119690>,  <32.405235, 30.467720, 32.855396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826988, 30.875933, 33.119690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.990295, 30.733240, 33.455799>,  <32.088280, 30.647625, 33.657463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.990295, 30.733240, 33.455799>,  <31.826988, 30.875933, 33.119690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990295, 30.733240, 33.455799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074850, 0.904302, 0.420280,
		-0.909788, -0.234481, 0.342497,
		0.408268, -0.356730, 0.840274,
		32.112778, 30.626221, 33.707882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147053, 31.311428, 33.562805>,  <31.826988, 30.875933, 33.119690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147053, 31.311428, 33.562805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477551, 31.517775, 33.653309>,  <32.675850, 31.641582, 33.707611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477551, 31.517775, 33.653309>,  <32.147053, 31.311428, 33.562805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477551, 31.517775, 33.653309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246498, 0.030057, -0.968677,
		-0.506511, 0.856140, -0.102326,
		0.826248, 0.515868, 0.226261,
		32.725426, 31.672535, 33.721188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219959, 31.818298, 33.086433>,  <32.147053, 31.311428, 33.562805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219959, 31.818298, 33.086433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591297, 31.761875, 33.223999>,  <32.814098, 31.728022, 33.306538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591297, 31.761875, 33.223999>,  <32.219959, 31.818298, 33.086433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591297, 31.761875, 33.223999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355716, 0.068546, -0.932077,
		0.107903, 0.987625, 0.113811,
		0.928344, -0.141058, 0.343918,
		32.869801, 31.719557, 33.327175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494942, 32.382744, 32.847176>,  <32.219959, 31.818298, 33.086433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494942, 32.382744, 32.847176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781773, 32.117035, 32.931606>,  <32.953869, 31.957611, 32.982265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781773, 32.117035, 32.931606>,  <32.494942, 32.382744, 32.847176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781773, 32.117035, 32.931606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452840, 0.213787, -0.865581,
		0.529851, 0.716271, 0.454108,
		0.717073, -0.664267, 0.211081,
		32.996895, 31.917755, 32.994930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097424, 32.757427, 32.795826>,  <32.494942, 32.382744, 32.847176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097424, 32.757427, 32.795826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199848, 32.371296, 32.775501>,  <33.261303, 32.139618, 32.763306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199848, 32.371296, 32.775501>,  <33.097424, 32.757427, 32.795826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199848, 32.371296, 32.775501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540353, 0.186520, -0.820505,
		0.801530, 0.182646, 0.569377,
		0.256062, -0.965324, -0.050808,
		33.276669, 32.081699, 32.760258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709324, 32.897182, 32.444206>,  <33.097424, 32.757427, 32.795826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709324, 32.897182, 32.444206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652267, 32.501762, 32.424480>,  <33.618034, 32.264511, 32.412643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652267, 32.501762, 32.424480>,  <33.709324, 32.897182, 32.444206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652267, 32.501762, 32.424480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439789, -0.018664, -0.897907,
		0.886702, -0.149763, 0.437414,
		-0.142637, -0.988546, -0.049314,
		33.609478, 32.205200, 32.409687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345268, 32.612316, 32.303101>,  <33.709324, 32.897182, 32.444206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345268, 32.612316, 32.303101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073109, 32.342472, 32.188587>,  <33.909813, 32.180565, 32.119881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073109, 32.342472, 32.188587>,  <34.345268, 32.612316, 32.303101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073109, 32.342472, 32.188587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542969, -0.201703, -0.815169,
		0.492174, -0.710086, 0.503529,
		-0.680403, -0.674606, -0.286282,
		33.868988, 32.140091, 32.102703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697113, 32.035934, 32.104633>,  <34.345268, 32.612316, 32.303101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697113, 32.035934, 32.104633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.345150, 31.956581, 31.931932>,  <34.133972, 31.908968, 31.828312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.345150, 31.956581, 31.931932>,  <34.697113, 32.035934, 32.104633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345150, 31.956581, 31.931932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462501, -0.149368, -0.873946,
		0.108890, -0.968675, 0.223184,
		-0.879907, -0.198387, -0.431748,
		34.081177, 31.897066, 31.802408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689938, 31.334337, 31.756897>,  <34.697113, 32.035934, 32.104633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689938, 31.334337, 31.756897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435883, 31.589230, 31.582291>,  <34.283451, 31.742165, 31.477528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435883, 31.589230, 31.582291>,  <34.689938, 31.334337, 31.756897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435883, 31.589230, 31.582291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504899, -0.085170, -0.858967,
		-0.584537, -0.765953, -0.267643,
		-0.635133, 0.637230, -0.436513,
		34.245342, 31.780399, 31.451336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786068, 31.101925, 31.141275>,  <34.689938, 31.334337, 31.756897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786068, 31.101925, 31.141275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578960, 31.434345, 31.060015>,  <34.454697, 31.633797, 31.011259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578960, 31.434345, 31.060015>,  <34.786068, 31.101925, 31.141275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578960, 31.434345, 31.060015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478807, 0.084704, -0.873824,
		-0.708984, -0.549710, -0.441769,
		-0.517770, 0.831050, -0.203151,
		34.423630, 31.683661, 30.999069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661518, 31.173777, 30.477013>,  <34.786068, 31.101925, 31.141275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661518, 31.173777, 30.477013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622772, 31.558641, 30.578884>,  <34.599525, 31.789560, 30.640007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622772, 31.558641, 30.578884>,  <34.661518, 31.173777, 30.477013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622772, 31.558641, 30.578884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668230, 0.252504, -0.699793,
		-0.737622, 0.102400, -0.667404,
		-0.096864, 0.962162, 0.254679,
		34.593712, 31.847290, 30.655289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548916, 31.583231, 29.859585>,  <34.661518, 31.173777, 30.477013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548916, 31.583231, 29.859585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673576, 31.868977, 30.110203>,  <34.748375, 32.040424, 30.260572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673576, 31.868977, 30.110203>,  <34.548916, 31.583231, 29.859585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673576, 31.868977, 30.110203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556325, 0.397370, -0.729794,
		-0.770307, 0.576007, -0.273575,
		0.311656, 0.714363, 0.626544,
		34.767075, 32.083286, 30.298166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540939, 32.263050, 29.478539>,  <34.548916, 31.583231, 29.859585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540939, 32.263050, 29.478539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789982, 32.306725, 29.788488>,  <34.939407, 32.332932, 29.974459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789982, 32.306725, 29.788488>,  <34.540939, 32.263050, 29.478539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789982, 32.306725, 29.788488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692603, 0.383994, -0.610614,
		-0.364220, 0.916857, 0.163455,
		0.622611, 0.109188, 0.774876,
		34.976765, 32.339481, 30.020952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899750, 32.853954, 29.331621>,  <34.540939, 32.263050, 29.478539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899750, 32.853954, 29.331621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138672, 32.714291, 29.620428>,  <35.282024, 32.630493, 29.793713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138672, 32.714291, 29.620428>,  <34.899750, 32.853954, 29.331621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138672, 32.714291, 29.620428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788803, 0.418480, -0.450183,
		-0.144963, 0.838427, 0.525381,
		0.597307, -0.349162, 0.722018,
		35.317863, 32.609543, 29.837034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393391, 33.425652, 29.674305>,  <34.899750, 32.853954, 29.331621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393391, 33.425652, 29.674305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565929, 33.070202, 29.736649>,  <35.669453, 32.856934, 29.774054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565929, 33.070202, 29.736649>,  <35.393391, 33.425652, 29.674305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565929, 33.070202, 29.736649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893572, 0.396981, -0.209608,
		0.124390, 0.229683, 0.965284,
		0.431343, -0.888624, 0.155858,
		35.695332, 32.803616, 29.783405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077351, 33.654377, 29.941887>,  <35.393391, 33.425652, 29.674305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077351, 33.654377, 29.941887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145618, 33.278774, 29.822462>,  <36.186577, 33.053413, 29.750807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145618, 33.278774, 29.822462>,  <36.077351, 33.654377, 29.941887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145618, 33.278774, 29.822462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906475, 0.268400, -0.325983,
		0.386234, -0.215003, 0.896993,
		0.170665, -0.939008, -0.298560,
		36.196819, 32.997070, 29.732895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710594, 33.535648, 30.154167>,  <36.077351, 33.654377, 29.941887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710594, 33.535648, 30.154167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662563, 33.247246, 29.881187>,  <36.633747, 33.074203, 29.717400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662563, 33.247246, 29.881187>,  <36.710594, 33.535648, 30.154167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662563, 33.247246, 29.881187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859999, 0.267883, -0.434328,
		0.495968, -0.639058, 0.587895,
		-0.120074, -0.721002, -0.682451,
		36.626541, 33.030945, 29.676453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329376, 33.112534, 30.162497>,  <36.710594, 33.535648, 30.154167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329376, 33.112534, 30.162497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150681, 33.078499, 29.806253>,  <37.043461, 33.058079, 29.592508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150681, 33.078499, 29.806253>,  <37.329376, 33.112534, 30.162497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150681, 33.078499, 29.806253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832011, 0.326456, -0.448536,
		0.328914, -0.941374, -0.075038,
		-0.446737, -0.085097, -0.890609,
		37.016659, 33.052975, 29.539070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732941, 32.712261, 29.834980>,  <37.329376, 33.112534, 30.162497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732941, 32.712261, 29.834980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526470, 32.846104, 29.519613>,  <37.402588, 32.926407, 29.330393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526470, 32.846104, 29.519613>,  <37.732941, 32.712261, 29.834980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526470, 32.846104, 29.519613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845983, 0.055488, -0.530315,
		-0.133697, -0.940724, -0.311709,
		-0.516177, 0.334602, -0.788418,
		37.371616, 32.946484, 29.283089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859829, 32.319004, 29.298828>,  <37.732941, 32.712261, 29.834980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859829, 32.319004, 29.298828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.758862, 32.671120, 29.138144>,  <37.698280, 32.882389, 29.041733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.758862, 32.671120, 29.138144>,  <37.859829, 32.319004, 29.298828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758862, 32.671120, 29.138144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756887, -0.079020, -0.648751,
		-0.602834, -0.467805, -0.646336,
		-0.252416, 0.880292, -0.401711,
		37.683136, 32.935207, 29.017630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014881, 32.222073, 28.690947>,  <37.859829, 32.319004, 29.298828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014881, 32.222073, 28.690947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974159, 32.619926, 28.698215>,  <37.949726, 32.858639, 28.702578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974159, 32.619926, 28.698215>,  <38.014881, 32.222073, 28.690947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974159, 32.619926, 28.698215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654905, 0.080757, -0.751384,
		-0.748823, -0.064591, -0.659615,
		-0.101801, 0.994639, 0.018172,
		37.943619, 32.918320, 28.703667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961620, 32.480495, 28.039721>,  <38.014881, 32.222073, 28.690947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961620, 32.480495, 28.039721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.086365, 32.794796, 28.253389>,  <38.161209, 32.983376, 28.381592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.086365, 32.794796, 28.253389>,  <37.961620, 32.480495, 28.039721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086365, 32.794796, 28.253389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718204, 0.173123, -0.673953,
		-0.622036, 0.593822, -0.510339,
		0.311856, 0.785751, 0.534174,
		38.179920, 33.030521, 28.413641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275745, 32.914352, 27.533226>,  <37.961620, 32.480495, 28.039721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275745, 32.914352, 27.533226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.402740, 33.086838, 27.871044>,  <38.478939, 33.190331, 28.073734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.402740, 33.086838, 27.871044>,  <38.275745, 32.914352, 27.533226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402740, 33.086838, 27.871044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795964, 0.362889, -0.484513,
		-0.515405, 0.826054, -0.228019,
		0.317488, 0.431216, 0.844544,
		38.497986, 33.216202, 28.124407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482098, 33.691120, 27.403303>,  <38.275745, 32.914352, 27.533226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482098, 33.691120, 27.403303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.685097, 33.552509, 27.718863>,  <38.806896, 33.469341, 27.908197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.685097, 33.552509, 27.718863>,  <38.482098, 33.691120, 27.403303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685097, 33.552509, 27.718863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853400, 0.328546, -0.404679,
		-0.118956, 0.878621, 0.462465,
		0.507501, -0.346529, 0.788898,
		38.837345, 33.448551, 27.955532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926998, 34.177631, 27.471886>,  <38.482098, 33.691120, 27.403303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926998, 34.177631, 27.471886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085472, 33.872055, 27.675625>,  <39.180557, 33.688709, 27.797869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085472, 33.872055, 27.675625>,  <38.926998, 34.177631, 27.471886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085472, 33.872055, 27.675625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911652, 0.261301, -0.317196,
		0.109226, 0.590014, 0.799970,
		0.396183, -0.763940, 0.509347,
		39.204327, 33.642872, 27.828428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502781, 34.388813, 27.681602>,  <38.926998, 34.177631, 27.471886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502781, 34.388813, 27.681602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.583588, 34.001648, 27.741385>,  <39.632072, 33.769348, 27.777254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.583588, 34.001648, 27.741385>,  <39.502781, 34.388813, 27.681602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583588, 34.001648, 27.741385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949892, 0.156471, -0.270595,
		0.238526, 0.196633, 0.951021,
		0.202015, -0.967911, 0.149458,
		39.644192, 33.711273, 27.786222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208588, 34.419861, 27.996536>,  <39.502781, 34.388813, 27.681602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208588, 34.419861, 27.996536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150837, 34.049995, 27.855591>,  <40.116188, 33.828075, 27.771025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150837, 34.049995, 27.855591>,  <40.208588, 34.419861, 27.996536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150837, 34.049995, 27.855591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790843, 0.106203, -0.602734,
		0.594746, -0.365683, 0.715928,
		-0.144376, -0.924660, -0.352362,
		40.107525, 33.772598, 27.749882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857059, 33.875954, 28.123981>,  <40.208588, 34.419861, 27.996536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857059, 33.875954, 28.123981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.644295, 33.739288, 27.814058>,  <40.516636, 33.657288, 27.628103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.644295, 33.739288, 27.814058>,  <40.857059, 33.875954, 28.123981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644295, 33.739288, 27.814058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845257, -0.159036, -0.510146,
		0.051078, -0.926267, 0.373391,
		-0.531914, -0.341668, -0.774810,
		40.484722, 33.636787, 27.581615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028282, 33.253216, 28.480194>,  <40.857059, 33.875954, 28.123981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028282, 33.253216, 28.480194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.289635, 33.479660, 28.681236>,  <41.446445, 33.615524, 28.801863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.289635, 33.479660, 28.681236>,  <41.028282, 33.253216, 28.480194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289635, 33.479660, 28.681236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663992, 0.109673, 0.739653,
		0.363601, -0.817003, 0.447550,
		0.653382, 0.566108, 0.502606,
		41.485649, 33.649494, 28.832018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020111, 32.965340, 29.044516>,  <41.028282, 33.253216, 28.480194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020111, 32.965340, 29.044516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.171413, 33.323109, 29.139952>,  <41.262196, 33.537769, 29.197214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.171413, 33.323109, 29.139952>,  <41.020111, 32.965340, 29.044516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171413, 33.323109, 29.139952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686076, 0.097833, 0.720922,
		0.621470, -0.436384, 0.650650,
		0.378254, 0.894426, 0.238592,
		41.284889, 33.591438, 29.211529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139942, 32.849892, 29.745117>,  <41.020111, 32.965340, 29.044516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139942, 32.849892, 29.745117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.097710, 33.231300, 29.632227>,  <41.072372, 33.460144, 29.564493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.097710, 33.231300, 29.632227>,  <41.139942, 32.849892, 29.745117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097710, 33.231300, 29.632227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518585, 0.189370, 0.833792,
		0.848483, 0.234390, 0.474488,
		-0.105578, 0.953520, -0.282228,
		41.066036, 33.517357, 29.547558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270786, 33.245693, 30.306002>,  <41.139942, 32.849892, 29.745117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270786, 33.245693, 30.306002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.056183, 33.475357, 30.058617>,  <40.927422, 33.613155, 29.910187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.056183, 33.475357, 30.058617>,  <41.270786, 33.245693, 30.306002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056183, 33.475357, 30.058617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698454, 0.109191, 0.707276,
		0.473620, 0.811429, 0.342443,
		-0.536513, 0.574161, -0.618461,
		40.895229, 33.647606, 29.873079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165192, 33.822788, 30.725046>,  <41.270786, 33.245693, 30.306002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165192, 33.822788, 30.725046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.887825, 33.820763, 30.436840>,  <40.721405, 33.819546, 30.263916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.887825, 33.820763, 30.436840>,  <41.165192, 33.822788, 30.725046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887825, 33.820763, 30.436840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716497, 0.110543, 0.688776,
		0.076160, 0.993858, -0.080281,
		-0.693420, -0.005064, -0.720515,
		40.679798, 33.819244, 30.220686>
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
