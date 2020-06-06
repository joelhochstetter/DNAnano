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
	<24.312159, 34.874630, 34.532562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320932, 35.007980, 34.909576>,  <24.326197, 35.087990, 35.135784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320932, 35.007980, 34.909576>,  <24.312159, 34.874630, 34.532562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.320932, 35.007980, 34.909576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024767, -0.942656, 0.332844,
		0.999453, 0.016043, -0.028935,
		0.021936, 0.333379, 0.942538,
		24.327513, 35.107994, 35.192337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754240, 34.452881, 34.744129>,  <24.312159, 34.874630, 34.532562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754240, 34.452881, 34.744129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548204, 34.592335, 35.057343>,  <24.424583, 34.676006, 35.245270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548204, 34.592335, 35.057343>,  <24.754240, 34.452881, 34.744129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548204, 34.592335, 35.057343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110673, -0.932948, 0.342577,
		0.849963, 0.089797, 0.519134,
		-0.515087, 0.348632, 0.783033,
		24.393679, 34.696926, 35.292252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348867, 34.795044, 34.761734>,  <24.754240, 34.452881, 34.744129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348867, 34.795044, 34.761734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532585, 34.503059, 34.964199>,  <25.642817, 34.327869, 35.085678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532585, 34.503059, 34.964199>,  <25.348867, 34.795044, 34.761734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532585, 34.503059, 34.964199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235898, -0.449123, -0.861766,
		0.856388, 0.515206, -0.034082,
		0.459294, -0.729966, 0.506160,
		25.670374, 34.284069, 35.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865017, 34.598110, 34.349979>,  <25.348867, 34.795044, 34.761734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865017, 34.598110, 34.349979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769640, 34.273991, 34.564106>,  <25.712414, 34.079517, 34.692581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769640, 34.273991, 34.564106>,  <25.865017, 34.598110, 34.349979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769640, 34.273991, 34.564106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229830, -0.582636, -0.779559,
		0.943569, -0.062849, 0.325156,
		-0.238443, -0.810299, 0.535313,
		25.698107, 34.030899, 34.724701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389299, 34.842796, 33.795666>,  <25.865017, 34.598110, 34.349979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389299, 34.842796, 33.795666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692066, 34.935242, 33.551155>,  <26.873726, 34.990707, 33.404449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692066, 34.935242, 33.551155>,  <26.389299, 34.842796, 33.795666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692066, 34.935242, 33.551155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538909, 0.749848, -0.383803,
		0.369666, 0.619932, 0.692120,
		0.756917, 0.231111, -0.611281,
		26.919142, 35.004574, 33.367771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585737, 35.525227, 33.955719>,  <26.389299, 34.842796, 33.795666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585737, 35.525227, 33.955719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667891, 35.431580, 33.575611>,  <26.717182, 35.375393, 33.347546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667891, 35.431580, 33.575611>,  <26.585737, 35.525227, 33.955719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667891, 35.431580, 33.575611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602734, 0.734720, -0.311284,
		0.771057, 0.636690, 0.009790,
		0.205385, -0.234117, -0.950266,
		26.729506, 35.361343, 33.290531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695110, 36.104061, 33.634693>,  <26.585737, 35.525227, 33.955719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695110, 36.104061, 33.634693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576534, 35.855732, 33.344395>,  <26.505388, 35.706734, 33.170216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576534, 35.855732, 33.344395>,  <26.695110, 36.104061, 33.634693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576534, 35.855732, 33.344395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612714, 0.706529, -0.354117,
		0.732603, 0.339699, -0.589829,
		-0.296438, -0.620823, -0.725743,
		26.487602, 35.669483, 33.126671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409634, 35.938179, 33.473988>,  <26.695110, 36.104061, 33.634693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409634, 35.938179, 33.473988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139589, 35.803661, 33.211346>,  <26.977562, 35.722950, 33.053761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139589, 35.803661, 33.211346>,  <27.409634, 35.938179, 33.473988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139589, 35.803661, 33.211346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471216, 0.881398, 0.033066,
		0.567611, 0.331726, -0.753509,
		-0.675110, -0.336297, -0.656605,
		26.937056, 35.702774, 33.014362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318127, 36.527840, 33.087700>,  <27.409634, 35.938179, 33.473988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318127, 36.527840, 33.087700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018406, 36.283100, 32.986355>,  <26.838573, 36.136257, 32.925549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018406, 36.283100, 32.986355>,  <27.318127, 36.527840, 33.087700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018406, 36.283100, 32.986355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612821, 0.785649, -0.084890,
		0.250991, 0.091655, -0.963640,
		-0.749302, -0.611846, -0.253359,
		26.793615, 36.099545, 32.910347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128466, 36.762119, 32.429817>,  <27.318127, 36.527840, 33.087700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128466, 36.762119, 32.429817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824570, 36.566387, 32.601093>,  <26.642233, 36.448948, 32.703861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824570, 36.566387, 32.601093>,  <27.128466, 36.762119, 32.429817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824570, 36.566387, 32.601093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594926, 0.788881, -0.154045,
		-0.262414, -0.371777, -0.890461,
		-0.759738, -0.489335, 0.428193,
		26.596647, 36.419586, 32.729549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532883, 36.994659, 32.080673>,  <27.128466, 36.762119, 32.429817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532883, 36.994659, 32.080673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380924, 36.856659, 32.423988>,  <26.289749, 36.773861, 32.629978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380924, 36.856659, 32.423988>,  <26.532883, 36.994659, 32.080673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380924, 36.856659, 32.423988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600558, 0.797699, 0.054826,
		-0.703569, -0.494622, -0.510235,
		-0.379896, -0.344999, 0.858286,
		26.266956, 36.753159, 32.681473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838701, 37.080761, 32.053947>,  <26.532883, 36.994659, 32.080673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838701, 37.080761, 32.053947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932953, 37.074310, 32.442631>,  <25.989504, 37.070438, 32.675842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932953, 37.074310, 32.442631>,  <25.838701, 37.080761, 32.053947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932953, 37.074310, 32.442631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487288, 0.863132, 0.132491,
		-0.840850, -0.504721, 0.195520,
		0.235631, -0.016131, 0.971709,
		26.003643, 37.069469, 32.734142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271482, 37.187374, 32.374073>,  <25.838701, 37.080761, 32.053947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271482, 37.187374, 32.374073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577364, 37.299828, 32.606003>,  <25.760893, 37.367302, 32.745159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577364, 37.299828, 32.606003>,  <25.271482, 37.187374, 32.374073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577364, 37.299828, 32.606003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379772, 0.923557, 0.053065,
		-0.520578, -0.260778, 0.813015,
		0.764704, 0.281136, 0.579820,
		25.806776, 37.384167, 32.779949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583345, 37.780540, 32.602684>,  <25.271482, 37.187374, 32.374073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583345, 37.780540, 32.602684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333614, 37.537636, 32.799232>,  <25.183777, 37.391891, 32.917164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333614, 37.537636, 32.799232>,  <25.583345, 37.780540, 32.602684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333614, 37.537636, 32.799232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747910, -0.646257, 0.151600,
		0.225495, 0.462152, 0.857652,
		-0.624326, -0.607262, 0.491376,
		25.146317, 37.355457, 32.946644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865734, 37.669113, 33.294147>,  <25.583345, 37.780540, 32.602684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865734, 37.669113, 33.294147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649601, 37.371876, 33.136238>,  <25.519920, 37.193531, 33.041492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649601, 37.371876, 33.136238>,  <25.865734, 37.669113, 33.294147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649601, 37.371876, 33.136238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766284, -0.628375, 0.133988,
		-0.347632, -0.230110, 0.908956,
		-0.540333, -0.743098, -0.394773,
		25.487501, 37.148945, 33.017807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944138, 37.071323, 33.744350>,  <25.865734, 37.669113, 33.294147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944138, 37.071323, 33.744350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844255, 36.956409, 33.374462>,  <25.784327, 36.887463, 33.152527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844255, 36.956409, 33.374462>,  <25.944138, 37.071323, 33.744350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844255, 36.956409, 33.374462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646992, -0.760020, 0.061408,
		-0.720450, -0.582956, 0.375651,
		-0.249704, -0.287285, -0.924724,
		25.769344, 36.870224, 33.097046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619236, 36.319851, 33.703590>,  <25.944138, 37.071323, 33.744350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619236, 36.319851, 33.703590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794420, 36.417088, 33.357388>,  <25.899530, 36.475430, 33.149666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794420, 36.417088, 33.357388>,  <25.619236, 36.319851, 33.703590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794420, 36.417088, 33.357388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492423, -0.870343, 0.004726,
		-0.752138, -0.428264, -0.500878,
		0.437960, 0.243089, -0.865505,
		25.925808, 36.490013, 33.097736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581345, 35.699203, 33.144596>,  <25.619236, 36.319851, 33.703590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581345, 35.699203, 33.144596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899603, 35.908180, 33.021961>,  <26.090559, 36.033566, 32.948380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899603, 35.908180, 33.021961>,  <25.581345, 35.699203, 33.144596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899603, 35.908180, 33.021961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476091, -0.852261, -0.216767,
		-0.374545, 0.026505, -0.926830,
		0.795647, 0.522444, -0.306591,
		26.138296, 36.064915, 32.929985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715162, 35.352482, 32.543377>,  <25.581345, 35.699203, 33.144596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715162, 35.352482, 32.543377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033569, 35.579224, 32.628258>,  <26.224613, 35.715267, 32.679188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033569, 35.579224, 32.628258>,  <25.715162, 35.352482, 32.543377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033569, 35.579224, 32.628258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601998, -0.705050, -0.374836,
		-0.062864, 0.426122, -0.902479,
		0.796019, 0.566854, 0.212202,
		26.272375, 35.749279, 32.691917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158369, 35.273895, 32.025822>,  <25.715162, 35.352482, 32.543377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158369, 35.273895, 32.025822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374544, 35.399548, 32.338039>,  <26.504250, 35.474937, 32.525372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374544, 35.399548, 32.338039>,  <26.158369, 35.273895, 32.025822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374544, 35.399548, 32.338039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687447, -0.699742, -0.194367,
		0.485123, 0.641626, -0.594114,
		0.540437, 0.314130, 0.780545,
		26.536674, 35.493786, 32.572205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865456, 34.915401, 32.033394>,  <26.158369, 35.273895, 32.025822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865456, 34.915401, 32.033394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856186, 35.065769, 32.403938>,  <26.850624, 35.155991, 32.626266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856186, 35.065769, 32.403938>,  <26.865456, 34.915401, 32.033394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856186, 35.065769, 32.403938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746431, -0.609911, 0.266176,
		0.665060, 0.697635, -0.266462,
		-0.023176, 0.375918, 0.926363,
		26.849234, 35.178543, 32.681847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603605, 35.000809, 32.294380>,  <26.865456, 34.915401, 32.033394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603605, 35.000809, 32.294380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344587, 34.975143, 32.598106>,  <27.189177, 34.959743, 32.780342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344587, 34.975143, 32.598106>,  <27.603605, 35.000809, 32.294380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344587, 34.975143, 32.598106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590528, -0.672039, 0.446810,
		0.481622, 0.737730, 0.473069,
		-0.647546, -0.064167, 0.759320,
		27.150324, 34.955894, 32.825901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972855, 35.205696, 32.929897>,  <27.603605, 35.000809, 32.294380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972855, 35.205696, 32.929897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667385, 34.948872, 32.956886>,  <27.484102, 34.794777, 32.973080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667385, 34.948872, 32.956886>,  <27.972855, 35.205696, 32.929897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667385, 34.948872, 32.956886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624842, -0.708783, 0.327413,
		-0.162394, 0.292200, 0.942469,
		-0.763676, -0.642064, 0.067477,
		27.438282, 34.756252, 32.977131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911463, 34.861916, 33.557381>,  <27.972855, 35.205696, 32.929897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911463, 34.861916, 33.557381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724058, 34.610054, 33.309498>,  <27.611614, 34.458939, 33.160770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724058, 34.610054, 33.309498>,  <27.911463, 34.861916, 33.557381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724058, 34.610054, 33.309498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647526, -0.721932, 0.243977,
		-0.601004, -0.286967, 0.745952,
		-0.468513, -0.629654, -0.619703,
		27.583504, 34.421158, 33.123589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080070, 34.246861, 33.800587>,  <27.911463, 34.861916, 33.557381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080070, 34.246861, 33.800587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898663, 34.113716, 33.469883>,  <27.789818, 34.033829, 33.271461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898663, 34.113716, 33.469883>,  <28.080070, 34.246861, 33.800587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898663, 34.113716, 33.469883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208104, -0.941547, 0.264919,
		-0.866610, -0.051905, 0.496279,
		-0.453519, -0.332859, -0.826756,
		27.762608, 34.013859, 33.221855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487082, 33.757893, 33.846119>,  <28.080070, 34.246861, 33.800587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487082, 33.757893, 33.846119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741970, 33.707298, 33.542027>,  <27.894903, 33.676941, 33.359570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741970, 33.707298, 33.542027>,  <27.487082, 33.757893, 33.846119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741970, 33.707298, 33.542027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188038, -0.931109, 0.312534,
		-0.747389, -0.342105, -0.569538,
		0.637221, -0.126490, -0.760230,
		27.933136, 33.669350, 33.313957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290710, 33.203926, 33.338200>,  <27.487082, 33.757893, 33.846119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290710, 33.203926, 33.338200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686405, 33.253910, 33.368641>,  <27.923822, 33.283901, 33.386906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686405, 33.253910, 33.368641>,  <27.290710, 33.203926, 33.338200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686405, 33.253910, 33.368641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106707, -0.972061, 0.209071,
		0.100104, -0.198701, -0.974934,
		0.989238, 0.124961, 0.076105,
		27.983177, 33.291397, 33.391472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656605, 32.848579, 32.892456>,  <27.290710, 33.203926, 33.338200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656605, 32.848579, 32.892456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896635, 32.873482, 33.211464>,  <28.040653, 32.888424, 33.402866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896635, 32.873482, 33.211464>,  <27.656605, 32.848579, 32.892456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896635, 32.873482, 33.211464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029591, -0.998012, 0.055641,
		0.799396, -0.009789, -0.600725,
		0.600076, 0.062256, 0.797517,
		28.076658, 32.892159, 33.450718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218758, 32.445564, 32.722260>,  <27.656605, 32.848579, 32.892456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218758, 32.445564, 32.722260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144791, 32.460392, 33.115082>,  <28.100410, 32.469288, 33.350777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144791, 32.460392, 33.115082>,  <28.218758, 32.445564, 32.722260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144791, 32.460392, 33.115082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064248, -0.997607, 0.025556,
		0.980652, -0.058370, 0.186857,
		-0.184918, 0.037066, 0.982055,
		28.089315, 32.471512, 33.409698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620003, 31.892620, 33.146126>,  <28.218758, 32.445564, 32.722260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620003, 31.892620, 33.146126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267038, 31.999241, 33.301201>,  <28.055260, 32.063213, 33.394245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267038, 31.999241, 33.301201>,  <28.620003, 31.892620, 33.146126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267038, 31.999241, 33.301201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317199, -0.945637, -0.071802,
		0.347477, -0.186334, 0.918988,
		-0.882409, 0.266553, 0.387692,
		28.002316, 32.079208, 33.417507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988680, 32.379593, 33.426308>,  <28.620003, 31.892620, 33.146126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988680, 32.379593, 33.426308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170763, 32.675610, 33.228268>,  <29.280012, 32.853218, 33.109444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170763, 32.675610, 33.228268>,  <28.988680, 32.379593, 33.426308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170763, 32.675610, 33.228268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484225, 0.260877, 0.835146,
		0.747204, -0.619905, -0.239593,
		0.455206, 0.740041, -0.495102,
		29.307325, 32.897621, 33.079739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413141, 32.852585, 33.883713>,  <28.988680, 32.379593, 33.426308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413141, 32.852585, 33.883713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782595, 32.966492, 33.986328>,  <30.004267, 33.034836, 34.047897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782595, 32.966492, 33.986328>,  <29.413141, 32.852585, 33.883713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782595, 32.966492, 33.986328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377590, 0.561142, 0.736577,
		0.065798, -0.777193, 0.625813,
		0.923632, 0.284766, 0.256538,
		30.059685, 33.051922, 34.063290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402300, 32.836178, 34.565311>,  <29.413141, 32.852585, 33.883713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402300, 32.836178, 34.565311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683966, 33.099014, 34.457699>,  <29.852966, 33.256718, 34.393131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683966, 33.099014, 34.457699>,  <29.402300, 32.836178, 34.565311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683966, 33.099014, 34.457699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385763, 0.672151, 0.631981,
		0.596100, -0.341238, 0.726789,
		0.704168, 0.657092, -0.269032,
		29.895216, 33.296143, 34.376987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607426, 33.067646, 35.172115>,  <29.402300, 32.836178, 34.565311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607426, 33.067646, 35.172115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718962, 33.331993, 34.893402>,  <29.785883, 33.490601, 34.726173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718962, 33.331993, 34.893402>,  <29.607426, 33.067646, 35.172115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718962, 33.331993, 34.893402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249847, 0.750497, 0.611826,
		0.927268, 0.003488, 0.374382,
		0.278839, 0.660864, -0.696783,
		29.802614, 33.530251, 34.684368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163258, 33.478977, 35.434933>,  <29.607426, 33.067646, 35.172115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163258, 33.478977, 35.434933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941273, 33.676727, 35.167316>,  <29.808083, 33.795376, 35.006748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941273, 33.676727, 35.167316>,  <30.163258, 33.478977, 35.434933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941273, 33.676727, 35.167316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019092, 0.796471, 0.604376,
		0.831656, 0.348179, -0.432573,
		-0.554963, 0.494374, -0.669037,
		29.774784, 33.825039, 34.966606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398724, 34.102104, 35.198055>,  <30.163258, 33.478977, 35.434933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398724, 34.102104, 35.198055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002630, 34.153801, 35.177139>,  <29.764975, 34.184818, 35.164589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002630, 34.153801, 35.177139>,  <30.398724, 34.102104, 35.198055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002630, 34.153801, 35.177139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086229, 0.862459, 0.498727,
		0.109552, 0.489347, -0.865181,
		-0.990234, 0.129240, -0.052289,
		29.705561, 34.192574, 35.161453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251360, 34.747089, 34.827698>,  <30.398724, 34.102104, 35.198055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251360, 34.747089, 34.827698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954630, 34.648834, 35.077290>,  <29.776592, 34.589882, 35.227047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954630, 34.648834, 35.077290>,  <30.251360, 34.747089, 34.827698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954630, 34.648834, 35.077290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058004, 0.950513, 0.305223,
		-0.668078, 0.190229, -0.719364,
		-0.741827, -0.245639, 0.623983,
		29.732082, 34.575142, 35.264484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486465, 34.995369, 34.725666>,  <30.251360, 34.747089, 34.827698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486465, 34.995369, 34.725666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570948, 34.949329, 35.113922>,  <29.621637, 34.921703, 35.346874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570948, 34.949329, 35.113922>,  <29.486465, 34.995369, 34.725666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570948, 34.949329, 35.113922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002079, 0.993093, 0.117312,
		-0.977439, -0.022759, 0.209986,
		0.211206, -0.115102, 0.970641,
		29.634310, 34.914799, 35.405113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676924, 34.663708, 33.994789>,  <29.486465, 34.995369, 34.725666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676924, 34.663708, 33.994789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714369, 34.390030, 34.284096>,  <29.736835, 34.225822, 34.457680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714369, 34.390030, 34.284096>,  <29.676924, 34.663708, 33.994789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714369, 34.390030, 34.284096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427855, -0.628309, -0.649745,
		0.898987, 0.370276, 0.233920,
		0.093611, -0.684196, 0.723266,
		29.742453, 34.184772, 34.501076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236362, 34.344189, 33.739796>,  <29.676924, 34.663708, 33.994789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236362, 34.344189, 33.739796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116413, 34.117504, 34.046761>,  <30.044443, 33.981495, 34.230938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116413, 34.117504, 34.046761>,  <30.236362, 34.344189, 33.739796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116413, 34.117504, 34.046761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475510, -0.786169, -0.394751,
		0.827024, 0.246537, 0.505224,
		-0.299871, -0.566707, 0.767411,
		30.026451, 33.947491, 34.276985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878920, 34.117020, 34.145256>,  <30.236362, 34.344189, 33.739796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878920, 34.117020, 34.145256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571352, 33.864403, 34.185078>,  <30.386810, 33.712833, 34.208973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571352, 33.864403, 34.185078>,  <30.878920, 34.117020, 34.145256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571352, 33.864403, 34.185078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539710, -0.724655, -0.428472,
		0.342744, -0.275728, 0.898054,
		-0.768921, -0.631545, 0.099558,
		30.340675, 33.674938, 34.214947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195448, 33.487545, 34.573284>,  <30.878920, 34.117020, 34.145256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195448, 33.487545, 34.573284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858538, 33.348145, 34.408787>,  <30.656391, 33.264503, 34.310089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858538, 33.348145, 34.408787>,  <31.195448, 33.487545, 34.573284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858538, 33.348145, 34.408787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534391, -0.639907, -0.552218,
		-0.070708, -0.684884, 0.725213,
		-0.842274, -0.348501, -0.411243,
		30.605856, 33.243595, 34.285416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162506, 32.718472, 34.560875>,  <31.195448, 33.487545, 34.573284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162506, 32.718472, 34.560875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948210, 32.840134, 34.245796>,  <30.819632, 32.913132, 34.056747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948210, 32.840134, 34.245796>,  <31.162506, 32.718472, 34.560875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948210, 32.840134, 34.245796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452866, -0.683852, -0.572065,
		-0.712668, -0.663201, 0.228624,
		-0.535739, 0.304156, -0.787701,
		30.787487, 32.931381, 34.009487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652895, 32.189838, 34.313473>,  <31.162506, 32.718472, 34.560875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652895, 32.189838, 34.313473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818493, 32.424397, 34.034977>,  <30.917852, 32.565132, 33.867878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818493, 32.424397, 34.034977>,  <30.652895, 32.189838, 34.313473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818493, 32.424397, 34.034977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444070, -0.797779, -0.407861,
		-0.794614, -0.140328, -0.590675,
		0.413994, 0.586393, -0.696242,
		30.942692, 32.600315, 33.826103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675097, 31.851839, 33.718388>,  <30.652895, 32.189838, 34.313473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675097, 31.851839, 33.718388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021873, 32.047348, 33.757397>,  <31.229940, 32.164654, 33.780804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021873, 32.047348, 33.757397>,  <30.675097, 31.851839, 33.718388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021873, 32.047348, 33.757397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497607, -0.837754, -0.224845,
		-0.028198, 0.243455, -0.969502,
		0.866944, 0.488771, 0.097522,
		31.281956, 32.193981, 33.786652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095909, 31.876450, 33.114960>,  <30.675097, 31.851839, 33.718388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095909, 31.876450, 33.114960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340044, 31.877369, 33.431816>,  <31.486525, 31.877920, 33.621929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340044, 31.877369, 33.431816>,  <31.095909, 31.876450, 33.114960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340044, 31.877369, 33.431816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387231, -0.873234, -0.295828,
		0.691041, 0.487295, -0.533859,
		0.610339, 0.002297, 0.792137,
		31.523146, 31.878057, 33.669456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762577, 31.774435, 32.917248>,  <31.095909, 31.876450, 33.114960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762577, 31.774435, 32.917248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777742, 31.635647, 33.292091>,  <31.786840, 31.552374, 33.516998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777742, 31.635647, 33.292091>,  <31.762577, 31.774435, 32.917248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777742, 31.635647, 33.292091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502427, -0.804010, -0.318017,
		0.863788, 0.482885, 0.143846,
		0.037912, -0.346972, 0.937109,
		31.789116, 31.531555, 33.573223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444988, 31.745365, 33.400402>,  <31.762577, 31.774435, 32.917248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444988, 31.745365, 33.400402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163044, 31.462704, 33.425076>,  <31.993876, 31.293106, 33.439880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163044, 31.462704, 33.425076>,  <32.444988, 31.745365, 33.400402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163044, 31.462704, 33.425076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700237, -0.707070, -0.098589,
		0.113285, -0.026297, 0.993214,
		-0.704865, -0.706654, 0.061686,
		31.951584, 31.250708, 33.443581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459095, 31.273457, 34.037140>,  <32.444988, 31.745365, 33.400402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459095, 31.273457, 34.037140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354782, 31.120932, 33.682381>,  <32.292194, 31.029417, 33.469524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354782, 31.120932, 33.682381>,  <32.459095, 31.273457, 34.037140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354782, 31.120932, 33.682381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788278, -0.614465, 0.032401,
		-0.557325, -0.690676, 0.460820,
		-0.260779, -0.381313, -0.886902,
		32.276546, 31.006538, 33.416309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695114, 31.099041, 34.702362>,  <32.459095, 31.273457, 34.037140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695114, 31.099041, 34.702362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011650, 30.859840, 34.753239>,  <33.201572, 30.716320, 34.783764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011650, 30.859840, 34.753239>,  <32.695114, 31.099041, 34.702362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011650, 30.859840, 34.753239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096739, -0.082944, -0.991848,
		0.603674, 0.797193, -0.007787,
		0.791340, -0.598000, 0.127191,
		33.249054, 30.680441, 34.791397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197601, 31.360941, 34.207935>,  <32.695114, 31.099041, 34.702362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197601, 31.360941, 34.207935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282623, 30.985363, 34.316162>,  <33.333637, 30.760017, 34.381100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282623, 30.985363, 34.316162>,  <33.197601, 31.360941, 34.207935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282623, 30.985363, 34.316162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041869, -0.285390, -0.957497,
		0.976252, 0.192191, -0.099973,
		0.212554, -0.938944, 0.270566,
		33.346390, 30.703680, 34.397331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386318, 31.070335, 33.544823>,  <33.197601, 31.360941, 34.207935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386318, 31.070335, 33.544823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458904, 30.748285, 33.770687>,  <33.502457, 30.555056, 33.906208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458904, 30.748285, 33.770687>,  <33.386318, 31.070335, 33.544823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458904, 30.748285, 33.770687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236486, -0.593074, -0.769635,
		0.954540, 0.006124, -0.298021,
		0.181462, -0.805125, 0.564664,
		33.513344, 30.506748, 33.940086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057381, 30.655283, 33.365559>,  <33.386318, 31.070335, 33.544823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057381, 30.655283, 33.365559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745220, 30.450432, 33.509060>,  <33.557926, 30.327520, 33.595161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745220, 30.450432, 33.509060>,  <34.057381, 30.655283, 33.365559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745220, 30.450432, 33.509060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029506, -0.542942, -0.839251,
		0.624587, -0.665535, 0.408600,
		-0.780398, -0.512130, 0.358752,
		33.511101, 30.296793, 33.616684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215015, 29.998663, 33.630085>,  <34.057381, 30.655283, 33.365559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215015, 29.998663, 33.630085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870247, 30.069557, 33.440063>,  <33.663383, 30.112093, 33.326050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870247, 30.069557, 33.440063>,  <34.215015, 29.998663, 33.630085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870247, 30.069557, 33.440063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359491, -0.447098, -0.819066,
		-0.357560, -0.876750, 0.321652,
		-0.861926, 0.177234, -0.475048,
		33.611668, 30.122728, 33.297550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035816, 29.280779, 33.454460>,  <34.215015, 29.998663, 33.630085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035816, 29.280779, 33.454460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932163, 29.606367, 33.246498>,  <33.869972, 29.801720, 33.121719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932163, 29.606367, 33.246498>,  <34.035816, 29.280779, 33.454460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932163, 29.606367, 33.246498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362786, -0.416851, -0.833439,
		-0.895119, -0.404585, -0.187279,
		-0.259129, 0.813969, -0.519909,
		33.854424, 29.850557, 33.090527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611305, 29.115686, 32.864063>,  <34.035816, 29.280779, 33.454460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611305, 29.115686, 32.864063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790863, 29.463572, 32.781998>,  <33.898598, 29.672302, 32.732758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790863, 29.463572, 32.781998>,  <33.611305, 29.115686, 32.864063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790863, 29.463572, 32.781998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330768, -0.375011, -0.866001,
		-0.830112, 0.320882, -0.456014,
		0.448895, 0.869713, -0.205164,
		33.925533, 29.724485, 32.720448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542728, 29.155706, 32.253246>,  <33.611305, 29.115686, 32.864063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542728, 29.155706, 32.253246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806358, 29.451984, 32.305374>,  <33.964539, 29.629751, 32.336651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806358, 29.451984, 32.305374>,  <33.542728, 29.155706, 32.253246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806358, 29.451984, 32.305374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413592, -0.212243, -0.885378,
		-0.628138, 0.637433, -0.446231,
		0.659079, 0.740697, 0.130319,
		34.004082, 29.674194, 32.344471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939133, 29.081921, 31.956734>,  <33.542728, 29.155706, 32.253246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939133, 29.081921, 31.956734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840668, 28.968832, 32.327564>,  <32.781590, 28.900978, 32.550064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840668, 28.968832, 32.327564>,  <32.939133, 29.081921, 31.956734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840668, 28.968832, 32.327564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261940, 0.901512, 0.344475,
		-0.933163, 0.327635, -0.147861,
		-0.246161, -0.282721, 0.927078,
		32.766819, 28.884016, 32.605686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521000, 29.461964, 32.336658>,  <32.939133, 29.081921, 31.956734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521000, 29.461964, 32.336658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702133, 29.307964, 32.658333>,  <32.810814, 29.215565, 32.851337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702133, 29.307964, 32.658333>,  <32.521000, 29.461964, 32.336658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702133, 29.307964, 32.658333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032500, 0.908494, 0.416631,
		-0.891002, -0.162529, 0.423909,
		0.452834, -0.384996, 0.804188,
		32.837982, 29.192465, 32.899590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223984, 29.841053, 32.977455>,  <32.521000, 29.461964, 32.336658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223984, 29.841053, 32.977455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586235, 29.690664, 33.055916>,  <32.803589, 29.600431, 33.102993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586235, 29.690664, 33.055916>,  <32.223984, 29.841053, 32.977455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586235, 29.690664, 33.055916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208139, 0.797093, 0.566852,
		-0.369469, -0.472534, 0.800128,
		0.905633, -0.375972, 0.196148,
		32.857925, 29.577873, 33.114761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305309, 29.808121, 33.637684>,  <32.223984, 29.841053, 32.977455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305309, 29.808121, 33.637684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701015, 29.790758, 33.581867>,  <32.938438, 29.780340, 33.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701015, 29.790758, 33.581867>,  <32.305309, 29.808121, 33.637684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701015, 29.790758, 33.581867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139630, 0.562581, 0.814866,
		0.043135, -0.825602, 0.562602,
		0.989264, -0.043407, -0.139545,
		32.997795, 29.777737, 33.540005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578896, 29.573915, 34.194050>,  <32.305309, 29.808121, 33.637684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578896, 29.573915, 34.194050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862244, 29.798038, 34.022343>,  <33.032253, 29.932512, 33.919319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862244, 29.798038, 34.022343>,  <32.578896, 29.573915, 34.194050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862244, 29.798038, 34.022343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307802, 0.302082, 0.902222,
		0.635197, -0.771234, 0.041521,
		0.708367, 0.560308, -0.429268,
		33.074753, 29.966131, 33.893562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128563, 29.451746, 34.573986>,  <32.578896, 29.573915, 34.194050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128563, 29.451746, 34.573986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235569, 29.793697, 34.396168>,  <33.299774, 29.998867, 34.289478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235569, 29.793697, 34.396168>,  <33.128563, 29.451746, 34.573986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235569, 29.793697, 34.396168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553732, 0.241173, 0.797005,
		0.788554, -0.459369, -0.408856,
		0.267514, 0.854878, -0.444545,
		33.315823, 30.050161, 34.262806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964191, 29.591049, 34.647682>,  <33.128563, 29.451746, 34.573986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964191, 29.591049, 34.647682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785873, 29.941637, 34.574940>,  <33.678883, 30.151989, 34.531296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785873, 29.941637, 34.574940>,  <33.964191, 29.591049, 34.647682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785873, 29.941637, 34.574940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429168, 0.387565, 0.815848,
		0.785545, 0.285654, -0.548926,
		-0.445795, 0.876467, -0.181856,
		33.652134, 30.204576, 34.520382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380154, 30.131023, 34.885098>,  <33.964191, 29.591049, 34.647682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380154, 30.131023, 34.885098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012821, 30.288826, 34.897949>,  <33.792423, 30.383509, 34.905659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012821, 30.288826, 34.897949>,  <34.380154, 30.131023, 34.885098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012821, 30.288826, 34.897949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182917, 0.351013, 0.918331,
		0.351013, 0.849207, -0.394508,
		-0.918331, 0.394508, 0.032125,
		33.737324, 30.407179, 34.907585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592495, 30.635338, 35.435295>,  <34.380154, 30.131023, 34.885098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592495, 30.635338, 35.435295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196072, 30.592165, 35.403919>,  <33.958218, 30.566261, 35.385094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196072, 30.592165, 35.403919>,  <34.592495, 30.635338, 35.435295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196072, 30.592165, 35.403919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119254, 0.452840, 0.883581,
		-0.059845, 0.885035, -0.461662,
		-0.991059, -0.107933, -0.078444,
		33.898754, 30.559786, 35.380386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182846, 31.315573, 35.590080>,  <34.592495, 30.635338, 35.435295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182846, 31.315573, 35.590080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985783, 30.978249, 35.675980>,  <33.867546, 30.775854, 35.727520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985783, 30.978249, 35.675980>,  <34.182846, 31.315573, 35.590080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985783, 30.978249, 35.675980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208297, 0.353873, 0.911804,
		-0.844925, 0.404479, -0.349997,
		-0.492660, -0.843310, 0.214744,
		33.837986, 30.725256, 35.740402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427387, 31.858149, 35.111717>,  <34.182846, 31.315573, 35.590080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427387, 31.858149, 35.111717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292309, 32.208637, 34.974194>,  <34.211262, 32.418930, 34.891682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292309, 32.208637, 34.974194>,  <34.427387, 31.858149, 35.111717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292309, 32.208637, 34.974194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080225, -0.390728, -0.917004,
		-0.937832, -0.282083, 0.202240,
		-0.337692, 0.876220, -0.343807,
		34.191002, 32.471504, 34.871052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682297, 31.815119, 34.752209>,  <34.427387, 31.858149, 35.111717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682297, 31.815119, 34.752209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888096, 32.129395, 34.614815>,  <34.011574, 32.317959, 34.532379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888096, 32.129395, 34.614815>,  <33.682297, 31.815119, 34.752209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888096, 32.129395, 34.614815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191751, -0.285010, -0.939149,
		-0.835777, 0.549055, 0.004020,
		0.514499, 0.785690, -0.343487,
		34.042446, 32.365101, 34.511768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210243, 32.145187, 34.287041>,  <33.682297, 31.815119, 34.752209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210243, 32.145187, 34.287041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584415, 32.234894, 34.177738>,  <33.808918, 32.288719, 34.112156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584415, 32.234894, 34.177738>,  <33.210243, 32.145187, 34.287041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584415, 32.234894, 34.177738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281494, 0.004959, -0.959550,
		-0.213844, 0.974514, 0.067770,
		0.935431, 0.224271, -0.273259,
		33.865044, 32.302174, 34.095760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049610, 32.390575, 33.717976>,  <33.210243, 32.145187, 34.287041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049610, 32.390575, 33.717976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447418, 32.367249, 33.683247>,  <33.686104, 32.353252, 33.662411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447418, 32.367249, 33.683247>,  <33.049610, 32.390575, 33.717976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447418, 32.367249, 33.683247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087507, -0.009295, -0.996121,
		0.057281, 0.998255, -0.014347,
		0.994516, -0.058314, -0.086822,
		33.745773, 32.349754, 33.657200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112759, 32.925552, 33.227180>,  <33.049610, 32.390575, 33.717976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112759, 32.925552, 33.227180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439243, 32.694874, 33.213188>,  <33.635132, 32.556465, 33.204792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439243, 32.694874, 33.213188>,  <33.112759, 32.925552, 33.227180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439243, 32.694874, 33.213188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060244, 0.145160, -0.987572,
		0.574610, 0.803957, 0.153223,
		0.816207, -0.576700, -0.034977,
		33.684105, 32.521862, 33.202694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584106, 33.336620, 32.833523>,  <33.112759, 32.925552, 33.227180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584106, 33.336620, 32.833523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734573, 32.966995, 32.806370>,  <33.824852, 32.745220, 32.790077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734573, 32.966995, 32.806370>,  <33.584106, 33.336620, 32.833523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734573, 32.966995, 32.806370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052947, 0.094583, -0.994108,
		0.925039, 0.370353, 0.084505,
		0.376163, -0.924063, -0.067884,
		33.847424, 32.689777, 32.786003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116089, 33.386463, 32.430710>,  <33.584106, 33.336620, 32.833523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116089, 33.386463, 32.430710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042381, 32.994556, 32.399452>,  <33.998158, 32.759415, 32.380695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042381, 32.994556, 32.399452>,  <34.116089, 33.386463, 32.430710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042381, 32.994556, 32.399452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098172, 0.097459, -0.990386,
		0.977961, -0.174826, -0.114144,
		-0.184269, -0.979764, -0.078148,
		33.987099, 32.700626, 32.376007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496731, 33.196133, 31.892054>,  <34.116089, 33.386463, 32.430710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496731, 33.196133, 31.892054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200111, 32.930294, 31.928738>,  <34.022141, 32.770790, 31.950748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200111, 32.930294, 31.928738>,  <34.496731, 33.196133, 31.892054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200111, 32.930294, 31.928738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089923, -0.037003, -0.995261,
		0.664845, -0.746282, -0.032323,
		-0.741549, -0.664600, 0.091710,
		33.977646, 32.730915, 31.956251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638973, 32.618591, 31.422653>,  <34.496731, 33.196133, 31.892054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638973, 32.618591, 31.422653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245007, 32.587860, 31.484673>,  <34.008625, 32.569424, 31.521885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245007, 32.587860, 31.484673>,  <34.638973, 32.618591, 31.422653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245007, 32.587860, 31.484673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161752, 0.090461, -0.982677,
		0.061462, -0.992933, -0.101522,
		-0.984916, -0.076818, 0.155049,
		33.949532, 32.564812, 31.531187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485085, 32.295959, 30.883314>,  <34.638973, 32.618591, 31.422653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485085, 32.295959, 30.883314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128613, 32.412407, 31.022482>,  <33.914730, 32.482277, 31.105982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128613, 32.412407, 31.022482>,  <34.485085, 32.295959, 30.883314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128613, 32.412407, 31.022482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332463, 0.102679, -0.937510,
		-0.308653, -0.951160, 0.005281,
		-0.891180, 0.291121, 0.347917,
		33.861259, 32.499744, 31.126858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925335, 31.902428, 30.508705>,  <34.485085, 32.295959, 30.883314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925335, 31.902428, 30.508705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764988, 32.243599, 30.642464>,  <33.668781, 32.448303, 30.722719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764988, 32.243599, 30.642464>,  <33.925335, 31.902428, 30.508705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764988, 32.243599, 30.642464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306145, 0.219309, -0.926379,
		-0.863471, -0.473728, 0.173206,
		-0.400866, 0.852928, 0.334397,
		33.644730, 32.499477, 30.742783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308071, 31.858377, 30.212917>,  <33.925335, 31.902428, 30.508705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308071, 31.858377, 30.212917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351288, 32.240055, 30.324516>,  <33.377216, 32.469063, 30.391476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351288, 32.240055, 30.324516>,  <33.308071, 31.858377, 30.212917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351288, 32.240055, 30.324516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472297, 0.296212, -0.830177,
		-0.874793, -0.042078, 0.482666,
		0.108039, 0.954195, 0.278998,
		33.383701, 32.526314, 30.408216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710541, 32.053402, 29.998646>,  <33.308071, 31.858377, 30.212917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710541, 32.053402, 29.998646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925228, 32.386604, 30.052359>,  <33.054039, 32.586525, 30.084585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925228, 32.386604, 30.052359>,  <32.710541, 32.053402, 29.998646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925228, 32.386604, 30.052359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318749, 0.347523, -0.881831,
		-0.781239, 0.430491, 0.452042,
		0.536716, 0.833010, 0.134280,
		33.086243, 32.636509, 30.092642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235176, 32.645069, 30.016684>,  <32.710541, 32.053402, 29.998646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235176, 32.645069, 30.016684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581440, 32.822178, 29.923233>,  <32.789200, 32.928444, 29.867163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581440, 32.822178, 29.923233>,  <32.235176, 32.645069, 30.016684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581440, 32.822178, 29.923233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453205, 0.494843, -0.741441,
		-0.212679, 0.747719, 0.629034,
		0.865663, 0.442770, -0.233627,
		32.841141, 32.955009, 29.853146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189751, 33.390236, 29.954111>,  <32.235176, 32.645069, 30.016684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189751, 33.390236, 29.954111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507019, 33.286076, 29.733904>,  <32.697380, 33.223579, 29.601780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507019, 33.286076, 29.733904>,  <32.189751, 33.390236, 29.954111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507019, 33.286076, 29.733904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384123, 0.487557, -0.784052,
		0.472580, 0.833354, 0.286688,
		0.793169, -0.260404, -0.550520,
		32.744968, 33.207954, 29.568748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311226, 33.976551, 29.772022>,  <32.189751, 33.390236, 29.954111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311226, 33.976551, 29.772022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482059, 33.723057, 29.514038>,  <32.584560, 33.570961, 29.359247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482059, 33.723057, 29.514038>,  <32.311226, 33.976551, 29.772022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482059, 33.723057, 29.514038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348532, 0.542786, -0.764140,
		0.834339, 0.551143, 0.010939,
		0.427088, -0.633739, -0.644958,
		32.610188, 33.532936, 29.320551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721279, 34.418995, 29.237360>,  <32.311226, 33.976551, 29.772022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721279, 34.418995, 29.237360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678280, 34.072754, 29.041737>,  <32.652481, 33.865009, 28.924362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678280, 34.072754, 29.041737>,  <32.721279, 34.418995, 29.237360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678280, 34.072754, 29.041737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132145, 0.499986, -0.855893,
		0.985384, -0.027384, -0.168134,
		-0.107503, -0.865601, -0.489059,
		32.646030, 33.813072, 28.895020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881538, 34.568909, 28.639408>,  <32.721279, 34.418995, 29.237360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881538, 34.568909, 28.639408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698864, 34.216457, 28.590330>,  <32.589260, 34.004986, 28.560883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698864, 34.216457, 28.590330>,  <32.881538, 34.568909, 28.639408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698864, 34.216457, 28.590330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398041, 0.325723, -0.857594,
		0.795614, -0.342814, -0.499477,
		-0.456687, -0.881126, -0.122696,
		32.561859, 33.952118, 28.553522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996521, 34.339275, 27.914928>,  <32.881538, 34.568909, 28.639408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996521, 34.339275, 27.914928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666958, 34.152466, 28.043348>,  <32.469219, 34.040382, 28.120401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666958, 34.152466, 28.043348>,  <32.996521, 34.339275, 27.914928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666958, 34.152466, 28.043348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480937, 0.276490, -0.832017,
		0.299798, -0.839910, -0.452408,
		-0.823906, -0.467017, 0.321053,
		32.419788, 34.012360, 28.139664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774891, 33.982494, 27.409420>,  <32.996521, 34.339275, 27.914928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774891, 33.982494, 27.409420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436714, 34.017445, 27.620167>,  <32.233807, 34.038414, 27.746614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436714, 34.017445, 27.620167>,  <32.774891, 33.982494, 27.409420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436714, 34.017445, 27.620167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468184, 0.353402, -0.809883,
		-0.256958, -0.931382, -0.257875,
		-0.845444, 0.087373, 0.526867,
		32.183083, 34.043655, 27.778227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213600, 33.661022, 27.119019>,  <32.774891, 33.982494, 27.409420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213600, 33.661022, 27.119019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063797, 33.959759, 27.338825>,  <31.973915, 34.139000, 27.470709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063797, 33.959759, 27.338825>,  <32.213600, 33.661022, 27.119019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063797, 33.959759, 27.338825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429465, 0.385525, -0.816658,
		-0.821767, -0.541845, 0.176360,
		-0.374511, 0.746843, 0.549515,
		31.951445, 34.183811, 27.503679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598326, 33.893105, 26.787064>,  <32.213600, 33.661022, 27.119019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598326, 33.893105, 26.787064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605534, 34.184746, 27.060730>,  <31.609859, 34.359730, 27.224930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605534, 34.184746, 27.060730>,  <31.598326, 33.893105, 26.787064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605534, 34.184746, 27.060730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466983, 0.611193, -0.639038,
		-0.884082, -0.307977, 0.351494,
		0.018022, 0.729104, 0.684165,
		31.610941, 34.403477, 27.265980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919235, 34.091125, 26.857725>,  <31.598326, 33.893105, 26.787064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919235, 34.091125, 26.857725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155935, 34.396137, 26.962322>,  <31.297955, 34.579144, 27.025082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155935, 34.396137, 26.962322>,  <30.919235, 34.091125, 26.857725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155935, 34.396137, 26.962322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556073, 0.620973, -0.552426,
		-0.583623, 0.181488, 0.791483,
		0.591748, 0.762532, 0.261494,
		31.333460, 34.624897, 27.040770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461042, 34.619141, 27.090292>,  <30.919235, 34.091125, 26.857725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461042, 34.619141, 27.090292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812727, 34.785721, 26.997726>,  <31.023739, 34.885670, 26.942186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812727, 34.785721, 26.997726>,  <30.461042, 34.619141, 27.090292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812727, 34.785721, 26.997726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461635, 0.624565, -0.629930,
		-0.117803, 0.660671, 0.741374,
		0.879213, 0.416452, -0.231413,
		31.076490, 34.910656, 26.928303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400906, 35.314644, 27.162876>,  <30.461042, 34.619141, 27.090292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400906, 35.314644, 27.162876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717630, 35.288754, 26.919947>,  <30.907665, 35.273220, 26.774189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717630, 35.288754, 26.919947>,  <30.400906, 35.314644, 27.162876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717630, 35.288754, 26.919947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423079, 0.659038, -0.621831,
		0.440496, 0.749320, 0.494452,
		0.791813, -0.064722, -0.607325,
		30.955173, 35.269337, 26.737749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372389, 36.007462, 26.912838>,  <30.400906, 35.314644, 27.162876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372389, 36.007462, 26.912838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587437, 35.790489, 26.654619>,  <30.716465, 35.660305, 26.499687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587437, 35.790489, 26.654619>,  <30.372389, 36.007462, 26.912838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587437, 35.790489, 26.654619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353912, 0.549733, -0.756664,
		0.765319, 0.635263, 0.103573,
		0.537618, -0.542434, -0.645548,
		30.748722, 35.627758, 26.460955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653137, 36.566235, 26.441015>,  <30.372389, 36.007462, 26.912838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653137, 36.566235, 26.441015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674459, 36.210873, 26.258631>,  <30.687252, 35.997658, 26.149200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674459, 36.210873, 26.258631>,  <30.653137, 36.566235, 26.441015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674459, 36.210873, 26.258631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241440, 0.431597, -0.869155,
		0.968951, 0.156417, -0.191490,
		0.053304, -0.888402, -0.455962,
		30.690451, 35.944351, 26.121841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151739, 36.581928, 25.933350>,  <30.653137, 36.566235, 26.441015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151739, 36.581928, 25.933350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896860, 36.295544, 25.819237>,  <30.743933, 36.123714, 25.750769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896860, 36.295544, 25.819237>,  <31.151739, 36.581928, 25.933350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896860, 36.295544, 25.819237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289721, 0.565529, -0.772164,
		0.714172, -0.409368, -0.567781,
		-0.637196, -0.715957, -0.285283,
		30.705702, 36.080757, 25.733652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279572, 36.497517, 25.229315>,  <31.151739, 36.581928, 25.933350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279572, 36.497517, 25.229315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916643, 36.339626, 25.287226>,  <30.698887, 36.244892, 25.321972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916643, 36.339626, 25.287226>,  <31.279572, 36.497517, 25.229315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916643, 36.339626, 25.287226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298418, 0.362049, -0.883101,
		0.296164, -0.844461, -0.446287,
		-0.907322, -0.394723, 0.144777,
		30.644447, 36.221210, 25.330658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050838, 36.325111, 24.604744>,  <31.279572, 36.497517, 25.229315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050838, 36.325111, 24.604744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718956, 36.371315, 24.823191>,  <30.519827, 36.399036, 24.954260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718956, 36.371315, 24.823191>,  <31.050838, 36.325111, 24.604744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718956, 36.371315, 24.823191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475296, 0.366847, -0.799698,
		-0.292714, -0.923082, -0.249474,
		-0.829706, 0.115509, 0.546119,
		30.470045, 36.405968, 24.987026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646049, 36.592884, 24.137871>,  <31.050838, 36.325111, 24.604744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646049, 36.592884, 24.137871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375721, 36.559067, 24.430752>,  <30.213524, 36.538776, 24.606480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375721, 36.559067, 24.430752>,  <30.646049, 36.592884, 24.137871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375721, 36.559067, 24.430752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675783, 0.467664, -0.569744,
		-0.294256, -0.879854, -0.373190,
		-0.675819, -0.084545, 0.732203,
		30.172976, 36.533703, 24.650414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047665, 36.310837, 23.816708>,  <30.646049, 36.592884, 24.137871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047665, 36.310837, 23.816708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970894, 36.541019, 24.134705>,  <29.924831, 36.679127, 24.325502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970894, 36.541019, 24.134705>,  <30.047665, 36.310837, 23.816708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970894, 36.541019, 24.134705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546708, 0.610034, -0.573558,
		-0.815030, -0.544711, 0.197524,
		-0.191927, 0.575455, 0.794994,
		29.913317, 36.713657, 24.373203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364326, 36.440414, 23.883408>,  <30.047665, 36.310837, 23.816708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364326, 36.440414, 23.883408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529654, 36.753300, 24.069876>,  <29.628849, 36.941032, 24.181757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529654, 36.753300, 24.069876>,  <29.364326, 36.440414, 23.883408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529654, 36.753300, 24.069876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515951, 0.623008, -0.587925,
		-0.750310, 0.002478, 0.661081,
		0.413316, 0.782212, 0.466170,
		29.653648, 36.987965, 24.209726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967434, 37.040874, 23.700411>,  <29.364326, 36.440414, 23.883408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967434, 37.040874, 23.700411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268679, 37.234852, 23.878246>,  <29.449425, 37.351238, 23.984947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268679, 37.234852, 23.878246>,  <28.967434, 37.040874, 23.700411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268679, 37.234852, 23.878246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254926, 0.838085, -0.482314,
		-0.606497, 0.249898, 0.754793,
		0.753110, 0.484939, 0.444590,
		29.494612, 37.380333, 24.011623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721457, 37.603039, 23.979218>,  <28.967434, 37.040874, 23.700411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721457, 37.603039, 23.979218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110773, 37.691761, 23.955540>,  <29.344364, 37.744995, 23.941334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110773, 37.691761, 23.955540>,  <28.721457, 37.603039, 23.979218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110773, 37.691761, 23.955540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228820, 0.916496, -0.328140,
		-0.018532, 0.332921, 0.942772,
		0.973292, 0.221806, -0.059194,
		29.402761, 37.758305, 23.937782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806566, 38.258663, 24.225142>,  <28.721457, 37.603039, 23.979218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806566, 38.258663, 24.225142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119749, 38.182449, 23.988270>,  <29.307659, 38.136723, 23.846148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119749, 38.182449, 23.988270>,  <28.806566, 38.258663, 24.225142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119749, 38.182449, 23.988270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163018, 0.855828, -0.490900,
		0.600335, 0.480890, 0.639017,
		0.782958, -0.190533, -0.592177,
		29.354637, 38.125290, 23.810617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983829, 38.860027, 24.152119>,  <28.806566, 38.258663, 24.225142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983829, 38.860027, 24.152119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166952, 38.666790, 23.853580>,  <29.276825, 38.550846, 23.674458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166952, 38.666790, 23.853580>,  <28.983829, 38.860027, 24.152119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166952, 38.666790, 23.853580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004141, 0.838316, -0.545168,
		0.889043, 0.252671, 0.381785,
		0.457805, -0.483097, -0.746345,
		29.304295, 38.521862, 23.629677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445253, 39.275013, 23.964436>,  <28.983829, 38.860027, 24.152119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445253, 39.275013, 23.964436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374817, 39.052235, 23.639769>,  <29.332556, 38.918568, 23.444967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374817, 39.052235, 23.639769>,  <29.445253, 39.275013, 23.964436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374817, 39.052235, 23.639769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049010, 0.828491, -0.557853,
		0.983153, -0.058453, -0.173186,
		-0.176091, -0.556943, -0.811669,
		29.321989, 38.885151, 23.396269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763000, 39.642590, 23.521307>,  <29.445253, 39.275013, 23.964436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763000, 39.642590, 23.521307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519773, 39.419304, 23.295511>,  <29.373837, 39.285332, 23.160034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519773, 39.419304, 23.295511>,  <29.763000, 39.642590, 23.521307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519773, 39.419304, 23.295511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087134, 0.753679, -0.651441,
		0.789088, -0.346935, -0.506928,
		-0.608069, -0.558216, -0.564489,
		29.337353, 39.251839, 23.126165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908041, 39.729168, 22.907568>,  <29.763000, 39.642590, 23.521307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908041, 39.729168, 22.907568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544212, 39.573273, 22.849909>,  <29.325914, 39.479736, 22.815313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544212, 39.573273, 22.849909>,  <29.908041, 39.729168, 22.907568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544212, 39.573273, 22.849909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194539, 0.705910, -0.681063,
		0.367192, -0.591435, -0.717897,
		-0.909574, -0.389740, -0.144147,
		29.271339, 39.456352, 22.806665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752094, 39.680218, 22.175962>,  <29.908041, 39.729168, 22.907568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752094, 39.680218, 22.175962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383934, 39.658432, 22.330828>,  <29.163038, 39.645359, 22.423746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383934, 39.658432, 22.330828>,  <29.752094, 39.680218, 22.175962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383934, 39.658432, 22.330828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371546, 0.430118, -0.822771,
		-0.121714, -0.901128, -0.416117,
		-0.920402, -0.054464, 0.387162,
		29.107813, 39.642094, 22.446976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335154, 39.427933, 21.555910>,  <29.752094, 39.680218, 22.175962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335154, 39.427933, 21.555910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081774, 39.587643, 21.821033>,  <28.929745, 39.683468, 21.980108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081774, 39.587643, 21.821033>,  <29.335154, 39.427933, 21.555910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081774, 39.587643, 21.821033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484534, 0.463177, -0.742088,
		-0.603297, -0.791230, -0.099937,
		-0.633451, 0.399276, 0.662811,
		28.891739, 39.707424, 22.019876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672459, 39.431278, 21.317472>,  <29.335154, 39.427933, 21.555910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672459, 39.431278, 21.317472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663925, 39.717316, 21.596954>,  <28.658804, 39.888939, 21.764645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663925, 39.717316, 21.596954>,  <28.672459, 39.431278, 21.317472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663925, 39.717316, 21.596954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694765, 0.491938, -0.524689,
		-0.718921, -0.496630, 0.486325,
		-0.021335, 0.715091, 0.698706,
		28.657524, 39.931843, 21.806566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952564, 39.559948, 21.537382>,  <28.672459, 39.431278, 21.317472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952564, 39.559948, 21.537382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116108, 39.919670, 21.599463>,  <28.214235, 40.135502, 21.636711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116108, 39.919670, 21.599463>,  <27.952564, 39.559948, 21.537382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116108, 39.919670, 21.599463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905314, 0.421132, -0.055272,
		-0.115067, -0.117909, 0.986335,
		0.408860, 0.899302, 0.155204,
		28.238766, 40.189461, 21.646023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678785, 39.879948, 22.118992>,  <27.952564, 39.559948, 21.537382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678785, 39.879948, 22.118992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813293, 40.171501, 21.880444>,  <27.893997, 40.346432, 21.737314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813293, 40.171501, 21.880444>,  <27.678785, 39.879948, 22.118992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813293, 40.171501, 21.880444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915128, 0.402439, -0.024144,
		0.222404, 0.553874, 0.802347,
		0.336269, 0.728881, -0.596370,
		27.914173, 40.390163, 21.701532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654392, 40.654087, 22.462362>,  <27.678785, 39.879948, 22.118992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654392, 40.654087, 22.462362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505749, 40.879425, 22.757538>,  <27.416563, 41.014629, 22.934643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505749, 40.879425, 22.757538>,  <27.654392, 40.654087, 22.462362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505749, 40.879425, 22.757538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843354, 0.127488, -0.522017,
		-0.388153, -0.816327, 0.427723,
		-0.371607, 0.563344, 0.737937,
		27.394266, 41.048428, 22.978920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035069, 40.302219, 22.655014>,  <27.654392, 40.654087, 22.462362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035069, 40.302219, 22.655014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023146, 40.679115, 22.788456>,  <27.015991, 40.905254, 22.868521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023146, 40.679115, 22.788456>,  <27.035069, 40.302219, 22.655014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023146, 40.679115, 22.788456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662424, 0.231315, -0.712522,
		-0.748536, -0.242227, 0.617269,
		-0.029809, 0.942242, 0.333604,
		27.014202, 40.961788, 22.888536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400537, 40.575825, 22.881172>,  <27.035069, 40.302219, 22.655014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400537, 40.575825, 22.881172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640749, 40.847225, 22.711937>,  <26.784876, 41.010067, 22.610395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640749, 40.847225, 22.711937>,  <26.400537, 40.575825, 22.881172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640749, 40.847225, 22.711937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614047, 0.052409, -0.787528,
		-0.512164, 0.732728, 0.448104,
		0.600529, 0.678500, -0.423087,
		26.820908, 41.050774, 22.585011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001217, 41.223892, 22.591770>,  <26.400537, 40.575825, 22.881172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001217, 41.223892, 22.591770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328823, 41.153133, 22.373440>,  <26.525387, 41.110680, 22.242441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328823, 41.153133, 22.373440>,  <26.001217, 41.223892, 22.591770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328823, 41.153133, 22.373440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462632, 0.359108, -0.810564,
		0.339393, 0.916379, 0.212278,
		0.819014, -0.176893, -0.545825,
		26.574528, 41.100067, 22.209692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217772, 41.864330, 22.270107>,  <26.001217, 41.223892, 22.591770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217772, 41.864330, 22.270107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293543, 41.530281, 22.063543>,  <26.339006, 41.329849, 21.939606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293543, 41.530281, 22.063543>,  <26.217772, 41.864330, 22.270107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293543, 41.530281, 22.063543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597942, 0.319054, -0.735303,
		0.778834, 0.448071, -0.438919,
		0.189430, -0.835127, -0.516410,
		26.350372, 41.279743, 21.908621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736565, 42.335251, 22.555513>,  <26.217772, 41.864330, 22.270107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736565, 42.335251, 22.555513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693279, 41.970989, 22.715010>,  <26.667307, 41.752430, 22.810707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693279, 41.970989, 22.715010>,  <26.736565, 42.335251, 22.555513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693279, 41.970989, 22.715010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709141, 0.210389, 0.672945,
		-0.696712, 0.355588, 0.623016,
		-0.108216, -0.910656, 0.398742,
		26.660814, 41.697792, 22.834633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839691, 42.235481, 23.247831>,  <26.736565, 42.335251, 22.555513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839691, 42.235481, 23.247831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891794, 41.850082, 23.154266>,  <26.923056, 41.618843, 23.098127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891794, 41.850082, 23.154266>,  <26.839691, 42.235481, 23.247831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891794, 41.850082, 23.154266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769711, -0.050443, 0.636397,
		-0.624963, -0.262940, 0.735040,
		0.130256, -0.963493, -0.233913,
		26.930872, 41.561035, 23.084093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817537, 41.744640, 23.889776>,  <26.839691, 42.235481, 23.247831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817537, 41.744640, 23.889776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020292, 41.556503, 23.600821>,  <27.141945, 41.443623, 23.427448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020292, 41.556503, 23.600821>,  <26.817537, 41.744640, 23.889776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020292, 41.556503, 23.600821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653337, -0.337060, 0.677895,
		-0.562330, -0.815579, 0.136440,
		0.506888, -0.470342, -0.722387,
		27.172359, 41.415401, 23.384104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971519, 41.031921, 24.108076>,  <26.817537, 41.744640, 23.889776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971519, 41.031921, 24.108076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239307, 41.178616, 23.849676>,  <27.399981, 41.266632, 23.694635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239307, 41.178616, 23.849676>,  <26.971519, 41.031921, 24.108076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239307, 41.178616, 23.849676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741530, -0.278313, 0.610471,
		0.044089, -0.887721, -0.458265,
		0.669470, 0.366733, -0.646001,
		27.440147, 41.288635, 23.655876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427065, 40.513268, 24.118109>,  <26.971519, 41.031921, 24.108076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427065, 40.513268, 24.118109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611048, 40.820972, 23.940714>,  <27.721437, 41.005596, 23.834276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611048, 40.820972, 23.940714>,  <27.427065, 40.513268, 24.118109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611048, 40.820972, 23.940714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812635, -0.163390, 0.559399,
		0.357861, -0.617694, -0.700279,
		0.459956, 0.769258, -0.443489,
		27.749035, 41.051750, 23.807667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024412, 40.245827, 23.833765>,  <27.427065, 40.513268, 24.118109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024412, 40.245827, 23.833765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104145, 40.636269, 23.868378>,  <28.151985, 40.870533, 23.889145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104145, 40.636269, 23.868378>,  <28.024412, 40.245827, 23.833765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104145, 40.636269, 23.868378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727865, -0.206604, 0.653856,
		0.656109, -0.067352, -0.751655,
		0.199334, 0.976104, 0.086532,
		28.163944, 40.929100, 23.894337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717272, 40.239445, 23.675125>,  <28.024412, 40.245827, 23.833765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717272, 40.239445, 23.675125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649551, 40.599442, 23.835802>,  <28.608919, 40.815437, 23.932207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649551, 40.599442, 23.835802>,  <28.717272, 40.239445, 23.675125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649551, 40.599442, 23.835802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754958, -0.143569, 0.639865,
		0.633542, 0.411591, -0.655147,
		-0.169303, 0.899989, 0.401691,
		28.598761, 40.869438, 23.956308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356493, 40.483353, 23.681808>,  <28.717272, 40.239445, 23.675125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356493, 40.483353, 23.681808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145763, 40.681725, 23.957928>,  <29.019325, 40.800747, 24.123600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145763, 40.681725, 23.957928>,  <29.356493, 40.483353, 23.681808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145763, 40.681725, 23.957928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617204, -0.335177, 0.711840,
		0.584395, 0.801068, -0.129510,
		-0.526823, 0.495929, 0.690298,
		28.987717, 40.830502, 24.165016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845734, 40.827816, 24.116884>,  <29.356493, 40.483353, 23.681808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845734, 40.827816, 24.116884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520586, 40.826702, 24.349861>,  <29.325497, 40.826035, 24.489647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520586, 40.826702, 24.349861>,  <29.845734, 40.827816, 24.116884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520586, 40.826702, 24.349861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563956, -0.253737, 0.785857,
		0.145599, 0.967269, 0.207825,
		-0.812868, -0.002784, 0.582441,
		29.276726, 40.825867, 24.524593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101921, 41.116703, 24.723482>,  <29.845734, 40.827816, 24.116884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101921, 41.116703, 24.723482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761274, 40.930176, 24.819227>,  <29.556887, 40.818260, 24.876675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761274, 40.930176, 24.819227>,  <30.101921, 41.116703, 24.723482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761274, 40.930176, 24.819227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421178, -0.336936, 0.842071,
		-0.312027, 0.817935, 0.483345,
		-0.851615, -0.466323, 0.239363,
		29.505791, 40.790279, 24.891037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109818, 41.140438, 25.433226>,  <30.101921, 41.116703, 24.723482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109818, 41.140438, 25.433226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832676, 40.856789, 25.380934>,  <29.666391, 40.686600, 25.349558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832676, 40.856789, 25.380934>,  <30.109818, 41.140438, 25.433226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832676, 40.856789, 25.380934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433961, -0.554856, 0.709798,
		-0.575872, 0.435056, 0.692169,
		-0.692856, -0.709127, -0.130729,
		29.624819, 40.644051, 25.341715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882576, 41.035370, 26.079567>,  <30.109818, 41.140438, 25.433226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882576, 41.035370, 26.079567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779991, 40.707355, 25.874916>,  <29.718439, 40.510548, 25.752127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779991, 40.707355, 25.874916>,  <29.882576, 41.035370, 26.079567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779991, 40.707355, 25.874916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207041, -0.563652, 0.799644,
		-0.944119, 0.099152, 0.314338,
		-0.256464, -0.820040, -0.511626,
		29.703053, 40.461342, 25.721428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658527, 40.608154, 26.455215>,  <29.882576, 41.035370, 26.079567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658527, 40.608154, 26.455215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772518, 40.354919, 26.167332>,  <29.840912, 40.202976, 25.994600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772518, 40.354919, 26.167332>,  <29.658527, 40.608154, 26.455215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772518, 40.354919, 26.167332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477681, -0.557168, 0.679253,
		-0.831029, -0.537362, 0.143637,
		0.284975, -0.633092, -0.719711,
		29.858011, 40.164993, 25.951418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613928, 39.850216, 26.716549>,  <29.658527, 40.608154, 26.455215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613928, 39.850216, 26.716549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846317, 39.826088, 26.391874>,  <29.985750, 39.811611, 26.197069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846317, 39.826088, 26.391874>,  <29.613928, 39.850216, 26.716549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846317, 39.826088, 26.391874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524293, -0.735059, 0.429890,
		-0.622567, -0.675315, -0.395425,
		0.580971, -0.060317, -0.811686,
		30.020609, 39.807995, 26.148369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556887, 39.150566, 26.379625>,  <29.613928, 39.850216, 26.716549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556887, 39.150566, 26.379625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910208, 39.297127, 26.262648>,  <30.122200, 39.385063, 26.192461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910208, 39.297127, 26.262648>,  <29.556887, 39.150566, 26.379625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910208, 39.297127, 26.262648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461610, -0.788611, 0.406211,
		-0.081790, -0.493804, -0.865718,
		0.883304, 0.366400, -0.292446,
		30.175200, 39.407047, 26.174913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040945, 38.543495, 26.343737>,  <29.556887, 39.150566, 26.379625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040945, 38.543495, 26.343737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291574, 38.855026, 26.332151>,  <30.441952, 39.041943, 26.325201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291574, 38.855026, 26.332151>,  <30.040945, 38.543495, 26.343737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291574, 38.855026, 26.332151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618706, -0.474472, 0.626163,
		0.473930, -0.410255, -0.779154,
		0.626573, 0.778824, -0.028961,
		30.479546, 39.088673, 26.323463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746969, 38.323956, 26.190121>,  <30.040945, 38.543495, 26.343737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746969, 38.323956, 26.190121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767612, 38.668461, 26.392334>,  <30.779999, 38.875164, 26.513662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767612, 38.668461, 26.392334>,  <30.746969, 38.323956, 26.190121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767612, 38.668461, 26.392334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574039, -0.439808, 0.690687,
		0.817200, 0.254549, -0.517096,
		0.051609, 0.861263, 0.505532,
		30.783094, 38.926838, 26.543993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403715, 38.416862, 26.438574>,  <30.746969, 38.323956, 26.190121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403715, 38.416862, 26.438574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213207, 38.680168, 26.671762>,  <31.098904, 38.838154, 26.811676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213207, 38.680168, 26.671762>,  <31.403715, 38.416862, 26.438574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213207, 38.680168, 26.671762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529489, -0.314609, 0.787821,
		0.702004, 0.683890, -0.198707,
		-0.476268, 0.658267, 0.582970,
		31.070328, 38.877647, 26.846653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869720, 38.587479, 26.949163>,  <31.403715, 38.416862, 26.438574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869720, 38.587479, 26.949163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526001, 38.722721, 27.102676>,  <31.319769, 38.803867, 27.194784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526001, 38.722721, 27.102676>,  <31.869720, 38.587479, 26.949163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526001, 38.722721, 27.102676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182582, -0.498140, 0.847656,
		0.477773, 0.798463, 0.366320,
		-0.859300, 0.338103, 0.383782,
		31.268211, 38.824154, 27.217812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074764, 38.875824, 27.642344>,  <31.869720, 38.587479, 26.949163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074764, 38.875824, 27.642344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678061, 38.824791, 27.637613>,  <31.440039, 38.794170, 27.634775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678061, 38.824791, 27.637613>,  <32.074764, 38.875824, 27.642344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678061, 38.824791, 27.637613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036471, -0.369554, 0.928493,
		-0.122828, 0.920409, 0.371161,
		-0.991758, -0.127582, -0.011823,
		31.380533, 38.786518, 27.634066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871243, 39.149639, 28.309671>,  <32.074764, 38.875824, 27.642344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871243, 39.149639, 28.309671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601654, 38.884319, 28.179567>,  <31.439901, 38.725128, 28.101505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601654, 38.884319, 28.179567>,  <31.871243, 39.149639, 28.309671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601654, 38.884319, 28.179567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053536, -0.395270, 0.917004,
		-0.736814, 0.635448, 0.230890,
		-0.673972, -0.663301, -0.325260,
		31.399462, 38.685329, 28.081989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387447, 39.085228, 28.817537>,  <31.871243, 39.149639, 28.309671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387447, 39.085228, 28.817537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301550, 38.759037, 28.602549>,  <31.250011, 38.563320, 28.473557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301550, 38.759037, 28.602549>,  <31.387447, 39.085228, 28.817537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301550, 38.759037, 28.602549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119172, -0.524319, 0.843141,
		-0.969372, 0.245113, 0.015413,
		-0.214746, -0.815481, -0.537471,
		31.237125, 38.514393, 28.441307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720541, 38.898586, 28.881290>,  <31.387447, 39.085228, 28.817537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720541, 38.898586, 28.881290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882738, 38.556614, 28.751877>,  <30.980057, 38.351433, 28.674229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882738, 38.556614, 28.751877>,  <30.720541, 38.898586, 28.881290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882738, 38.556614, 28.751877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306782, -0.460688, 0.832858,
		-0.861081, -0.238465, -0.449082,
		0.405494, -0.854928, -0.323533,
		31.004387, 38.300137, 28.654818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280684, 38.352886, 29.039871>,  <30.720541, 38.898586, 28.881290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280684, 38.352886, 29.039871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634722, 38.168076, 29.017485>,  <30.847145, 38.057190, 29.004053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634722, 38.168076, 29.017485>,  <30.280684, 38.352886, 29.039871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634722, 38.168076, 29.017485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223384, -0.527236, 0.819830,
		-0.408291, -0.713128, -0.569865,
		0.885098, -0.462028, -0.055964,
		30.900251, 38.029469, 29.000696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128838, 37.670620, 29.145941>,  <30.280684, 38.352886, 29.039871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128838, 37.670620, 29.145941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526243, 37.675964, 29.191101>,  <30.764687, 37.679173, 29.218197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526243, 37.675964, 29.191101>,  <30.128838, 37.670620, 29.145941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526243, 37.675964, 29.191101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080442, -0.619126, 0.781161,
		0.080342, -0.785178, -0.614037,
		0.993516, 0.013366, 0.112903,
		30.824299, 37.679974, 29.224972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273787, 37.031769, 29.394781>,  <30.128838, 37.670620, 29.145941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273787, 37.031769, 29.394781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601784, 37.235619, 29.499006>,  <30.798582, 37.357929, 29.561543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601784, 37.235619, 29.499006>,  <30.273787, 37.031769, 29.394781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601784, 37.235619, 29.499006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134883, -0.614469, 0.777325,
		0.556251, -0.602257, -0.572601,
		0.819995, 0.509622, 0.260565,
		30.847782, 37.388504, 29.577175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773798, 36.506931, 29.452934>,  <30.273787, 37.031769, 29.394781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773798, 36.506931, 29.452934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954678, 36.822556, 29.619261>,  <31.063206, 37.011929, 29.719057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954678, 36.822556, 29.619261>,  <30.773798, 36.506931, 29.452934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954678, 36.822556, 29.619261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481325, -0.608381, 0.631030,
		0.750894, -0.085209, -0.654903,
		0.452200, 0.789058, 0.415816,
		31.090338, 37.059273, 29.744005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512039, 36.402351, 29.545486>,  <30.773798, 36.506931, 29.452934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512039, 36.402351, 29.545486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387714, 36.671021, 29.814486>,  <31.313120, 36.832222, 29.975885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387714, 36.671021, 29.814486>,  <31.512039, 36.402351, 29.545486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387714, 36.671021, 29.814486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452101, -0.517898, 0.726214,
		0.836062, 0.529754, -0.142693,
		-0.310814, 0.671672, 0.672497,
		31.294470, 36.872520, 30.016235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082466, 36.582993, 29.996933>,  <31.512039, 36.402351, 29.545486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082466, 36.582993, 29.996933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776743, 36.715851, 30.218025>,  <31.593309, 36.795567, 30.350679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776743, 36.715851, 30.218025>,  <32.082466, 36.582993, 29.996933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776743, 36.715851, 30.218025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480348, -0.278615, 0.831649,
		0.430228, 0.901139, 0.053402,
		-0.764310, 0.332147, 0.552729,
		31.547449, 36.815495, 30.383844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327137, 36.903675, 30.549742>,  <32.082466, 36.582993, 29.996933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327137, 36.903675, 30.549742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963871, 36.792606, 30.675051>,  <31.745913, 36.725964, 30.750237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963871, 36.792606, 30.675051>,  <32.327137, 36.903675, 30.549742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963871, 36.792606, 30.675051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382456, -0.246099, 0.890597,
		-0.170196, 0.928620, 0.329695,
		-0.908163, -0.277670, 0.313271,
		31.691422, 36.709305, 30.769032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251808, 37.075172, 31.390202>,  <32.327137, 36.903675, 30.549742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251808, 37.075172, 31.390202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937706, 36.835281, 31.328636>,  <31.749245, 36.691345, 31.291697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937706, 36.835281, 31.328636>,  <32.251808, 37.075172, 31.390202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937706, 36.835281, 31.328636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275547, -0.561104, 0.780536,
		-0.554474, 0.570512, 0.605866,
		-0.785259, -0.599732, -0.153915,
		31.702127, 36.655361, 31.282461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884365, 37.086330, 31.995918>,  <32.251808, 37.075172, 31.390202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884365, 37.086330, 31.995918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794802, 36.748646, 31.801115>,  <31.741064, 36.546036, 31.684233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794802, 36.748646, 31.801115>,  <31.884365, 37.086330, 31.995918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794802, 36.748646, 31.801115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331442, -0.535871, 0.776523,
		-0.916522, 0.012453, 0.399791,
		-0.223907, -0.844208, -0.487010,
		31.727631, 36.495384, 31.655012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635876, 36.715637, 32.471222>,  <31.884365, 37.086330, 31.995918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635876, 36.715637, 32.471222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735558, 36.454197, 32.185368>,  <31.795366, 36.297333, 32.013855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735558, 36.454197, 32.185368>,  <31.635876, 36.715637, 32.471222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735558, 36.454197, 32.185368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499684, -0.545330, 0.673001,
		-0.829586, -0.524808, 0.190695,
		0.249204, -0.653599, -0.714636,
		31.810318, 36.258118, 31.970976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452482, 36.174072, 32.832363>,  <31.635876, 36.715637, 32.471222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452482, 36.174072, 32.832363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697702, 36.084995, 32.529160>,  <31.844835, 36.031548, 32.347237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697702, 36.084995, 32.529160>,  <31.452482, 36.174072, 32.832363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697702, 36.084995, 32.529160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539560, -0.582826, 0.607609,
		-0.577086, -0.781490, -0.237160,
		0.613064, -0.222681, -0.758002,
		31.881618, 36.018185, 32.301758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390781, 35.555210, 32.876133>,  <31.452482, 36.174072, 32.832363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390781, 35.555210, 32.876133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734138, 35.618458, 32.680927>,  <31.940153, 35.656406, 32.563805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734138, 35.618458, 32.680927>,  <31.390781, 35.555210, 32.876133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734138, 35.618458, 32.680927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463537, -0.646615, 0.605824,
		-0.219766, -0.746249, -0.628344,
		0.858392, 0.158121, -0.488018,
		31.991655, 35.665894, 32.534523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802084, 34.990192, 32.949177>,  <31.390781, 35.555210, 32.876133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802084, 34.990192, 32.949177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087421, 35.243279, 32.828632>,  <32.258625, 35.395130, 32.756306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087421, 35.243279, 32.828632>,  <31.802084, 34.990192, 32.949177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087421, 35.243279, 32.828632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672991, -0.498487, 0.546437,
		0.195514, -0.592608, -0.781402,
		0.713342, 0.632713, -0.301359,
		32.301426, 35.433094, 32.738224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387623, 34.625355, 32.846966>,  <31.802084, 34.990192, 32.949177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387623, 34.625355, 32.846966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533920, 34.995544, 32.886433>,  <32.621700, 35.217659, 32.910114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533920, 34.995544, 32.886433>,  <32.387623, 34.625355, 32.846966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533920, 34.995544, 32.886433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583683, -0.310652, 0.750206,
		0.724946, -0.216791, -0.653800,
		0.365743, 0.925471, 0.098669,
		32.643642, 35.273186, 32.916035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023235, 34.604073, 32.910915>,  <32.387623, 34.625355, 32.846966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023235, 34.604073, 32.910915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970154, 34.951084, 33.102657>,  <32.938305, 35.159290, 33.217705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970154, 34.951084, 33.102657>,  <33.023235, 34.604073, 32.910915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970154, 34.951084, 33.102657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540402, -0.342100, 0.768721,
		0.830876, 0.361058, -0.423417,
		-0.132702, 0.867528, 0.479359,
		32.930344, 35.211342, 33.246464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553707, 34.524158, 33.343048>,  <33.023235, 34.604073, 32.910915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553707, 34.524158, 33.343048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366825, 34.851513, 33.476887>,  <33.254696, 35.047928, 33.557190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366825, 34.851513, 33.476887>,  <33.553707, 34.524158, 33.343048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366825, 34.851513, 33.476887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330329, -0.189463, 0.924655,
		0.820122, 0.542533, -0.181819,
		-0.467208, 0.818390, 0.334597,
		33.226662, 35.097031, 33.577267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047112, 34.949936, 33.715061>,  <33.553707, 34.524158, 33.343048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047112, 34.949936, 33.715061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681610, 35.032505, 33.855026>,  <33.462307, 35.082047, 33.939003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681610, 35.032505, 33.855026>,  <34.047112, 34.949936, 33.715061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681610, 35.032505, 33.855026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300462, -0.236328, 0.924052,
		0.273443, 0.949493, 0.153923,
		-0.913757, 0.206427, 0.349909,
		33.407482, 35.094433, 33.959999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145988, 35.524796, 34.197212>,  <34.047112, 34.949936, 33.715061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145988, 35.524796, 34.197212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797897, 35.351032, 34.290165>,  <33.589043, 35.246777, 34.345936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797897, 35.351032, 34.290165>,  <34.145988, 35.524796, 34.197212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797897, 35.351032, 34.290165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361789, -0.243344, 0.899940,
		-0.334391, 0.867223, 0.368927,
		-0.870225, -0.434405, 0.232380,
		33.536831, 35.220711, 34.359879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975235, 35.745266, 34.901020>,  <34.145988, 35.524796, 34.197212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975235, 35.745266, 34.901020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763332, 35.411854, 34.838306>,  <33.636192, 35.211807, 34.800678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763332, 35.411854, 34.838306>,  <33.975235, 35.745266, 34.901020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763332, 35.411854, 34.838306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111070, -0.251443, 0.961478,
		-0.840845, 0.491936, 0.225784,
		-0.529757, -0.833532, -0.156786,
		33.604404, 35.161793, 34.791271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487343, 36.008015, 35.343540>,  <33.975235, 35.745266, 34.901020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487343, 36.008015, 35.343540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743305, 36.311634, 35.391499>,  <34.896881, 36.493805, 35.420273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743305, 36.311634, 35.391499>,  <34.487343, 36.008015, 35.343540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743305, 36.311634, 35.391499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371215, 0.441936, -0.816634,
		-0.672847, 0.478061, 0.564565,
		0.639903, 0.759045, 0.119892,
		34.935276, 36.539349, 35.427467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135559, 36.580124, 35.144493>,  <34.487343, 36.008015, 35.343540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135559, 36.580124, 35.144493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520050, 36.686966, 35.117065>,  <34.750744, 36.751072, 35.100609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520050, 36.686966, 35.117065>,  <34.135559, 36.580124, 35.144493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520050, 36.686966, 35.117065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201803, 0.511871, -0.835023,
		-0.187938, 0.816483, 0.545925,
		0.961226, 0.267102, -0.068569,
		34.808418, 36.767097, 35.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089718, 37.301952, 35.145828>,  <34.135559, 36.580124, 35.144493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089718, 37.301952, 35.145828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435974, 37.182384, 34.985176>,  <34.643730, 37.110641, 34.888786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435974, 37.182384, 34.985176>,  <34.089718, 37.301952, 35.145828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435974, 37.182384, 34.985176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149332, 0.611528, -0.777003,
		0.477871, 0.732584, 0.484727,
		0.865644, -0.298922, -0.401630,
		34.695667, 37.092709, 34.864689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460342, 37.878658, 35.026173>,  <34.089718, 37.301952, 35.145828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460342, 37.878658, 35.026173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618740, 37.603088, 34.783333>,  <34.713779, 37.437748, 34.637630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618740, 37.603088, 34.783333>,  <34.460342, 37.878658, 35.026173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618740, 37.603088, 34.783333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265597, 0.546952, -0.793916,
		0.879003, 0.475631, 0.033614,
		0.395996, -0.688926, -0.607099,
		34.737537, 37.396412, 34.601204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985649, 38.233822, 34.515247>,  <34.460342, 37.878658, 35.026173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985649, 38.233822, 34.515247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885513, 37.883778, 34.349590>,  <34.825432, 37.673752, 34.250195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885513, 37.883778, 34.349590>,  <34.985649, 38.233822, 34.515247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885513, 37.883778, 34.349590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272875, 0.474199, -0.837064,
		0.928908, -0.096541, -0.357506,
		-0.250340, -0.875109, -0.414143,
		34.810410, 37.621246, 34.225346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354645, 38.193192, 33.860542>,  <34.985649, 38.233822, 34.515247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354645, 38.193192, 33.860542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059891, 37.927086, 33.812511>,  <34.883038, 37.767422, 33.783691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059891, 37.927086, 33.812511>,  <35.354645, 38.193192, 33.860542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059891, 37.927086, 33.812511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211144, 0.395238, -0.893983,
		0.642194, -0.633412, -0.431713,
		-0.736889, -0.665264, -0.120079,
		34.838825, 37.727509, 33.776489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456772, 37.874939, 33.239529>,  <35.354645, 38.193192, 33.860542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456772, 37.874939, 33.239529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072853, 37.795792, 33.319160>,  <34.842503, 37.748302, 33.366940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072853, 37.795792, 33.319160>,  <35.456772, 37.874939, 33.239529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072853, 37.795792, 33.319160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243266, 0.232569, -0.941665,
		0.140025, -0.952239, -0.271354,
		-0.959799, -0.197868, 0.199082,
		34.784912, 37.736431, 33.378883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392982, 37.301514, 32.769119>,  <35.456772, 37.874939, 33.239529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392982, 37.301514, 32.769119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034950, 37.457867, 32.854954>,  <34.820133, 37.551678, 32.906452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034950, 37.457867, 32.854954>,  <35.392982, 37.301514, 32.769119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034950, 37.457867, 32.854954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137626, 0.215562, -0.966743,
		-0.424140, -0.894842, -0.139149,
		-0.895078, 0.390884, 0.214582,
		34.766426, 37.575130, 32.919327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937893, 36.982479, 32.309811>,  <35.392982, 37.301514, 32.769119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937893, 36.982479, 32.309811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770180, 37.320004, 32.443790>,  <34.669552, 37.522518, 32.524178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770180, 37.320004, 32.443790>,  <34.937893, 36.982479, 32.309811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770180, 37.320004, 32.443790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167036, 0.290943, -0.942046,
		-0.892357, -0.450933, 0.018959,
		-0.419283, 0.843808, 0.334947,
		34.644394, 37.573147, 32.544273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309731, 37.154827, 31.844824>,  <34.937893, 36.982479, 32.309811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309731, 37.154827, 31.844824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428509, 37.485600, 32.035824>,  <34.499775, 37.684063, 32.150425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428509, 37.485600, 32.035824>,  <34.309731, 37.154827, 31.844824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428509, 37.485600, 32.035824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152914, 0.534783, -0.831038,
		-0.942572, 0.173755, 0.285251,
		0.296945, 0.826932, 0.477501,
		34.517593, 37.733681, 32.179073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843296, 37.549210, 31.496904>,  <34.309731, 37.154827, 31.844824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843296, 37.549210, 31.496904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093006, 37.801281, 31.681581>,  <34.242832, 37.952526, 31.792387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093006, 37.801281, 31.681581>,  <33.843296, 37.549210, 31.496904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093006, 37.801281, 31.681581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180065, 0.691157, -0.699913,
		-0.760173, 0.353801, 0.544943,
		0.624271, 0.630180, 0.461691,
		34.280289, 37.990334, 31.820089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557682, 38.225582, 31.603107>,  <33.843296, 37.549210, 31.496904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557682, 38.225582, 31.603107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952030, 38.292358, 31.608635>,  <34.188641, 38.332424, 31.611952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952030, 38.292358, 31.608635>,  <33.557682, 38.225582, 31.603107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952030, 38.292358, 31.608635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089464, 0.594475, -0.799122,
		-0.141624, 0.786593, 0.601010,
		0.985870, 0.166944, 0.013820,
		34.247791, 38.342442, 31.612782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805347, 38.906742, 31.828840>,  <33.557682, 38.225582, 31.603107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805347, 38.906742, 31.828840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058685, 38.752686, 31.560350>,  <34.210686, 38.660252, 31.399256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058685, 38.752686, 31.560350>,  <33.805347, 38.906742, 31.828840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058685, 38.752686, 31.560350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209502, 0.749638, -0.627815,
		0.744974, 0.538245, 0.394089,
		0.633342, -0.385144, -0.671224,
		34.248688, 38.637142, 31.358984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101036, 39.507320, 31.484682>,  <33.805347, 38.906742, 31.828840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101036, 39.507320, 31.484682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208527, 39.208836, 31.241058>,  <34.273022, 39.029743, 31.094885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208527, 39.208836, 31.241058>,  <34.101036, 39.507320, 31.484682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208527, 39.208836, 31.241058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159560, 0.589096, -0.792153,
		0.949908, 0.310056, 0.039242,
		0.268729, -0.746211, -0.609059,
		34.289146, 38.984974, 31.058340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471481, 39.933002, 30.997477>,  <34.101036, 39.507320, 31.484682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471481, 39.933002, 30.997477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404621, 39.580765, 30.820114>,  <34.364506, 39.369423, 30.713697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404621, 39.580765, 30.820114>,  <34.471481, 39.933002, 30.997477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404621, 39.580765, 30.820114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403749, 0.471429, -0.784054,
		0.899471, 0.047971, -0.434339,
		-0.167148, -0.880598, -0.443405,
		34.354477, 39.316586, 30.687092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915150, 39.860462, 30.475384>,  <34.471481, 39.933002, 30.997477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915150, 39.860462, 30.475384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587376, 39.642250, 30.405052>,  <34.390709, 39.511322, 30.362852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587376, 39.642250, 30.405052>,  <34.915150, 39.860462, 30.475384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587376, 39.642250, 30.405052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294812, 0.664240, -0.686928,
		0.491534, -0.511059, -0.705134,
		-0.819439, -0.545530, -0.175830,
		34.341545, 39.478592, 30.352303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878628, 39.728542, 29.816486>,  <34.915150, 39.860462, 30.475384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878628, 39.728542, 29.816486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506935, 39.684681, 29.957630>,  <34.283920, 39.658363, 30.042316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506935, 39.684681, 29.957630>,  <34.878628, 39.728542, 29.816486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506935, 39.684681, 29.957630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359243, 0.491618, -0.793257,
		-0.086487, -0.863879, -0.496218,
		-0.929228, -0.109657, 0.352861,
		34.228168, 39.651783, 30.063488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438065, 39.516567, 29.259674>,  <34.878628, 39.728542, 29.816486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438065, 39.516567, 29.259674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190197, 39.671310, 29.532833>,  <34.041477, 39.764156, 29.696728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190197, 39.671310, 29.532833>,  <34.438065, 39.516567, 29.259674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190197, 39.671310, 29.532833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582085, 0.357126, -0.730506,
		-0.526484, -0.850176, 0.003885,
		-0.619671, 0.386861, 0.682896,
		34.004295, 39.787369, 29.737701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861076, 39.378216, 28.859695>,  <34.438065, 39.516567, 29.259674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861076, 39.378216, 28.859695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762955, 39.638718, 29.146944>,  <33.704082, 39.795017, 29.319294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762955, 39.638718, 29.146944>,  <33.861076, 39.378216, 28.859695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762955, 39.638718, 29.146944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612156, 0.470338, -0.635647,
		-0.751725, -0.595528, 0.283293,
		-0.245302, 0.651252, 0.718121,
		33.689365, 39.834095, 29.362381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128078, 39.410721, 28.950623>,  <33.861076, 39.378216, 28.859695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128078, 39.410721, 28.950623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218204, 39.750191, 29.142033>,  <33.272278, 39.953873, 29.256878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218204, 39.750191, 29.142033>,  <33.128078, 39.410721, 28.950623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218204, 39.750191, 29.142033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598565, 0.508110, -0.619310,
		-0.768736, -0.146889, 0.622470,
		0.225313, 0.848675, 0.478524,
		33.285797, 40.004791, 29.285589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534424, 39.799171, 29.006378>,  <33.128078, 39.410721, 28.950623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534424, 39.799171, 29.006378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805393, 40.090881, 29.044849>,  <32.967976, 40.265907, 29.067932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805393, 40.090881, 29.044849>,  <32.534424, 39.799171, 29.006378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805393, 40.090881, 29.044849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504152, 0.555514, -0.661237,
		-0.535654, 0.399450, 0.743986,
		0.677425, 0.729277, 0.096180,
		33.008621, 40.309666, 29.073704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212593, 40.478500, 29.134544>,  <32.534424, 39.799171, 29.006378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212593, 40.478500, 29.134544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556755, 40.472656, 28.930784>,  <32.763252, 40.469151, 28.808529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556755, 40.472656, 28.930784>,  <32.212593, 40.478500, 29.134544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556755, 40.472656, 28.930784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473835, 0.344975, -0.810230,
		0.187566, 0.938498, 0.289897,
		0.860406, -0.014608, -0.509399,
		32.814877, 40.468273, 28.777964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182350, 41.011597, 28.618544>,  <32.212593, 40.478500, 29.134544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182350, 41.011597, 28.618544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495792, 40.815079, 28.466440>,  <32.683857, 40.697166, 28.375177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495792, 40.815079, 28.466440>,  <32.182350, 41.011597, 28.618544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495792, 40.815079, 28.466440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384486, 0.097275, -0.917991,
		0.487994, 0.865544, -0.112671,
		0.783602, -0.491294, -0.380260,
		32.730873, 40.667690, 28.352362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425896, 41.484409, 28.094011>,  <32.182350, 41.011597, 28.618544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425896, 41.484409, 28.094011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565876, 41.116215, 28.024462>,  <32.649864, 40.895298, 27.982731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565876, 41.116215, 28.024462>,  <32.425896, 41.484409, 28.094011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565876, 41.116215, 28.024462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105208, 0.145818, -0.983701,
		0.930841, 0.362541, -0.045814,
		0.349952, -0.920490, -0.173875,
		32.670860, 40.840069, 27.972300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822571, 41.614975, 27.541868>,  <32.425896, 41.484409, 28.094011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822571, 41.614975, 27.541868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783974, 41.218525, 27.505301>,  <32.760815, 40.980656, 27.483360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783974, 41.218525, 27.505301>,  <32.822571, 41.614975, 27.541868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783974, 41.218525, 27.505301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165647, 0.106556, -0.980411,
		0.981453, -0.079457, -0.174459,
		-0.096490, -0.991127, -0.091418,
		32.755028, 40.921188, 27.477875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238041, 41.422375, 27.045191>,  <32.822571, 41.614975, 27.541868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238041, 41.422375, 27.045191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951805, 41.143112, 27.036217>,  <32.780064, 40.975555, 27.030832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951805, 41.143112, 27.036217>,  <33.238041, 41.422375, 27.045191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951805, 41.143112, 27.036217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156159, 0.191202, -0.969049,
		0.680838, -0.689942, -0.245846,
		-0.715594, -0.698157, -0.022437,
		32.737125, 40.933666, 27.029486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407970, 40.878662, 26.559809>,  <33.238041, 41.422375, 27.045191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407970, 40.878662, 26.559809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008827, 40.880333, 26.585899>,  <32.769341, 40.881336, 26.601553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008827, 40.880333, 26.585899>,  <33.407970, 40.878662, 26.559809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008827, 40.880333, 26.585899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064990, 0.042362, -0.996986,
		-0.006928, -0.999094, -0.042000,
		-0.997862, 0.004177, 0.065224,
		32.709469, 40.881588, 26.605467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179714, 40.420940, 26.073772>,  <33.407970, 40.878662, 26.559809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179714, 40.420940, 26.073772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857445, 40.645069, 26.150633>,  <32.664082, 40.779549, 26.196749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857445, 40.645069, 26.150633>,  <33.179714, 40.420940, 26.073772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857445, 40.645069, 26.150633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296122, -0.100045, -0.949896,
		-0.513026, -0.822210, 0.246528,
		-0.805678, 0.560324, 0.192149,
		32.615742, 40.813168, 26.208277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607101, 40.020775, 25.814991>,  <33.179714, 40.420940, 26.073772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607101, 40.020775, 25.814991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535919, 40.414318, 25.822550>,  <32.493210, 40.650444, 25.827085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535919, 40.414318, 25.822550>,  <32.607101, 40.020775, 25.814991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535919, 40.414318, 25.822550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206912, -0.018636, -0.978182,
		-0.962039, -0.177985, 0.206888,
		-0.177957, 0.983857, 0.018899,
		32.482533, 40.709476, 25.828220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060848, 40.103008, 25.431337>,  <32.607101, 40.020775, 25.814991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060848, 40.103008, 25.431337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179752, 40.484402, 25.451393>,  <32.251095, 40.713238, 25.463427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179752, 40.484402, 25.451393>,  <32.060848, 40.103008, 25.431337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179752, 40.484402, 25.451393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295660, 0.141855, -0.944702,
		-0.907866, 0.265998, 0.324074,
		0.297260, 0.953479, 0.050140,
		32.268929, 40.770447, 25.466434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485693, 40.484982, 25.155685>,  <32.060848, 40.103008, 25.431337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485693, 40.484982, 25.155685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815075, 40.711735, 25.146147>,  <32.012703, 40.847786, 25.140423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815075, 40.711735, 25.146147>,  <31.485693, 40.484982, 25.155685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815075, 40.711735, 25.146147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265657, 0.348074, -0.899039,
		-0.501347, 0.746653, 0.437219,
		0.823455, 0.566880, -0.023848,
		32.062111, 40.881798, 25.138992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283100, 41.137188, 24.902716>,  <31.485693, 40.484982, 25.155685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283100, 41.137188, 24.902716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675795, 41.114033, 24.830221>,  <31.911411, 41.100140, 24.786724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675795, 41.114033, 24.830221>,  <31.283100, 41.137188, 24.902716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675795, 41.114033, 24.830221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170795, 0.151541, -0.973583,
		0.083827, 0.986754, 0.138885,
		0.981734, -0.057892, -0.181236,
		31.970314, 41.096664, 24.775850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345003, 41.612358, 24.374138>,  <31.283100, 41.137188, 24.902716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345003, 41.612358, 24.374138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678808, 41.393864, 24.345247>,  <31.879091, 41.262768, 24.327913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678808, 41.393864, 24.345247>,  <31.345003, 41.612358, 24.374138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678808, 41.393864, 24.345247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062219, 0.036824, -0.997383,
		0.547464, 0.836823, -0.003256,
		0.834513, -0.546234, -0.072226,
		31.929163, 41.229992, 24.323580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672293, 41.866673, 23.809460>,  <31.345003, 41.612358, 24.374138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672293, 41.866673, 23.809460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832422, 41.502197, 23.848385>,  <31.928499, 41.283512, 23.871740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832422, 41.502197, 23.848385>,  <31.672293, 41.866673, 23.809460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832422, 41.502197, 23.848385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121396, -0.157992, -0.979950,
		0.908297, 0.380484, -0.173863,
		0.400324, -0.911192, 0.097315,
		31.952520, 41.228840, 23.877579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067963, 41.749058, 23.206280>,  <31.672293, 41.866673, 23.809460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067963, 41.749058, 23.206280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013657, 41.375999, 23.339991>,  <31.981073, 41.152164, 23.420218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013657, 41.375999, 23.339991>,  <32.067963, 41.749058, 23.206280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013657, 41.375999, 23.339991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263765, -0.291202, -0.919581,
		0.954985, -0.213015, -0.206466,
		-0.135762, -0.932645, 0.334280,
		31.972929, 41.096207, 23.440275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550701, 41.328003, 22.935440>,  <32.067963, 41.749058, 23.206280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550701, 41.328003, 22.935440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264751, 41.068432, 23.039623>,  <32.093182, 40.912689, 23.102133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264751, 41.068432, 23.039623>,  <32.550701, 41.328003, 22.935440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264751, 41.068432, 23.039623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129146, -0.243545, -0.961253,
		0.687219, -0.720816, 0.090299,
		-0.714879, -0.648929, 0.260459,
		32.050289, 40.873753, 23.117762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648628, 40.722359, 22.482590>,  <32.550701, 41.328003, 22.935440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648628, 40.722359, 22.482590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274864, 40.688431, 22.620968>,  <32.050606, 40.668072, 22.703995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274864, 40.688431, 22.620968>,  <32.648628, 40.722359, 22.482590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274864, 40.688431, 22.620968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348213, 0.013080, -0.937324,
		0.074984, -0.996310, -0.041759,
		-0.934412, -0.084825, 0.345947,
		31.994541, 40.662983, 22.724752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619911, 40.073517, 22.104712>,  <32.648628, 40.722359, 22.482590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619911, 40.073517, 22.104712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944141, 40.029766, 21.874582>,  <33.138680, 40.003513, 21.736506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944141, 40.029766, 21.874582>,  <32.619911, 40.073517, 22.104712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944141, 40.029766, 21.874582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515963, -0.331332, 0.789938,
		-0.277023, -0.937153, -0.212137,
		0.810581, -0.109376, -0.575322,
		33.187317, 39.996952, 21.701984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874310, 39.378628, 22.166824>,  <32.619911, 40.073517, 22.104712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874310, 39.378628, 22.166824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168236, 39.621918, 22.046751>,  <33.344589, 39.767891, 21.974707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168236, 39.621918, 22.046751>,  <32.874310, 39.378628, 22.166824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168236, 39.621918, 22.046751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537123, -0.251553, 0.805121,
		0.414185, -0.752848, -0.511538,
		0.734812, 0.608227, -0.300183,
		33.388680, 39.804386, 21.956696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376297, 39.006527, 22.372742>,  <32.874310, 39.378628, 22.166824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376297, 39.006527, 22.372742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525665, 39.375206, 22.330725>,  <33.615288, 39.596413, 22.305515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525665, 39.375206, 22.330725>,  <33.376297, 39.006527, 22.372742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525665, 39.375206, 22.330725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626465, -0.167042, 0.761339,
		0.684177, -0.350105, -0.639788,
		0.373420, 0.921696, -0.105042,
		33.637691, 39.651714, 22.299212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137516, 38.941051, 22.241796>,  <33.376297, 39.006527, 22.372742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137516, 38.941051, 22.241796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073673, 39.309372, 22.384148>,  <34.035366, 39.530365, 22.469559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073673, 39.309372, 22.384148>,  <34.137516, 38.941051, 22.241796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073673, 39.309372, 22.384148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707413, -0.144757, 0.691818,
		0.688543, 0.362173, -0.628283,
		-0.159609, 0.920802, 0.355878,
		34.025791, 39.585613, 22.490911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730011, 39.070107, 22.689537>,  <34.137516, 38.941051, 22.241796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730011, 39.070107, 22.689537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499077, 39.381660, 22.787529>,  <34.360516, 39.568592, 22.846325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499077, 39.381660, 22.787529>,  <34.730011, 39.070107, 22.689537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499077, 39.381660, 22.787529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553973, 0.153243, 0.818309,
		0.599830, 0.608153, -0.519956,
		-0.577336, 0.778888, 0.244981,
		34.325874, 39.615326, 22.861023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169945, 39.649990, 22.670984>,  <34.730011, 39.070107, 22.689537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169945, 39.649990, 22.670984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857693, 39.727875, 22.908539>,  <34.670341, 39.774605, 23.051071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857693, 39.727875, 22.908539>,  <35.169945, 39.649990, 22.670984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857693, 39.727875, 22.908539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601190, -0.025805, 0.798690,
		0.170839, 0.980521, -0.096914,
		-0.780631, 0.194711, 0.593888,
		34.623505, 39.786289, 23.086704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375145, 40.211281, 23.124638>,  <35.169945, 39.649990, 22.670984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375145, 40.211281, 23.124638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064529, 40.053329, 23.321030>,  <34.878159, 39.958561, 23.438864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064529, 40.053329, 23.321030>,  <35.375145, 40.211281, 23.124638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064529, 40.053329, 23.321030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576422, -0.130592, 0.806649,
		-0.254409, 0.909405, 0.329026,
		-0.776540, -0.394876, 0.490978,
		34.831566, 39.934868, 23.468323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437244, 40.439117, 23.715572>,  <35.375145, 40.211281, 23.124638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437244, 40.439117, 23.715572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203583, 40.120663, 23.778728>,  <35.063385, 39.929592, 23.816622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203583, 40.120663, 23.778728>,  <35.437244, 40.439117, 23.715572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203583, 40.120663, 23.778728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457513, -0.162312, 0.874264,
		-0.670404, 0.582944, 0.459057,
		-0.584158, -0.796135, 0.157890,
		35.028336, 39.881821, 23.826096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149437, 40.541157, 24.351402>,  <35.437244, 40.439117, 23.715572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149437, 40.541157, 24.351402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124878, 40.147266, 24.286232>,  <35.110142, 39.910931, 24.247129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124878, 40.147266, 24.286232>,  <35.149437, 40.541157, 24.351402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124878, 40.147266, 24.286232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176087, -0.171358, 0.969345,
		-0.982458, 0.030826, 0.183918,
		-0.061397, -0.984726, -0.162924,
		35.106461, 39.851849, 24.237354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929230, 40.293644, 25.031294>,  <35.149437, 40.541157, 24.351402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929230, 40.293644, 25.031294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044899, 39.959057, 24.845087>,  <35.114300, 39.758305, 24.733362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044899, 39.959057, 24.845087>,  <34.929230, 40.293644, 25.031294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044899, 39.959057, 24.845087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199831, -0.422834, 0.883900,
		-0.936186, -0.348627, 0.044879,
		0.289175, -0.836463, -0.465518,
		35.131653, 39.708118, 24.705431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614929, 39.750019, 25.409510>,  <34.929230, 40.293644, 25.031294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614929, 39.750019, 25.409510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940472, 39.636082, 25.206928>,  <35.135799, 39.567719, 25.085379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940472, 39.636082, 25.206928>,  <34.614929, 39.750019, 25.409510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940472, 39.636082, 25.206928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359982, -0.437017, 0.824275,
		-0.456129, -0.853155, -0.253125,
		0.813855, -0.284856, -0.506456,
		35.184631, 39.550629, 25.054993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751976, 39.207470, 25.812258>,  <34.614929, 39.750019, 25.409510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751976, 39.207470, 25.812258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071808, 39.241940, 25.574522>,  <35.263706, 39.262619, 25.431881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071808, 39.241940, 25.574522>,  <34.751976, 39.207470, 25.812258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071808, 39.241940, 25.574522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587150, -0.320105, 0.743497,
		-0.126183, -0.943455, -0.306547,
		0.799583, 0.086172, -0.594341,
		35.311684, 39.267792, 25.396219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164238, 38.523483, 25.695271>,  <34.751976, 39.207470, 25.812258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164238, 38.523483, 25.695271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416317, 38.829952, 25.644936>,  <35.567566, 39.013832, 25.614735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416317, 38.829952, 25.644936>,  <35.164238, 38.523483, 25.695271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416317, 38.829952, 25.644936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591018, -0.368256, 0.717694,
		0.503537, -0.526660, -0.684894,
		0.630197, 0.766170, -0.125835,
		35.605377, 39.059803, 25.607185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797993, 38.179527, 25.742702>,  <35.164238, 38.523483, 25.695271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797993, 38.179527, 25.742702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880577, 38.564861, 25.811245>,  <35.930126, 38.796062, 25.852371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880577, 38.564861, 25.811245>,  <35.797993, 38.179527, 25.742702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880577, 38.564861, 25.811245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755563, -0.268237, 0.597640,
		0.621691, 0.006083, -0.783239,
		0.206459, 0.963334, 0.171356,
		35.942516, 38.853863, 25.862652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531670, 38.198830, 25.831810>,  <35.797993, 38.179527, 25.742702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531670, 38.198830, 25.831810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420403, 38.543236, 26.002117>,  <36.353642, 38.749878, 26.104301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420403, 38.543236, 26.002117>,  <36.531670, 38.198830, 25.831810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420403, 38.543236, 26.002117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595525, -0.193193, 0.779760,
		0.753640, 0.470460, -0.459015,
		-0.278167, 0.861013, 0.425769,
		36.336952, 38.801540, 26.129848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179974, 38.524654, 26.202671>,  <36.531670, 38.198830, 25.831810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179974, 38.524654, 26.202671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883038, 38.728085, 26.377159>,  <36.704876, 38.850143, 26.481852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883038, 38.728085, 26.377159>,  <37.179974, 38.524654, 26.202671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883038, 38.728085, 26.377159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433529, -0.131826, 0.891445,
		0.510871, 0.850867, -0.122622,
		-0.742337, 0.508574, 0.436221,
		36.660336, 38.880657, 26.508026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460823, 39.046333, 26.631493>,  <37.179974, 38.524654, 26.202671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460823, 39.046333, 26.631493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092014, 39.006443, 26.781124>,  <36.870731, 38.982510, 26.870903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092014, 39.006443, 26.781124>,  <37.460823, 39.046333, 26.631493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092014, 39.006443, 26.781124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370737, 0.050866, 0.927344,
		-0.111504, 0.993714, -0.009929,
		-0.922020, -0.099722, 0.374078,
		36.815407, 38.976528, 26.893347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385479, 39.510513, 27.220219>,  <37.460823, 39.046333, 26.631493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385479, 39.510513, 27.220219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087635, 39.250656, 27.281569>,  <36.908928, 39.094742, 27.318378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087635, 39.250656, 27.281569>,  <37.385479, 39.510513, 27.220219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087635, 39.250656, 27.281569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176119, 0.030427, 0.983899,
		-0.643850, 0.759630, 0.091759,
		-0.744607, -0.649643, 0.153376,
		36.864254, 39.055763, 27.327581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110031, 39.765537, 27.822142>,  <37.385479, 39.510513, 27.220219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110031, 39.765537, 27.822142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953922, 39.398605, 27.790663>,  <36.860256, 39.178448, 27.771776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953922, 39.398605, 27.790663>,  <37.110031, 39.765537, 27.822142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953922, 39.398605, 27.790663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008034, -0.088864, 0.996011,
		-0.920663, 0.388088, 0.042052,
		-0.390277, -0.917328, -0.078696,
		36.836838, 39.123405, 27.767054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411179, 39.707230, 28.122219>,  <37.110031, 39.765537, 27.822142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411179, 39.707230, 28.122219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582394, 39.346397, 28.144247>,  <36.685123, 39.129898, 28.157463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582394, 39.346397, 28.144247>,  <36.411179, 39.707230, 28.122219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582394, 39.346397, 28.144247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401885, -0.135412, 0.905622,
		-0.809487, -0.409775, -0.420495,
		0.428041, -0.902080, 0.055068,
		36.710808, 39.075775, 28.160767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011818, 39.348579, 28.592587>,  <36.411179, 39.707230, 28.122219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011818, 39.348579, 28.592587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300690, 39.074688, 28.553398>,  <36.474014, 38.910355, 28.529884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300690, 39.074688, 28.553398>,  <36.011818, 39.348579, 28.592587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300690, 39.074688, 28.553398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061358, -0.077664, 0.995090,
		-0.688976, -0.724647, -0.014074,
		0.722182, -0.684730, -0.097972,
		36.517345, 38.869270, 28.524006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827126, 38.773849, 28.981493>,  <36.011818, 39.348579, 28.592587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827126, 38.773849, 28.981493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224220, 38.789387, 28.935965>,  <36.462479, 38.798710, 28.908648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224220, 38.789387, 28.935965>,  <35.827126, 38.773849, 28.981493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224220, 38.789387, 28.935965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114429, -0.013802, 0.993336,
		0.037022, -0.999150, -0.018147,
		0.992741, 0.038852, -0.113821,
		36.522041, 38.801041, 28.901817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067471, 38.134247, 29.274618>,  <35.827126, 38.773849, 28.981493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067471, 38.134247, 29.274618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373852, 38.391308, 29.267511>,  <36.557682, 38.545544, 29.263248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373852, 38.391308, 29.267511>,  <36.067471, 38.134247, 29.274618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373852, 38.391308, 29.267511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267403, -0.293335, 0.917851,
		0.584648, -0.707780, -0.396528,
		0.765952, 0.642652, -0.017765,
		36.603638, 38.584103, 29.262182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500290, 37.758041, 29.545483>,  <36.067471, 38.134247, 29.274618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500290, 37.758041, 29.545483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650215, 38.125389, 29.596245>,  <36.740170, 38.345798, 29.626701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650215, 38.125389, 29.596245>,  <36.500290, 37.758041, 29.545483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650215, 38.125389, 29.596245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054555, -0.158495, 0.985851,
		0.925493, -0.362589, -0.109508,
		0.374816, 0.918372, 0.126905,
		36.762661, 38.400902, 29.634315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180622, 37.645370, 29.872265>,  <36.500290, 37.758041, 29.545483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180622, 37.645370, 29.872265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065720, 38.021034, 29.947601>,  <36.996780, 38.246433, 29.992804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065720, 38.021034, 29.947601>,  <37.180622, 37.645370, 29.872265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065720, 38.021034, 29.947601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232051, -0.122540, 0.964954,
		0.929321, 0.320893, -0.182732,
		-0.287255, 0.939155, 0.188343,
		36.979542, 38.302780, 30.004105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717621, 37.946026, 30.316639>,  <37.180622, 37.645370, 29.872265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717621, 37.946026, 30.316639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379074, 38.153763, 30.363873>,  <37.175945, 38.278404, 30.392214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379074, 38.153763, 30.363873>,  <37.717621, 37.946026, 30.316639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379074, 38.153763, 30.363873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125224, -0.021456, 0.991896,
		0.517667, 0.854297, -0.046875,
		-0.846369, 0.519342, 0.118086,
		37.125164, 38.309566, 30.399298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906345, 38.253387, 30.913950>,  <37.717621, 37.946026, 30.316639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906345, 38.253387, 30.913950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514309, 38.314388, 30.863102>,  <37.279087, 38.350986, 30.832594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514309, 38.314388, 30.863102>,  <37.906345, 38.253387, 30.913950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514309, 38.314388, 30.863102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126929, 0.011026, 0.991851,
		0.152658, 0.988242, 0.008550,
		-0.980094, 0.152499, -0.127119,
		37.220280, 38.360138, 30.824966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757305, 38.768013, 31.298210>,  <37.906345, 38.253387, 30.913950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757305, 38.768013, 31.298210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400372, 38.591843, 31.258680>,  <37.186211, 38.486141, 31.234962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400372, 38.591843, 31.258680>,  <37.757305, 38.768013, 31.298210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400372, 38.591843, 31.258680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073613, -0.074012, 0.994537,
		-0.445334, 0.894733, 0.033623,
		-0.892333, -0.440426, -0.098824,
		37.132671, 38.459713, 31.229033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296535, 39.168598, 31.734037>,  <37.757305, 38.768013, 31.298210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296535, 39.168598, 31.734037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098351, 38.824268, 31.687572>,  <36.979439, 38.617668, 31.659695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098351, 38.824268, 31.687572>,  <37.296535, 39.168598, 31.734037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098351, 38.824268, 31.687572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105960, -0.072834, 0.991699,
		-0.862143, 0.503658, -0.055127,
		-0.495462, -0.860828, -0.116161,
		36.949711, 38.566021, 31.652723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743610, 39.208981, 32.225620>,  <37.296535, 39.168598, 31.734037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743610, 39.208981, 32.225620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796471, 38.818459, 32.157070>,  <36.828186, 38.584145, 32.115940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796471, 38.818459, 32.157070>,  <36.743610, 39.208981, 32.225620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796471, 38.818459, 32.157070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034740, -0.168223, 0.985137,
		-0.990621, -0.136139, 0.011686,
		0.132150, -0.976303, -0.171375,
		36.836117, 38.525566, 32.105659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427567, 38.857021, 32.737968>,  <36.743610, 39.208981, 32.225620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427567, 38.857021, 32.737968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644192, 38.548248, 32.604801>,  <36.774166, 38.362984, 32.524899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644192, 38.548248, 32.604801>,  <36.427567, 38.857021, 32.737968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644192, 38.548248, 32.604801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176565, -0.282745, 0.942804,
		-0.821910, -0.569369, -0.016829,
		0.541562, -0.771929, -0.332922,
		36.806660, 38.316669, 32.504925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266090, 38.262726, 33.178783>,  <36.427567, 38.857021, 32.737968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266090, 38.262726, 33.178783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625347, 38.185356, 33.020832>,  <36.840900, 38.138935, 32.926064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625347, 38.185356, 33.020832>,  <36.266090, 38.262726, 33.178783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625347, 38.185356, 33.020832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238787, -0.539521, 0.807402,
		-0.369217, -0.819453, -0.438378,
		0.898142, -0.193428, -0.394875,
		36.894791, 38.127327, 32.902370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373104, 37.520576, 33.301521>,  <36.266090, 38.262726, 33.178783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373104, 37.520576, 33.301521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739967, 37.667175, 33.238918>,  <36.960087, 37.755135, 33.201359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739967, 37.667175, 33.238918>,  <36.373104, 37.520576, 33.301521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739967, 37.667175, 33.238918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366792, -0.622773, 0.691099,
		0.155821, -0.691254, -0.705612,
		0.917161, 0.366500, -0.156505,
		37.015114, 37.777126, 33.191967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830986, 36.974186, 33.415039>,  <36.373104, 37.520576, 33.301521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830986, 36.974186, 33.415039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078949, 37.287548, 33.432899>,  <37.227726, 37.475563, 33.443615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078949, 37.287548, 33.432899>,  <36.830986, 36.974186, 33.415039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078949, 37.287548, 33.432899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565063, -0.485174, 0.667315,
		0.544440, -0.388443, -0.743436,
		0.619909, 0.783401, 0.044654,
		37.264923, 37.522568, 33.446297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534676, 36.760155, 33.198109>,  <36.830986, 36.974186, 33.415039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534676, 36.760155, 33.198109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563953, 37.059532, 33.461769>,  <37.581520, 37.239159, 33.619965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563953, 37.059532, 33.461769>,  <37.534676, 36.760155, 33.198109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563953, 37.059532, 33.461769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689082, -0.515741, 0.509095,
		0.720978, 0.416946, -0.553486,
		0.073190, 0.748444, 0.659147,
		37.585911, 37.284065, 33.659512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270042, 36.831917, 33.387840>,  <37.534676, 36.760155, 33.198109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270042, 36.831917, 33.387840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091812, 37.049713, 33.672092>,  <37.984875, 37.180393, 33.842644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091812, 37.049713, 33.672092>,  <38.270042, 36.831917, 33.387840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091812, 37.049713, 33.672092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588952, -0.419540, 0.690740,
		0.674241, 0.726300, -0.133745,
		-0.445573, 0.544494, 0.710627,
		37.958141, 37.213062, 33.885281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821808, 37.162857, 33.710617>,  <38.270042, 36.831917, 33.387840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821808, 37.162857, 33.710617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501488, 37.178288, 33.949692>,  <38.309296, 37.187546, 34.093136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501488, 37.178288, 33.949692>,  <38.821808, 37.162857, 33.710617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501488, 37.178288, 33.949692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530615, -0.417152, 0.737857,
		0.277794, 0.908018, 0.313584,
		-0.800799, 0.038580, 0.597690,
		38.261250, 37.189861, 34.128998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134018, 37.420582, 34.271660>,  <38.821808, 37.162857, 33.710617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134018, 37.420582, 34.271660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796101, 37.276531, 34.429966>,  <38.593349, 37.190102, 34.524948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796101, 37.276531, 34.429966>,  <39.134018, 37.420582, 34.271660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796101, 37.276531, 34.429966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533514, -0.510227, 0.674560,
		-0.040999, 0.781010, 0.623171,
		-0.844797, -0.360127, 0.395761,
		38.542660, 37.168491, 34.548695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170628, 37.505051, 35.069023>,  <39.134018, 37.420582, 34.271660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170628, 37.505051, 35.069023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909664, 37.222664, 34.958775>,  <38.753086, 37.053230, 34.892628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909664, 37.222664, 34.958775>,  <39.170628, 37.505051, 35.069023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909664, 37.222664, 34.958775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374058, -0.616253, 0.693046,
		-0.659121, 0.349053, 0.666124,
		-0.652411, -0.705971, -0.275620,
		38.713940, 37.010872, 34.876087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862179, 37.369606, 35.658730>,  <39.170628, 37.505051, 35.069023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862179, 37.369606, 35.658730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791138, 37.051052, 35.427479>,  <38.748512, 36.859921, 35.288727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791138, 37.051052, 35.427479>,  <38.862179, 37.369606, 35.658730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791138, 37.051052, 35.427479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279149, -0.604108, 0.746411,
		-0.943681, -0.028821, 0.329600,
		-0.177602, -0.796381, -0.578130,
		38.737858, 36.812138, 35.254040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559681, 36.876560, 36.147251>,  <38.862179, 37.369606, 35.658730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559681, 36.876560, 36.147251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665356, 36.660652, 35.827538>,  <38.728760, 36.531109, 35.635708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665356, 36.660652, 35.827538>,  <38.559681, 36.876560, 36.147251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665356, 36.660652, 35.827538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407919, -0.688422, 0.599731,
		-0.873962, -0.484481, 0.038314,
		0.264182, -0.539771, -0.799284,
		38.744610, 36.498722, 35.587753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360573, 36.147663, 36.218773>,  <38.559681, 36.876560, 36.147251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360573, 36.147663, 36.218773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656334, 36.162804, 35.949894>,  <38.833790, 36.171886, 35.788567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656334, 36.162804, 35.949894>,  <38.360573, 36.147663, 36.218773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656334, 36.162804, 35.949894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556521, -0.596255, 0.578588,
		-0.378900, -0.801902, -0.461939,
		0.739404, 0.037852, -0.672197,
		38.878155, 36.174160, 35.748234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532993, 35.387016, 36.043964>,  <38.360573, 36.147663, 36.218773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532993, 35.387016, 36.043964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839012, 35.623459, 35.941750>,  <39.022625, 35.765324, 35.880421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839012, 35.623459, 35.941750>,  <38.532993, 35.387016, 36.043964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839012, 35.623459, 35.941750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600125, -0.510500, 0.615824,
		0.233569, -0.624485, -0.745294,
		0.765046, 0.591107, -0.255532,
		39.068527, 35.800793, 35.865089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995262, 34.963821, 35.712112>,  <38.532993, 35.387016, 36.043964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995262, 34.963821, 35.712112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245605, 35.265179, 35.792816>,  <39.395813, 35.445992, 35.841240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245605, 35.265179, 35.792816>,  <38.995262, 34.963821, 35.712112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245605, 35.265179, 35.792816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497362, -0.584784, 0.640827,
		0.600778, -0.300719, -0.740698,
		0.625857, 0.753390, 0.201759,
		39.433361, 35.491196, 35.853344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614594, 34.675018, 35.846622>,  <38.995262, 34.963821, 35.712112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614594, 34.675018, 35.846622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741470, 35.027023, 35.988026>,  <39.817596, 35.238228, 36.072868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741470, 35.027023, 35.988026>,  <39.614594, 34.675018, 35.846622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741470, 35.027023, 35.988026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612332, -0.474685, 0.632237,
		0.724180, 0.015919, -0.689427,
		0.317196, 0.880012, 0.353505,
		39.836628, 35.291027, 36.094078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432644, 34.768986, 35.910385>,  <39.614594, 34.675018, 35.846622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432644, 34.768986, 35.910385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266479, 35.025803, 36.168137>,  <40.166782, 35.179893, 36.322788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266479, 35.025803, 36.168137>,  <40.432644, 34.768986, 35.910385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266479, 35.025803, 36.168137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486025, -0.442134, 0.753855,
		0.768905, 0.626341, -0.128380,
		-0.415409, 0.642039, 0.644377,
		40.141857, 35.218414, 36.361450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972626, 34.942547, 36.381622>,  <40.432644, 34.768986, 35.910385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972626, 34.942547, 36.381622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641651, 35.062466, 36.571556>,  <40.443066, 35.134418, 36.685516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641651, 35.062466, 36.571556>,  <40.972626, 34.942547, 36.381622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641651, 35.062466, 36.571556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337880, -0.409587, 0.847394,
		0.448533, 0.861602, 0.237611,
		-0.827439, 0.299800, 0.474832,
		40.393421, 35.152405, 36.714005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212711, 35.212360, 37.104065>,  <40.972626, 34.942547, 36.381622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212711, 35.212360, 37.104065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828701, 35.135269, 37.185272>,  <40.598297, 35.089016, 37.233997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828701, 35.135269, 37.185272>,  <41.212711, 35.212360, 37.104065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828701, 35.135269, 37.185272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256427, -0.314612, 0.913928,
		-0.112269, 0.929449, 0.351455,
		-0.960021, -0.192729, 0.203014,
		40.540695, 35.077450, 37.246178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071568, 35.529663, 37.767113>,  <41.212711, 35.212360, 37.104065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071568, 35.529663, 37.767113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813034, 35.226173, 37.734627>,  <40.657913, 35.044079, 37.715134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813034, 35.226173, 37.734627>,  <41.071568, 35.529663, 37.767113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813034, 35.226173, 37.734627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243117, -0.305645, 0.920584,
		-0.723292, 0.575257, 0.382006,
		-0.646331, -0.758723, -0.081216,
		40.619133, 34.998558, 37.710262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675217, 35.652847, 38.343891>,  <41.071568, 35.529663, 37.767113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675217, 35.652847, 38.343891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685097, 35.271687, 38.222977>,  <40.691025, 35.042992, 38.150429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685097, 35.271687, 38.222977>,  <40.675217, 35.652847, 38.343891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685097, 35.271687, 38.222977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154706, -0.295089, 0.942862,
		-0.987652, -0.070051, 0.140131,
		0.024697, -0.952898, -0.302282,
		40.692505, 34.985817, 38.132294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255241, 35.287785, 38.759270>,  <40.675217, 35.652847, 38.343891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255241, 35.287785, 38.759270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571018, 35.059757, 38.668236>,  <40.760487, 34.922939, 38.613617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571018, 35.059757, 38.668236>,  <40.255241, 35.287785, 38.759270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571018, 35.059757, 38.668236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171386, -0.151311, 0.973515,
		-0.589408, -0.807543, -0.021750,
		0.789446, -0.570070, -0.227586,
		40.807854, 34.888737, 38.599960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263840, 34.571762, 39.066559>,  <40.255241, 35.287785, 38.759270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263840, 34.571762, 39.066559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647301, 34.666092, 39.002850>,  <40.877377, 34.722691, 38.964626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647301, 34.666092, 39.002850>,  <40.263840, 34.571762, 39.066559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647301, 34.666092, 39.002850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200490, -0.162524, 0.966121,
		0.201947, -0.958109, -0.203084,
		0.958656, 0.235821, -0.159270,
		40.934898, 34.736839, 38.955067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731060, 34.068607, 39.314831>,  <40.263840, 34.571762, 39.066559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731060, 34.068607, 39.314831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905731, 34.427143, 39.345539>,  <41.010532, 34.642265, 39.363964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905731, 34.427143, 39.345539>,  <40.731060, 34.068607, 39.314831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905731, 34.427143, 39.345539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145857, -0.154753, 0.977127,
		0.887717, -0.415488, -0.198314,
		0.436675, 0.896338, 0.076775,
		41.036736, 34.696045, 39.368572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318657, 33.536316, 39.309490>,  <40.731060, 34.068607, 39.314831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318657, 33.536316, 39.309490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525906, 33.877880, 39.329041>,  <41.650257, 34.082817, 39.340771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525906, 33.877880, 39.329041>,  <41.318657, 33.536316, 39.309490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525906, 33.877880, 39.329041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252352, -0.207221, 0.945187,
		0.817229, -0.477392, -0.322852,
		0.518126, 0.853907, 0.048877,
		41.681343, 34.134052, 39.343704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902454, 33.405243, 39.664917>,  <41.318657, 33.536316, 39.309490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902454, 33.405243, 39.664917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883270, 33.803761, 39.693493>,  <41.871761, 34.042870, 39.710640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883270, 33.803761, 39.693493>,  <41.902454, 33.405243, 39.664917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883270, 33.803761, 39.693493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295226, -0.054189, 0.953890,
		0.954223, 0.066842, -0.291532,
		-0.047962, 0.996291, 0.071442,
		41.868881, 34.102650, 39.714924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584377, 33.641369, 39.965553>,  <41.902454, 33.405243, 39.664917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584377, 33.641369, 39.965553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318890, 33.933327, 40.030937>,  <42.159595, 34.108501, 40.070168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318890, 33.933327, 40.030937>,  <42.584377, 33.641369, 39.965553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318890, 33.933327, 40.030937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305238, 0.064792, 0.950069,
		0.682862, 0.680479, -0.265796,
		-0.663724, 0.729897, 0.163465,
		42.119774, 34.152294, 40.079975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915718, 34.049446, 40.548801>,  <42.584377, 33.641369, 39.965553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915718, 34.049446, 40.548801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571041, 34.249035, 40.511887>,  <42.364235, 34.368790, 40.489738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571041, 34.249035, 40.511887>,  <42.915718, 34.049446, 40.548801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571041, 34.249035, 40.511887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071682, 0.299749, 0.951321,
		0.502346, 0.813129, -0.294059,
		-0.861690, 0.498971, -0.092291,
		42.312534, 34.398727, 40.484200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992432, 34.824947, 40.604836>,  <42.915718, 34.049446, 40.548801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992432, 34.824947, 40.604836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619999, 34.735157, 40.719860>,  <42.396538, 34.681282, 40.788876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619999, 34.735157, 40.719860>,  <42.992432, 34.824947, 40.604836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619999, 34.735157, 40.719860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229150, 0.253454, 0.939815,
		-0.283848, 0.940942, -0.184549,
		-0.931086, -0.224475, 0.287559,
		42.340672, 34.667816, 40.806129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646599, 35.399277, 40.833401>,  <42.992432, 34.824947, 40.604836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646599, 35.399277, 40.833401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472057, 35.089752, 41.017059>,  <42.367332, 34.904037, 41.127254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472057, 35.089752, 41.017059>,  <42.646599, 35.399277, 40.833401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472057, 35.089752, 41.017059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295450, 0.358777, 0.885431,
		-0.849885, 0.522017, 0.072067,
		-0.436354, -0.773807, 0.459149,
		42.341152, 34.857609, 41.154804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243053, 35.699200, 41.356331>,  <42.646599, 35.399277, 40.833401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243053, 35.699200, 41.356331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263203, 35.313839, 41.461647>,  <42.275291, 35.082623, 41.524837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263203, 35.313839, 41.461647>,  <42.243053, 35.699200, 41.356331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263203, 35.313839, 41.461647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207710, 0.267965, 0.940772,
		-0.976893, 0.007298, 0.213607,
		0.050373, -0.963401, 0.263289,
		42.278316, 35.024818, 41.540634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985325, 35.636490, 42.075672>,  <42.243053, 35.699200, 41.356331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985325, 35.636490, 42.075672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213097, 35.311249, 42.027309>,  <42.349762, 35.116104, 41.998291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213097, 35.311249, 42.027309>,  <41.985325, 35.636490, 42.075672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213097, 35.311249, 42.027309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142706, -0.047070, 0.988645,
		-0.809557, -0.580220, 0.089231,
		0.569432, -0.813098, -0.120907,
		42.383926, 35.067318, 41.991039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751640, 34.854103, 42.298901>,  <41.985325, 35.636490, 42.075672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751640, 34.854103, 42.298901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134716, 34.966396, 42.324280>,  <42.364559, 35.033772, 42.339508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134716, 34.966396, 42.324280>,  <41.751640, 34.854103, 42.298901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134716, 34.966396, 42.324280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137562, 0.252815, 0.957685,
		0.252815, -0.925890, 0.280736,
		-0.957685, -0.280736, -0.063452,
		42.422020, 35.050617, 42.343315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323452, 34.437546, 42.649052>,  <41.751640, 34.854103, 42.298901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323452, 34.437546, 42.649052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417782, 34.824238, 42.688698>,  <42.474380, 35.056252, 42.712486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417782, 34.824238, 42.688698>,  <42.323452, 34.437546, 42.649052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417782, 34.824238, 42.688698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146099, -0.065560, 0.987095,
		0.960750, -0.247264, 0.125778,
		0.235827, 0.966727, 0.099112,
		42.488529, 35.114258, 42.718430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098324, 34.368423, 42.713142>,  <42.323452, 34.437546, 42.649052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098324, 34.368423, 42.713142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035873, 34.685959, 42.478043>,  <42.998402, 34.876480, 42.336983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035873, 34.685959, 42.478043>,  <43.098324, 34.368423, 42.713142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035873, 34.685959, 42.478043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894714, 0.365756, 0.256341,
		0.418465, -0.485842, -0.767362,
		-0.156126, 0.793839, -0.587745,
		42.989037, 34.924110, 42.301720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765362, 34.478477, 42.275070>,  <43.098324, 34.368423, 42.713142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765362, 34.478477, 42.275070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524994, 34.792866, 42.333229>,  <43.380772, 34.981499, 42.368122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524994, 34.792866, 42.333229>,  <43.765362, 34.478477, 42.275070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524994, 34.792866, 42.333229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785911, 0.547833, 0.286747,
		0.145724, 0.286580, -0.946909,
		-0.600923, 0.785972, 0.145394,
		43.344715, 35.028656, 42.376846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692184, 33.820621, 41.927303>,  <43.765362, 34.478477, 42.275070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692184, 33.820621, 41.927303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937027, 33.647026, 42.191723>,  <44.083931, 33.542870, 42.350372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937027, 33.647026, 42.191723>,  <43.692184, 33.820621, 41.927303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937027, 33.647026, 42.191723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789273, -0.283813, 0.544516,
		-0.048699, -0.855048, -0.516257,
		0.612108, -0.433985, 0.661045,
		44.120659, 33.516830, 42.390038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930576, 34.211437, 41.998207>,  <43.692184, 33.820621, 41.927303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930576, 34.211437, 41.998207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597595, 34.421963, 42.067513>,  <42.397808, 34.548279, 42.109097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597595, 34.421963, 42.067513>,  <42.930576, 34.211437, 41.998207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597595, 34.421963, 42.067513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273083, -0.117612, -0.954774,
		-0.482136, -0.842115, 0.241634,
		-0.832449, 0.526317, 0.173262,
		42.347862, 34.579857, 42.119492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363377, 33.839172, 41.873257>,  <42.930576, 34.211437, 41.998207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363377, 33.839172, 41.873257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282017, 34.224651, 41.804070>,  <42.233200, 34.455940, 41.762558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282017, 34.224651, 41.804070>,  <42.363377, 33.839172, 41.873257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282017, 34.224651, 41.804070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420294, -0.245496, -0.873547,
		-0.884297, -0.104981, 0.454969,
		-0.203399, 0.963696, -0.172969,
		42.220997, 34.513760, 41.752178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649529, 33.899723, 41.600021>,  <42.363377, 33.839172, 41.873257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649529, 33.899723, 41.600021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827076, 34.233845, 41.470253>,  <41.933605, 34.434319, 41.392391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827076, 34.233845, 41.470253>,  <41.649529, 33.899723, 41.600021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827076, 34.233845, 41.470253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360898, -0.164734, -0.917941,
		-0.820201, 0.524531, 0.228338,
		0.443873, 0.835302, -0.324418,
		41.960239, 34.484436, 41.372929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212818, 34.220230, 41.201164>,  <41.649529, 33.899723, 41.600021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212818, 34.220230, 41.201164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560635, 34.373215, 41.076180>,  <41.769325, 34.465004, 41.001190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560635, 34.373215, 41.076180>,  <41.212818, 34.220230, 41.201164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560635, 34.373215, 41.076180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331558, -0.016825, -0.943285,
		-0.366025, 0.923819, 0.112177,
		0.869537, 0.382459, -0.312458,
		41.821495, 34.487953, 40.982441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957344, 34.446785, 40.584072>,  <41.212818, 34.220230, 41.201164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957344, 34.446785, 40.584072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354210, 34.492290, 40.563435>,  <41.592331, 34.519592, 40.551052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354210, 34.492290, 40.563435>,  <40.957344, 34.446785, 40.584072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354210, 34.492290, 40.563435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058576, 0.058906, -0.996543,
		-0.110328, 0.991760, 0.065108,
		0.992168, 0.113760, -0.051595,
		41.651859, 34.526417, 40.547955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296860, 35.102371, 40.238808>,  <40.957344, 34.446785, 40.584072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296860, 35.102371, 40.238808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556957, 34.802528, 40.189365>,  <41.713017, 34.622623, 40.159698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556957, 34.802528, 40.189365>,  <41.296860, 35.102371, 40.238808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556957, 34.802528, 40.189365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088981, 0.236724, -0.967494,
		0.754499, 0.618106, 0.220628,
		0.650242, -0.749604, -0.123608,
		41.752029, 34.577648, 40.152283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800156, 35.394367, 39.827106>,  <41.296860, 35.102371, 40.238808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800156, 35.394367, 39.827106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807964, 34.995468, 39.798519>,  <41.812649, 34.756126, 39.781364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807964, 34.995468, 39.798519>,  <41.800156, 35.394367, 39.827106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807964, 34.995468, 39.798519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160236, 0.073681, -0.984325,
		0.986886, 0.007765, 0.161234,
		0.019524, -0.997252, -0.071470,
		41.813820, 34.696293, 39.777077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400150, 35.152279, 39.448963>,  <41.800156, 35.394367, 39.827106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400150, 35.152279, 39.448963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104267, 34.885574, 39.412605>,  <41.926739, 34.725552, 39.390793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104267, 34.885574, 39.412605>,  <42.400150, 35.152279, 39.448963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104267, 34.885574, 39.412605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010668, 0.146670, -0.989128,
		0.672844, -0.730696, -0.115606,
		-0.739707, -0.666762, -0.090891,
		41.882355, 34.685547, 39.385338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271290, 35.191330, 38.741970>,  <42.400150, 35.152279, 39.448963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271290, 35.191330, 38.741970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999939, 34.922611, 38.860966>,  <41.837128, 34.761379, 38.932362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999939, 34.922611, 38.860966>,  <42.271290, 35.191330, 38.741970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999939, 34.922611, 38.860966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404276, 0.003215, -0.914631,
		0.613488, -0.740730, -0.273772,
		-0.678375, -0.671795, 0.297487,
		41.796425, 34.721073, 38.950211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236000, 34.718960, 38.198208>,  <42.271290, 35.191330, 38.741970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236000, 34.718960, 38.198208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902756, 34.712048, 38.419342>,  <41.702808, 34.707901, 38.552021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902756, 34.712048, 38.419342>,  <42.236000, 34.718960, 38.198208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902756, 34.712048, 38.419342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551795, 0.094629, -0.828594,
		-0.037998, -0.995363, -0.088371,
		-0.833114, -0.017278, 0.552832,
		41.652821, 34.706863, 38.585190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714699, 34.251827, 37.950058>,  <42.236000, 34.718960, 38.198208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714699, 34.251827, 37.950058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423935, 34.435474, 38.154339>,  <41.249477, 34.545662, 38.276909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423935, 34.435474, 38.154339>,  <41.714699, 34.251827, 37.950058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423935, 34.435474, 38.154339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678120, -0.362436, -0.639370,
		-0.108451, -0.811079, 0.574795,
		-0.726906, 0.459120, 0.510702,
		41.205864, 34.573212, 38.307549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109692, 33.776707, 38.229172>,  <41.714699, 34.251827, 37.950058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109692, 33.776707, 38.229172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974495, 34.148335, 38.169064>,  <40.893375, 34.371311, 38.132999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974495, 34.148335, 38.169064>,  <41.109692, 33.776707, 38.229172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974495, 34.148335, 38.169064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724053, -0.358700, -0.589136,
		-0.601254, -0.090318, 0.793937,
		-0.337995, 0.929073, -0.150275,
		40.873096, 34.427055, 38.123981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603855, 33.737476, 37.681850>,  <41.109692, 33.776707, 38.229172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603855, 33.737476, 37.681850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366062, 33.991867, 37.878674>,  <40.223385, 34.144501, 37.996769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366062, 33.991867, 37.878674>,  <40.603855, 33.737476, 37.681850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366062, 33.991867, 37.878674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149139, 0.514113, -0.844657,
		-0.790154, -0.575523, -0.210785,
		-0.594486, 0.635973, 0.492061,
		40.187717, 34.182659, 38.026291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790661, 34.007301, 37.548882>,  <40.603855, 33.737476, 37.681850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790661, 34.007301, 37.548882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030918, 34.318935, 37.620712>,  <40.175072, 34.505917, 37.663811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030918, 34.318935, 37.620712>,  <39.790661, 34.007301, 37.548882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030918, 34.318935, 37.620712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355591, 0.461487, -0.812764,
		-0.716087, 0.424326, 0.554226,
		0.600645, 0.779087, 0.179579,
		40.211113, 34.552662, 37.674587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355274, 34.609970, 37.471699>,  <39.790661, 34.007301, 37.548882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355274, 34.609970, 37.471699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724144, 34.755383, 37.418880>,  <39.945465, 34.842632, 37.387188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724144, 34.755383, 37.418880>,  <39.355274, 34.609970, 37.471699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724144, 34.755383, 37.418880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349326, 0.636298, -0.687820,
		-0.166027, 0.680417, 0.713771,
		0.922175, 0.363536, -0.132044,
		40.000797, 34.864445, 37.379269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309132, 35.310993, 37.436901>,  <39.355274, 34.609970, 37.471699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309132, 35.310993, 37.436901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638428, 35.229355, 37.225010>,  <39.836006, 35.180370, 37.097874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638428, 35.229355, 37.225010>,  <39.309132, 35.310993, 37.436901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638428, 35.229355, 37.225010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273810, 0.674665, -0.685460,
		0.497294, 0.709345, 0.499527,
		0.823242, -0.204100, -0.529732,
		39.885399, 35.168125, 37.066090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586811, 35.894314, 37.288368>,  <39.309132, 35.310993, 37.436901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586811, 35.894314, 37.288368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731892, 35.674057, 36.987637>,  <39.818939, 35.541904, 36.807198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731892, 35.674057, 36.987637>,  <39.586811, 35.894314, 37.288368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731892, 35.674057, 36.987637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240935, 0.723926, -0.646437,
		0.900223, 0.415603, 0.129897,
		0.362697, -0.550641, -0.751828,
		39.840702, 35.508865, 36.762089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838200, 36.361870, 36.778782>,  <39.586811, 35.894314, 37.288368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838200, 36.361870, 36.778782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852173, 36.032784, 36.551826>,  <39.860558, 35.835331, 36.415653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852173, 36.032784, 36.551826>,  <39.838200, 36.361870, 36.778782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852173, 36.032784, 36.551826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297771, 0.533378, -0.791733,
		0.953998, 0.196607, -0.226348,
		0.034931, -0.822712, -0.567385,
		39.862652, 35.785969, 36.381611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028992, 36.571522, 36.237259>,  <39.838200, 36.361870, 36.778782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028992, 36.571522, 36.237259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871658, 36.223965, 36.117046>,  <39.777260, 36.015430, 36.044918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871658, 36.223965, 36.117046>,  <40.028992, 36.571522, 36.237259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871658, 36.223965, 36.117046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503268, 0.477036, -0.720526,
		0.769422, -0.132159, -0.624919,
		-0.393332, -0.868890, -0.300530,
		39.753658, 35.963299, 36.026886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089039, 36.551182, 35.473270>,  <40.028992, 36.571522, 36.237259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089039, 36.551182, 35.473270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795761, 36.305183, 35.589344>,  <39.619793, 36.157585, 35.658989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795761, 36.305183, 35.589344>,  <40.089039, 36.551182, 35.473270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795761, 36.305183, 35.589344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609903, 0.406000, -0.680575,
		0.300738, -0.675976, -0.672765,
		-0.733195, -0.614996, 0.290181,
		39.575802, 36.120686, 35.676399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854679, 36.290726, 34.907356>,  <40.089039, 36.551182, 35.473270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854679, 36.290726, 34.907356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553188, 36.232773, 35.163761>,  <39.372292, 36.198002, 35.317604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553188, 36.232773, 35.163761>,  <39.854679, 36.290726, 34.907356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553188, 36.232773, 35.163761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647544, 0.330181, -0.686780,
		-0.112150, -0.932732, -0.342685,
		-0.753730, -0.144881, 0.641015,
		39.327068, 36.189308, 35.356064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363529, 36.277626, 34.414494>,  <39.854679, 36.290726, 34.907356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363529, 36.277626, 34.414494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518818, 36.638416, 34.338894>,  <40.611992, 36.854889, 34.293533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518818, 36.638416, 34.338894>,  <40.363529, 36.277626, 34.414494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518818, 36.638416, 34.338894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917635, -0.359435, 0.169570,
		0.085015, -0.239263, -0.967226,
		0.388226, 0.901976, -0.188998,
		40.635284, 36.909008, 34.282196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797325, 36.207878, 33.843422>,  <40.363529, 36.277626, 34.414494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797325, 36.207878, 33.843422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942905, 36.480434, 34.097427>,  <41.030254, 36.643967, 34.249832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942905, 36.480434, 34.097427>,  <40.797325, 36.207878, 33.843422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942905, 36.480434, 34.097427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849673, -0.522185, 0.073339,
		0.381570, 0.512866, -0.769008,
		0.363952, 0.681389, 0.635018,
		41.052090, 36.684853, 34.287933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482723, 36.436653, 33.664116>,  <40.797325, 36.207878, 33.843422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482723, 36.436653, 33.664116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454681, 36.476971, 34.061089>,  <41.437855, 36.501160, 34.299274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454681, 36.476971, 34.061089>,  <41.482723, 36.436653, 33.664116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454681, 36.476971, 34.061089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860335, -0.497430, 0.111295,
		0.504885, 0.861628, -0.051845,
		-0.070106, 0.100795, 0.992434,
		41.433651, 36.507210, 34.358818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204502, 36.551987, 33.937313>,  <41.482723, 36.436653, 33.664116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204502, 36.551987, 33.937313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952183, 36.402615, 34.209385>,  <41.800789, 36.312992, 34.372627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952183, 36.402615, 34.209385>,  <42.204502, 36.551987, 33.937313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952183, 36.402615, 34.209385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760841, -0.469778, 0.447694,
		0.152351, 0.799912, 0.580456,
		-0.630802, -0.373428, 0.680177,
		41.762943, 36.290585, 34.413437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222706, 36.753967, 34.708652>,  <42.204502, 36.551987, 33.937313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222706, 36.753967, 34.708652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108265, 36.372856, 34.667938>,  <42.039600, 36.144188, 34.643509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108265, 36.372856, 34.667938>,  <42.222706, 36.753967, 34.708652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108265, 36.372856, 34.667938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878977, -0.303257, 0.368014,
		-0.381504, 0.015819, 0.924232,
		-0.286102, -0.952777, -0.101789,
		42.022434, 36.087025, 34.637402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811222, 36.388725, 34.838528>,  <42.222706, 36.753967, 34.708652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811222, 36.388725, 34.838528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568409, 36.075775, 34.782818>,  <42.422722, 35.888004, 34.749393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568409, 36.075775, 34.782818>,  <42.811222, 36.388725, 34.838528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568409, 36.075775, 34.782818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728125, -0.617800, 0.296912,
		-0.318338, 0.078830, 0.944694,
		-0.607038, -0.782374, -0.139271,
		42.386299, 35.841064, 34.741035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850128, 35.801842, 35.365479>,  <42.811222, 36.388725, 34.838528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850128, 35.801842, 35.365479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726734, 35.684536, 35.003521>,  <42.652699, 35.614151, 34.786346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726734, 35.684536, 35.003521>,  <42.850128, 35.801842, 35.365479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726734, 35.684536, 35.003521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773371, -0.631194, -0.059089,
		-0.553834, -0.718046, 0.421519,
		-0.308488, -0.293265, -0.904893,
		42.634186, 35.596558, 34.732052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848560, 35.030952, 35.335648>,  <42.850128, 35.801842, 35.365479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848560, 35.030952, 35.335648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922386, 35.176708, 34.970539>,  <42.966682, 35.264160, 34.751472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922386, 35.176708, 34.970539>,  <42.848560, 35.030952, 35.335648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922386, 35.176708, 34.970539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692608, -0.707147, -0.142258,
		-0.697303, -0.605939, -0.382892,
		0.184561, 0.364391, -0.912774,
		42.977753, 35.286026, 34.696709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721977, 34.510212, 34.713387>,  <42.848560, 35.030952, 35.335648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721977, 34.510212, 34.713387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007778, 34.789848, 34.702423>,  <43.179260, 34.957630, 34.695847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007778, 34.789848, 34.702423>,  <42.721977, 34.510212, 34.713387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007778, 34.789848, 34.702423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695639, -0.705701, 0.134431,
		0.074639, -0.115116, -0.990544,
		0.714503, 0.699095, -0.027406,
		43.222130, 34.999577, 34.694202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131332, 34.176208, 34.230492>,  <42.721977, 34.510212, 34.713387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131332, 34.176208, 34.230492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334553, 34.443813, 34.447491>,  <43.456486, 34.604378, 34.577690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334553, 34.443813, 34.447491>,  <43.131332, 34.176208, 34.230492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334553, 34.443813, 34.447491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582611, -0.730814, 0.355633,
		0.634390, 0.135386, -0.761065,
		0.508050, 0.669015, 0.542498,
		43.486969, 34.644516, 34.610241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669765, 33.895405, 34.696037>,  <43.131332, 34.176208, 34.230492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669765, 33.895405, 34.696037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690868, 33.796360, 35.083008>,  <43.703529, 33.736935, 35.315189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690868, 33.796360, 35.083008>,  <43.669765, 33.895405, 34.696037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690868, 33.796360, 35.083008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979719, 0.200367, -0.002148,
		-0.193308, 0.947915, 0.253160,
		0.052761, -0.247610, 0.967422,
		43.706696, 33.722076, 35.373234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653866, 34.440598, 35.183491>,  <43.669765, 33.895405, 34.696037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653866, 34.440598, 35.183491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860954, 34.132397, 35.332241>,  <43.985207, 33.947475, 35.421494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860954, 34.132397, 35.332241>,  <43.653866, 34.440598, 35.183491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860954, 34.132397, 35.332241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846065, 0.525630, -0.088811,
		-0.127041, 0.360613, 0.924023,
		0.517721, -0.770501, 0.371879,
		44.016270, 33.901245, 35.443806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175182, 34.705242, 35.680077>,  <43.653866, 34.440598, 35.183491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175182, 34.705242, 35.680077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273853, 34.384872, 35.461838>,  <44.333054, 34.192650, 35.330894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273853, 34.384872, 35.461838>,  <44.175182, 34.705242, 35.680077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273853, 34.384872, 35.461838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799634, 0.486275, -0.352308,
		0.547482, -0.349375, 0.760395,
		0.246673, -0.800920, -0.545599,
		44.347855, 34.144596, 35.298157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731926, 35.165535, 35.405182>,  <44.175182, 34.705242, 35.680077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731926, 35.165535, 35.405182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039215, 35.022301, 35.617451>,  <45.223587, 34.936359, 35.744812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039215, 35.022301, 35.617451>,  <44.731926, 35.165535, 35.405182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039215, 35.022301, 35.617451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307425, -0.520752, -0.796434,
		0.561541, 0.774978, -0.289967,
		0.768220, -0.358088, 0.530671,
		45.269680, 34.914875, 35.776653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425533, 35.389729, 35.241562>,  <44.731926, 35.165535, 35.405182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425533, 35.389729, 35.241562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358963, 35.012527, 35.356831>,  <45.319019, 34.786205, 35.425991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358963, 35.012527, 35.356831>,  <45.425533, 35.389729, 35.241562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358963, 35.012527, 35.356831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246145, -0.322722, -0.913927,
		0.954838, -0.081171, 0.285826,
		-0.166427, -0.943007, 0.288167,
		45.309036, 34.729626, 35.443279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824314, 34.935780, 34.922913>,  <45.425533, 35.389729, 35.241562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824314, 34.935780, 34.922913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547573, 34.674519, 35.046024>,  <45.381527, 34.517761, 35.119892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547573, 34.674519, 35.046024>,  <45.824314, 34.935780, 34.922913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547573, 34.674519, 35.046024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055544, -0.473146, -0.879231,
		0.719898, -0.591205, 0.363627,
		-0.691854, -0.653154, 0.307778,
		45.340015, 34.478573, 35.138359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186119, 35.394943, 35.376858>,  <45.824314, 34.935780, 34.922913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186119, 35.394943, 35.376858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254807, 35.061314, 35.167160>,  <46.296021, 34.861134, 35.041344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254807, 35.061314, 35.167160>,  <46.186119, 35.394943, 35.376858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254807, 35.061314, 35.167160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970710, 0.234021, -0.054365,
		0.168028, -0.499550, 0.849833,
		0.171721, -0.834076, -0.524241,
		46.306324, 34.811092, 35.009888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.640991, 34.994293, 35.784180>,  <46.186119, 35.394943, 35.376858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.640991, 34.994293, 35.784180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.666687, 34.963539, 35.386192>,  <46.682102, 34.945087, 35.147400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.666687, 34.963539, 35.386192>,  <46.640991, 34.994293, 35.784180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.666687, 34.963539, 35.386192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986541, 0.155119, 0.051706,
		0.150364, -0.984899, 0.085811,
		0.064236, -0.076881, -0.994969,
		46.685959, 34.940475, 35.087700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096642, 34.394653, 35.512844>,  <46.640991, 34.994293, 35.784180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096642, 34.394653, 35.512844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.090240, 34.734207, 35.301514>,  <47.086399, 34.937939, 35.174713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.090240, 34.734207, 35.301514>,  <47.096642, 34.394653, 35.512844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.090240, 34.734207, 35.301514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991808, 0.080447, 0.099219,
		0.126728, -0.522414, -0.843222,
		-0.016002, 0.848889, -0.528329,
		47.085442, 34.988873, 35.143013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.662449, 34.366814, 35.027378>,  <47.096642, 34.394653, 35.512844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.662449, 34.366814, 35.027378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.568562, 34.749912, 35.093876>,  <47.512230, 34.979771, 35.133774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.568562, 34.749912, 35.093876>,  <47.662449, 34.366814, 35.027378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.568562, 34.749912, 35.093876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971470, 0.225150, 0.074520,
		0.033942, 0.178989, -0.983265,
		-0.234720, 0.957742, 0.166241,
		47.498146, 35.037235, 35.143749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.112362, 34.906860, 35.014893>,  <47.662449, 34.366814, 35.027378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.112362, 34.906860, 35.014893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.888042, 35.238033, 35.016914>,  <47.753452, 35.436737, 35.018127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.888042, 35.238033, 35.016914>,  <48.112362, 34.906860, 35.014893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.888042, 35.238033, 35.016914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825696, 0.558812, 0.077171,
		0.061069, 0.047450, -0.997005,
		-0.560800, 0.827936, 0.005053,
		47.719803, 35.486416, 35.018429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.277527, 34.217693, 24.860315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922485, 34.155884, 25.033884>,  <33.709461, 34.118797, 25.138025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922485, 34.155884, 25.033884>,  <34.277527, 34.217693, 24.860315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922485, 34.155884, 25.033884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443234, -0.542872, 0.713326,
		0.125336, 0.825477, 0.550344,
		-0.887601, -0.154526, 0.433921,
		33.656204, 34.109528, 25.164061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356400, 34.506222, 25.517653>,  <34.277527, 34.217693, 24.860315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356400, 34.506222, 25.517653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048698, 34.252781, 25.550642>,  <33.864079, 34.100716, 25.570436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048698, 34.252781, 25.550642>,  <34.356400, 34.506222, 25.517653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048698, 34.252781, 25.550642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469259, -0.472621, 0.745939,
		-0.433650, 0.612515, 0.660888,
		-0.769248, -0.633604, 0.082476,
		33.817924, 34.062698, 25.575384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943127, 34.740757, 26.125402>,  <34.356400, 34.506222, 25.517653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943127, 34.740757, 26.125402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.855564, 34.355103, 26.065382>,  <33.803024, 34.123711, 26.029369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.855564, 34.355103, 26.065382>,  <33.943127, 34.740757, 26.125402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855564, 34.355103, 26.065382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475792, -0.239733, 0.846257,
		-0.851880, 0.113862, 0.511210,
		-0.218911, -0.964139, -0.150049,
		33.789890, 34.065861, 26.020367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690804, 34.530148, 26.727585>,  <33.943127, 34.740757, 26.125402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690804, 34.530148, 26.727585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.789124, 34.181835, 26.557259>,  <33.848114, 33.972847, 26.455063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.789124, 34.181835, 26.557259>,  <33.690804, 34.530148, 26.727585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789124, 34.181835, 26.557259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616796, -0.198376, 0.761715,
		-0.747760, -0.449870, 0.488336,
		0.245798, -0.870784, -0.425816,
		33.862862, 33.920601, 26.429514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542912, 34.068729, 27.257351>,  <33.690804, 34.530148, 26.727585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542912, 34.068729, 27.257351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790073, 33.871086, 27.012711>,  <33.938370, 33.752502, 26.865927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.790073, 33.871086, 27.012711>,  <33.542912, 34.068729, 27.257351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790073, 33.871086, 27.012711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500857, -0.352258, 0.790606,
		-0.606083, -0.794842, 0.029814,
		0.617905, -0.494106, -0.611599,
		33.975445, 33.722855, 26.829231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559666, 33.341541, 27.442175>,  <33.542912, 34.068729, 27.257351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559666, 33.341541, 27.442175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.905293, 33.394974, 27.248047>,  <34.112671, 33.427032, 27.131569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.905293, 33.394974, 27.248047>,  <33.559666, 33.341541, 27.442175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905293, 33.394974, 27.248047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500024, -0.338764, 0.797004,
		-0.057941, -0.931340, -0.359512,
		0.864071, 0.133585, -0.485321,
		34.164513, 33.435051, 27.102451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978165, 32.749687, 27.633205>,  <33.559666, 33.341541, 27.442175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978165, 32.749687, 27.633205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.229424, 33.021149, 27.480961>,  <34.380177, 33.184025, 27.389614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.229424, 33.021149, 27.480961>,  <33.978165, 32.749687, 27.633205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229424, 33.021149, 27.480961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663146, -0.211047, 0.718120,
		0.407029, -0.703482, -0.582615,
		0.628144, 0.678654, -0.380609,
		34.417866, 33.224747, 27.366777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630428, 32.396660, 27.590591>,  <33.978165, 32.749687, 27.633205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630428, 32.396660, 27.590591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708233, 32.788910, 27.581232>,  <34.754917, 33.024258, 27.575617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708233, 32.788910, 27.581232>,  <34.630428, 32.396660, 27.590591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708233, 32.788910, 27.581232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658134, -0.112786, 0.744405,
		0.727340, -0.160197, -0.667318,
		0.194515, 0.980620, -0.023398,
		34.766586, 33.083096, 27.574213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368488, 32.423965, 27.634884>,  <34.630428, 32.396660, 27.590591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368488, 32.423965, 27.634884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207928, 32.769497, 27.756653>,  <35.111591, 32.976818, 27.829714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207928, 32.769497, 27.756653>,  <35.368488, 32.423965, 27.634884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207928, 32.769497, 27.756653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568114, -0.025888, 0.822542,
		0.718420, 0.503114, -0.480364,
		-0.401397, 0.863832, 0.304425,
		35.087509, 33.028648, 27.847980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927410, 32.790325, 28.001368>,  <35.368488, 32.423965, 27.634884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927410, 32.790325, 28.001368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624489, 33.030327, 28.104502>,  <35.442734, 33.174328, 28.166382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624489, 33.030327, 28.104502>,  <35.927410, 32.790325, 28.001368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624489, 33.030327, 28.104502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469405, 0.225622, 0.853671,
		0.454034, 0.767520, -0.452511,
		-0.757306, 0.600007, 0.257838,
		35.397297, 33.210327, 28.181852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226837, 33.459717, 28.169014>,  <35.927410, 32.790325, 28.001368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226837, 33.459717, 28.169014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.867725, 33.428230, 28.342358>,  <35.652260, 33.409336, 28.446363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.867725, 33.428230, 28.342358>,  <36.226837, 33.459717, 28.169014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867725, 33.428230, 28.342358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392585, 0.303052, 0.868353,
		-0.199687, 0.949717, -0.241169,
		-0.897776, -0.078720, 0.433360,
		35.598392, 33.404613, 28.472366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171116, 34.028107, 28.521557>,  <36.226837, 33.459717, 28.169014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171116, 34.028107, 28.521557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914188, 33.769421, 28.686083>,  <35.760033, 33.614208, 28.784798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914188, 33.769421, 28.686083>,  <36.171116, 34.028107, 28.521557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914188, 33.769421, 28.686083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376852, 0.200810, 0.904244,
		-0.667385, 0.735822, 0.114731,
		-0.642323, -0.646716, 0.411314,
		35.721493, 33.575405, 28.809477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866837, 34.313332, 29.145844>,  <36.171116, 34.028107, 28.521557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866837, 34.313332, 29.145844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813587, 33.920578, 29.199768>,  <35.781635, 33.684925, 29.232122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813587, 33.920578, 29.199768>,  <35.866837, 34.313332, 29.145844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813587, 33.920578, 29.199768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236915, 0.100550, 0.966313,
		-0.962366, 0.160580, 0.219238,
		-0.133126, -0.981888, 0.134810,
		35.773651, 33.626011, 29.240211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454903, 34.277618, 29.780615>,  <35.866837, 34.313332, 29.145844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454903, 34.277618, 29.780615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.621738, 33.919621, 29.717339>,  <35.721840, 33.704823, 29.679373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.621738, 33.919621, 29.717339>,  <35.454903, 34.277618, 29.780615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621738, 33.919621, 29.717339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476948, 0.067377, 0.876345,
		-0.773663, -0.440966, 0.454967,
		0.417092, -0.894992, -0.158191,
		35.746864, 33.651123, 29.669882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510109, 34.036373, 30.442347>,  <35.454903, 34.277618, 29.780615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510109, 34.036373, 30.442347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769066, 33.787086, 30.266850>,  <35.924438, 33.637516, 30.161552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769066, 33.787086, 30.266850>,  <35.510109, 34.036373, 30.442347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769066, 33.787086, 30.266850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579593, 0.028741, 0.814399,
		-0.494936, -0.781523, 0.379817,
		0.647388, -0.623214, -0.438740,
		35.963284, 33.600121, 30.135227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561375, 33.544544, 30.885509>,  <35.510109, 34.036373, 30.442347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561375, 33.544544, 30.885509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889221, 33.530479, 30.656775>,  <36.085930, 33.522041, 30.519533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889221, 33.530479, 30.656775>,  <35.561375, 33.544544, 30.885509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889221, 33.530479, 30.656775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572770, 0.073082, 0.816452,
		0.013078, -0.996705, 0.080042,
		0.819612, -0.035167, -0.571838,
		36.135105, 33.519932, 30.485224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987236, 32.958904, 31.132273>,  <35.561375, 33.544544, 30.885509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987236, 32.958904, 31.132273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249149, 33.194176, 30.942408>,  <36.406300, 33.335339, 30.828489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249149, 33.194176, 30.942408>,  <35.987236, 32.958904, 31.132273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249149, 33.194176, 30.942408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534321, 0.083943, 0.841103,
		0.534562, -0.804364, -0.259310,
		0.654786, 0.588177, -0.474661,
		36.445583, 33.370628, 30.800009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716869, 32.728661, 31.352701>,  <35.987236, 32.958904, 31.132273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716869, 32.728661, 31.352701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733467, 33.093838, 31.190315>,  <36.743423, 33.312946, 31.092884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733467, 33.093838, 31.190315>,  <36.716869, 32.728661, 31.352701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733467, 33.093838, 31.190315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476962, 0.338932, 0.810946,
		0.877944, -0.227279, -0.421377,
		0.041492, 0.912946, -0.405966,
		36.745914, 33.367722, 31.068525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496574, 32.861813, 31.428673>,  <36.716869, 32.728661, 31.352701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496574, 32.861813, 31.428673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316532, 33.211391, 31.355328>,  <37.208508, 33.421139, 31.311321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316532, 33.211391, 31.355328>,  <37.496574, 32.861813, 31.428673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316532, 33.211391, 31.355328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392637, 0.378116, 0.838370,
		0.802023, 0.305360, -0.513336,
		-0.450106, 0.873947, -0.183362,
		37.181499, 33.473576, 31.300320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020874, 33.302822, 31.459749>,  <37.496574, 32.861813, 31.428673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020874, 33.302822, 31.459749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680969, 33.503063, 31.525841>,  <37.477028, 33.623207, 31.565495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680969, 33.503063, 31.525841>,  <38.020874, 33.302822, 31.459749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680969, 33.503063, 31.525841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385937, 0.377258, 0.841861,
		0.359105, 0.779148, -0.513781,
		-0.849762, 0.500604, 0.165227,
		37.426041, 33.653244, 31.575409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255627, 34.033653, 31.689400>,  <38.020874, 33.302822, 31.459749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255627, 34.033653, 31.689400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888008, 33.940258, 31.816422>,  <37.667439, 33.884220, 31.892635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888008, 33.940258, 31.816422>,  <38.255627, 34.033653, 31.689400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888008, 33.940258, 31.816422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270080, 0.213747, 0.938812,
		-0.287080, 0.948575, -0.133381,
		-0.919044, -0.233491, 0.317554,
		37.612293, 33.870213, 31.911688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010956, 34.481186, 32.277130>,  <38.255627, 34.033653, 31.689400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010956, 34.481186, 32.277130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.766960, 34.164307, 32.284538>,  <37.620564, 33.974178, 32.288982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.766960, 34.164307, 32.284538>,  <38.010956, 34.481186, 32.277130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766960, 34.164307, 32.284538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088587, -0.044944, 0.995054,
		-0.787445, 0.608610, 0.097594,
		-0.609986, -0.792196, 0.018524,
		37.583965, 33.926647, 32.290096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354275, 35.102455, 32.660358>,  <38.010956, 34.481186, 32.277130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354275, 35.102455, 32.660358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715977, 35.253632, 32.739838>,  <38.932999, 35.344337, 32.787525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.715977, 35.253632, 32.739838>,  <38.354275, 35.102455, 32.660358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715977, 35.253632, 32.739838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103875, 0.646079, -0.756169,
		-0.414160, 0.663132, 0.623480,
		0.904258, 0.377939, 0.198697,
		38.987255, 35.367012, 32.799446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299763, 35.794643, 32.776512>,  <38.354275, 35.102455, 32.660358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299763, 35.794643, 32.776512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679440, 35.728451, 32.669445>,  <38.907246, 35.688736, 32.605206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679440, 35.728451, 32.669445>,  <38.299763, 35.794643, 32.776512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679440, 35.728451, 32.669445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154246, 0.496726, -0.854091,
		0.274294, 0.851985, 0.445965,
		0.949195, -0.165484, -0.267664,
		38.964199, 35.678806, 32.589146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536930, 36.421692, 32.438538>,  <38.299763, 35.794643, 32.776512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536930, 36.421692, 32.438538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785931, 36.139545, 32.302921>,  <38.935333, 35.970257, 32.221554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785931, 36.139545, 32.302921>,  <38.536930, 36.421692, 32.438538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785931, 36.139545, 32.302921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113598, 0.347183, -0.930892,
		0.774327, 0.617999, 0.135995,
		0.622506, -0.705366, -0.339037,
		38.972683, 35.927937, 32.201210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056355, 36.747841, 31.996367>,  <38.536930, 36.421692, 32.438538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056355, 36.747841, 31.996367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.992466, 36.361507, 31.914724>,  <38.954132, 36.129707, 31.865740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.992466, 36.361507, 31.914724>,  <39.056355, 36.747841, 31.996367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992466, 36.361507, 31.914724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087062, 0.219737, -0.971667,
		0.983315, -0.137430, -0.119184,
		-0.159725, -0.965830, -0.204106,
		38.944550, 36.071758, 31.853493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155216, 36.674644, 31.183514>,  <39.056355, 36.747841, 31.996367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155216, 36.674644, 31.183514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031403, 36.304623, 31.271576>,  <38.957115, 36.082611, 31.324413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031403, 36.304623, 31.271576>,  <39.155216, 36.674644, 31.183514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031403, 36.304623, 31.271576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311644, -0.120051, -0.942585,
		0.898370, -0.360370, -0.251127,
		-0.309531, -0.925052, 0.220157,
		38.938541, 36.027107, 31.337624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332878, 36.285530, 30.651014>,  <39.155216, 36.674644, 31.183514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332878, 36.285530, 30.651014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036701, 36.079132, 30.823294>,  <38.858997, 35.955296, 30.926661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036701, 36.079132, 30.823294>,  <39.332878, 36.285530, 30.651014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036701, 36.079132, 30.823294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488173, -0.027598, -0.872310,
		0.461992, -0.856149, -0.231459,
		-0.740439, -0.515992, 0.430699,
		38.814568, 35.924335, 30.952503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233719, 35.694504, 30.246355>,  <39.332878, 36.285530, 30.651014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233719, 35.694504, 30.246355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.885197, 35.738937, 30.437557>,  <38.676083, 35.765598, 30.552279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.885197, 35.738937, 30.437557>,  <39.233719, 35.694504, 30.246355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885197, 35.738937, 30.437557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474500, 0.057825, -0.878354,
		-0.125215, -0.992127, 0.002328,
		-0.871305, 0.111088, 0.478005,
		38.623806, 35.772263, 30.580959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861301, 35.215191, 29.875698>,  <39.233719, 35.694504, 30.246355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861301, 35.215191, 29.875698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604984, 35.473042, 30.042473>,  <38.451195, 35.627750, 30.142538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604984, 35.473042, 30.042473>,  <38.861301, 35.215191, 29.875698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604984, 35.473042, 30.042473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545233, 0.000202, -0.838285,
		-0.540464, -0.764499, 0.351341,
		-0.640797, 0.644626, 0.416939,
		38.412746, 35.666428, 30.167555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314552, 34.949589, 29.749287>,  <38.861301, 35.215191, 29.875698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314552, 34.949589, 29.749287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190598, 35.316029, 29.851061>,  <38.116226, 35.535892, 29.912125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190598, 35.316029, 29.851061>,  <38.314552, 34.949589, 29.749287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190598, 35.316029, 29.851061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601846, 0.018161, -0.798406,
		-0.736038, -0.400545, 0.545722,
		-0.309887, 0.916097, 0.254434,
		38.097633, 35.590858, 29.927391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576599, 34.844494, 29.653624>,  <38.314552, 34.949589, 29.749287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576599, 34.844494, 29.653624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685211, 35.228191, 29.622349>,  <37.750378, 35.458412, 29.603584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685211, 35.228191, 29.622349>,  <37.576599, 34.844494, 29.653624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685211, 35.228191, 29.622349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753486, 0.161337, -0.637361,
		-0.598774, 0.231976, 0.766588,
		0.271532, 0.959249, -0.078186,
		37.766670, 35.515965, 29.598892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990871, 35.146107, 29.574677>,  <37.576599, 34.844494, 29.653624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990871, 35.146107, 29.574677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255341, 35.423756, 29.460796>,  <37.414021, 35.590343, 29.392467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255341, 35.423756, 29.460796>,  <36.990871, 35.146107, 29.574677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255341, 35.423756, 29.460796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582781, 0.236200, -0.777545,
		-0.472462, 0.680007, 0.560687,
		0.661171, 0.694118, -0.284700,
		37.453693, 35.631992, 29.375387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656082, 35.742332, 29.525595>,  <36.990871, 35.146107, 29.574677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656082, 35.742332, 29.525595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979382, 35.775131, 29.292353>,  <37.173363, 35.794811, 29.152407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979382, 35.775131, 29.292353>,  <36.656082, 35.742332, 29.525595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979382, 35.775131, 29.292353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588625, 0.085567, -0.803865,
		-0.016021, 0.992952, 0.117425,
		0.808248, 0.081998, -0.583105,
		37.221855, 35.799732, 29.117420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567955, 36.434521, 29.180504>,  <36.656082, 35.742332, 29.525595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567955, 36.434521, 29.180504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795292, 36.197037, 28.952646>,  <36.931694, 36.054546, 28.815931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795292, 36.197037, 28.952646>,  <36.567955, 36.434521, 29.180504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795292, 36.197037, 28.952646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473075, 0.330652, -0.816620,
		0.673188, 0.733607, -0.092944,
		0.568346, -0.593709, -0.569642,
		36.965797, 36.018925, 28.781754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885464, 36.875278, 28.695700>,  <36.567955, 36.434521, 29.180504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885464, 36.875278, 28.695700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894039, 36.509216, 28.534687>,  <36.899185, 36.289577, 28.438080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894039, 36.509216, 28.534687>,  <36.885464, 36.875278, 28.695700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894039, 36.509216, 28.534687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368168, 0.367104, -0.854218,
		0.929512, 0.166510, -0.329061,
		0.021436, -0.915155, -0.402531,
		36.900471, 36.234669, 28.413927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015850, 36.976452, 27.980396>,  <36.885464, 36.875278, 28.695700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015850, 36.976452, 27.980396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880657, 36.599991, 27.981527>,  <36.799541, 36.374115, 27.982206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880657, 36.599991, 27.981527>,  <37.015850, 36.976452, 27.980396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880657, 36.599991, 27.981527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229465, 0.079490, -0.970066,
		0.912751, -0.328514, -0.242827,
		-0.337982, -0.941148, 0.002828,
		36.779263, 36.317646, 27.982376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217525, 36.749466, 27.346100>,  <37.015850, 36.976452, 27.980396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217525, 36.749466, 27.346100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928009, 36.495667, 27.454567>,  <36.754299, 36.343388, 27.519648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928009, 36.495667, 27.454567>,  <37.217525, 36.749466, 27.346100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928009, 36.495667, 27.454567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387476, 0.048569, -0.920599,
		0.570953, -0.771393, -0.281009,
		-0.723792, -0.634503, 0.271166,
		36.710873, 36.305317, 27.535917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212330, 36.342209, 26.830013>,  <37.217525, 36.749466, 27.346100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212330, 36.342209, 26.830013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.855980, 36.257248, 26.990629>,  <36.642170, 36.206272, 27.086998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.855980, 36.257248, 26.990629>,  <37.212330, 36.342209, 26.830013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855980, 36.257248, 26.990629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400961, -0.047749, -0.914850,
		0.213487, -0.976016, -0.042626,
		-0.890872, -0.212400, 0.401538,
		36.588718, 36.193527, 27.111090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961254, 35.803093, 26.374762>,  <37.212330, 36.342209, 26.830013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961254, 35.803093, 26.374762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658562, 35.987408, 26.560247>,  <36.476944, 36.097996, 26.671539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658562, 35.987408, 26.560247>,  <36.961254, 35.803093, 26.374762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658562, 35.987408, 26.560247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540906, -0.042993, -0.839984,
		-0.367117, -0.886469, 0.281777,
		-0.756733, 0.460787, 0.463712,
		36.431541, 36.125645, 26.699362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.362419, 35.417442, 26.127724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.230869, 35.755165, 26.296953>,  <36.151939, 35.957798, 26.398491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.230869, 35.755165, 26.296953>,  <36.362419, 35.417442, 26.127724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230869, 35.755165, 26.296953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767309, 0.022261, -0.640890,
		-0.550525, -0.535399, 0.640523,
		-0.328874, 0.844305, 0.423072,
		36.132206, 36.008457, 26.423876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582691, 35.259541, 26.264812>,  <36.362419, 35.417442, 26.127724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582691, 35.259541, 26.264812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667000, 35.647343, 26.214785>,  <35.717587, 35.880024, 26.184767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667000, 35.647343, 26.214785>,  <35.582691, 35.259541, 26.264812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667000, 35.647343, 26.214785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700113, 0.060425, -0.711471,
		-0.682214, 0.237524, 0.691496,
		0.210775, 0.969501, -0.125071,
		35.730232, 35.938194, 26.177263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915676, 35.657097, 26.203159>,  <35.582691, 35.259541, 26.264812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915676, 35.657097, 26.203159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172947, 35.935787, 26.076099>,  <35.327309, 36.103001, 25.999865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172947, 35.935787, 26.076099>,  <34.915676, 35.657097, 26.203159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172947, 35.935787, 26.076099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683849, 0.336013, -0.647646,
		-0.344499, 0.633772, 0.692570,
		0.643172, 0.696727, -0.317649,
		35.365898, 36.144806, 25.980804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500664, 36.191948, 26.041204>,  <34.915676, 35.657097, 26.203159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500664, 36.191948, 26.041204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.848820, 36.210049, 25.845095>,  <35.057713, 36.220909, 25.727428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.848820, 36.210049, 25.845095>,  <34.500664, 36.191948, 26.041204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848820, 36.210049, 25.845095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476634, 0.327097, -0.815983,
		0.123446, 0.943907, 0.306270,
		0.870392, 0.045249, -0.490277,
		35.109936, 36.223621, 25.698011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539444, 36.884399, 25.652813>,  <34.500664, 36.191948, 26.041204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539444, 36.884399, 25.652813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799236, 36.631298, 25.484148>,  <34.955112, 36.479439, 25.382950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.799236, 36.631298, 25.484148>,  <34.539444, 36.884399, 25.652813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799236, 36.631298, 25.484148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067892, 0.504071, -0.860989,
		0.757339, 0.587825, 0.284427,
		0.649483, -0.632751, -0.421661,
		34.994080, 36.441471, 25.357649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766960, 37.212261, 25.089144>,  <34.539444, 36.884399, 25.652813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766960, 37.212261, 25.089144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923317, 36.857418, 24.990963>,  <35.017132, 36.644512, 24.932055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923317, 36.857418, 24.990963>,  <34.766960, 37.212261, 25.089144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923317, 36.857418, 24.990963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004562, 0.268531, -0.963261,
		0.920427, 0.375407, 0.109012,
		0.390888, -0.887108, -0.245450,
		35.040585, 36.591286, 24.917328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284565, 37.270485, 24.498589>,  <34.766960, 37.212261, 25.089144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284565, 37.270485, 24.498589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198898, 36.879990, 24.485350>,  <35.147499, 36.645695, 24.477406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198898, 36.879990, 24.485350>,  <35.284565, 37.270485, 24.498589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198898, 36.879990, 24.485350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100774, 0.055788, -0.993344,
		0.971584, -0.209410, -0.110327,
		-0.214171, -0.976235, -0.033099,
		35.134647, 36.587120, 24.475420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666988, 37.056591, 23.928082>,  <35.284565, 37.270485, 24.498589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666988, 37.056591, 23.928082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403587, 36.762764, 23.993547>,  <35.245544, 36.586468, 24.032827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403587, 36.762764, 23.993547>,  <35.666988, 37.056591, 23.928082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403587, 36.762764, 23.993547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118060, -0.113949, -0.986447,
		0.743257, -0.668904, -0.011687,
		-0.658507, -0.734564, 0.163664,
		35.206036, 36.542397, 24.042646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822903, 36.660343, 23.482769>,  <35.666988, 37.056591, 23.928082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822903, 36.660343, 23.482769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450905, 36.547363, 23.576862>,  <35.227707, 36.479576, 23.633318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450905, 36.547363, 23.576862>,  <35.822903, 36.660343, 23.482769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450905, 36.547363, 23.576862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249754, 0.016015, -0.968177,
		0.269698, -0.959147, -0.085438,
		-0.929993, -0.282453, 0.235231,
		35.171906, 36.462627, 23.647432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705875, 35.982132, 23.142128>,  <35.822903, 36.660343, 23.482769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705875, 35.982132, 23.142128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351906, 36.164860, 23.178421>,  <35.139526, 36.274498, 23.200197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351906, 36.164860, 23.178421>,  <35.705875, 35.982132, 23.142128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351906, 36.164860, 23.178421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137282, -0.069678, -0.988078,
		-0.445052, -0.886826, 0.124372,
		-0.884920, 0.456820, 0.090735,
		35.086430, 36.301907, 23.205641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295025, 35.540840, 22.778816>,  <35.705875, 35.982132, 23.142128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295025, 35.540840, 22.778816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094131, 35.885754, 22.804813>,  <34.973595, 36.092701, 22.820412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094131, 35.885754, 22.804813>,  <35.295025, 35.540840, 22.778816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094131, 35.885754, 22.804813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413000, -0.173154, -0.894119,
		-0.759733, -0.475897, 0.443089,
		-0.502231, 0.862288, 0.064994,
		34.943462, 36.144440, 22.824312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651154, 35.429901, 22.419542>,  <35.295025, 35.540840, 22.778816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651154, 35.429901, 22.419542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642258, 35.829784, 22.415892>,  <34.636921, 36.069714, 22.413702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642258, 35.829784, 22.415892>,  <34.651154, 35.429901, 22.419542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642258, 35.829784, 22.415892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372738, -0.016761, -0.927786,
		-0.927670, -0.017230, 0.373003,
		-0.022238, 0.999711, -0.009127,
		34.635586, 36.129696, 22.413155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078033, 35.593288, 22.039133>,  <34.651154, 35.429901, 22.419542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078033, 35.593288, 22.039133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307205, 35.920429, 22.017712>,  <34.444710, 36.116714, 22.004858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307205, 35.920429, 22.017712>,  <34.078033, 35.593288, 22.039133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307205, 35.920429, 22.017712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356506, 0.189840, -0.914803,
		-0.738006, 0.543212, 0.400334,
		0.572931, 0.817852, -0.053555,
		34.479084, 36.165787, 22.001644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592842, 36.051609, 21.894882>,  <34.078033, 35.593288, 22.039133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592842, 36.051609, 21.894882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942844, 36.212738, 21.787474>,  <34.152847, 36.309414, 21.723028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942844, 36.212738, 21.787474>,  <33.592842, 36.051609, 21.894882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942844, 36.212738, 21.787474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439433, 0.428132, -0.789684,
		-0.203138, 0.808974, 0.551630,
		0.875005, 0.402819, -0.268520,
		34.205345, 36.333584, 21.706917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519253, 36.847775, 21.897406>,  <33.592842, 36.051609, 21.894882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519253, 36.847775, 21.897406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.824265, 36.753750, 21.656307>,  <34.007271, 36.697334, 21.511648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.824265, 36.753750, 21.656307>,  <33.519253, 36.847775, 21.897406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824265, 36.753750, 21.656307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395775, 0.567506, -0.722010,
		0.511777, 0.789103, 0.339708,
		0.762526, -0.235060, -0.602744,
		34.053024, 36.683231, 21.475485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652748, 37.547482, 21.735994>,  <33.519253, 36.847775, 21.897406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652748, 37.547482, 21.735994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853313, 37.317432, 21.477436>,  <33.973652, 37.179405, 21.322302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.853313, 37.317432, 21.477436>,  <33.652748, 37.547482, 21.735994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853313, 37.317432, 21.477436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042588, 0.729786, -0.682348,
		0.864162, 0.369664, 0.341428,
		0.501409, -0.575118, -0.646396,
		34.003735, 37.144897, 21.283518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212582, 37.988064, 21.412342>,  <33.652748, 37.547482, 21.735994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212582, 37.988064, 21.412342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117554, 37.674713, 21.182602>,  <34.060535, 37.486702, 21.044758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117554, 37.674713, 21.182602>,  <34.212582, 37.988064, 21.412342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117554, 37.674713, 21.182602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216530, 0.619109, -0.754864,
		0.946930, -0.054968, -0.316706,
		-0.237569, -0.783379, -0.574350,
		34.046284, 37.439701, 21.010298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487720, 38.208763, 20.888695>,  <34.212582, 37.988064, 21.412342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487720, 38.208763, 20.888695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261162, 37.910599, 20.748096>,  <34.125225, 37.731701, 20.663738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261162, 37.910599, 20.748096>,  <34.487720, 38.208763, 20.888695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261162, 37.910599, 20.748096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255669, 0.564391, -0.784918,
		0.783469, -0.354711, -0.510251,
		-0.566400, -0.745414, -0.351495,
		34.091240, 37.686974, 20.642649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707634, 38.007832, 20.263140>,  <34.487720, 38.208763, 20.888695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707634, 38.007832, 20.263140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316742, 37.926140, 20.286173>,  <34.082207, 37.877125, 20.299994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316742, 37.926140, 20.286173>,  <34.707634, 38.007832, 20.263140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316742, 37.926140, 20.286173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165175, 0.561799, -0.810616,
		0.133198, -0.801669, -0.582739,
		-0.977228, -0.204227, 0.057586,
		34.023575, 37.864872, 20.303448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492519, 37.956253, 19.477343>,  <34.707634, 38.007832, 20.263140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492519, 37.956253, 19.477343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163166, 38.012642, 19.697222>,  <33.965553, 38.046474, 19.829149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163166, 38.012642, 19.697222>,  <34.492519, 37.956253, 19.477343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163166, 38.012642, 19.697222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343279, 0.647604, -0.680271,
		-0.451883, -0.748824, -0.484836,
		-0.823384, 0.140968, 0.549697,
		33.916149, 38.054932, 19.862131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923134, 37.842384, 19.024805>,  <34.492519, 37.956253, 19.477343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923134, 37.842384, 19.024805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778324, 38.045643, 19.337400>,  <33.691441, 38.167599, 19.524958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778324, 38.045643, 19.337400>,  <33.923134, 37.842384, 19.024805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778324, 38.045643, 19.337400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448138, 0.640244, -0.623906,
		-0.817382, -0.576082, -0.004060,
		-0.362020, 0.508151, 0.781488,
		33.669720, 38.198090, 19.571848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260063, 37.853905, 18.973494>,  <33.923134, 37.842384, 19.024805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260063, 37.853905, 18.973494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.344093, 38.171352, 19.201891>,  <33.394512, 38.361820, 19.338928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.344093, 38.171352, 19.201891>,  <33.260063, 37.853905, 18.973494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344093, 38.171352, 19.201891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560795, 0.576210, -0.594551,
		-0.800861, -0.195310, 0.566106,
		0.210075, 0.793623, 0.570992,
		33.407116, 38.409439, 19.373188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599281, 38.212975, 19.055801>,  <33.260063, 37.853905, 18.973494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599281, 38.212975, 19.055801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895050, 38.476234, 19.112503>,  <33.072510, 38.634190, 19.146524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.895050, 38.476234, 19.112503>,  <32.599281, 38.212975, 19.055801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895050, 38.476234, 19.112503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437810, 0.630020, -0.641402,
		-0.511446, 0.412206, 0.753995,
		0.739422, 0.658150, 0.141753,
		33.116879, 38.673679, 19.155029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280518, 38.786221, 19.143885>,  <32.599281, 38.212975, 19.055801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280518, 38.786221, 19.143885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647449, 38.905754, 19.038649>,  <32.867607, 38.977474, 18.975508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647449, 38.905754, 19.038649>,  <32.280518, 38.786221, 19.143885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647449, 38.905754, 19.038649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363798, 0.360650, -0.858827,
		-0.161759, 0.883534, 0.439546,
		0.917325, 0.298829, -0.263089,
		32.922646, 38.995403, 18.959723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614185, 39.034866, 19.172459>,  <32.280518, 38.786221, 19.143885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614185, 39.034866, 19.172459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223829, 38.950432, 19.194672>,  <30.989616, 38.899773, 19.208000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223829, 38.950432, 19.194672>,  <31.614185, 39.034866, 19.172459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223829, 38.950432, 19.194672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104822, -0.230067, 0.967513,
		-0.191453, 0.950006, 0.246646,
		-0.975888, -0.211087, 0.055534,
		30.931063, 38.887104, 19.211332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426357, 39.342430, 19.852917>,  <31.614185, 39.034866, 19.172459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426357, 39.342430, 19.852917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.146954, 39.073345, 19.755314>,  <30.979311, 38.911892, 19.696753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.146954, 39.073345, 19.755314>,  <31.426357, 39.342430, 19.852917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146954, 39.073345, 19.755314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024546, -0.363303, 0.931348,
		-0.715179, 0.644567, 0.270283,
		-0.698510, -0.672715, -0.244005,
		30.937401, 38.871532, 19.682112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947742, 39.403290, 20.475998>,  <31.426357, 39.342430, 19.852917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947742, 39.403290, 20.475998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.894600, 39.040211, 20.316786>,  <30.862715, 38.822361, 20.221258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.894600, 39.040211, 20.316786>,  <30.947742, 39.403290, 20.475998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894600, 39.040211, 20.316786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093545, -0.411279, 0.906696,
		-0.986711, 0.083229, 0.139553,
		-0.132859, -0.907701, -0.398028,
		30.854742, 38.767899, 20.197378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413429, 39.093956, 20.825682>,  <30.947742, 39.403290, 20.475998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413429, 39.093956, 20.825682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.626173, 38.796394, 20.663828>,  <30.753819, 38.617855, 20.566715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.626173, 38.796394, 20.663828>,  <30.413429, 39.093956, 20.825682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626173, 38.796394, 20.663828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090310, -0.524922, 0.846346,
		-0.842004, -0.413594, -0.346367,
		0.531859, -0.743907, -0.404634,
		30.785730, 38.573223, 20.542439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040627, 38.507278, 21.001814>,  <30.413429, 39.093956, 20.825682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040627, 38.507278, 21.001814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.426458, 38.408596, 20.964455>,  <30.657957, 38.349388, 20.942039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.426458, 38.408596, 20.964455>,  <30.040627, 38.507278, 21.001814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426458, 38.408596, 20.964455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084967, -0.625749, 0.775383,
		-0.249735, -0.739983, -0.624546,
		0.964579, -0.246706, -0.093397,
		30.715832, 38.334583, 20.936436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136518, 37.942513, 21.401962>,  <30.040627, 38.507278, 21.001814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136518, 37.942513, 21.401962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520868, 37.979744, 21.297613>,  <30.751478, 38.002083, 21.235003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520868, 37.979744, 21.297613>,  <30.136518, 37.942513, 21.401962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520868, 37.979744, 21.297613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256820, -0.652144, 0.713268,
		-0.103741, -0.752360, -0.650533,
		0.960876, 0.093075, -0.260875,
		30.809132, 38.007668, 21.219351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294304, 37.269878, 21.203623>,  <30.136518, 37.942513, 21.401962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294304, 37.269878, 21.203623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628267, 37.476173, 21.280504>,  <30.828646, 37.599953, 21.326633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628267, 37.476173, 21.280504>,  <30.294304, 37.269878, 21.203623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628267, 37.476173, 21.280504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265130, -0.682889, 0.680712,
		0.482325, -0.517372, -0.706887,
		0.834907, 0.515742, 0.192203,
		30.878738, 37.630898, 21.338165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917397, 36.734970, 21.181887>,  <30.294304, 37.269878, 21.203623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917397, 36.734970, 21.181887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.026657, 37.042297, 21.413427>,  <31.092215, 37.226696, 21.552351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.026657, 37.042297, 21.413427>,  <30.917397, 36.734970, 21.181887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026657, 37.042297, 21.413427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386615, -0.638679, 0.665295,
		0.880861, 0.042064, -0.471502,
		0.273153, 0.768322, 0.578851,
		31.108603, 37.272793, 21.587082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587206, 36.481117, 21.404593>,  <30.917397, 36.734970, 21.181887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587206, 36.481117, 21.404593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490303, 36.779247, 21.653042>,  <31.432161, 36.958126, 21.802113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490303, 36.779247, 21.653042>,  <31.587206, 36.481117, 21.404593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490303, 36.779247, 21.653042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419964, -0.496555, 0.759647,
		0.874609, 0.444880, -0.192718,
		-0.242257, 0.745329, 0.621126,
		31.417625, 37.002846, 21.839380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234406, 36.722939, 21.659319>,  <31.587206, 36.481117, 21.404593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234406, 36.722939, 21.659319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975153, 36.846775, 21.937624>,  <31.819603, 36.921078, 22.104607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975153, 36.846775, 21.937624>,  <32.234406, 36.722939, 21.659319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975153, 36.846775, 21.937624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562795, -0.420762, 0.711492,
		0.513021, 0.852709, 0.098472,
		-0.648129, 0.309591, 0.695760,
		31.780714, 36.939651, 22.146353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616783, 37.041843, 22.246929>,  <32.234406, 36.722939, 21.659319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616783, 37.041843, 22.246929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261246, 36.926590, 22.389439>,  <32.047924, 36.857437, 22.474943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261246, 36.926590, 22.389439>,  <32.616783, 37.041843, 22.246929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261246, 36.926590, 22.389439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446555, -0.370499, 0.814445,
		-0.102675, 0.883010, 0.457986,
		-0.888846, -0.288138, 0.356271,
		31.994593, 36.840149, 22.496321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677078, 37.095928, 22.969107>,  <32.616783, 37.041843, 22.246929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677078, 37.095928, 22.969107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.368782, 36.845467, 22.921957>,  <32.183804, 36.695190, 22.893667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.368782, 36.845467, 22.921957>,  <32.677078, 37.095928, 22.969107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368782, 36.845467, 22.921957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237769, -0.454293, 0.858536,
		-0.591123, 0.633681, 0.499020,
		-0.770739, -0.626152, -0.117874,
		32.137562, 36.657619, 22.886595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422150, 37.019089, 23.683256>,  <32.677078, 37.095928, 22.969107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422150, 37.019089, 23.683256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251698, 36.707989, 23.498425>,  <32.149426, 36.521328, 23.387526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251698, 36.707989, 23.498425>,  <32.422150, 37.019089, 23.683256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251698, 36.707989, 23.498425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297492, -0.602840, 0.740326,
		-0.854350, 0.178009, 0.488262,
		-0.426128, -0.777751, -0.462080,
		32.123859, 36.474663, 23.359800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109280, 36.582191, 24.255924>,  <32.422150, 37.019089, 23.683256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109280, 36.582191, 24.255924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153309, 36.350132, 23.933109>,  <32.179726, 36.210896, 23.739420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153309, 36.350132, 23.933109>,  <32.109280, 36.582191, 24.255924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153309, 36.350132, 23.933109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247057, -0.770517, 0.587594,
		-0.962729, -0.264062, 0.058518,
		0.110072, -0.580151, -0.807037,
		32.186329, 36.176086, 23.690998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839079, 36.012527, 24.458599>,  <32.109280, 36.582191, 24.255924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839079, 36.012527, 24.458599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065689, 35.882679, 24.155636>,  <32.201656, 35.804768, 23.973858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065689, 35.882679, 24.155636>,  <31.839079, 36.012527, 24.458599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065689, 35.882679, 24.155636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233385, -0.818294, 0.525286,
		-0.790304, -0.474356, -0.387822,
		0.566525, -0.324624, -0.757409,
		32.235645, 35.785290, 23.928413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645664, 35.257210, 24.284401>,  <31.839079, 36.012527, 24.458599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645664, 35.257210, 24.284401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.012554, 35.343056, 24.150152>,  <32.232689, 35.394562, 24.069603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.012554, 35.343056, 24.150152>,  <31.645664, 35.257210, 24.284401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012554, 35.343056, 24.150152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346833, -0.844664, 0.407739,
		-0.195982, -0.490392, -0.849180,
		0.917223, 0.214614, -0.335623,
		32.287720, 35.407440, 24.049465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821383, 34.618652, 24.023996>,  <31.645664, 35.257210, 24.284401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821383, 34.618652, 24.023996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.150169, 34.825584, 24.119270>,  <32.347443, 34.949745, 24.176435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.150169, 34.825584, 24.119270>,  <31.821383, 34.618652, 24.023996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150169, 34.825584, 24.119270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356171, -0.793269, 0.493828,
		0.444421, -0.321076, -0.836302,
		0.821969, 0.517334, 0.238187,
		32.396759, 34.980785, 24.190727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377663, 34.164158, 23.932076>,  <31.821383, 34.618652, 24.023996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377663, 34.164158, 23.932076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.536179, 34.443401, 24.170603>,  <32.631287, 34.610947, 24.313719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.536179, 34.443401, 24.170603>,  <32.377663, 34.164158, 23.932076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536179, 34.443401, 24.170603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447605, -0.713983, 0.538404,
		0.801627, 0.053550, -0.595422,
		0.396289, 0.698113, 0.596317,
		32.655064, 34.652836, 24.349499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044113, 34.026794, 24.003325>,  <32.377663, 34.164158, 23.932076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044113, 34.026794, 24.003325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014580, 34.258205, 24.328249>,  <32.996861, 34.397053, 24.523203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014580, 34.258205, 24.328249>,  <33.044113, 34.026794, 24.003325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014580, 34.258205, 24.328249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595904, -0.627536, 0.501096,
		0.799655, 0.521056, -0.298417,
		-0.073832, 0.578532, 0.812311,
		32.992432, 34.431767, 24.571943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766502, 34.109974, 24.261042>,  <33.044113, 34.026794, 24.003325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766502, 34.109974, 24.261042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525833, 34.193840, 24.569334>,  <33.381432, 34.244160, 24.754309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525833, 34.193840, 24.569334>,  <33.766502, 34.109974, 24.261042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525833, 34.193840, 24.569334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583606, -0.543401, 0.603423,
		0.545333, 0.812868, 0.204589,
		-0.601678, 0.209668, 0.770729,
		33.345329, 34.256741, 24.800552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.280643, 35.896763, 28.408121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950405, 35.869572, 28.632183>,  <37.752262, 35.853256, 28.766621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950405, 35.869572, 28.632183>,  <38.280643, 35.896763, 28.408121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950405, 35.869572, 28.632183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523916, 0.276298, 0.805712,
		-0.209544, 0.958665, -0.192492,
		-0.825593, -0.067983, 0.560156,
		37.702728, 35.849178, 28.800230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232006, 36.530399, 28.910376>,  <38.280643, 35.896763, 28.408121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232006, 36.530399, 28.910376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.999882, 36.241528, 29.060942>,  <37.860607, 36.068203, 29.151281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.999882, 36.241528, 29.060942>,  <38.232006, 36.530399, 28.910376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999882, 36.241528, 29.060942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251816, 0.280430, 0.926255,
		-0.774483, 0.632305, 0.019120,
		-0.580314, -0.722184, 0.376413,
		37.825787, 36.024872, 29.173866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938141, 36.803474, 29.471455>,  <38.232006, 36.530399, 28.910376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938141, 36.803474, 29.471455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.872837, 36.413799, 29.533804>,  <37.833656, 36.179993, 29.571213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.872837, 36.413799, 29.533804>,  <37.938141, 36.803474, 29.471455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872837, 36.413799, 29.533804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452991, 0.066335, 0.889044,
		-0.876439, 0.215753, 0.430471,
		-0.163259, -0.974192, 0.155873,
		37.823860, 36.121540, 29.580566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731400, 36.816738, 30.175526>,  <37.938141, 36.803474, 29.471455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731400, 36.816738, 30.175526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.844814, 36.441540, 30.095758>,  <37.912865, 36.216419, 30.047899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.844814, 36.441540, 30.095758>,  <37.731400, 36.816738, 30.175526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844814, 36.441540, 30.095758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454105, -0.051825, 0.889439,
		-0.844626, -0.342747, 0.411255,
		0.283540, -0.937997, -0.199416,
		37.929874, 36.160141, 30.035934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603352, 36.371777, 30.831530>,  <37.731400, 36.816738, 30.175526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603352, 36.371777, 30.831530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836430, 36.135429, 30.608337>,  <37.976276, 35.993622, 30.474422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836430, 36.135429, 30.608337>,  <37.603352, 36.371777, 30.831530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836430, 36.135429, 30.608337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467345, -0.318081, 0.824871,
		-0.664871, -0.741420, 0.090793,
		0.582697, -0.590865, -0.557982,
		38.011238, 35.958172, 30.440943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477711, 35.703022, 31.138472>,  <37.603352, 36.371777, 30.831530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477711, 35.703022, 31.138472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.842838, 35.746197, 30.980932>,  <38.061913, 35.772102, 30.886408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.842838, 35.746197, 30.980932>,  <37.477711, 35.703022, 31.138472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842838, 35.746197, 30.980932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407212, -0.313159, 0.857969,
		-0.030732, -0.943547, -0.329808,
		0.912816, 0.107934, -0.393848,
		38.116684, 35.778576, 30.862778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820637, 35.439087, 31.599283>,  <37.477711, 35.703022, 31.138472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820637, 35.439087, 31.599283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.144756, 35.549168, 31.392334>,  <38.339230, 35.615215, 31.268164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.144756, 35.549168, 31.392334>,  <37.820637, 35.439087, 31.599283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144756, 35.549168, 31.392334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564417, -0.129032, 0.815343,
		0.157628, -0.952688, -0.259883,
		0.810301, 0.275203, -0.517374,
		38.387848, 35.631729, 31.237122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401146, 34.892288, 31.694595>,  <37.820637, 35.439087, 31.599283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401146, 34.892288, 31.694595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557438, 35.245060, 31.589119>,  <38.651211, 35.456722, 31.525833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557438, 35.245060, 31.589119>,  <38.401146, 34.892288, 31.694595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557438, 35.245060, 31.589119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688622, -0.089956, 0.719519,
		0.610845, -0.462718, -0.642465,
		0.390728, 0.881930, -0.263689,
		38.674656, 35.509640, 31.510012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044773, 34.783890, 31.709219>,  <38.401146, 34.892288, 31.694595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044773, 34.783890, 31.709219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.047104, 35.183884, 31.709721>,  <39.048504, 35.423878, 31.710022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.047104, 35.183884, 31.709721>,  <39.044773, 34.783890, 31.709219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047104, 35.183884, 31.709721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498900, -0.003995, 0.866651,
		0.866640, -0.004427, -0.498914,
		0.005830, 0.999982, 0.001254,
		39.048855, 35.483879, 31.710096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693848, 34.948055, 31.855850>,  <39.044773, 34.783890, 31.709219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693848, 34.948055, 31.855850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474995, 35.265953, 31.960949>,  <39.343685, 35.456692, 32.024010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474995, 35.265953, 31.960949>,  <39.693848, 34.948055, 31.855850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474995, 35.265953, 31.960949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372210, -0.050161, 0.926792,
		0.749739, 0.604873, -0.268366,
		-0.547130, 0.794740, 0.262748,
		39.310856, 35.504375, 32.039772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141319, 35.332836, 32.213902>,  <39.693848, 34.948055, 31.855850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141319, 35.332836, 32.213902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.775021, 35.439289, 32.334293>,  <39.555241, 35.503162, 32.406528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.775021, 35.439289, 32.334293>,  <40.141319, 35.332836, 32.213902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775021, 35.439289, 32.334293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272579, -0.138794, 0.952070,
		0.295152, 0.953891, 0.054557,
		-0.915743, 0.266135, 0.300976,
		39.500298, 35.519131, 32.424587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217823, 35.858219, 32.715168>,  <40.141319, 35.332836, 32.213902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217823, 35.858219, 32.715168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.870811, 35.666386, 32.767906>,  <39.662605, 35.551285, 32.799549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.870811, 35.666386, 32.767906>,  <40.217823, 35.858219, 32.715168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870811, 35.666386, 32.767906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306612, -0.306939, 0.900987,
		-0.391632, 0.822062, 0.413327,
		-0.867533, -0.479587, 0.131847,
		39.610550, 35.522511, 32.807461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815716, 36.027664, 33.372097>,  <40.217823, 35.858219, 32.715168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815716, 36.027664, 33.372097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.782333, 35.650223, 33.243938>,  <39.762302, 35.423759, 33.167042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.782333, 35.650223, 33.243938>,  <39.815716, 36.027664, 33.372097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782333, 35.650223, 33.243938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378676, -0.327432, 0.865674,
		-0.921759, -0.049081, 0.384645,
		-0.083458, -0.943599, -0.320399,
		39.757298, 35.367142, 33.147820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402477, 35.658546, 33.903191>,  <39.815716, 36.027664, 33.372097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402477, 35.658546, 33.903191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642632, 35.408619, 33.703537>,  <39.786724, 35.258663, 33.583744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642632, 35.408619, 33.703537>,  <39.402477, 35.658546, 33.903191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642632, 35.408619, 33.703537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362297, -0.343903, 0.866298,
		-0.712933, -0.700949, 0.019895,
		0.600389, -0.624820, -0.499132,
		39.822750, 35.221172, 33.553799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176292, 35.885712, 34.564240>,  <39.402477, 35.658546, 33.903191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176292, 35.885712, 34.564240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046230, 36.089699, 34.882786>,  <38.968193, 36.212090, 35.073914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046230, 36.089699, 34.882786>,  <39.176292, 35.885712, 34.564240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046230, 36.089699, 34.882786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719965, 0.412503, -0.558114,
		-0.613126, -0.754833, 0.233031,
		-0.325157, 0.509968, 0.796370,
		38.948685, 36.242691, 35.121696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473351, 35.759075, 34.599781>,  <39.176292, 35.885712, 34.564240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473351, 35.759075, 34.599781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557556, 36.096577, 34.797272>,  <38.608078, 36.299076, 34.915768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557556, 36.096577, 34.797272>,  <38.473351, 35.759075, 34.599781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557556, 36.096577, 34.797272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663231, 0.494304, -0.561950,
		-0.718199, -0.209159, 0.663659,
		0.210512, 0.843751, 0.493729,
		38.620708, 36.349701, 34.945389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949532, 36.029270, 34.559155>,  <38.473351, 35.759075, 34.599781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949532, 36.029270, 34.559155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165485, 36.346550, 34.671841>,  <38.295055, 36.536919, 34.739452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165485, 36.346550, 34.671841>,  <37.949532, 36.029270, 34.559155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165485, 36.346550, 34.671841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599996, 0.597368, -0.532124,
		-0.590368, 0.118256, 0.798424,
		0.539880, 0.793200, 0.281714,
		38.327450, 36.584511, 34.756355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503918, 36.444695, 34.791889>,  <37.949532, 36.029270, 34.559155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503918, 36.444695, 34.791889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.811657, 36.685268, 34.705753>,  <37.996300, 36.829613, 34.654072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.811657, 36.685268, 34.705753>,  <37.503918, 36.444695, 34.791889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811657, 36.685268, 34.705753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598847, 0.561611, -0.570942,
		-0.222447, 0.568213, 0.792245,
		0.769350, 0.601438, -0.215344,
		38.042461, 36.865700, 34.641151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213058, 37.028965, 34.937752>,  <37.503918, 36.444695, 34.791889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213058, 37.028965, 34.937752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522633, 37.102005, 34.695202>,  <37.708378, 37.145828, 34.549671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522633, 37.102005, 34.695202>,  <37.213058, 37.028965, 34.937752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522633, 37.102005, 34.695202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581618, 0.583731, -0.566550,
		0.250503, 0.791147, 0.557974,
		0.773931, 0.182605, -0.606372,
		37.754810, 37.156788, 34.513290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244625, 37.816441, 34.719406>,  <37.213058, 37.028965, 34.937752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244625, 37.816441, 34.719406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.481842, 37.635677, 34.452850>,  <37.624172, 37.527222, 34.292915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.481842, 37.635677, 34.452850>,  <37.244625, 37.816441, 34.719406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481842, 37.635677, 34.452850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468497, 0.479440, -0.742056,
		0.654833, 0.752276, 0.072615,
		0.593046, -0.451904, -0.666393,
		37.659756, 37.500107, 34.252934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629539, 38.353146, 34.338524>,  <37.244625, 37.816441, 34.719406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629539, 38.353146, 34.338524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633987, 38.023533, 34.111950>,  <37.636654, 37.825768, 33.976006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633987, 38.023533, 34.111950>,  <37.629539, 38.353146, 34.338524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633987, 38.023533, 34.111950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266448, 0.543550, -0.795964,
		0.963785, 0.159774, -0.213519,
		0.011115, -0.824030, -0.566437,
		37.637321, 37.776325, 33.942020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954002, 38.555805, 33.722420>,  <37.629539, 38.353146, 34.338524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954002, 38.555805, 33.722420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732590, 38.233498, 33.638184>,  <37.599743, 38.040115, 33.587643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732590, 38.233498, 33.638184>,  <37.954002, 38.555805, 33.722420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732590, 38.233498, 33.638184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193929, 0.370618, -0.908314,
		0.809938, -0.461936, -0.361408,
		-0.553528, -0.805765, -0.210595,
		37.566532, 37.991768, 33.575005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121613, 38.393078, 33.057957>,  <37.954002, 38.555805, 33.722420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121613, 38.393078, 33.057957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774937, 38.198158, 33.100636>,  <37.566929, 38.081207, 33.126244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774937, 38.198158, 33.100636>,  <38.121613, 38.393078, 33.057957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774937, 38.198158, 33.100636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239284, 0.218430, -0.946061,
		0.437708, -0.845475, -0.305914,
		-0.866692, -0.487298, 0.106701,
		37.514931, 38.051968, 33.132645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093822, 37.951843, 32.501884>,  <38.121613, 38.393078, 33.057957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093822, 37.951843, 32.501884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.712433, 37.991425, 32.615791>,  <37.483601, 38.015171, 32.684135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.712433, 37.991425, 32.615791>,  <38.093822, 37.951843, 32.501884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712433, 37.991425, 32.615791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271524, 0.128595, -0.953802,
		-0.131000, -0.986748, -0.095745,
		-0.953475, 0.098951, 0.284772,
		37.426392, 38.021111, 32.701221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643017, 37.502052, 32.009636>,  <38.093822, 37.951843, 32.501884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643017, 37.502052, 32.009636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.377617, 37.757496, 32.165558>,  <37.218376, 37.910763, 32.259113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.377617, 37.757496, 32.165558>,  <37.643017, 37.502052, 32.009636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377617, 37.757496, 32.165558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470415, 0.049061, -0.881081,
		-0.581787, -0.767969, 0.267857,
		-0.663501, 0.638605, 0.389807,
		37.178566, 37.949078, 32.282501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947807, 37.261753, 31.875402>,  <37.643017, 37.502052, 32.009636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947807, 37.261753, 31.875402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.930000, 37.657413, 31.931414>,  <36.919315, 37.894810, 31.965019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.930000, 37.657413, 31.931414>,  <36.947807, 37.261753, 31.875402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930000, 37.657413, 31.931414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420643, 0.108575, -0.900706,
		-0.906134, -0.098997, 0.411244,
		-0.044517, 0.989147, 0.140026,
		36.916645, 37.954159, 31.973421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405575, 37.360352, 31.501637>,  <36.947807, 37.261753, 31.875402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405575, 37.360352, 31.501637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.552727, 37.728386, 31.555458>,  <36.641018, 37.949207, 31.587751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.552727, 37.728386, 31.555458>,  <36.405575, 37.360352, 31.501637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552727, 37.728386, 31.555458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295481, 0.252872, -0.921275,
		-0.881678, 0.299159, 0.364895,
		0.367879, 0.920087, 0.134556,
		36.663090, 38.004414, 31.595825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926769, 38.007450, 31.316914>,  <36.405575, 37.360352, 31.501637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926769, 38.007450, 31.316914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310329, 38.111988, 31.272722>,  <36.540466, 38.174709, 31.246206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310329, 38.111988, 31.272722>,  <35.926769, 38.007450, 31.316914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310329, 38.111988, 31.272722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184186, 0.277160, -0.943005,
		-0.215828, 0.924598, 0.313905,
		0.958902, 0.261344, -0.110480,
		36.598000, 38.190392, 31.239578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490208, 38.502262, 31.795467>,  <35.926769, 38.007450, 31.316914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490208, 38.502262, 31.795467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.093746, 38.516991, 31.744465>,  <34.855869, 38.525829, 31.713863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.093746, 38.516991, 31.744465>,  <35.490208, 38.502262, 31.795467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093746, 38.516991, 31.744465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131817, -0.384801, 0.913538,
		-0.015427, 0.922265, 0.386251,
		-0.991154, 0.036821, -0.127506,
		34.796398, 38.528038, 31.706213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216808, 38.802834, 32.320251>,  <35.490208, 38.502262, 31.795467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216808, 38.802834, 32.320251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.929867, 38.562916, 32.178459>,  <34.757702, 38.418964, 32.093384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.929867, 38.562916, 32.178459>,  <35.216808, 38.802834, 32.320251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929867, 38.562916, 32.178459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180825, -0.331069, 0.926119,
		-0.672837, 0.728451, 0.129035,
		-0.717351, -0.599794, -0.354478,
		34.714661, 38.382977, 32.072117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450489, 38.949108, 32.595299>,  <35.216808, 38.802834, 32.320251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450489, 38.949108, 32.595299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.464851, 38.568687, 32.472523>,  <34.473469, 38.340435, 32.398857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.464851, 38.568687, 32.472523>,  <34.450489, 38.949108, 32.595299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464851, 38.568687, 32.472523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407007, -0.294428, 0.864672,
		-0.912719, 0.093879, -0.397656,
		0.035906, -0.951052, -0.306939,
		34.475624, 38.283371, 32.380440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893147, 38.648827, 32.960262>,  <34.450489, 38.949108, 32.595299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893147, 38.648827, 32.960262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.131737, 38.347179, 32.850330>,  <34.274891, 38.166191, 32.784370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.131737, 38.347179, 32.850330>,  <33.893147, 38.648827, 32.960262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131737, 38.347179, 32.850330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110548, -0.416336, 0.902465,
		-0.794985, -0.507912, -0.331698,
		0.596471, -0.754115, -0.274832,
		34.310677, 38.120945, 32.767879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546413, 38.058117, 33.205158>,  <33.893147, 38.648827, 32.960262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546413, 38.058117, 33.205158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.911411, 37.922691, 33.113308>,  <34.130409, 37.841438, 33.058197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.911411, 37.922691, 33.113308>,  <33.546413, 38.058117, 33.205158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911411, 37.922691, 33.113308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086124, -0.389738, 0.916890,
		-0.399934, -0.856428, -0.326472,
		0.912488, -0.338579, -0.229629,
		34.185162, 37.821125, 33.044422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541271, 37.335941, 33.425579>,  <33.546413, 38.058117, 33.205158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541271, 37.335941, 33.425579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.921295, 37.457138, 33.395702>,  <34.149311, 37.529854, 33.377777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.921295, 37.457138, 33.395702>,  <33.541271, 37.335941, 33.425579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921295, 37.457138, 33.395702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218428, -0.474728, 0.852598,
		0.222870, -0.826336, -0.517202,
		0.950062, 0.302990, -0.074692,
		34.206314, 37.548035, 33.373295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927540, 36.791557, 33.656025>,  <33.541271, 37.335941, 33.425579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927540, 36.791557, 33.656025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.194073, 37.085274, 33.707901>,  <34.353992, 37.261505, 33.739025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.194073, 37.085274, 33.707901>,  <33.927540, 36.791557, 33.656025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194073, 37.085274, 33.707901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403198, -0.501120, 0.765709,
		0.627246, -0.457923, -0.629976,
		0.666329, 0.734292, 0.129692,
		34.393970, 37.305561, 33.746807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584892, 36.407703, 33.855778>,  <33.927540, 36.791557, 33.656025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584892, 36.407703, 33.855778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.626072, 36.793770, 33.951996>,  <34.650780, 37.025410, 34.009727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.626072, 36.793770, 33.951996>,  <34.584892, 36.407703, 33.855778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626072, 36.793770, 33.951996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522443, -0.258257, 0.812624,
		0.846437, 0.042017, -0.530828,
		0.102946, 0.965162, 0.240549,
		34.656956, 37.083317, 34.024162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303894, 36.497578, 33.891472>,  <34.584892, 36.407703, 33.855778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303894, 36.497578, 33.891472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.093311, 36.759403, 34.108501>,  <34.966961, 36.916500, 34.238720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.093311, 36.759403, 34.108501>,  <35.303894, 36.497578, 33.891472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093311, 36.759403, 34.108501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544405, -0.230642, 0.806491,
		0.653041, 0.719964, -0.234924,
		-0.526462, 0.654565, 0.542570,
		34.935371, 36.955772, 34.271271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857868, 36.737507, 34.330433>,  <35.303894, 36.497578, 33.891472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857868, 36.737507, 34.330433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.499146, 36.827671, 34.482712>,  <35.283913, 36.881767, 34.574081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.499146, 36.827671, 34.482712>,  <35.857868, 36.737507, 34.330433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499146, 36.827671, 34.482712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358492, -0.134047, 0.923859,
		0.259278, 0.964998, 0.039407,
		-0.896805, 0.225409, 0.380700,
		35.230103, 36.895294, 34.596920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004929, 37.108768, 34.886402>,  <35.857868, 36.737507, 34.330433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004929, 37.108768, 34.886402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.622551, 37.025547, 34.969238>,  <35.393124, 36.975613, 35.018940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.622551, 37.025547, 34.969238>,  <36.004929, 37.108768, 34.886402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622551, 37.025547, 34.969238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275478, -0.392128, 0.877694,
		-0.101404, 0.896074, 0.432167,
		-0.955944, -0.208054, 0.207086,
		35.335770, 36.963131, 35.031364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890202, 37.433552, 35.525063>,  <36.004929, 37.108768, 34.886402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890202, 37.433552, 35.525063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.619488, 37.143238, 35.475750>,  <35.457058, 36.969051, 35.446163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.619488, 37.143238, 35.475750>,  <35.890202, 37.433552, 35.525063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619488, 37.143238, 35.475750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381797, -0.489216, 0.784155,
		-0.629436, 0.483639, 0.608197,
		-0.676788, -0.725783, -0.123279,
		35.416451, 36.925503, 35.438766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.939514, 41.171921, 29.141294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647362, 40.900894, 29.106775>,  <33.472073, 40.738277, 29.086063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647362, 40.900894, 29.106775>,  <33.939514, 41.171921, 29.141294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647362, 40.900894, 29.106775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354380, -0.483908, 0.800155,
		-0.583921, 0.553833, 0.593553,
		-0.730377, -0.677571, -0.086297,
		33.428249, 40.697624, 29.080887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684269, 41.110489, 29.798933>,  <33.939514, 41.171921, 29.141294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684269, 41.110489, 29.798933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582550, 40.770283, 29.614775>,  <33.521519, 40.566158, 29.504280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582550, 40.770283, 29.614775>,  <33.684269, 41.110489, 29.798933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582550, 40.770283, 29.614775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263012, -0.518920, 0.813356,
		-0.930676, 0.085744, 0.355654,
		-0.254296, -0.850512, -0.460394,
		33.506260, 40.515129, 29.476656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366676, 40.734089, 30.320007>,  <33.684269, 41.110489, 29.798933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366676, 40.734089, 30.320007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449017, 40.458080, 30.042446>,  <33.498421, 40.292477, 29.875910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449017, 40.458080, 30.042446>,  <33.366676, 40.734089, 30.320007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449017, 40.458080, 30.042446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371869, -0.600741, 0.707689,
		-0.905175, -0.403716, 0.132936,
		0.205846, -0.690017, -0.693905,
		33.510769, 40.251076, 29.834274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088146, 40.113785, 30.610405>,  <33.366676, 40.734089, 30.320007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088146, 40.113785, 30.610405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358028, 40.011784, 30.333351>,  <33.519958, 39.950581, 30.167118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358028, 40.011784, 30.333351>,  <33.088146, 40.113785, 30.610405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358028, 40.011784, 30.333351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367216, -0.698055, 0.614712,
		-0.640254, -0.669096, -0.377339,
		0.674705, -0.255007, -0.692636,
		33.560440, 39.935280, 30.125561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954029, 39.398659, 30.355446>,  <33.088146, 40.113785, 30.610405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954029, 39.398659, 30.355446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336964, 39.486565, 30.280388>,  <33.566723, 39.539310, 30.235353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336964, 39.486565, 30.280388>,  <32.954029, 39.398659, 30.355446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336964, 39.486565, 30.280388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288102, -0.776379, 0.560565,
		-0.022489, -0.590710, -0.806570,
		0.957336, 0.219768, -0.187645,
		33.624165, 39.552494, 30.224094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267136, 38.771816, 30.191206>,  <32.954029, 39.398659, 30.355446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267136, 38.771816, 30.191206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579586, 39.006355, 30.277035>,  <33.767056, 39.147079, 30.328531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579586, 39.006355, 30.277035>,  <33.267136, 38.771816, 30.191206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579586, 39.006355, 30.277035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400808, -0.734398, 0.547734,
		0.478742, -0.341847, -0.808669,
		0.781126, 0.586345, 0.214572,
		33.813923, 39.182259, 30.341406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782566, 38.310032, 30.106518>,  <33.267136, 38.771816, 30.191206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782566, 38.310032, 30.106518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975414, 38.600323, 30.302839>,  <34.091122, 38.774498, 30.420631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975414, 38.600323, 30.302839>,  <33.782566, 38.310032, 30.106518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975414, 38.600323, 30.302839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456916, -0.686269, 0.565917,
		0.747521, -0.048585, -0.662458,
		0.482120, 0.725723, 0.490802,
		34.120049, 38.818039, 30.450079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472305, 38.038540, 30.305841>,  <33.782566, 38.310032, 30.106518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472305, 38.038540, 30.305841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450474, 38.361923, 30.540249>,  <34.437374, 38.555954, 30.680893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450474, 38.361923, 30.540249>,  <34.472305, 38.038540, 30.305841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450474, 38.361923, 30.540249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524430, -0.476217, 0.705826,
		0.849702, 0.345849, -0.397987,
		-0.054581, 0.808459, 0.586017,
		34.434101, 38.604462, 30.716053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132984, 38.158825, 30.556900>,  <34.472305, 38.038540, 30.305841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132984, 38.158825, 30.556900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859009, 38.295788, 30.814152>,  <34.694622, 38.377964, 30.968504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859009, 38.295788, 30.814152>,  <35.132984, 38.158825, 30.556900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859009, 38.295788, 30.814152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414918, -0.542279, 0.730600,
		0.598917, 0.767264, 0.229358,
		-0.684939, 0.342403, 0.643132,
		34.653526, 38.398510, 31.007092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862728, 38.420952, 30.683214>,  <35.132984, 38.158825, 30.556900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862728, 38.420952, 30.683214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258556, 38.398689, 30.736364>,  <36.496052, 38.385334, 30.768255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258556, 38.398689, 30.736364>,  <35.862728, 38.420952, 30.683214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258556, 38.398689, 30.736364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143832, 0.329839, -0.933016,
		0.008099, 0.942395, 0.334403,
		0.989569, -0.055654, 0.132875,
		36.555428, 38.381992, 30.776226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082497, 39.099422, 30.588493>,  <35.862728, 38.420952, 30.683214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082497, 39.099422, 30.588493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375896, 38.835060, 30.525019>,  <36.551937, 38.676441, 30.486933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375896, 38.835060, 30.525019>,  <36.082497, 39.099422, 30.588493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375896, 38.835060, 30.525019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153127, 0.388152, -0.908785,
		0.662216, 0.642294, 0.385912,
		0.733500, -0.660905, -0.158688,
		36.595947, 38.636787, 30.477413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650257, 39.508980, 30.136793>,  <36.082497, 39.099422, 30.588493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650257, 39.508980, 30.136793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733791, 39.120247, 30.093094>,  <36.783913, 38.887009, 30.066874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733791, 39.120247, 30.093094>,  <36.650257, 39.508980, 30.136793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733791, 39.120247, 30.093094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237377, 0.158747, -0.958359,
		0.948703, 0.174210, 0.263842,
		0.208840, -0.971828, -0.109250,
		36.796444, 38.828697, 30.060318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255161, 39.571774, 29.808769>,  <36.650257, 39.508980, 30.136793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255161, 39.571774, 29.808769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115219, 39.203876, 29.737577>,  <37.031254, 38.983139, 29.694862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115219, 39.203876, 29.737577>,  <37.255161, 39.571774, 29.808769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115219, 39.203876, 29.737577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215568, 0.105847, -0.970735,
		0.911665, -0.377981, 0.161237,
		-0.349853, -0.919743, -0.177978,
		37.010262, 38.927952, 29.684185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708569, 39.256874, 29.196470>,  <37.255161, 39.571774, 29.808769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708569, 39.256874, 29.196470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360638, 39.060997, 29.220480>,  <37.151878, 38.943470, 29.234886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360638, 39.060997, 29.220480>,  <37.708569, 39.256874, 29.196470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360638, 39.060997, 29.220480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005012, -0.112882, -0.993596,
		0.493332, -0.864557, 0.095734,
		-0.869827, -0.489693, 0.060022,
		37.099689, 38.914089, 29.238487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824806, 38.653652, 28.742659>,  <37.708569, 39.256874, 29.196470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824806, 38.653652, 28.742659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430561, 38.695206, 28.795996>,  <37.194016, 38.720139, 28.827999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430561, 38.695206, 28.795996>,  <37.824806, 38.653652, 28.742659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430561, 38.695206, 28.795996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155642, -0.250017, -0.955650,
		-0.065935, -0.962653, 0.262587,
		-0.985611, 0.103880, 0.133345,
		37.134876, 38.726372, 28.835999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558445, 38.139046, 28.308008>,  <37.824806, 38.653652, 28.742659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558445, 38.139046, 28.308008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244980, 38.374928, 28.386105>,  <37.056900, 38.516457, 28.432962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244980, 38.374928, 28.386105>,  <37.558445, 38.139046, 28.308008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244980, 38.374928, 28.386105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302412, -0.087629, -0.949141,
		-0.542609, -0.802847, 0.247006,
		-0.783660, 0.589710, 0.195242,
		37.009880, 38.551842, 28.444677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021568, 37.807148, 28.066786>,  <37.558445, 38.139046, 28.308008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021568, 37.807148, 28.066786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942875, 38.198803, 28.087126>,  <36.895660, 38.433796, 28.099329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942875, 38.198803, 28.087126>,  <37.021568, 37.807148, 28.066786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942875, 38.198803, 28.087126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310509, -0.013027, -0.950481,
		-0.929989, -0.202781, 0.306594,
		-0.196734, 0.979137, 0.050850,
		36.883854, 38.492546, 28.102381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342731, 37.862320, 27.822277>,  <37.021568, 37.807148, 28.066786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342731, 37.862320, 27.822277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485508, 38.234421, 27.788273>,  <36.571175, 38.457680, 27.767870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485508, 38.234421, 27.788273>,  <36.342731, 37.862320, 27.822277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485508, 38.234421, 27.788273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347149, 0.047612, -0.936601,
		-0.867226, 0.363821, 0.339930,
		0.356940, 0.930251, -0.085010,
		36.592590, 38.513496, 27.762770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922157, 38.163311, 27.487949>,  <36.342731, 37.862320, 27.822277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922157, 38.163311, 27.487949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222904, 38.417709, 27.418434>,  <36.403351, 38.570347, 27.376724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222904, 38.417709, 27.418434>,  <35.922157, 38.163311, 27.487949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222904, 38.417709, 27.418434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378906, 0.201101, -0.903321,
		-0.539559, 0.745029, 0.392184,
		0.751869, 0.635996, -0.173790,
		36.448463, 38.608509, 27.366297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571922, 38.772018, 27.283056>,  <35.922157, 38.163311, 27.487949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571922, 38.772018, 27.283056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952938, 38.793186, 27.163137>,  <36.181545, 38.805885, 27.091187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952938, 38.793186, 27.163137>,  <35.571922, 38.772018, 27.283056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952938, 38.793186, 27.163137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303830, 0.227028, -0.925281,
		0.019099, 0.972450, 0.232330,
		0.952535, 0.052917, -0.299795,
		36.238697, 38.809063, 27.073198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586445, 39.371357, 27.087458>,  <35.571922, 38.772018, 27.283056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586445, 39.371357, 27.087458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903835, 39.209209, 26.905878>,  <36.094269, 39.111919, 26.796930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903835, 39.209209, 26.905878>,  <35.586445, 39.371357, 27.087458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903835, 39.209209, 26.905878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278161, 0.421867, -0.862934,
		0.541312, 0.810990, 0.221984,
		0.793478, -0.405369, -0.453947,
		36.141880, 39.087597, 26.769693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848396, 39.877380, 26.708338>,  <35.586445, 39.371357, 27.087458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848396, 39.877380, 26.708338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001202, 39.557617, 26.522858>,  <36.092884, 39.365761, 26.411570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001202, 39.557617, 26.522858>,  <35.848396, 39.877380, 26.708338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001202, 39.557617, 26.522858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394641, 0.312598, -0.864026,
		0.835657, 0.513066, -0.196060,
		0.382015, -0.799403, -0.463702,
		36.115807, 39.317795, 26.383747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121002, 40.107208, 26.126541>,  <35.848396, 39.877380, 26.708338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121002, 40.107208, 26.126541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081215, 39.715176, 26.057795>,  <36.057343, 39.479954, 26.016546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081215, 39.715176, 26.057795>,  <36.121002, 40.107208, 26.126541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081215, 39.715176, 26.057795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451860, 0.198376, -0.869753,
		0.886527, -0.008849, -0.462593,
		-0.099464, -0.980086, -0.171867,
		36.051376, 39.421150, 26.006235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.035198, 35.070274, 25.354994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.247213, 35.390068, 25.468048>,  <30.374422, 35.581944, 25.535881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.247213, 35.390068, 25.468048>,  <30.035198, 35.070274, 25.354994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247213, 35.390068, 25.468048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485885, -0.559508, 0.671466,
		0.694964, -0.218575, -0.685019,
		0.530039, 0.799485, 0.282636,
		30.406225, 35.629913, 25.552839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782558, 34.852238, 25.434879>,  <30.035198, 35.070274, 25.354994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782558, 34.852238, 25.434879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.762480, 35.187027, 25.652851>,  <30.750433, 35.387901, 25.783634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.762480, 35.187027, 25.652851>,  <30.782558, 34.852238, 25.434879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762480, 35.187027, 25.652851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491455, -0.454292, 0.743029,
		0.869456, 0.305105, -0.388533,
		-0.050195, 0.836977, 0.544932,
		30.747421, 35.438122, 25.816330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465034, 35.042500, 25.521574>,  <30.782558, 34.852238, 25.434879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465034, 35.042500, 25.521574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.269207, 35.216957, 25.823595>,  <31.151711, 35.321632, 26.004807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.269207, 35.216957, 25.823595>,  <31.465034, 35.042500, 25.521574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269207, 35.216957, 25.823595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697606, -0.323597, 0.639242,
		0.523134, 0.839681, -0.145834,
		-0.489568, 0.436144, 0.755051,
		31.122337, 35.347801, 26.050110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981771, 35.415390, 25.907381>,  <31.465034, 35.042500, 25.521574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981771, 35.415390, 25.907381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.672401, 35.360954, 26.155024>,  <31.486780, 35.328293, 26.303610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.672401, 35.360954, 26.155024>,  <31.981771, 35.415390, 25.907381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672401, 35.360954, 26.155024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619760, -0.367391, 0.693484,
		0.133078, 0.920056, 0.368493,
		-0.773426, -0.136090, 0.619106,
		31.440374, 35.320126, 26.340755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234261, 35.415649, 26.589151>,  <31.981771, 35.415390, 25.907381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234261, 35.415649, 26.589151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.883303, 35.248009, 26.682564>,  <31.672728, 35.147427, 26.738611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.883303, 35.248009, 26.682564>,  <32.234261, 35.415649, 26.589151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883303, 35.248009, 26.682564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388312, -0.334461, 0.858691,
		-0.281768, 0.844093, 0.456194,
		-0.877394, -0.419097, 0.233531,
		31.620085, 35.122280, 26.752623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200748, 35.551193, 27.251076>,  <32.234261, 35.415649, 26.589151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200748, 35.551193, 27.251076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.916340, 35.275555, 27.195089>,  <31.745695, 35.110172, 27.161497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.916340, 35.275555, 27.195089>,  <32.200748, 35.551193, 27.251076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916340, 35.275555, 27.195089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226634, -0.413004, 0.882080,
		-0.665646, 0.595458, 0.449828,
		-0.711022, -0.689099, -0.139964,
		31.703033, 35.068825, 27.153101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886446, 35.487202, 27.984737>,  <32.200748, 35.551193, 27.251076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886446, 35.487202, 27.984737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.824238, 35.165627, 27.755133>,  <31.786913, 34.972679, 27.617369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.824238, 35.165627, 27.755133>,  <31.886446, 35.487202, 27.984737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824238, 35.165627, 27.755133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139329, -0.593127, 0.792961,
		-0.977958, 0.043343, 0.204255,
		-0.155519, -0.803941, -0.574014,
		31.777582, 34.924442, 27.582928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502968, 34.967495, 28.379488>,  <31.886446, 35.487202, 27.984737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502968, 34.967495, 28.379488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.657583, 34.717266, 28.108416>,  <31.750353, 34.567131, 27.945772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.657583, 34.717266, 28.108416>,  <31.502968, 34.967495, 28.379488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657583, 34.717266, 28.108416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245577, -0.638453, 0.729431,
		-0.888976, -0.448377, -0.093162,
		0.386539, -0.625569, -0.677680,
		31.773544, 34.529594, 27.905111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288084, 34.351566, 28.637253>,  <31.502968, 34.967495, 28.379488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288084, 34.351566, 28.637253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.558826, 34.253941, 28.359461>,  <31.721272, 34.195366, 28.192785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.558826, 34.253941, 28.359461>,  <31.288084, 34.351566, 28.637253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558826, 34.253941, 28.359461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394425, -0.676329, 0.622100,
		-0.621527, -0.694991, -0.361512,
		0.676855, -0.244063, -0.694479,
		31.761883, 34.180721, 28.151117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303049, 33.576416, 28.705505>,  <31.288084, 34.351566, 28.637253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303049, 33.576416, 28.705505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.639759, 33.690144, 28.521952>,  <31.841785, 33.758381, 28.411819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.639759, 33.690144, 28.521952>,  <31.303049, 33.576416, 28.705505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639759, 33.690144, 28.521952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528699, -0.605941, 0.594402,
		-0.109055, -0.742965, -0.660387,
		0.841774, 0.284323, -0.458886,
		31.892292, 33.775440, 28.384285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769781, 32.895782, 28.479733>,  <31.303049, 33.576416, 28.705505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769781, 32.895782, 28.479733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.002293, 33.220226, 28.505707>,  <32.141800, 33.414894, 28.521292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.002293, 33.220226, 28.505707>,  <31.769781, 32.895782, 28.479733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002293, 33.220226, 28.505707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633281, -0.501059, 0.589826,
		0.510951, -0.301730, -0.804915,
		0.581278, 0.811110, 0.064937,
		32.176678, 33.463558, 28.525188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441013, 32.640987, 28.452597>,  <31.769781, 32.895782, 28.479733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441013, 32.640987, 28.452597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526188, 33.006878, 28.589964>,  <32.577293, 33.226410, 28.672384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526188, 33.006878, 28.589964>,  <32.441013, 32.640987, 28.452597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526188, 33.006878, 28.589964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610435, -0.398987, 0.684236,
		0.762908, 0.063938, -0.643338,
		0.212935, 0.914725, 0.343420,
		32.590069, 33.281296, 28.692989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180050, 32.647316, 28.521255>,  <32.441013, 32.640987, 28.452597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180050, 32.647316, 28.521255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.020702, 32.922836, 28.763531>,  <32.925095, 33.088150, 28.908895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.020702, 32.922836, 28.763531>,  <33.180050, 32.647316, 28.521255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020702, 32.922836, 28.763531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575613, -0.326388, 0.749760,
		0.714124, 0.647322, -0.266460,
		-0.398366, 0.688800, 0.605689,
		32.901192, 33.129475, 28.945238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748623, 33.148472, 28.802753>,  <33.180050, 32.647316, 28.521255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748623, 33.148472, 28.802753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.427559, 33.147034, 29.041325>,  <33.234921, 33.146172, 29.184467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.427559, 33.147034, 29.041325>,  <33.748623, 33.148472, 28.802753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427559, 33.147034, 29.041325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557867, -0.358301, 0.748602,
		0.211012, 0.933599, 0.289597,
		-0.802657, -0.003593, 0.596429,
		33.186760, 33.145954, 29.220253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313992, 33.799713, 28.609961>,  <33.748623, 33.148472, 28.802753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313992, 33.799713, 28.609961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660835, 33.642433, 28.487638>,  <34.868942, 33.548065, 28.414246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660835, 33.642433, 28.487638>,  <34.313992, 33.799713, 28.609961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660835, 33.642433, 28.487638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293768, 0.092120, -0.951427,
		0.402270, 0.914827, -0.035631,
		0.867109, -0.393198, -0.305804,
		34.920967, 33.524475, 28.395897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602142, 34.229378, 28.077730>,  <34.313992, 33.799713, 28.609961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602142, 34.229378, 28.077730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768444, 33.870129, 28.020428>,  <34.868225, 33.654579, 27.986046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768444, 33.870129, 28.020428>,  <34.602142, 34.229378, 28.077730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768444, 33.870129, 28.020428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263013, 0.032052, -0.964260,
		0.870617, 0.438570, -0.222893,
		0.415752, -0.898125, -0.143255,
		34.893169, 33.600693, 27.977451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213291, 34.285484, 27.554298>,  <34.602142, 34.229378, 28.077730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213291, 34.285484, 27.554298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.052547, 33.919579, 27.570848>,  <34.956100, 33.700035, 27.580778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.052547, 33.919579, 27.570848>,  <35.213291, 34.285484, 27.554298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052547, 33.919579, 27.570848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343459, 0.108687, -0.932858,
		0.848851, -0.389086, -0.357861,
		-0.401857, -0.914768, 0.041376,
		34.931992, 33.645149, 27.583261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312092, 34.059296, 26.934130>,  <35.213291, 34.285484, 27.554298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312092, 34.059296, 26.934130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035866, 33.793579, 27.048557>,  <34.870129, 33.634151, 27.117214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035866, 33.793579, 27.048557>,  <35.312092, 34.059296, 26.934130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035866, 33.793579, 27.048557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446993, 0.081036, -0.890859,
		0.568606, -0.743070, -0.352894,
		-0.690568, -0.664290, 0.286070,
		34.828697, 33.594292, 27.134378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186836, 33.670437, 26.388556>,  <35.312092, 34.059296, 26.934130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186836, 33.670437, 26.388556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.873016, 33.586933, 26.622103>,  <34.684727, 33.536831, 26.762232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.873016, 33.586933, 26.622103>,  <35.186836, 33.670437, 26.388556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873016, 33.586933, 26.622103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604217, 0.045825, -0.795501,
		0.139314, -0.976893, -0.162089,
		-0.784547, -0.208761, 0.583870,
		34.637653, 33.524303, 26.797264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776875, 33.067966, 26.044155>,  <35.186836, 33.670437, 26.388556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776875, 33.067966, 26.044155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533615, 33.273067, 26.286560>,  <34.387661, 33.396126, 26.432003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533615, 33.273067, 26.286560>,  <34.776875, 33.067966, 26.044155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533615, 33.273067, 26.286560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634755, 0.144337, -0.759113,
		-0.476704, -0.846319, 0.237692,
		-0.608145, 0.512748, 0.606011,
		34.351173, 33.426891, 26.468363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172329, 32.796272, 25.886202>,  <34.776875, 33.067966, 26.044155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172329, 32.796272, 25.886202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.057945, 33.130123, 26.074511>,  <33.989315, 33.330433, 26.187496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.057945, 33.130123, 26.074511>,  <34.172329, 32.796272, 25.886202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057945, 33.130123, 26.074511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642984, 0.197143, -0.740072,
		-0.710493, -0.514329, 0.480277,
		-0.285957, 0.834626, 0.470774,
		33.972157, 33.380512, 26.215742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485748, 32.806580, 25.683647>,  <34.172329, 32.796272, 25.886202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485748, 32.806580, 25.683647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593567, 33.179260, 25.781034>,  <33.658257, 33.402870, 25.839466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593567, 33.179260, 25.781034>,  <33.485748, 32.806580, 25.683647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593567, 33.179260, 25.781034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704547, 0.363152, -0.609700,
		-0.656475, -0.007191, 0.754314,
		0.269546, 0.931702, 0.243467,
		33.674431, 33.458771, 25.854074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801258, 33.227589, 25.708748>,  <33.485748, 32.806580, 25.683647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801258, 33.227589, 25.708748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.103645, 33.485996, 25.666485>,  <33.285080, 33.641041, 25.641127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.103645, 33.485996, 25.666485>,  <32.801258, 33.227589, 25.708748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103645, 33.485996, 25.666485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542088, 0.527345, -0.654254,
		-0.366945, 0.551872, 0.748858,
		0.755971, 0.646022, -0.105656,
		33.330437, 33.679802, 25.634789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502998, 33.929829, 25.743784>,  <32.801258, 33.227589, 25.708748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502998, 33.929829, 25.743784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.854973, 33.984154, 25.561682>,  <33.066158, 34.016750, 25.452419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.854973, 33.984154, 25.561682>,  <32.502998, 33.929829, 25.743784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854973, 33.984154, 25.561682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440865, 0.590530, -0.675953,
		0.177039, 0.795505, 0.579508,
		0.879941, 0.135814, -0.455257,
		33.118954, 34.024899, 25.425104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596317, 34.664066, 25.741482>,  <32.502998, 33.929829, 25.743784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596317, 34.664066, 25.741482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.835110, 34.514080, 25.457787>,  <32.978386, 34.424088, 25.287569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.835110, 34.514080, 25.457787>,  <32.596317, 34.664066, 25.741482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835110, 34.514080, 25.457787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339732, 0.682716, -0.646901,
		0.726771, 0.627138, 0.280182,
		0.596981, -0.374962, -0.709237,
		33.014206, 34.401592, 25.245016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915436, 35.254295, 25.545841>,  <32.596317, 34.664066, 25.741482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915436, 35.254295, 25.545841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.958786, 34.991776, 25.247169>,  <32.984795, 34.834263, 25.067966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.958786, 34.991776, 25.247169>,  <32.915436, 35.254295, 25.545841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958786, 34.991776, 25.247169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042400, 0.747368, -0.663056,
		0.993205, 0.103518, 0.053170,
		0.108376, -0.656297, -0.746679,
		32.991299, 34.794888, 25.023167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270901, 35.564125, 24.991892>,  <32.915436, 35.254295, 25.545841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270901, 35.564125, 24.991892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.058216, 35.283901, 24.801527>,  <32.930603, 35.115765, 24.687309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.058216, 35.283901, 24.801527>,  <33.270901, 35.564125, 24.991892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058216, 35.283901, 24.801527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293622, 0.679561, -0.672296,
		0.794397, -0.217731, -0.567033,
		-0.531713, -0.700564, -0.475911,
		32.898701, 35.073730, 24.658754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592037, 35.599998, 24.366331>,  <33.270901, 35.564125, 24.991892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592037, 35.599998, 24.366331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.249718, 35.406780, 24.292282>,  <33.044327, 35.290848, 24.247852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.249718, 35.406780, 24.292282>,  <33.592037, 35.599998, 24.366331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249718, 35.406780, 24.292282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122430, 0.536820, -0.834767,
		0.502602, -0.691733, -0.518552,
		-0.855805, -0.483042, -0.185118,
		32.992977, 35.261868, 24.236746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279812, 35.574329, 24.127237>,  <33.592037, 35.599998, 24.366331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279812, 35.574329, 24.127237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534451, 35.881531, 24.099195>,  <34.687233, 36.065853, 24.082371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534451, 35.881531, 24.099195>,  <34.279812, 35.574329, 24.127237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534451, 35.881531, 24.099195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337467, -0.195675, 0.920776,
		0.693442, -0.609820, -0.383741,
		0.636596, 0.768004, -0.070105,
		34.725430, 36.111931, 24.078163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815151, 35.351002, 24.445530>,  <34.279812, 35.574329, 24.127237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815151, 35.351002, 24.445530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.896358, 35.742069, 24.467224>,  <34.945084, 35.976711, 24.480240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.896358, 35.742069, 24.467224>,  <34.815151, 35.351002, 24.445530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896358, 35.742069, 24.467224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411819, -0.135504, 0.901135,
		0.888363, -0.160611, -0.430134,
		0.203017, 0.977672, 0.054234,
		34.957264, 36.035370, 24.483494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504280, 35.372913, 24.695469>,  <34.815151, 35.351002, 24.445530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504280, 35.372913, 24.695469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358608, 35.739834, 24.759890>,  <35.271206, 35.959984, 24.798542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.358608, 35.739834, 24.759890>,  <35.504280, 35.372913, 24.695469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358608, 35.739834, 24.759890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527224, 0.060506, 0.847569,
		0.767728, 0.393581, -0.505656,
		-0.364183, 0.917297, 0.161053,
		35.249355, 36.015022, 24.808207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040245, 35.811356, 24.914341>,  <35.504280, 35.372913, 24.695469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040245, 35.811356, 24.914341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716076, 36.006931, 25.043432>,  <35.521572, 36.124275, 25.120888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716076, 36.006931, 25.043432>,  <36.040245, 35.811356, 24.914341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716076, 36.006931, 25.043432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487476, 0.257266, 0.834375,
		0.324928, 0.833521, -0.446839,
		-0.810425, 0.488935, 0.322728,
		35.472950, 36.153610, 25.140251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297165, 36.477467, 25.118292>,  <36.040245, 35.811356, 24.914341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297165, 36.477467, 25.118292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939293, 36.423588, 25.288656>,  <35.724567, 36.391258, 25.390875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939293, 36.423588, 25.288656>,  <36.297165, 36.477467, 25.118292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939293, 36.423588, 25.288656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411734, 0.121151, 0.903215,
		-0.173262, 0.983452, -0.052931,
		-0.894682, -0.134700, 0.425912,
		35.670887, 36.383179, 25.416430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253529, 37.018764, 25.559740>,  <36.297165, 36.477467, 25.118292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253529, 37.018764, 25.559740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.000828, 36.731583, 25.676659>,  <35.849209, 36.559273, 25.746811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.000828, 36.731583, 25.676659>,  <36.253529, 37.018764, 25.559740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000828, 36.731583, 25.676659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361317, 0.060880, 0.930454,
		-0.685817, 0.693424, 0.220948,
		-0.631747, -0.717953, 0.292298,
		35.811302, 36.516197, 25.764349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918598, 37.264870, 26.217146>,  <36.253529, 37.018764, 25.559740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918598, 37.264870, 26.217146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.888428, 36.866722, 26.193310>,  <35.870327, 36.627834, 26.179008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.888428, 36.866722, 26.193310>,  <35.918598, 37.264870, 26.217146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888428, 36.866722, 26.193310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192039, -0.073142, 0.978658,
		-0.978484, 0.062374, 0.196667,
		-0.075427, -0.995369, -0.059590,
		35.865799, 36.568111, 26.175432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778324, 37.158539, 26.866848>,  <35.918598, 37.264870, 26.217146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778324, 37.158539, 26.866848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.865387, 36.793056, 26.729576>,  <35.917625, 36.573769, 26.647213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.865387, 36.793056, 26.729576>,  <35.778324, 37.158539, 26.866848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865387, 36.793056, 26.729576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363400, -0.250467, 0.897333,
		-0.905851, -0.320021, 0.277524,
		0.217655, -0.913703, -0.343182,
		35.930683, 36.518944, 26.626621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444088, 36.699654, 27.312338>,  <35.778324, 37.158539, 26.866848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444088, 36.699654, 27.312338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.743626, 36.513229, 27.123859>,  <35.923347, 36.401375, 27.010773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.743626, 36.513229, 27.123859>,  <35.444088, 36.699654, 27.312338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743626, 36.513229, 27.123859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308562, -0.384043, 0.870230,
		-0.586538, -0.797057, -0.143779,
		0.748841, -0.466059, -0.471197,
		35.968277, 36.373413, 26.982500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386879, 36.011833, 27.527330>,  <35.444088, 36.699654, 27.312338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386879, 36.011833, 27.527330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763508, 36.070499, 27.406054>,  <35.989487, 36.105698, 27.333288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763508, 36.070499, 27.406054>,  <35.386879, 36.011833, 27.527330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763508, 36.070499, 27.406054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333849, -0.287493, 0.897715,
		0.044501, -0.946486, -0.319661,
		0.941575, 0.146667, -0.303190,
		36.045982, 36.114498, 27.315096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785427, 35.435993, 27.713696>,  <35.386879, 36.011833, 27.527330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785427, 35.435993, 27.713696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.067020, 35.718609, 27.684822>,  <36.235977, 35.888180, 27.667498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.067020, 35.718609, 27.684822>,  <35.785427, 35.435993, 27.713696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067020, 35.718609, 27.684822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468598, -0.385703, 0.794764,
		0.533691, -0.593324, -0.602611,
		0.703981, 0.706541, -0.072184,
		36.278214, 35.930573, 27.663166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250938, 35.142982, 28.116693>,  <35.785427, 35.435993, 27.713696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250938, 35.142982, 28.116693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432854, 35.491589, 28.043327>,  <36.542004, 35.700752, 27.999308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432854, 35.491589, 28.043327>,  <36.250938, 35.142982, 28.116693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432854, 35.491589, 28.043327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618770, -0.161080, 0.768880,
		0.640543, -0.463166, -0.612521,
		0.454784, 0.871511, -0.183414,
		36.569290, 35.753040, 27.988302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939037, 35.005878, 27.997076>,  <36.250938, 35.142982, 28.116693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939037, 35.005878, 27.997076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936874, 35.387936, 28.115513>,  <36.935577, 35.617172, 28.186575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936874, 35.387936, 28.115513>,  <36.939037, 35.005878, 27.997076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936874, 35.387936, 28.115513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674835, -0.215021, 0.705949,
		0.737949, 0.203628, -0.643402,
		-0.005406, 0.955145, 0.296090,
		36.935253, 35.674480, 28.204340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683685, 35.286240, 28.072342>,  <36.939037, 35.005878, 27.997076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683685, 35.286240, 28.072342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466656, 35.528889, 28.304766>,  <37.336437, 35.674477, 28.444220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466656, 35.528889, 28.304766>,  <37.683685, 35.286240, 28.072342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466656, 35.528889, 28.304766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693175, -0.067388, 0.717613,
		0.474476, 0.792129, -0.383933,
		-0.542569, 0.606622, 0.581057,
		37.303886, 35.710876, 28.479082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.403675, 40.017143, 25.391823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.164654, 39.704601, 25.463827>,  <36.021240, 39.517075, 25.507030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.164654, 39.704601, 25.463827>,  <36.403675, 40.017143, 25.391823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164654, 39.704601, 25.463827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320431, 0.026909, -0.946890,
		0.735017, -0.623501, -0.266451,
		-0.597556, -0.781359, 0.180011,
		35.985386, 39.470192, 25.517830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434181, 39.604977, 24.803423>,  <36.403675, 40.017143, 25.391823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434181, 39.604977, 24.803423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088062, 39.500843, 24.974762>,  <35.880390, 39.438362, 25.077566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088062, 39.500843, 24.974762>,  <36.434181, 39.604977, 24.803423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088062, 39.500843, 24.974762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470374, 0.126421, -0.873365,
		0.173217, -0.957206, -0.231848,
		-0.865300, -0.260337, 0.428346,
		35.828472, 39.422745, 25.103266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182781, 39.062759, 24.385780>,  <36.434181, 39.604977, 24.803423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182781, 39.062759, 24.385780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866138, 39.209980, 24.580877>,  <35.676151, 39.298313, 24.697935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866138, 39.209980, 24.580877>,  <36.182781, 39.062759, 24.385780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866138, 39.209980, 24.580877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563145, -0.129706, -0.816115,
		-0.237110, -0.920714, 0.309943,
		-0.791610, 0.368052, 0.487740,
		35.628654, 39.320396, 24.727200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705978, 38.757584, 24.057020>,  <36.182781, 39.062759, 24.385780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705978, 38.757584, 24.057020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.522003, 39.050346, 24.258121>,  <35.411617, 39.226006, 24.378782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.522003, 39.050346, 24.258121>,  <35.705978, 38.757584, 24.057020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522003, 39.050346, 24.258121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786156, -0.072429, -0.613769,
		-0.412811, -0.677540, 0.608710,
		-0.459941, 0.731911, 0.502752,
		35.384022, 39.269920, 24.408947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968246, 38.592747, 24.013790>,  <35.705978, 38.757584, 24.057020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968246, 38.592747, 24.013790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990982, 38.984554, 24.091059>,  <35.004623, 39.219639, 24.137421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990982, 38.984554, 24.091059>,  <34.968246, 38.592747, 24.013790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990982, 38.984554, 24.091059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754359, 0.168879, -0.634368,
		-0.653997, -0.109665, 0.748506,
		0.056838, 0.979517, 0.193173,
		35.008034, 39.278408, 24.149012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240726, 38.873188, 24.055964>,  <34.968246, 38.592747, 24.013790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240726, 38.873188, 24.055964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480412, 39.183002, 23.974939>,  <34.624222, 39.368893, 23.926325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480412, 39.183002, 23.974939>,  <34.240726, 38.873188, 24.055964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480412, 39.183002, 23.974939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684305, 0.364192, -0.631737,
		-0.415532, 0.517161, 0.748250,
		0.599216, 0.774538, -0.202562,
		34.660175, 39.415363, 23.914171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824741, 39.366001, 24.077768>,  <34.240726, 38.873188, 24.055964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824741, 39.366001, 24.077768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138214, 39.498665, 23.867685>,  <34.326298, 39.578262, 23.741636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138214, 39.498665, 23.867685>,  <33.824741, 39.366001, 24.077768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138214, 39.498665, 23.867685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616660, 0.313813, -0.721978,
		-0.074635, 0.889676, 0.450452,
		0.783684, 0.331660, -0.525206,
		34.373318, 39.598164, 23.710123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579994, 39.926739, 23.842960>,  <33.824741, 39.366001, 24.077768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579994, 39.926739, 23.842960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908798, 39.893852, 23.617558>,  <34.106079, 39.874123, 23.482315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908798, 39.893852, 23.617558>,  <33.579994, 39.926739, 23.842960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908798, 39.893852, 23.617558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524820, 0.274734, -0.805658,
		0.221050, 0.957999, 0.182687,
		0.822010, -0.082213, -0.563507,
		34.155403, 39.869190, 23.448505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437111, 40.416103, 23.341169>,  <33.579994, 39.926739, 23.842960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437111, 40.416103, 23.341169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732124, 40.184364, 23.202379>,  <33.909134, 40.045319, 23.119104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732124, 40.184364, 23.202379>,  <33.437111, 40.416103, 23.341169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732124, 40.184364, 23.202379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375226, 0.075618, -0.923844,
		0.561468, 0.811563, -0.161617,
		0.737536, -0.579351, -0.346977,
		33.953384, 40.010559, 23.098286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857513, 40.842690, 22.862938>,  <33.437111, 40.416103, 23.341169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857513, 40.842690, 22.862938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.892498, 40.460060, 22.751715>,  <33.913486, 40.230484, 22.684980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.892498, 40.460060, 22.751715>,  <33.857513, 40.842690, 22.862938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892498, 40.460060, 22.751715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353082, 0.231240, -0.906565,
		0.931496, 0.177463, -0.317526,
		0.087457, -0.956575, -0.278058,
		33.918736, 40.173088, 22.668297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270306, 40.771004, 22.269007>,  <33.857513, 40.842690, 22.862938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270306, 40.771004, 22.269007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.034744, 40.447750, 22.273170>,  <33.893406, 40.253799, 22.275669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.034744, 40.447750, 22.273170>,  <34.270306, 40.771004, 22.269007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034744, 40.447750, 22.273170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282371, 0.193669, -0.939553,
		0.757268, -0.556249, -0.342246,
		-0.588907, -0.808134, 0.010409,
		33.858070, 40.205311, 22.276293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433128, 40.277328, 21.693380>,  <34.270306, 40.771004, 22.269007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433128, 40.277328, 21.693380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047493, 40.223042, 21.784700>,  <33.816113, 40.190472, 21.839493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047493, 40.223042, 21.784700>,  <34.433128, 40.277328, 21.693380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047493, 40.223042, 21.784700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252173, 0.197960, -0.947217,
		0.083355, -0.970770, -0.225073,
		-0.964085, -0.135712, 0.228301,
		33.758266, 40.182327, 21.853191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303967, 40.190212, 21.091722>,  <34.433128, 40.277328, 21.693380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303967, 40.190212, 21.091722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947540, 40.162148, 21.271088>,  <33.733685, 40.145309, 21.378706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947540, 40.162148, 21.271088>,  <34.303967, 40.190212, 21.091722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947540, 40.162148, 21.271088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453470, 0.096317, -0.886052,
		0.018973, -0.992875, -0.117639,
		-0.891069, -0.070157, 0.448411,
		33.680218, 40.141098, 21.405611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819958, 39.509884, 20.931822>,  <34.303967, 40.190212, 21.091722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819958, 39.509884, 20.931822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603752, 39.835304, 21.017603>,  <33.474030, 40.030556, 21.069071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603752, 39.835304, 21.017603>,  <33.819958, 39.509884, 20.931822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603752, 39.835304, 21.017603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534762, -0.135427, -0.834080,
		-0.649520, -0.565510, 0.508254,
		-0.540512, 0.813547, 0.214450,
		33.441597, 40.079369, 21.081938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590206, 39.345459, 20.257860>,  <33.819958, 39.509884, 20.931822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590206, 39.345459, 20.257860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535263, 39.071087, 19.972027>,  <33.502296, 38.906464, 19.800528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535263, 39.071087, 19.972027>,  <33.590206, 39.345459, 20.257860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535263, 39.071087, 19.972027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164778, -0.727191, 0.666364,
		-0.976719, -0.026217, 0.212913,
		-0.137359, -0.685935, -0.714581,
		33.494057, 38.865307, 19.757652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269176, 38.790398, 20.673073>,  <33.590206, 39.345459, 20.257860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269176, 38.790398, 20.673073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370750, 38.631466, 20.320335>,  <33.431694, 38.536106, 20.108692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370750, 38.631466, 20.320335>,  <33.269176, 38.790398, 20.673073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370750, 38.631466, 20.320335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036392, -0.907159, 0.419211,
		-0.966537, -0.138543, -0.215898,
		0.253933, -0.397326, -0.881845,
		33.446930, 38.512268, 20.055782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826488, 38.140751, 20.546282>,  <33.269176, 38.790398, 20.673073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826488, 38.140751, 20.546282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.160858, 38.097698, 20.331009>,  <33.361481, 38.071865, 20.201845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.160858, 38.097698, 20.331009>,  <32.826488, 38.140751, 20.546282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160858, 38.097698, 20.331009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096467, -0.936503, 0.337131,
		-0.540295, -0.333734, -0.772465,
		0.835928, -0.107632, -0.538182,
		33.411636, 38.065407, 20.169554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813557, 37.404797, 20.361446>,  <32.826488, 38.140751, 20.546282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813557, 37.404797, 20.361446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.186043, 37.543571, 20.316788>,  <33.409534, 37.626835, 20.289993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.186043, 37.543571, 20.316788>,  <32.813557, 37.404797, 20.361446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186043, 37.543571, 20.316788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364173, -0.873599, 0.322805,
		0.014460, -0.341260, -0.939858,
		0.931219, 0.346938, -0.111646,
		33.465408, 37.647652, 20.283295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213100, 36.873367, 20.122482>,  <32.813557, 37.404797, 20.361446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213100, 36.873367, 20.122482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499317, 37.108986, 20.272692>,  <33.671047, 37.250359, 20.362818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499317, 37.108986, 20.272692>,  <33.213100, 36.873367, 20.122482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499317, 37.108986, 20.272692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333860, -0.760559, 0.556855,
		0.613621, -0.273083, -0.740874,
		0.715546, 0.589046, 0.375523,
		33.713982, 37.285702, 20.385349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789650, 36.557045, 20.067280>,  <33.213100, 36.873367, 20.122482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789650, 36.557045, 20.067280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857807, 36.814159, 20.366022>,  <33.898701, 36.968426, 20.545267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857807, 36.814159, 20.366022>,  <33.789650, 36.557045, 20.067280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857807, 36.814159, 20.366022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266275, -0.759781, 0.593153,
		0.948716, 0.097798, -0.300621,
		0.170397, 0.642782, 0.746857,
		33.908928, 37.006992, 20.590080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437778, 36.305538, 20.370052>,  <33.789650, 36.557045, 20.067280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437778, 36.305538, 20.370052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332493, 36.578606, 20.642725>,  <34.269321, 36.742447, 20.806328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332493, 36.578606, 20.642725>,  <34.437778, 36.305538, 20.370052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332493, 36.578606, 20.642725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470709, -0.525905, 0.708418,
		0.842111, 0.507340, -0.182910,
		-0.263216, 0.682664, 0.681680,
		34.253529, 36.783405, 20.847229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083382, 36.455208, 20.755880>,  <34.437778, 36.305538, 20.370052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083382, 36.455208, 20.755880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.757462, 36.540810, 20.971401>,  <34.561909, 36.592171, 21.100714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.757462, 36.540810, 20.971401>,  <35.083382, 36.455208, 20.755880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757462, 36.540810, 20.971401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473390, -0.290918, 0.831425,
		0.334675, 0.932507, 0.135732,
		-0.814797, 0.214003, 0.538803,
		34.513023, 36.605011, 21.133041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372341, 36.732529, 21.333118>,  <35.083382, 36.455208, 20.755880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372341, 36.732529, 21.333118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005062, 36.623775, 21.448349>,  <34.784695, 36.558525, 21.517487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.005062, 36.623775, 21.448349>,  <35.372341, 36.732529, 21.333118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005062, 36.623775, 21.448349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330921, -0.126797, 0.935101,
		-0.217708, 0.953941, 0.206396,
		-0.918202, -0.271880, 0.288075,
		34.729603, 36.542210, 21.534771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150036, 37.290756, 21.885454>,  <35.372341, 36.732529, 21.333118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150036, 37.290756, 21.885454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942051, 36.952316, 21.932360>,  <34.817261, 36.749252, 21.960503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942051, 36.952316, 21.932360>,  <35.150036, 37.290756, 21.885454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942051, 36.952316, 21.932360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231515, -0.007449, 0.972803,
		-0.822218, 0.532968, 0.199758,
		-0.519960, -0.846103, 0.117265,
		34.786064, 36.698486, 21.967539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702766, 37.421741, 22.403648>,  <35.150036, 37.290756, 21.885454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702766, 37.421741, 22.403648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.683815, 37.022259, 22.410934>,  <34.672443, 36.782570, 22.415306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.683815, 37.022259, 22.410934>,  <34.702766, 37.421741, 22.403648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683815, 37.022259, 22.410934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156987, 0.010565, 0.987544,
		-0.986464, 0.049646, 0.156284,
		-0.047376, -0.998711, 0.018216,
		34.669601, 36.722645, 22.416399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250019, 37.298893, 22.915699>,  <34.702766, 37.421741, 22.403648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250019, 37.298893, 22.915699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482754, 36.974083, 22.897478>,  <34.622395, 36.779198, 22.886545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482754, 36.974083, 22.897478>,  <34.250019, 37.298893, 22.915699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482754, 36.974083, 22.897478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134372, 0.040737, 0.990093,
		-0.802127, -0.582196, 0.132816,
		0.581839, -0.812027, -0.045554,
		34.657307, 36.730476, 22.883812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953819, 36.837219, 23.393753>,  <34.250019, 37.298893, 22.915699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953819, 36.837219, 23.393753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.306728, 36.659054, 23.332813>,  <34.518475, 36.552155, 23.296249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.306728, 36.659054, 23.332813>,  <33.953819, 36.837219, 23.393753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306728, 36.659054, 23.332813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072577, -0.191057, 0.978892,
		-0.465115, -0.874704, -0.136238,
		0.882270, -0.445410, -0.152347,
		34.571411, 36.525433, 23.287109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949242, 36.192070, 23.680401>,  <33.953819, 36.837219, 23.393753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949242, 36.192070, 23.680401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344376, 36.252716, 23.694216>,  <34.581455, 36.289104, 23.702505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344376, 36.252716, 23.694216>,  <33.949242, 36.192070, 23.680401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344376, 36.252716, 23.694216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003637, -0.244588, 0.969620,
		0.155456, -0.957700, -0.242165,
		0.987836, 0.151614, 0.034540,
		34.640728, 36.298199, 23.704578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465431, 35.763714, 23.641493>,  <33.949242, 36.192070, 23.680401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465431, 35.763714, 23.641493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117901, 35.605980, 23.761251>,  <32.909382, 35.511341, 23.833107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117901, 35.605980, 23.761251>,  <33.465431, 35.763714, 23.641493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117901, 35.605980, 23.761251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470342, 0.468470, -0.747874,
		0.154653, -0.790592, -0.592491,
		-0.868827, -0.394334, 0.299398,
		32.857254, 35.487679, 23.851070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006042, 35.456284, 22.987700>,  <33.465431, 35.763714, 23.641493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006042, 35.456284, 22.987700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754410, 35.555580, 23.282354>,  <32.603428, 35.615158, 23.459146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754410, 35.555580, 23.282354>,  <33.006042, 35.456284, 22.987700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754410, 35.555580, 23.282354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526338, 0.561330, -0.638653,
		-0.572033, -0.789485, -0.222466,
		-0.629084, 0.248238, 0.736636,
		32.565685, 35.630051, 23.503345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419785, 35.454735, 22.683962>,  <33.006042, 35.456284, 22.987700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419785, 35.454735, 22.683962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351681, 35.678810, 23.008232>,  <32.310818, 35.813255, 23.202795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351681, 35.678810, 23.008232>,  <32.419785, 35.454735, 22.683962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351681, 35.678810, 23.008232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528168, 0.642652, -0.555011,
		-0.831896, -0.522669, 0.186458,
		-0.170260, 0.560192, 0.810677,
		32.300602, 35.846867, 23.251434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685162, 35.455555, 22.700605>,  <32.419785, 35.454735, 22.683962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685162, 35.455555, 22.700605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811266, 35.771759, 22.910635>,  <31.886929, 35.961483, 23.036654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811266, 35.771759, 22.910635>,  <31.685162, 35.455555, 22.700605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811266, 35.771759, 22.910635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558209, 0.601920, -0.571047,
		-0.767472, -0.113074, 0.631031,
		0.315260, 0.790511, 0.525076,
		31.905844, 36.008911, 23.068157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071259, 35.976852, 22.863461>,  <31.685162, 35.455555, 22.700605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071259, 35.976852, 22.863461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398296, 36.194290, 22.939400>,  <31.594519, 36.324753, 22.984964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.398296, 36.194290, 22.939400>,  <31.071259, 35.976852, 22.863461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398296, 36.194290, 22.939400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402186, 0.775100, -0.487306,
		-0.412050, 0.322064, 0.852344,
		0.817595, 0.543595, 0.189850,
		31.643576, 36.357368, 22.996355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884657, 36.626358, 23.192972>,  <31.071259, 35.976852, 22.863461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884657, 36.626358, 23.192972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.216606, 36.682411, 22.976944>,  <31.415775, 36.716042, 22.847326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.216606, 36.682411, 22.976944>,  <30.884657, 36.626358, 23.192972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216606, 36.682411, 22.976944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510007, 0.583080, -0.632385,
		0.226289, 0.800238, 0.555349,
		0.829871, 0.140130, -0.540071,
		31.465567, 36.724449, 22.814922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835899, 37.382179, 22.990168>,  <30.884657, 36.626358, 23.192972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835899, 37.382179, 22.990168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.116985, 37.241726, 22.742653>,  <31.285637, 37.157452, 22.594145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.116985, 37.241726, 22.742653>,  <30.835899, 37.382179, 22.990168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116985, 37.241726, 22.742653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352524, 0.583617, -0.731518,
		0.617998, 0.732184, 0.286331,
		0.702713, -0.351138, -0.618786,
		31.327799, 37.136383, 22.557016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671827, 37.813477, 23.614004>,  <30.835899, 37.382179, 22.990168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671827, 37.813477, 23.614004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.286024, 37.823605, 23.719135>,  <30.054543, 37.829681, 23.782215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.286024, 37.823605, 23.719135>,  <30.671827, 37.813477, 23.614004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286024, 37.823605, 23.719135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164035, -0.722562, 0.671563,
		0.206911, 0.690843, 0.692765,
		-0.964510, 0.025316, 0.262829,
		29.996672, 37.831200, 23.797983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633276, 37.828121, 24.320143>,  <30.671827, 37.813477, 23.614004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633276, 37.828121, 24.320143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.266996, 37.701900, 24.220604>,  <30.047230, 37.626167, 24.160881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.266996, 37.701900, 24.220604>,  <30.633276, 37.828121, 24.320143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266996, 37.701900, 24.220604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047673, -0.700153, 0.712399,
		-0.399031, 0.640479, 0.656172,
		-0.915698, -0.315551, -0.248849,
		29.992287, 37.607235, 24.145948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320755, 37.868309, 24.898867>,  <30.633276, 37.828121, 24.320143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320755, 37.868309, 24.898867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.103287, 37.616982, 24.676287>,  <29.972805, 37.466187, 24.542738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.103287, 37.616982, 24.676287>,  <30.320755, 37.868309, 24.898867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103287, 37.616982, 24.676287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136767, -0.720457, 0.679880,
		-0.828080, 0.293527, 0.477625,
		-0.543671, -0.628318, -0.556451,
		29.940186, 37.428486, 24.509352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797386, 37.612442, 25.307968>,  <30.320755, 37.868309, 24.898867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797386, 37.612442, 25.307968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.840214, 37.318546, 25.040030>,  <29.865910, 37.142208, 24.879267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.840214, 37.318546, 25.040030>,  <29.797386, 37.612442, 25.307968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840214, 37.318546, 25.040030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095035, -0.663073, 0.742498,
		-0.989699, -0.143156, -0.001167,
		0.107067, -0.734739, -0.669847,
		29.872334, 37.098125, 24.839075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586393, 37.005814, 25.686415>,  <29.797386, 37.612442, 25.307968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586393, 37.005814, 25.686415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.745577, 36.845016, 25.356558>,  <29.841087, 36.748539, 25.158644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.745577, 36.845016, 25.356558>,  <29.586393, 37.005814, 25.686415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745577, 36.845016, 25.356558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295811, -0.794649, 0.530122,
		-0.868404, -0.454904, -0.197324,
		0.397958, -0.401989, -0.824642,
		29.864965, 36.724419, 25.109165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385267, 36.414509, 25.665615>,  <29.586393, 37.005814, 25.686415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385267, 36.414509, 25.665615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.693722, 36.364555, 25.415894>,  <29.878794, 36.334583, 25.266062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.693722, 36.364555, 25.415894>,  <29.385267, 36.414509, 25.665615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693722, 36.364555, 25.415894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279060, -0.815066, 0.507734,
		-0.572254, -0.565750, -0.593677,
		0.771136, -0.124881, -0.624302,
		29.925062, 36.327091, 25.228603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498976, 35.627827, 25.549177>,  <29.385267, 36.414509, 25.665615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498976, 35.627827, 25.549177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.847935, 35.803291, 25.462919>,  <30.057310, 35.908569, 25.411163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.847935, 35.803291, 25.462919>,  <29.498976, 35.627827, 25.549177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847935, 35.803291, 25.462919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479903, -0.684868, 0.548315,
		0.092834, -0.581838, -0.807989,
		0.872396, 0.438659, -0.215646,
		30.109653, 35.934891, 25.398226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.896261, 41.252968, 22.904579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098089, 40.965248, 22.713577>,  <31.219187, 40.792614, 22.598976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098089, 40.965248, 22.713577>,  <30.896261, 41.252968, 22.904579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098089, 40.965248, 22.713577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465934, -0.238757, 0.851998,
		-0.726853, -0.652379, 0.214678,
		0.504569, -0.719303, -0.477506,
		31.249460, 40.749458, 22.570326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763842, 40.531292, 23.236063>,  <30.896261, 41.252968, 22.904579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763842, 40.531292, 23.236063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127197, 40.555614, 23.070593>,  <31.345211, 40.570210, 22.971310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.127197, 40.555614, 23.070593>,  <30.763842, 40.531292, 23.236063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127197, 40.555614, 23.070593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418061, -0.149162, 0.896089,
		-0.007214, -0.986941, -0.160919,
		0.908391, 0.060809, -0.413678,
		31.399714, 40.573856, 22.946489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104366, 40.010471, 23.553282>,  <30.763842, 40.531292, 23.236063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104366, 40.010471, 23.553282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379255, 40.271561, 23.425737>,  <31.544189, 40.428215, 23.349211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.379255, 40.271561, 23.425737>,  <31.104366, 40.010471, 23.553282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379255, 40.271561, 23.425737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400879, 0.025300, 0.915782,
		0.605823, -0.757170, -0.244278,
		0.687222, 0.652728, -0.318861,
		31.585423, 40.467381, 23.330078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745398, 39.929585, 23.898848>,  <31.104366, 40.010471, 23.553282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745398, 39.929585, 23.898848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.838017, 40.300568, 23.781404>,  <31.893587, 40.523159, 23.710939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.838017, 40.300568, 23.781404>,  <31.745398, 39.929585, 23.898848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838017, 40.300568, 23.781404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473716, 0.156115, 0.866730,
		0.849694, -0.339773, -0.403205,
		0.231546, 0.927460, -0.293606,
		31.907480, 40.578804, 23.693323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433647, 40.051338, 24.038609>,  <31.745398, 39.929585, 23.898848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433647, 40.051338, 24.038609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269360, 40.414604, 24.006243>,  <32.170788, 40.632565, 23.986824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269360, 40.414604, 24.006243>,  <32.433647, 40.051338, 24.038609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269360, 40.414604, 24.006243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472660, 0.287964, 0.832868,
		0.779682, 0.303829, -0.547525,
		-0.410717, 0.908166, -0.080912,
		32.146145, 40.687054, 23.981970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005882, 40.473568, 24.225088>,  <32.433647, 40.051338, 24.038609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005882, 40.473568, 24.225088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.675228, 40.697155, 24.251123>,  <32.476837, 40.831306, 24.266745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.675228, 40.697155, 24.251123>,  <33.005882, 40.473568, 24.225088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675228, 40.697155, 24.251123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290076, 0.324132, 0.900441,
		0.482221, 0.763213, -0.430081,
		-0.826631, 0.558968, 0.065086,
		32.427238, 40.864845, 24.270649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224464, 41.166759, 24.491667>,  <33.005882, 40.473568, 24.225088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224464, 41.166759, 24.491667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.843372, 41.101273, 24.594048>,  <32.614719, 41.061981, 24.655476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.843372, 41.101273, 24.594048>,  <33.224464, 41.166759, 24.491667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843372, 41.101273, 24.594048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234100, 0.141463, 0.961866,
		-0.193679, 0.976312, -0.096450,
		-0.952725, -0.163714, 0.255953,
		32.557556, 41.052158, 24.670834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984787, 41.746120, 25.048086>,  <33.224464, 41.166759, 24.491667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984787, 41.746120, 25.048086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695755, 41.470390, 25.068872>,  <32.522335, 41.304951, 25.081345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695755, 41.470390, 25.068872>,  <32.984787, 41.746120, 25.048086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695755, 41.470390, 25.068872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008036, 0.083546, 0.996472,
		-0.691239, 0.719614, -0.065909,
		-0.722581, -0.689330, 0.051967,
		32.478981, 41.263592, 25.084463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539753, 42.044834, 25.548000>,  <32.984787, 41.746120, 25.048086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539753, 42.044834, 25.548000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.457920, 41.653931, 25.525700>,  <32.408821, 41.419388, 25.512320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.457920, 41.653931, 25.525700>,  <32.539753, 42.044834, 25.548000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457920, 41.653931, 25.525700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087538, -0.038461, 0.995419,
		-0.974927, 0.208525, -0.077679,
		-0.204582, -0.977261, -0.055751,
		32.396545, 41.360752, 25.508974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808182, 41.889210, 26.014177>,  <32.539753, 42.044834, 25.548000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808182, 41.889210, 26.014177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.039265, 41.565876, 25.968843>,  <32.177914, 41.371876, 25.941643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.039265, 41.565876, 25.968843>,  <31.808182, 41.889210, 26.014177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039265, 41.565876, 25.968843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074471, -0.190467, 0.978865,
		-0.812840, -0.557056, -0.170232,
		0.577707, -0.808338, -0.113335,
		32.212578, 41.323376, 25.934843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446596, 41.353638, 26.329048>,  <31.808182, 41.889210, 26.014177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446596, 41.353638, 26.329048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.822964, 41.221603, 26.298815>,  <32.048782, 41.142384, 26.280674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.822964, 41.221603, 26.298815>,  <31.446596, 41.353638, 26.329048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822964, 41.221603, 26.298815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031794, -0.308336, 0.950746,
		-0.337139, -0.892171, -0.300614,
		0.940918, -0.330091, -0.075586,
		32.105240, 41.122578, 26.276138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418428, 40.814957, 26.819412>,  <31.446596, 41.353638, 26.329048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418428, 40.814957, 26.819412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.810440, 40.840481, 26.744076>,  <32.045647, 40.855793, 26.698874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.810440, 40.840481, 26.744076>,  <31.418428, 40.814957, 26.819412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810440, 40.840481, 26.744076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198324, -0.244291, 0.949205,
		0.014557, -0.967600, -0.252067,
		0.980029, 0.063808, -0.188343,
		32.104450, 40.859623, 26.687572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295805, 40.093910, 26.376682>,  <31.418428, 40.814957, 26.819412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295805, 40.093910, 26.376682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.049828, 39.782169, 26.328600>,  <30.902241, 39.595123, 26.299751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.049828, 39.782169, 26.328600>,  <31.295805, 40.093910, 26.376682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049828, 39.782169, 26.328600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395845, 0.436917, -0.807719,
		0.682021, -0.449118, -0.577183,
		-0.614942, -0.779357, -0.120205,
		30.865345, 39.548363, 26.292538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205532, 39.922279, 25.671654>,  <31.295805, 40.093910, 26.376682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205532, 39.922279, 25.671654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875662, 39.755589, 25.824625>,  <30.677740, 39.655575, 25.916407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.875662, 39.755589, 25.824625>,  <31.205532, 39.922279, 25.671654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875662, 39.755589, 25.824625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547002, 0.415632, -0.726663,
		0.143868, -0.808450, -0.570710,
		-0.824676, -0.416724, 0.382428,
		30.628260, 39.630569, 25.939352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839083, 39.643173, 25.152395>,  <31.205532, 39.922279, 25.671654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839083, 39.643173, 25.152395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579533, 39.706425, 25.450108>,  <30.423801, 39.744373, 25.628735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579533, 39.706425, 25.450108>,  <30.839083, 39.643173, 25.152395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579533, 39.706425, 25.450108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702577, 0.251048, -0.665853,
		-0.292140, -0.954972, -0.051803,
		-0.648876, 0.158127, 0.744282,
		30.384871, 39.753864, 25.673391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168360, 39.303249, 25.027176>,  <30.839083, 39.643173, 25.152395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168360, 39.303249, 25.027176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077305, 39.610199, 25.266947>,  <30.022671, 39.794369, 25.410809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.077305, 39.610199, 25.266947>,  <30.168360, 39.303249, 25.027176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077305, 39.610199, 25.266947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802870, 0.200408, -0.561459,
		-0.550981, -0.609072, 0.570484,
		-0.227639, 0.767377, 0.599426,
		30.009012, 39.840412, 25.446775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405663, 39.298557, 25.014486>,  <30.168360, 39.303249, 25.027176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405663, 39.298557, 25.014486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502052, 39.652294, 25.174417>,  <29.559887, 39.864536, 25.270376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502052, 39.652294, 25.174417>,  <29.405663, 39.298557, 25.014486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502052, 39.652294, 25.174417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666051, 0.450332, -0.594623,
		-0.705908, -0.123015, 0.697539,
		0.240976, 0.884346, 0.399827,
		29.574345, 39.917599, 25.294365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841143, 39.676037, 25.024679>,  <29.405663, 39.298557, 25.014486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841143, 39.676037, 25.024679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111088, 39.964443, 25.087540>,  <29.273054, 40.137486, 25.125256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111088, 39.964443, 25.087540>,  <28.841143, 39.676037, 25.024679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111088, 39.964443, 25.087540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538294, 0.626659, -0.563506,
		-0.504777, 0.295694, 0.811027,
		0.674863, 0.721016, 0.157153,
		29.313547, 40.180748, 25.134686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444653, 40.176247, 25.278130>,  <28.841143, 39.676037, 25.024679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444653, 40.176247, 25.278130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766027, 40.377815, 25.151291>,  <28.958853, 40.498756, 25.075188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766027, 40.377815, 25.151291>,  <28.444653, 40.176247, 25.278130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766027, 40.377815, 25.151291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595059, 0.661900, -0.455843,
		-0.019823, 0.554932, 0.831660,
		0.803437, 0.503923, -0.317096,
		29.007059, 40.528992, 25.056162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220366, 40.857460, 25.297075>,  <28.444653, 40.176247, 25.278130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220366, 40.857460, 25.297075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549648, 40.853989, 25.070004>,  <28.747217, 40.851906, 24.933762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549648, 40.853989, 25.070004>,  <28.220366, 40.857460, 25.297075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549648, 40.853989, 25.070004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469648, 0.551404, -0.689481,
		0.319004, 0.834193, 0.449843,
		0.823205, -0.008679, -0.567677,
		28.796610, 40.851383, 24.899700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220411, 41.469666, 25.020847>,  <28.220366, 40.857460, 25.297075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220411, 41.469666, 25.020847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461769, 41.257004, 24.783108>,  <28.606585, 41.129406, 24.640463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461769, 41.257004, 24.783108>,  <28.220411, 41.469666, 25.020847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461769, 41.257004, 24.783108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377872, 0.465706, -0.800207,
		0.702229, 0.707430, 0.080106,
		0.603396, -0.531659, -0.594350,
		28.642788, 41.097507, 24.604803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444904, 42.008614, 24.607079>,  <28.220411, 41.469666, 25.020847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444904, 42.008614, 24.607079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453878, 41.654335, 24.421591>,  <28.459263, 41.441769, 24.310299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453878, 41.654335, 24.421591>,  <28.444904, 42.008614, 24.607079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453878, 41.654335, 24.421591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425246, 0.411328, -0.806210,
		0.904800, 0.215283, -0.367411,
		0.022437, -0.885699, -0.463718,
		28.460609, 41.388626, 24.282476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385994, 42.210686, 23.963278>,  <28.444904, 42.008614, 24.607079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385994, 42.210686, 23.963278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326145, 41.816486, 23.931276>,  <28.290236, 41.579967, 23.912075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326145, 41.816486, 23.931276>,  <28.385994, 42.210686, 23.963278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326145, 41.816486, 23.931276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574895, 0.152544, -0.803882,
		0.804431, -0.074285, -0.589383,
		-0.149623, -0.985501, -0.080006,
		28.281258, 41.520836, 23.907274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319319, 42.100620, 23.262487>,  <28.385994, 42.210686, 23.963278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319319, 42.100620, 23.262487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176067, 41.758823, 23.412996>,  <28.090117, 41.553745, 23.503302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176067, 41.758823, 23.412996>,  <28.319319, 42.100620, 23.262487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176067, 41.758823, 23.412996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702584, -0.018778, -0.711353,
		0.614913, -0.519119, -0.593630,
		-0.358130, -0.854496, 0.376272,
		28.068628, 41.502476, 23.525877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288988, 41.526524, 22.677427>,  <28.319319, 42.100620, 23.262487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288988, 41.526524, 22.677427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013302, 41.455559, 22.958427>,  <27.847889, 41.412979, 23.127028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013302, 41.455559, 22.958427>,  <28.288988, 41.526524, 22.677427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013302, 41.455559, 22.958427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702293, -0.074917, -0.707935,
		0.178229, -0.981280, -0.072965,
		-0.689216, -0.177417, 0.702498,
		27.806538, 41.402336, 23.169176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432318, 40.803207, 22.705318>,  <28.288988, 41.526524, 22.677427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432318, 40.803207, 22.705318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519012, 40.550083, 22.407978>,  <28.571030, 40.398209, 22.229574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519012, 40.550083, 22.407978>,  <28.432318, 40.803207, 22.705318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519012, 40.550083, 22.407978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424850, -0.624421, 0.655439,
		-0.878935, -0.457873, 0.133514,
		0.216739, -0.632812, -0.743353,
		28.584034, 40.360241, 22.184973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109774, 40.295040, 22.883917>,  <28.432318, 40.803207, 22.705318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109774, 40.295040, 22.883917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359749, 40.122330, 22.623756>,  <28.509733, 40.018703, 22.467661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359749, 40.122330, 22.623756>,  <28.109774, 40.295040, 22.883917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359749, 40.122330, 22.623756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194010, -0.721091, 0.665122,
		-0.756185, -0.541843, -0.366866,
		0.624935, -0.431780, -0.650401,
		28.547230, 39.992798, 22.428637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900608, 39.599884, 22.968531>,  <28.109774, 40.295040, 22.883917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900608, 39.599884, 22.968531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260569, 39.610607, 22.794422>,  <28.476545, 39.617043, 22.689957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260569, 39.610607, 22.794422>,  <27.900608, 39.599884, 22.968531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260569, 39.610607, 22.794422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302024, -0.758312, 0.577706,
		-0.314582, -0.651340, -0.690503,
		0.899900, 0.026812, -0.435272,
		28.530539, 39.618652, 22.663841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105537, 38.926857, 22.744978>,  <27.900608, 39.599884, 22.968531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105537, 38.926857, 22.744978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458897, 39.112053, 22.773952>,  <28.670912, 39.223171, 22.791338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.458897, 39.112053, 22.773952>,  <28.105537, 38.926857, 22.744978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458897, 39.112053, 22.773952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310041, -0.693333, 0.650510,
		0.351405, -0.552200, -0.756036,
		0.883396, 0.462995, 0.072436,
		28.723915, 39.250950, 22.795683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515024, 38.443787, 22.492640>,  <28.105537, 38.926857, 22.744978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515024, 38.443787, 22.492640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762878, 38.704048, 22.668230>,  <28.911591, 38.860207, 22.773584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762878, 38.704048, 22.668230>,  <28.515024, 38.443787, 22.492640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762878, 38.704048, 22.668230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508000, -0.758798, 0.407630,
		0.598321, -0.029582, -0.800710,
		0.619636, 0.650654, 0.438977,
		28.948769, 38.899246, 22.799923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145819, 38.264351, 22.308056>,  <28.515024, 38.443787, 22.492640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145819, 38.264351, 22.308056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179888, 38.458103, 22.656336>,  <29.200329, 38.574356, 22.865305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179888, 38.458103, 22.656336>,  <29.145819, 38.264351, 22.308056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179888, 38.458103, 22.656336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559494, -0.746343, 0.360470,
		0.824447, 0.456451, -0.334575,
		0.085171, 0.484381, 0.870702,
		29.205439, 38.603416, 22.917547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753414, 37.936611, 22.605713>,  <29.145819, 38.264351, 22.308056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753414, 37.936611, 22.605713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.612543, 38.126453, 22.928383>,  <29.528021, 38.240360, 23.121984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.612543, 38.126453, 22.928383>,  <29.753414, 37.936611, 22.605713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612543, 38.126453, 22.928383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432205, -0.682019, 0.589957,
		0.830163, 0.556417, 0.035064,
		-0.352176, 0.474606, 0.806673,
		29.506889, 38.268837, 23.170385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437809, 38.100346, 23.003908>,  <29.753414, 37.936611, 22.605713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437809, 38.100346, 23.003908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124315, 38.085316, 23.251892>,  <29.936218, 38.076298, 23.400682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124315, 38.085316, 23.251892>,  <30.437809, 38.100346, 23.003908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124315, 38.085316, 23.251892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489064, -0.652623, 0.578705,
		0.382853, 0.756750, 0.529861,
		-0.783735, -0.037577, 0.619958,
		29.889194, 38.074043, 23.437880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155943, 38.077469, 22.675817>,  <30.437809, 38.100346, 23.003908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155943, 38.077469, 22.675817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.260349, 37.775883, 22.434687>,  <31.322992, 37.594929, 22.290009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.260349, 37.775883, 22.434687>,  <31.155943, 38.077469, 22.675817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260349, 37.775883, 22.434687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202009, 0.567986, -0.797862,
		0.943961, 0.330032, -0.004055,
		0.261017, -0.753970, -0.602826,
		31.338654, 37.549690, 22.253839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655556, 38.297665, 22.217833>,  <31.155943, 38.077469, 22.675817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655556, 38.297665, 22.217833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.480274, 37.993523, 22.026064>,  <31.375105, 37.811039, 21.911003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.480274, 37.993523, 22.026064>,  <31.655556, 38.297665, 22.217833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480274, 37.993523, 22.026064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047913, 0.512839, -0.857147,
		0.897598, -0.398575, -0.188297,
		-0.438204, -0.760351, -0.479420,
		31.348814, 37.765419, 21.882238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037991, 38.196499, 21.594728>,  <31.655556, 38.297665, 22.217833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037991, 38.196499, 21.594728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.684978, 38.021431, 21.525923>,  <31.473171, 37.916389, 21.484638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.684978, 38.021431, 21.525923>,  <32.037991, 38.196499, 21.594728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684978, 38.021431, 21.525923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037135, 0.429507, -0.902300,
		0.468798, -0.789914, -0.395304,
		-0.882524, -0.437676, -0.172019,
		31.420219, 37.890129, 21.474318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054810, 37.995274, 20.931583>,  <32.037991, 38.196499, 21.594728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054810, 37.995274, 20.931583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.666590, 37.994324, 21.027941>,  <31.433659, 37.993755, 21.085754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.666590, 37.994324, 21.027941>,  <32.054810, 37.995274, 20.931583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666590, 37.994324, 21.027941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228642, 0.324010, -0.918009,
		-0.075874, -0.946051, -0.315010,
		-0.970549, -0.002371, 0.240891,
		31.375425, 37.993610, 21.100208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733049, 37.641651, 20.474104>,  <32.054810, 37.995274, 20.931583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733049, 37.641651, 20.474104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.437922, 37.870785, 20.616922>,  <31.260845, 38.008266, 20.702614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.437922, 37.870785, 20.616922>,  <31.733049, 37.641651, 20.474104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437922, 37.870785, 20.616922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279063, 0.222768, -0.934076,
		-0.614611, -0.788817, -0.004505,
		-0.737819, 0.572837, 0.357045,
		31.216576, 38.042637, 20.724035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326540, 37.491707, 19.971380>,  <31.733049, 37.641651, 20.474104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326540, 37.491707, 19.971380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158611, 37.808426, 20.148832>,  <31.057854, 37.998455, 20.255304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158611, 37.808426, 20.148832>,  <31.326540, 37.491707, 19.971380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158611, 37.808426, 20.148832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397460, 0.279042, -0.874163,
		-0.815950, -0.543320, 0.197558,
		-0.419823, 0.791795, 0.443632,
		31.032663, 38.045963, 20.281921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559551, 37.512386, 19.732758>,  <31.326540, 37.491707, 19.971380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559551, 37.512386, 19.732758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662624, 37.881630, 19.846931>,  <30.724468, 38.103176, 19.915436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662624, 37.881630, 19.846931>,  <30.559551, 37.512386, 19.732758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662624, 37.881630, 19.846931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318028, 0.359979, -0.877082,
		-0.912391, 0.135235, 0.386335,
		0.257685, 0.923107, 0.285434,
		30.739929, 38.158562, 19.932562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150593, 37.888676, 19.411346>,  <30.559551, 37.512386, 19.732758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150593, 37.888676, 19.411346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389030, 38.200809, 19.486971>,  <30.532093, 38.388092, 19.532345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389030, 38.200809, 19.486971>,  <30.150593, 37.888676, 19.411346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389030, 38.200809, 19.486971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124109, 0.322186, -0.938506,
		-0.793265, 0.535973, 0.288900,
		0.596094, 0.780339, 0.189060,
		30.567858, 38.434910, 19.543690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698923, 38.471863, 19.132370>,  <30.150593, 37.888676, 19.411346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698923, 38.471863, 19.132370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.091488, 38.544243, 19.157949>,  <30.327026, 38.587669, 19.173298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.091488, 38.544243, 19.157949>,  <29.698923, 38.471863, 19.132370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091488, 38.544243, 19.157949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010605, 0.281577, -0.959480,
		-0.191621, 0.942323, 0.274424,
		0.981412, 0.180946, 0.063950,
		30.385912, 38.598526, 19.177134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.636303, 33.064617, 32.407066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.915867, 33.348995, 32.375862>,  <37.083603, 33.519623, 32.357140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.915867, 33.348995, 32.375862>,  <36.636303, 33.064617, 32.407066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915867, 33.348995, 32.375862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526365, 0.437448, -0.729095,
		-0.484218, 0.550634, 0.679952,
		0.698908, 0.710944, -0.078014,
		37.125538, 33.562279, 32.352459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353874, 33.727123, 32.311001>,  <36.636303, 33.064617, 32.407066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353874, 33.727123, 32.311001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729404, 33.784782, 32.185886>,  <36.954723, 33.819378, 32.110817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729404, 33.784782, 32.185886>,  <36.353874, 33.727123, 32.311001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729404, 33.784782, 32.185886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343425, 0.460094, -0.818763,
		0.025889, 0.876091, 0.481450,
		0.938823, 0.144145, -0.312783,
		37.011051, 33.828026, 32.092052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357426, 34.318550, 31.890606>,  <36.353874, 33.727123, 32.311001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357426, 34.318550, 31.890606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.685764, 34.117027, 31.782982>,  <36.882767, 33.996113, 31.718409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.685764, 34.117027, 31.782982>,  <36.357426, 34.318550, 31.890606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685764, 34.117027, 31.782982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218361, 0.158473, -0.962915,
		0.527758, 0.849157, 0.020071,
		0.820847, -0.503804, -0.269058,
		36.932018, 33.965885, 31.702265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589886, 34.658009, 31.315874>,  <36.357426, 34.318550, 31.890606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589886, 34.658009, 31.315874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764488, 34.299042, 31.290253>,  <36.869247, 34.083660, 31.274879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764488, 34.299042, 31.290253>,  <36.589886, 34.658009, 31.315874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764488, 34.299042, 31.290253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278089, -0.066870, -0.958225,
		0.855647, 0.436079, -0.278752,
		0.436502, -0.897421, -0.064052,
		36.895439, 34.029816, 31.271038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945370, 34.602505, 30.667908>,  <36.589886, 34.658009, 31.315874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945370, 34.602505, 30.667908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912621, 34.213860, 30.756687>,  <36.892971, 33.980671, 30.809956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912621, 34.213860, 30.756687>,  <36.945370, 34.602505, 30.667908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912621, 34.213860, 30.756687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414418, -0.169343, -0.894192,
		0.906397, -0.165187, -0.388791,
		-0.081870, -0.971615, 0.221948,
		36.888058, 33.922375, 30.823271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198318, 34.197060, 30.117786>,  <36.945370, 34.602505, 30.667908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198318, 34.197060, 30.117786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952702, 33.952702, 30.317692>,  <36.805332, 33.806087, 30.437635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952702, 33.952702, 30.317692>,  <37.198318, 34.197060, 30.117786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952702, 33.952702, 30.317692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430641, -0.271327, -0.860773,
		0.661438, -0.743770, -0.096469,
		-0.614042, -0.610892, 0.499763,
		36.768490, 33.769436, 30.467621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161816, 33.587082, 29.689560>,  <37.198318, 34.197060, 30.117786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161816, 33.587082, 29.689560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858799, 33.563934, 29.949648>,  <36.676991, 33.550045, 30.105701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858799, 33.563934, 29.949648>,  <37.161816, 33.587082, 29.689560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858799, 33.563934, 29.949648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586941, -0.375589, -0.717240,
		0.285723, -0.924978, 0.250557,
		-0.757537, -0.057870, 0.650222,
		36.631538, 33.546574, 30.144714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856293, 32.872189, 29.480543>,  <37.161816, 33.587082, 29.689560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856293, 32.872189, 29.480543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597382, 33.099945, 29.683258>,  <36.442036, 33.236599, 29.804888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597382, 33.099945, 29.683258>,  <36.856293, 32.872189, 29.480543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597382, 33.099945, 29.683258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730659, -0.274012, -0.625344,
		-0.217195, -0.775060, 0.593387,
		-0.647274, 0.569385, 0.506790,
		36.403198, 33.270763, 29.835295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252201, 32.459908, 29.419868>,  <36.856293, 32.872189, 29.480543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252201, 32.459908, 29.419868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111874, 32.825180, 29.502834>,  <36.027679, 33.044346, 29.552614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111874, 32.825180, 29.502834>,  <36.252201, 32.459908, 29.419868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111874, 32.825180, 29.502834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667216, -0.088332, -0.739608,
		-0.657078, -0.397856, 0.640280,
		-0.350814, 0.913186, 0.207415,
		36.006630, 33.099136, 29.565060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528152, 32.411030, 29.381721>,  <36.252201, 32.459908, 29.419868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528152, 32.411030, 29.381721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622318, 32.796837, 29.333902>,  <35.678818, 33.028320, 29.305210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622318, 32.796837, 29.333902>,  <35.528152, 32.411030, 29.381721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622318, 32.796837, 29.333902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520485, 0.021236, -0.853607,
		-0.820777, 0.263175, 0.507014,
		0.235415, 0.964514, -0.119549,
		35.692944, 33.086189, 29.298038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924549, 32.628746, 29.278387>,  <35.528152, 32.411030, 29.381721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924549, 32.628746, 29.278387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171059, 32.913982, 29.144691>,  <35.318966, 33.085125, 29.064474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171059, 32.913982, 29.144691>,  <34.924549, 32.628746, 29.278387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171059, 32.913982, 29.144691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628755, 0.189956, -0.754045,
		-0.474210, 0.674851, 0.565422,
		0.616273, 0.713087, -0.334237,
		35.355942, 33.127907, 29.044420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475639, 33.234192, 29.100201>,  <34.924549, 32.628746, 29.278387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475639, 33.234192, 29.100201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827183, 33.267448, 28.912291>,  <35.038109, 33.287403, 28.799545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827183, 33.267448, 28.912291>,  <34.475639, 33.234192, 29.100201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827183, 33.267448, 28.912291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476530, 0.200027, -0.856100,
		0.022794, 0.976257, 0.215413,
		0.878862, 0.083137, -0.469776,
		35.090843, 33.292389, 28.771358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006741, 33.514061, 29.410814>,  <34.475639, 33.234192, 29.100201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006741, 33.514061, 29.410814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674221, 33.326706, 29.530518>,  <33.474709, 33.214294, 29.602339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674221, 33.326706, 29.530518>,  <34.006741, 33.514061, 29.410814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674221, 33.326706, 29.530518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440071, -0.225747, 0.869124,
		-0.339531, 0.854196, 0.393787,
		-0.831298, -0.468389, 0.299258,
		33.424831, 33.186188, 29.620295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882515, 33.634254, 30.124783>,  <34.006741, 33.514061, 29.410814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882515, 33.634254, 30.124783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643764, 33.313408, 30.117273>,  <33.500515, 33.120899, 30.112768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643764, 33.313408, 30.117273>,  <33.882515, 33.634254, 30.124783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643764, 33.313408, 30.117273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079176, -0.082170, 0.993468,
		-0.798417, 0.591492, 0.112554,
		-0.596877, -0.802113, -0.018774,
		33.464703, 33.072773, 30.111641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506989, 33.760944, 30.749952>,  <33.882515, 33.634254, 30.124783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506989, 33.760944, 30.749952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470982, 33.379734, 30.634275>,  <33.449379, 33.151009, 30.564869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470982, 33.379734, 30.634275>,  <33.506989, 33.760944, 30.749952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470982, 33.379734, 30.634275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019520, -0.288626, 0.957243,
		-0.995749, 0.091812, 0.007378,
		-0.090016, -0.953030, -0.289191,
		33.443977, 33.093826, 30.547518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912441, 33.536629, 31.107910>,  <33.506989, 33.760944, 30.749952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912441, 33.536629, 31.107910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159531, 33.237408, 31.010891>,  <33.307785, 33.057877, 30.952679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159531, 33.237408, 31.010891>,  <32.912441, 33.536629, 31.107910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159531, 33.237408, 31.010891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015298, -0.319804, 0.947360,
		-0.786244, -0.581500, -0.208995,
		0.617727, -0.748053, -0.242548,
		33.344849, 33.012993, 30.938128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772972, 33.038654, 31.647121>,  <32.912441, 33.536629, 31.107910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772972, 33.038654, 31.647121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096691, 32.875233, 31.478302>,  <33.290924, 32.777180, 31.377010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096691, 32.875233, 31.478302>,  <32.772972, 33.038654, 31.647121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096691, 32.875233, 31.478302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317949, -0.299468, 0.899571,
		-0.493911, -0.862209, -0.112459,
		0.809296, -0.408552, -0.422049,
		33.339481, 32.752666, 31.351686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729183, 32.285156, 31.798159>,  <32.772972, 33.038654, 31.647121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729183, 32.285156, 31.798159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106342, 32.384777, 31.709692>,  <33.332638, 32.444550, 31.656612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106342, 32.384777, 31.709692>,  <32.729183, 32.285156, 31.798159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106342, 32.384777, 31.709692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300220, -0.347922, 0.888155,
		0.144245, -0.903839, -0.402825,
		0.942900, 0.249048, -0.221165,
		33.389214, 32.459492, 31.643343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061829, 31.869574, 32.176506>,  <32.729183, 32.285156, 31.798159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061829, 31.869574, 32.176506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344070, 32.137951, 32.085327>,  <33.513416, 32.298977, 32.030621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344070, 32.137951, 32.085327>,  <33.061829, 31.869574, 32.176506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344070, 32.137951, 32.085327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512035, -0.260392, 0.818545,
		0.489843, -0.694283, -0.527281,
		0.705602, 0.670945, -0.227946,
		33.555752, 32.339233, 32.016945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570053, 31.478006, 32.403206>,  <33.061829, 31.869574, 32.176506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570053, 31.478006, 32.403206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706192, 31.853191, 32.376709>,  <33.787876, 32.078304, 32.360809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706192, 31.853191, 32.376709>,  <33.570053, 31.478006, 32.403206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706192, 31.853191, 32.376709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330687, -0.053444, 0.942226,
		0.880234, -0.342588, -0.328362,
		0.340345, 0.937964, -0.066246,
		33.808296, 32.134583, 32.356834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241245, 31.440323, 32.595539>,  <33.570053, 31.478006, 32.403206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241245, 31.440323, 32.595539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113445, 31.815454, 32.649799>,  <34.036766, 32.040531, 32.682354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113445, 31.815454, 32.649799>,  <34.241245, 31.440323, 32.595539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113445, 31.815454, 32.649799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264004, -0.049383, 0.963257,
		0.910067, 0.343572, -0.231812,
		-0.319501, 0.937827, 0.135646,
		34.017593, 32.096802, 32.690495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793240, 31.893879, 32.946854>,  <34.241245, 31.440323, 32.595539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793240, 31.893879, 32.946854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436737, 32.056747, 33.026722>,  <34.222836, 32.154469, 33.074642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436737, 32.056747, 33.026722>,  <34.793240, 31.893879, 32.946854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436737, 32.056747, 33.026722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173256, -0.101169, 0.979667,
		0.419092, 0.907732, 0.019623,
		-0.891260, 0.407171, 0.199669,
		34.169357, 32.178898, 33.086624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060070, 32.279240, 33.468361>,  <34.793240, 31.893879, 32.946854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060070, 32.279240, 33.468361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663727, 32.294205, 33.520203>,  <34.425919, 32.303185, 33.551308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663727, 32.294205, 33.520203>,  <35.060070, 32.279240, 33.468361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663727, 32.294205, 33.520203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133917, 0.157247, 0.978437,
		0.016228, 0.986850, -0.160820,
		-0.990860, 0.037415, 0.129605,
		34.366470, 32.305428, 33.559086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912449, 32.903877, 33.794331>,  <35.060070, 32.279240, 33.468361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912449, 32.903877, 33.794331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582882, 32.697475, 33.888054>,  <34.385143, 32.573631, 33.944286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582882, 32.697475, 33.888054>,  <34.912449, 32.903877, 33.794331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582882, 32.697475, 33.888054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052185, 0.342613, 0.938026,
		-0.564307, 0.785080, -0.255356,
		-0.823914, -0.516009, 0.234308,
		34.335709, 32.542671, 33.958347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603741, 33.415058, 34.049217>,  <34.912449, 32.903877, 33.794331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603741, 33.415058, 34.049217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423904, 33.082329, 34.179413>,  <34.316002, 32.882690, 34.257530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423904, 33.082329, 34.179413>,  <34.603741, 33.415058, 34.049217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423904, 33.082329, 34.179413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136029, 0.296382, 0.945333,
		-0.882817, 0.469288, -0.020098,
		-0.449590, -0.831821, 0.325488,
		34.289028, 32.832783, 34.277058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099766, 33.708099, 34.496368>,  <34.603741, 33.415058, 34.049217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099766, 33.708099, 34.496368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145672, 33.323597, 34.596619>,  <34.173218, 33.092896, 34.656769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145672, 33.323597, 34.596619>,  <34.099766, 33.708099, 34.496368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145672, 33.323597, 34.596619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002367, 0.252027, 0.967717,
		-0.993389, -0.111658, 0.026650,
		0.114769, -0.961257, 0.250625,
		34.180103, 33.035221, 34.671806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540569, 33.474667, 35.075577>,  <34.099766, 33.708099, 34.496368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540569, 33.474667, 35.075577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900936, 33.301174, 35.069706>,  <34.117157, 33.197079, 35.066181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900936, 33.301174, 35.069706>,  <33.540569, 33.474667, 35.075577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900936, 33.301174, 35.069706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107675, 0.190629, 0.975739,
		-0.420413, -0.880645, 0.218444,
		0.900922, -0.433734, -0.014681,
		34.171211, 33.171055, 35.065300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412415, 34.025543, 34.616329>,  <33.540569, 33.474667, 35.075577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412415, 34.025543, 34.616329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342533, 34.336994, 34.857399>,  <33.300606, 34.523865, 35.002041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342533, 34.336994, 34.857399>,  <33.412415, 34.025543, 34.616329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342533, 34.336994, 34.857399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372794, 0.514213, -0.772405,
		-0.911320, -0.359613, 0.200435,
		-0.174701, 0.778629, 0.602674,
		33.290123, 34.570583, 35.038200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723164, 34.235718, 34.459110>,  <33.412415, 34.025543, 34.616329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723164, 34.235718, 34.459110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962193, 34.524857, 34.597904>,  <33.105610, 34.698341, 34.681179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962193, 34.524857, 34.597904>,  <32.723164, 34.235718, 34.459110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962193, 34.524857, 34.597904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284259, 0.595627, -0.751283,
		-0.749739, 0.350309, 0.561404,
		0.597569, 0.722850, 0.346986,
		33.141464, 34.741711, 34.702000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353893, 34.820797, 34.547184>,  <32.723164, 34.235718, 34.459110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353893, 34.820797, 34.547184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729836, 34.938854, 34.478413>,  <32.955402, 35.009689, 34.437149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729836, 34.938854, 34.478413>,  <32.353893, 34.820797, 34.547184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729836, 34.938854, 34.478413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304211, 0.494439, -0.814239,
		-0.155307, 0.817572, 0.554487,
		0.939859, 0.295139, -0.171925,
		33.011795, 35.027397, 34.426834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239376, 35.444298, 34.350189>,  <32.353893, 34.820797, 34.547184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239376, 35.444298, 34.350189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609013, 35.341030, 34.237476>,  <32.830795, 35.279072, 34.169849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609013, 35.341030, 34.237476>,  <32.239376, 35.444298, 34.350189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609013, 35.341030, 34.237476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123691, 0.495600, -0.859698,
		0.361596, 0.829296, 0.426048,
		0.924093, -0.258165, -0.281784,
		32.886242, 35.263580, 34.152943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517620, 36.071590, 34.158283>,  <32.239376, 35.444298, 34.350189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517620, 36.071590, 34.158283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733582, 35.787037, 33.978310>,  <32.863159, 35.616306, 33.870327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733582, 35.787037, 33.978310>,  <32.517620, 36.071590, 34.158283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733582, 35.787037, 33.978310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263953, 0.364484, -0.893017,
		0.799268, 0.600908, 0.009017,
		0.539907, -0.711380, -0.449932,
		32.895554, 35.573624, 33.843330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032719, 36.426189, 33.695770>,  <32.517620, 36.071590, 34.158283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032719, 36.426189, 33.695770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994286, 36.046688, 33.575340>,  <32.971226, 35.818989, 33.503082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994286, 36.046688, 33.575340>,  <33.032719, 36.426189, 33.695770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994286, 36.046688, 33.575340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135899, 0.312142, -0.940265,
		0.986053, -0.049425, -0.158925,
		-0.096080, -0.948749, -0.301072,
		32.965462, 35.762062, 33.485020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013718, 36.518417, 33.010971>,  <33.032719, 36.426189, 33.695770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013718, 36.518417, 33.010971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908527, 36.133503, 32.983131>,  <32.845413, 35.902554, 32.966427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908527, 36.133503, 32.983131>,  <33.013718, 36.518417, 33.010971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908527, 36.133503, 32.983131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327763, 0.156952, -0.931631,
		0.907422, -0.222186, -0.356678,
		-0.262977, -0.962288, -0.069597,
		32.829636, 35.844818, 32.962254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320911, 36.197205, 32.412827>,  <33.013718, 36.518417, 33.010971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320911, 36.197205, 32.412827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989735, 35.996098, 32.512218>,  <32.791031, 35.875435, 32.571854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989735, 35.996098, 32.512218>,  <33.320911, 36.197205, 32.412827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989735, 35.996098, 32.512218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359288, 0.135304, -0.923366,
		0.430616, -0.853768, -0.292661,
		-0.827938, -0.502766, 0.248485,
		32.741352, 35.845268, 32.586765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099140, 35.567692, 31.902281>,  <33.320911, 36.197205, 32.412827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099140, 35.567692, 31.902281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.762405, 35.677811, 32.087978>,  <32.560364, 35.743881, 32.199398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.762405, 35.677811, 32.087978>,  <33.099140, 35.567692, 31.902281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762405, 35.677811, 32.087978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459646, 0.085178, -0.884008,
		-0.282909, -0.957578, 0.054833,
		-0.841836, 0.275297, 0.464244,
		32.509853, 35.760399, 32.227253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652790, 35.524879, 31.373507>,  <33.099140, 35.567692, 31.902281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652790, 35.524879, 31.373507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430523, 35.707073, 31.651718>,  <32.297161, 35.816391, 31.818645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430523, 35.707073, 31.651718>,  <32.652790, 35.524879, 31.373507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430523, 35.707073, 31.651718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712527, 0.170178, -0.680694,
		-0.428410, -0.873827, 0.229982,
		-0.555671, 0.455485, 0.695531,
		32.263821, 35.843719, 31.860378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116436, 35.349091, 31.097849>,  <32.652790, 35.524879, 31.373507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116436, 35.349091, 31.097849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025070, 35.631783, 31.365686>,  <31.970251, 35.801399, 31.526390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025070, 35.631783, 31.365686>,  <32.116436, 35.349091, 31.097849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025070, 35.631783, 31.365686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717139, 0.343019, -0.606672,
		-0.658438, -0.618763, 0.428476,
		-0.228411, 0.706732, 0.669595,
		31.956547, 35.843803, 31.566565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385973, 35.346870, 31.101120>,  <32.116436, 35.349091, 31.097849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385973, 35.346870, 31.101120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.512510, 35.696503, 31.248587>,  <31.588432, 35.906281, 31.337067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.512510, 35.696503, 31.248587>,  <31.385973, 35.346870, 31.101120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512510, 35.696503, 31.248587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608673, 0.485101, -0.627849,
		-0.727630, -0.025783, 0.685485,
		0.316341, 0.874078, 0.368667,
		31.607412, 35.958725, 31.359186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815533, 35.744595, 31.164478>,  <31.385973, 35.346870, 31.101120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815533, 35.744595, 31.164478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.101494, 36.024254, 31.168678>,  <31.273071, 36.192047, 31.171198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.101494, 36.024254, 31.168678>,  <30.815533, 35.744595, 31.164478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101494, 36.024254, 31.168678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516868, 0.538513, -0.665471,
		-0.470915, 0.470320, 0.746350,
		0.714903, 0.699145, 0.010500,
		31.315966, 36.233997, 31.171829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479437, 36.382961, 31.146009>,  <30.815533, 35.744595, 31.164478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479437, 36.382961, 31.146009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.852268, 36.458740, 31.022503>,  <31.075968, 36.504208, 30.948399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.852268, 36.458740, 31.022503>,  <30.479437, 36.382961, 31.146009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852268, 36.458740, 31.022503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353098, 0.665553, -0.657542,
		0.080929, 0.721906, 0.687243,
		0.932079, 0.189450, -0.308766,
		31.131891, 36.515575, 30.929873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498913, 37.164951, 30.978184>,  <30.479437, 36.382961, 31.146009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498913, 37.164951, 30.978184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839340, 37.058693, 30.797026>,  <31.043596, 36.994938, 30.688332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839340, 37.058693, 30.797026>,  <30.498913, 37.164951, 30.978184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839340, 37.058693, 30.797026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265352, 0.526700, -0.807574,
		0.453065, 0.807479, 0.377770,
		0.851070, -0.265642, -0.452895,
		31.094662, 36.979000, 30.661158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957441, 37.783543, 30.885693>,  <30.498913, 37.164951, 30.978184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957441, 37.783543, 30.885693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.085958, 37.522278, 30.611422>,  <31.163069, 37.365520, 30.446859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.085958, 37.522278, 30.611422>,  <30.957441, 37.783543, 30.885693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085958, 37.522278, 30.611422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018002, 0.728148, -0.685183,
		0.946809, 0.207801, 0.245707,
		0.321293, -0.653160, -0.685676,
		31.182346, 37.326328, 30.405718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383068, 38.191006, 30.537495>,  <30.957441, 37.783543, 30.885693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383068, 38.191006, 30.537495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.301514, 37.856335, 30.334160>,  <31.252581, 37.655533, 30.212158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.301514, 37.856335, 30.334160>,  <31.383068, 38.191006, 30.537495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301514, 37.856335, 30.334160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340571, 0.426194, -0.838075,
		0.917846, -0.343997, 0.198052,
		-0.203887, -0.836675, -0.508336,
		31.240347, 37.605331, 30.181660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870651, 37.967739, 30.059277>,  <31.383068, 38.191006, 30.537495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870651, 37.967739, 30.059277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557505, 37.796307, 29.878860>,  <31.369617, 37.693447, 29.770611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557505, 37.796307, 29.878860>,  <31.870651, 37.967739, 30.059277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557505, 37.796307, 29.878860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307189, 0.364166, -0.879215,
		0.541070, -0.826862, -0.153437,
		-0.782866, -0.428582, -0.451042,
		31.322645, 37.667732, 29.743547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098579, 37.714424, 29.404308>,  <31.870651, 37.967739, 30.059277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098579, 37.714424, 29.404308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703268, 37.724716, 29.344107>,  <31.466082, 37.730892, 29.307985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703268, 37.724716, 29.344107>,  <32.098579, 37.714424, 29.404308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703268, 37.724716, 29.344107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151241, 0.300257, -0.941792,
		0.020961, -0.953511, -0.300628,
		-0.988274, 0.025726, -0.150504,
		31.406786, 37.732433, 29.298956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037270, 37.368893, 28.834129>,  <32.098579, 37.714424, 29.404308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037270, 37.368893, 28.834129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697527, 37.575104, 28.879410>,  <31.493681, 37.698830, 28.906578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697527, 37.575104, 28.879410>,  <32.037270, 37.368893, 28.834129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697527, 37.575104, 28.879410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010952, 0.197211, -0.980300,
		-0.527701, -0.833867, -0.161857,
		-0.849360, 0.515533, 0.113201,
		31.442719, 37.729763, 28.913370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549953, 37.249336, 28.202213>,  <32.037270, 37.368893, 28.834129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549953, 37.249336, 28.202213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395638, 37.589272, 28.345840>,  <31.303047, 37.793236, 28.432016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.395638, 37.589272, 28.345840>,  <31.549953, 37.249336, 28.202213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395638, 37.589272, 28.345840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121869, 0.338846, -0.932916,
		-0.914501, -0.403671, -0.027154,
		-0.385792, 0.849843, 0.359070,
		31.279900, 37.844223, 28.453562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091146, 37.454807, 27.744770>,  <31.549953, 37.249336, 28.202213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091146, 37.454807, 27.744770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122452, 37.792965, 27.956118>,  <31.141235, 37.995861, 28.082926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122452, 37.792965, 27.956118>,  <31.091146, 37.454807, 27.744770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122452, 37.792965, 27.956118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284956, 0.526855, -0.800764,
		-0.955340, -0.087890, 0.282136,
		0.078265, 0.845398, 0.528371,
		31.145931, 38.046585, 28.114630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491947, 37.828945, 27.602320>,  <31.091146, 37.454807, 27.744770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491947, 37.828945, 27.602320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.737852, 38.100113, 27.763563>,  <30.885395, 38.262814, 27.860310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.737852, 38.100113, 27.763563>,  <30.491947, 37.828945, 27.602320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737852, 38.100113, 27.763563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252750, 0.653474, -0.713504,
		-0.747117, 0.336750, 0.573075,
		0.614763, 0.677916, 0.403108,
		30.922281, 38.303490, 27.884495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093731, 38.415478, 27.635954>,  <30.491947, 37.828945, 27.602320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093731, 38.415478, 27.635954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470482, 38.547485, 27.661102>,  <30.696533, 38.626690, 27.676191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470482, 38.547485, 27.661102>,  <30.093731, 38.415478, 27.635954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470482, 38.547485, 27.661102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238381, 0.788385, -0.567119,
		-0.236723, 0.519171, 0.821233,
		0.941879, 0.330016, 0.062869,
		30.753046, 38.646492, 27.679962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116049, 39.155293, 27.679789>,  <30.093731, 38.415478, 27.635954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116049, 39.155293, 27.679789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481703, 39.060551, 27.548180>,  <30.701096, 39.003704, 27.469213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481703, 39.060551, 27.548180>,  <30.116049, 39.155293, 27.679789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481703, 39.060551, 27.548180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074109, 0.700279, -0.710012,
		0.398576, 0.673431, 0.622597,
		0.914136, -0.236854, -0.329022,
		30.755943, 38.989494, 27.449472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456427, 39.737350, 27.564535>,  <30.116049, 39.155293, 27.679789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456427, 39.737350, 27.564535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642488, 39.468185, 27.334467>,  <30.754126, 39.306686, 27.196426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642488, 39.468185, 27.334467>,  <30.456427, 39.737350, 27.564535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642488, 39.468185, 27.334467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089843, 0.610502, -0.786902,
		0.880659, 0.417707, 0.223521,
		0.465154, -0.672911, -0.575172,
		30.782034, 39.266312, 27.161915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023869, 40.068707, 27.094130>,  <30.456427, 39.737350, 27.564535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023869, 40.068707, 27.094130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.899759, 39.723965, 26.933659>,  <30.825293, 39.517120, 26.837376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.899759, 39.723965, 26.933659>,  <31.023869, 40.068707, 27.094130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899759, 39.723965, 26.933659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187927, 0.469281, -0.862820,
		0.931887, -0.192319, -0.307571,
		-0.310274, -0.861852, -0.401175,
		30.806677, 39.465408, 26.813307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770290, 40.091515, 27.047703>,  <31.023869, 40.068707, 27.094130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770290, 40.091515, 27.047703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069504, 40.356831, 27.038801>,  <32.249031, 40.516022, 27.033461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069504, 40.356831, 27.038801>,  <31.770290, 40.091515, 27.047703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069504, 40.356831, 27.038801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282436, -0.287817, 0.915091,
		0.600566, -0.690802, -0.402633,
		0.748031, 0.663291, -0.022254,
		32.293915, 40.555817, 27.032125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432007, 39.699837, 27.226845>,  <31.770290, 40.091515, 27.047703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432007, 39.699837, 27.226845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491638, 40.081963, 27.328938>,  <32.527416, 40.311237, 27.390192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.491638, 40.081963, 27.328938>,  <32.432007, 39.699837, 27.226845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491638, 40.081963, 27.328938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205785, -0.282438, 0.936953,
		0.967175, -0.087159, -0.238696,
		0.149081, 0.955318, 0.255231,
		32.536362, 40.368557, 27.405506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109234, 39.687542, 27.605581>,  <32.432007, 39.699837, 27.226845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109234, 39.687542, 27.605581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.976299, 40.051559, 27.704676>,  <32.896538, 40.269970, 27.764132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.976299, 40.051559, 27.704676>,  <33.109234, 39.687542, 27.605581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976299, 40.051559, 27.704676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518369, -0.043195, 0.854066,
		0.787939, 0.412253, -0.457384,
		-0.332334, 0.910045, 0.247734,
		32.876598, 40.324574, 27.778996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681240, 39.878403, 28.044556>,  <33.109234, 39.687542, 27.605581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681240, 39.878403, 28.044556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379627, 40.127766, 28.127308>,  <33.198662, 40.277386, 28.176960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379627, 40.127766, 28.127308>,  <33.681240, 39.878403, 28.044556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379627, 40.127766, 28.127308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326452, 0.082372, 0.941618,
		0.569974, 0.777543, -0.265625,
		-0.754028, 0.623411, 0.206881,
		33.153419, 40.314789, 28.189373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001442, 40.550785, 28.278103>,  <33.681240, 39.878403, 28.044556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001442, 40.550785, 28.278103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633678, 40.486572, 28.421726>,  <33.413021, 40.448044, 28.507900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633678, 40.486572, 28.421726>,  <34.001442, 40.550785, 28.278103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633678, 40.486572, 28.421726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389657, -0.247614, 0.887049,
		-0.053491, 0.955467, 0.290210,
		-0.919406, -0.160531, 0.359059,
		33.357857, 40.438412, 28.529444>
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
