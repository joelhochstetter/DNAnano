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
	<24.263086, 34.848122, 35.294281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.090143, 35.146309, 35.091366>,  <23.986378, 35.325222, 34.969616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.090143, 35.146309, 35.091366>,  <24.263086, 34.848122, 35.294281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.090143, 35.146309, 35.091366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632547, 0.651688, 0.418553,
		0.642611, -0.139917, -0.753309,
		-0.432359, 0.745470, -0.507286,
		23.960436, 35.369949, 34.939178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829556, 35.317856, 35.060287>,  <24.263086, 34.848122, 35.294281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829556, 35.317856, 35.060287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490364, 35.529842, 35.056877>,  <24.286850, 35.657032, 35.054832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.490364, 35.529842, 35.056877>,  <24.829556, 35.317856, 35.060287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.490364, 35.529842, 35.056877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478162, 0.771833, 0.419088,
		0.228681, 0.351301, -0.907906,
		-0.847978, 0.529963, -0.008525,
		24.235971, 35.688831, 35.054321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948303, 35.943138, 34.713245>,  <24.829556, 35.317856, 35.060287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948303, 35.943138, 34.713245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667610, 35.961948, 34.997601>,  <24.499195, 35.973236, 35.168213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.667610, 35.961948, 34.997601>,  <24.948303, 35.943138, 34.713245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.667610, 35.961948, 34.997601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503223, 0.739049, 0.447853,
		-0.504322, 0.672008, -0.542277,
		-0.701730, 0.047025, 0.710889,
		24.457090, 35.976055, 35.210869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.275909, 36.459759, 34.595444>,  <24.948303, 35.943138, 34.713245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.275909, 36.459759, 34.595444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404659, 36.392731, 34.968178>,  <24.481909, 36.352516, 35.191818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404659, 36.392731, 34.968178>,  <24.275909, 36.459759, 34.595444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404659, 36.392731, 34.968178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199131, 0.974180, 0.106396,
		-0.925604, 0.151311, 0.346933,
		0.321876, -0.167565, 0.931836,
		24.501223, 36.342461, 35.247730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.926380, 36.959332, 35.238533>,  <24.275909, 36.459759, 34.595444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.926380, 36.959332, 35.238533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298174, 36.829575, 35.308769>,  <24.521250, 36.751720, 35.350910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298174, 36.829575, 35.308769>,  <23.926380, 36.959332, 35.238533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298174, 36.829575, 35.308769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306170, 0.943968, 0.123226,
		-0.205725, -0.060776, 0.976721,
		0.929482, -0.324393, 0.175590,
		24.577019, 36.732258, 35.361446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.103409, 37.387138, 35.791561>,  <23.926380, 36.959332, 35.238533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.103409, 37.387138, 35.791561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428783, 37.262226, 35.595276>,  <24.624008, 37.187279, 35.477505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428783, 37.262226, 35.595276>,  <24.103409, 37.387138, 35.791561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.428783, 37.262226, 35.595276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416693, 0.901479, 0.117058,
		0.405814, -0.299696, 0.863422,
		0.813439, -0.312278, -0.490714,
		24.672815, 37.168541, 35.448063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.666306, 37.654400, 36.209534>,  <24.103409, 37.387138, 35.791561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.666306, 37.654400, 36.209534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843893, 37.547031, 35.867577>,  <24.950445, 37.482609, 35.662403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843893, 37.547031, 35.867577>,  <24.666306, 37.654400, 36.209534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843893, 37.547031, 35.867577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707612, 0.690339, 0.150724,
		0.549708, -0.671848, 0.496429,
		0.443968, -0.268425, -0.854892,
		24.977083, 37.466503, 35.611111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350531, 37.627403, 36.369110>,  <24.666306, 37.654400, 36.209534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350531, 37.627403, 36.369110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301794, 37.711658, 35.981133>,  <25.272552, 37.762211, 35.748348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301794, 37.711658, 35.981133>,  <25.350531, 37.627403, 36.369110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301794, 37.711658, 35.981133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632887, 0.769277, 0.087558,
		0.764597, -0.603195, -0.227040,
		-0.121842, 0.210638, -0.969941,
		25.265242, 37.774849, 35.690151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044241, 37.878765, 36.114094>,  <25.350531, 37.627403, 36.369110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044241, 37.878765, 36.114094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789654, 38.002758, 35.831585>,  <25.636902, 38.077152, 35.662079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789654, 38.002758, 35.831585>,  <26.044241, 37.878765, 36.114094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789654, 38.002758, 35.831585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533848, 0.837955, -0.113306,
		0.556701, -0.449158, -0.698814,
		-0.636467, 0.309983, -0.706273,
		25.598713, 38.095753, 35.619701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444534, 37.977383, 35.445358>,  <26.044241, 37.878765, 36.114094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444534, 37.977383, 35.445358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120966, 38.211166, 35.419872>,  <25.926825, 38.351437, 35.404579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120966, 38.211166, 35.419872>,  <26.444534, 37.977383, 35.445358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120966, 38.211166, 35.419872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587503, 0.799506, -0.125023,
		-0.022129, -0.138567, -0.990106,
		-0.808919, 0.584457, -0.063716,
		25.878290, 38.386505, 35.400757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601873, 38.458649, 34.878632>,  <26.444534, 37.977383, 35.445358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601873, 38.458649, 34.878632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289928, 38.632278, 35.059029>,  <26.102762, 38.736458, 35.167267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289928, 38.632278, 35.059029>,  <26.601873, 38.458649, 34.878632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289928, 38.632278, 35.059029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347984, 0.899544, -0.264061,
		-0.520309, -0.048993, -0.852571,
		-0.779862, 0.434075, 0.450992,
		26.055969, 38.762501, 35.194324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136715, 38.823692, 34.394531>,  <26.601873, 38.458649, 34.878632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136715, 38.823692, 34.394531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093559, 39.017441, 34.741802>,  <26.067665, 39.133690, 34.950165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093559, 39.017441, 34.741802>,  <26.136715, 38.823692, 34.394531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093559, 39.017441, 34.741802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415403, 0.815356, -0.403280,
		-0.903216, 0.317136, -0.289181,
		-0.107891, 0.484375, 0.868182,
		26.061192, 39.162754, 35.002258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821947, 39.512882, 34.319916>,  <26.136715, 38.823692, 34.394531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821947, 39.512882, 34.319916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040665, 39.531410, 34.654308>,  <26.171896, 39.542526, 34.854946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040665, 39.531410, 34.654308>,  <25.821947, 39.512882, 34.319916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040665, 39.531410, 34.654308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439000, 0.834354, -0.333364,
		-0.712947, 0.549279, 0.435889,
		0.546796, 0.046316, 0.835984,
		26.204704, 39.545303, 34.905102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898365, 40.182396, 34.243332>,  <25.821947, 39.512882, 34.319916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898365, 40.182396, 34.243332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136812, 40.079731, 34.547638>,  <26.279881, 40.018131, 34.730221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136812, 40.079731, 34.547638>,  <25.898365, 40.182396, 34.243332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136812, 40.079731, 34.547638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538115, 0.830941, -0.141310,
		-0.595885, 0.493618, 0.633453,
		0.596116, -0.256666, 0.760768,
		26.315647, 40.002731, 34.775867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129623, 40.758373, 34.528343>,  <25.898365, 40.182396, 34.243332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129623, 40.758373, 34.528343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357256, 40.510239, 34.744244>,  <26.493835, 40.361359, 34.873783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357256, 40.510239, 34.744244>,  <26.129623, 40.758373, 34.528343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357256, 40.510239, 34.744244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675644, 0.726887, 0.123046,
		-0.468669, 0.294657, 0.832783,
		0.569083, -0.620333, 0.539752,
		26.527981, 40.324139, 34.906170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308756, 41.256634, 35.175446>,  <26.129623, 40.758373, 34.528343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308756, 41.256634, 35.175446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560263, 40.948414, 35.133686>,  <26.711166, 40.763481, 35.108631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560263, 40.948414, 35.133686>,  <26.308756, 41.256634, 35.175446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560263, 40.948414, 35.133686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761127, 0.582401, 0.285474,
		-0.159171, -0.258958, 0.952683,
		0.628769, -0.770552, -0.104398,
		26.748894, 40.717247, 35.102367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716749, 41.114952, 35.776814>,  <26.308756, 41.256634, 35.175446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716749, 41.114952, 35.776814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937193, 41.002777, 35.462456>,  <27.069460, 40.935471, 35.273842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937193, 41.002777, 35.462456>,  <26.716749, 41.114952, 35.776814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937193, 41.002777, 35.462456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743274, 0.593032, 0.309607,
		0.379236, -0.754764, 0.535267,
		0.551111, -0.280437, -0.785896,
		27.102526, 40.918648, 35.226688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268166, 40.981071, 36.044548>,  <26.716749, 41.114952, 35.776814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268166, 40.981071, 36.044548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356237, 41.047386, 35.660042>,  <27.409081, 41.087173, 35.429337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356237, 41.047386, 35.660042>,  <27.268166, 40.981071, 36.044548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356237, 41.047386, 35.660042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671214, 0.689310, 0.272624,
		0.707808, -0.705243, 0.040495,
		0.220180, 0.165785, -0.961268,
		27.422291, 41.097122, 35.371662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967976, 41.075912, 36.059635>,  <27.268166, 40.981071, 36.044548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967976, 41.075912, 36.059635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880602, 41.234806, 35.703098>,  <27.828176, 41.330143, 35.489174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880602, 41.234806, 35.703098>,  <27.967976, 41.075912, 36.059635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880602, 41.234806, 35.703098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726453, 0.676071, 0.123265,
		0.651576, -0.620594, -0.436248,
		-0.218436, 0.397230, -0.891344,
		27.815071, 41.353973, 35.435696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659147, 41.247269, 35.762577>,  <27.967976, 41.075912, 36.059635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659147, 41.247269, 35.762577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398827, 41.448536, 35.535145>,  <28.242634, 41.569298, 35.398685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398827, 41.448536, 35.535145>,  <28.659147, 41.247269, 35.762577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398827, 41.448536, 35.535145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649632, 0.756640, -0.073985,
		0.392981, -0.417516, -0.819296,
		-0.650802, 0.503166, -0.568577,
		28.203587, 41.599487, 35.364571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031418, 41.486217, 35.112850>,  <28.659147, 41.247269, 35.762577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031418, 41.486217, 35.112850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709568, 41.702618, 35.210751>,  <28.516459, 41.832458, 35.269489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709568, 41.702618, 35.210751>,  <29.031418, 41.486217, 35.112850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709568, 41.702618, 35.210751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583934, 0.795700, 0.160878,
		-0.107713, 0.272364, -0.956147,
		-0.804623, 0.540998, 0.244750,
		28.468182, 41.864918, 35.284176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305168, 42.181648, 34.986408>,  <29.031418, 41.486217, 35.112850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305168, 42.181648, 34.986408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955708, 42.249508, 35.168816>,  <28.746031, 42.290222, 35.278259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955708, 42.249508, 35.168816>,  <29.305168, 42.181648, 34.986408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955708, 42.249508, 35.168816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419868, 0.736465, 0.530406,
		-0.245862, 0.654858, -0.714642,
		-0.873649, 0.169649, 0.456023,
		28.693613, 42.300404, 35.305622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135633, 42.921181, 34.793358>,  <29.305168, 42.181648, 34.986408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135633, 42.921181, 34.793358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905499, 42.798935, 35.096828>,  <28.767418, 42.725586, 35.278912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905499, 42.798935, 35.096828>,  <29.135633, 42.921181, 34.793358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905499, 42.798935, 35.096828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164502, 0.865377, 0.473352,
		-0.801203, 0.397140, -0.447608,
		-0.575337, -0.305618, 0.758673,
		28.732897, 42.707249, 35.324429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725580, 43.568195, 34.976425>,  <29.135633, 42.921181, 34.793358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725580, 43.568195, 34.976425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740192, 43.323483, 35.292500>,  <28.748960, 43.176655, 35.482143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740192, 43.323483, 35.292500>,  <28.725580, 43.568195, 34.976425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740192, 43.323483, 35.292500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254887, 0.770264, 0.584573,
		-0.966280, 0.180052, 0.184074,
		0.036532, -0.611779, 0.790184,
		28.751152, 43.139950, 35.529556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379761, 43.888805, 35.532436>,  <28.725580, 43.568195, 34.976425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379761, 43.888805, 35.532436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637625, 43.643494, 35.714996>,  <28.792343, 43.496307, 35.824532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637625, 43.643494, 35.714996>,  <28.379761, 43.888805, 35.532436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637625, 43.643494, 35.714996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267020, 0.740051, 0.617272,
		-0.716319, -0.276064, 0.640841,
		0.644661, -0.613281, 0.456397,
		28.831022, 43.459511, 35.851917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090282, 44.059605, 35.732510>,  <28.379761, 43.888805, 35.532436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090282, 44.059605, 35.732510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365669, 44.236691, 35.502720>,  <29.530901, 44.342941, 35.364845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365669, 44.236691, 35.502720>,  <29.090282, 44.059605, 35.732510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365669, 44.236691, 35.502720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465908, 0.337068, 0.818117,
		0.555830, -0.830896, 0.025795,
		0.688464, 0.442715, -0.574473,
		29.572208, 44.369503, 35.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868353, 43.725361, 35.715065>,  <29.090282, 44.059605, 35.732510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868353, 43.725361, 35.715065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838728, 44.123981, 35.730076>,  <29.820953, 44.363152, 35.739082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838728, 44.123981, 35.730076>,  <29.868353, 43.725361, 35.715065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838728, 44.123981, 35.730076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420742, -0.002894, 0.907176,
		0.904152, 0.082979, -0.419075,
		-0.074064, 0.996547, 0.037529,
		29.816509, 44.422947, 35.741333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459227, 43.972889, 35.956493>,  <29.868353, 43.725361, 35.715065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459227, 43.972889, 35.956493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199528, 44.254387, 36.071884>,  <30.043709, 44.423286, 36.141117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199528, 44.254387, 36.071884>,  <30.459227, 43.972889, 35.956493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199528, 44.254387, 36.071884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296952, -0.114634, 0.947987,
		0.700211, 0.701142, -0.134553,
		-0.649249, 0.703747, 0.288473,
		30.004753, 44.465511, 36.158424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838741, 44.459667, 36.186989>,  <30.459227, 43.972889, 35.956493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838741, 44.459667, 36.186989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480379, 44.451088, 36.364479>,  <30.265362, 44.445942, 36.470974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480379, 44.451088, 36.364479>,  <30.838741, 44.459667, 36.186989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480379, 44.451088, 36.364479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444243, -0.040407, 0.894995,
		-0.001262, 0.998953, 0.045727,
		-0.895905, -0.021444, 0.443727,
		30.211607, 44.444656, 36.497597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886066, 44.285847, 36.882248>,  <30.838741, 44.459667, 36.186989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886066, 44.285847, 36.882248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495552, 44.372425, 36.883869>,  <30.261244, 44.424374, 36.884842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495552, 44.372425, 36.883869>,  <30.886066, 44.285847, 36.882248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495552, 44.372425, 36.883869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003909, -0.001108, 0.999992,
		0.216447, 0.976294, 0.000235,
		-0.976286, 0.216445, 0.004056,
		30.202665, 44.437359, 36.885086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831495, 44.858147, 37.339756>,  <30.886066, 44.285847, 36.882248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831495, 44.858147, 37.339756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488016, 44.655739, 37.307304>,  <30.281929, 44.534294, 37.287834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488016, 44.655739, 37.307304>,  <30.831495, 44.858147, 37.339756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488016, 44.655739, 37.307304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019960, -0.191207, 0.981347,
		-0.512094, 0.841061, 0.174289,
		-0.858698, -0.506020, -0.081128,
		30.230408, 44.503933, 37.282967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249287, 45.129131, 37.774853>,  <30.831495, 44.858147, 37.339756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249287, 45.129131, 37.774853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237356, 44.736740, 37.698116>,  <30.230198, 44.501305, 37.652077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237356, 44.736740, 37.698116>,  <30.249287, 45.129131, 37.774853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237356, 44.736740, 37.698116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199412, -0.193904, 0.960539,
		-0.979462, -0.009605, 0.201401,
		-0.029827, -0.980973, -0.191837,
		30.228409, 44.442448, 37.640564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724476, 44.707966, 38.243736>,  <30.249287, 45.129131, 37.774853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724476, 44.707966, 38.243736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070240, 44.538563, 38.135345>,  <30.277699, 44.436920, 38.070309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070240, 44.538563, 38.135345>,  <29.724476, 44.707966, 38.243736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070240, 44.538563, 38.135345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280880, -0.040255, 0.958898,
		-0.417012, -0.904996, 0.084159,
		0.864411, -0.423511, -0.270982,
		30.329563, 44.411510, 38.054050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877455, 44.171829, 38.607059>,  <29.724476, 44.707966, 38.243736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877455, 44.171829, 38.607059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249619, 44.272167, 38.500168>,  <30.472918, 44.332371, 38.436035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249619, 44.272167, 38.500168>,  <29.877455, 44.171829, 38.607059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249619, 44.272167, 38.500168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284858, -0.036122, 0.957889,
		0.230631, -0.967353, -0.105065,
		0.930411, 0.250848, -0.267227,
		30.528742, 44.347420, 38.419998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355667, 43.767605, 38.965256>,  <29.877455, 44.171829, 38.607059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355667, 43.767605, 38.965256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580822, 44.091015, 38.896610>,  <30.715914, 44.285061, 38.855423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580822, 44.091015, 38.896610>,  <30.355667, 43.767605, 38.965256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580822, 44.091015, 38.896610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386219, -0.073727, 0.919456,
		0.730749, -0.583827, -0.353767,
		0.562885, 0.808523, -0.171610,
		30.749687, 44.333572, 38.845127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409748, 43.196915, 39.563141>,  <30.355667, 43.767605, 38.965256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409748, 43.196915, 39.563141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055996, 43.174873, 39.748543>,  <29.843744, 43.161648, 39.859783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055996, 43.174873, 39.748543>,  <30.409748, 43.196915, 39.563141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055996, 43.174873, 39.748543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294232, -0.705058, -0.645229,
		0.362353, -0.707006, 0.607325,
		-0.884380, -0.055106, 0.463504,
		29.790682, 43.158340, 39.887592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297327, 42.486355, 39.798180>,  <30.409748, 43.196915, 39.563141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297327, 42.486355, 39.798180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957699, 42.672127, 39.697472>,  <29.753922, 42.783588, 39.637047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957699, 42.672127, 39.697472>,  <30.297327, 42.486355, 39.798180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957699, 42.672127, 39.697472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148609, -0.667323, -0.729791,
		-0.506949, -0.582227, 0.635622,
		-0.849069, 0.464426, -0.251774,
		29.702978, 42.811455, 39.621941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739132, 42.089188, 39.882809>,  <30.297327, 42.486355, 39.798180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739132, 42.089188, 39.882809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655617, 42.341003, 39.583454>,  <29.605507, 42.492092, 39.403843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655617, 42.341003, 39.583454>,  <29.739132, 42.089188, 39.882809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655617, 42.341003, 39.583454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130877, -0.776355, -0.616559,
		-0.969164, -0.030783, 0.244487,
		-0.208788, 0.629544, -0.748386,
		29.592979, 42.529865, 39.358940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117264, 41.819508, 39.625710>,  <29.739132, 42.089188, 39.882809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117264, 41.819508, 39.625710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272409, 42.040909, 39.330902>,  <29.365498, 42.173748, 39.154018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272409, 42.040909, 39.330902>,  <29.117264, 41.819508, 39.625710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272409, 42.040909, 39.330902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214122, -0.723632, -0.656132,
		-0.896500, 0.412303, -0.162155,
		0.387865, 0.553501, -0.737019,
		29.388769, 42.206959, 39.109795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568155, 41.821392, 39.176281>,  <29.117264, 41.819508, 39.625710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568155, 41.821392, 39.176281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899431, 41.913979, 38.972115>,  <29.098196, 41.969532, 38.849613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899431, 41.913979, 38.972115>,  <28.568155, 41.821392, 39.176281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899431, 41.913979, 38.972115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264685, -0.641229, -0.720255,
		-0.494009, 0.731607, -0.469793,
		0.828189, 0.231465, -0.510419,
		29.147888, 41.983418, 38.818989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339590, 41.996708, 38.382652>,  <28.568155, 41.821392, 39.176281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339590, 41.996708, 38.382652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729141, 41.911655, 38.350773>,  <28.962872, 41.860622, 38.331646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729141, 41.911655, 38.350773>,  <28.339590, 41.996708, 38.382652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729141, 41.911655, 38.350773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200712, -0.641884, -0.740067,
		0.106200, 0.736731, -0.667794,
		0.973877, -0.212630, -0.079703,
		29.021305, 41.847866, 38.326862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424225, 41.911396, 37.692291>,  <28.339590, 41.996708, 38.382652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424225, 41.911396, 37.692291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736725, 41.722546, 37.855629>,  <28.924225, 41.609234, 37.953632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736725, 41.722546, 37.855629>,  <28.424225, 41.911396, 37.692291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736725, 41.722546, 37.855629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061053, -0.708824, -0.702738,
		0.621224, 0.524085, -0.582594,
		0.781251, -0.472127, 0.408341,
		28.971100, 41.580906, 37.978130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853550, 41.737072, 37.212307>,  <28.424225, 41.911396, 37.692291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853550, 41.737072, 37.212307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946274, 41.472977, 37.498062>,  <29.001907, 41.314518, 37.669514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946274, 41.472977, 37.498062>,  <28.853550, 41.737072, 37.212307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946274, 41.472977, 37.498062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008422, -0.735728, -0.677225,
		0.972725, 0.150970, -0.176109,
		0.231809, -0.660237, 0.714389,
		29.015816, 41.274906, 37.712379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469395, 41.261578, 36.852551>,  <28.853550, 41.737072, 37.212307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469395, 41.261578, 36.852551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300844, 41.082932, 37.168266>,  <29.199713, 40.975742, 37.357697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300844, 41.082932, 37.168266>,  <29.469395, 41.261578, 36.852551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300844, 41.082932, 37.168266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055439, -0.881386, -0.469131,
		0.905189, -0.153924, 0.396156,
		-0.421378, -0.446615, 0.789288,
		29.174431, 40.948948, 37.405052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605558, 40.578758, 36.759880>,  <29.469395, 41.261578, 36.852551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605558, 40.578758, 36.759880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323196, 40.566307, 37.042927>,  <29.153778, 40.558834, 37.212757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323196, 40.566307, 37.042927>,  <29.605558, 40.578758, 36.759880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323196, 40.566307, 37.042927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318979, -0.878021, -0.356834,
		0.632415, -0.477608, 0.609871,
		-0.705907, -0.031131, 0.707621,
		29.111423, 40.556969, 37.255215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770844, 39.979000, 37.095764>,  <29.605558, 40.578758, 36.759880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770844, 39.979000, 37.095764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385218, 40.064003, 37.159542>,  <29.153843, 40.115005, 37.197807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385218, 40.064003, 37.159542>,  <29.770844, 39.979000, 37.095764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385218, 40.064003, 37.159542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253723, -0.914410, -0.315402,
		0.078774, -0.344523, 0.935467,
		-0.964064, 0.212504, 0.159445,
		29.095999, 40.127754, 37.207375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475506, 39.321213, 37.387367>,  <29.770844, 39.979000, 37.095764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475506, 39.321213, 37.387367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161407, 39.528355, 37.251595>,  <28.972948, 39.652637, 37.170132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161407, 39.528355, 37.251595>,  <29.475506, 39.321213, 37.387367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161407, 39.528355, 37.251595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387640, -0.838628, -0.382672,
		-0.482827, -0.168913, 0.859271,
		-0.785247, 0.517852, -0.339435,
		28.925833, 39.683712, 37.149765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919687, 38.903534, 37.440887>,  <29.475506, 39.321213, 37.387367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919687, 38.903534, 37.440887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790152, 39.172379, 37.174538>,  <28.712431, 39.333687, 37.014729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790152, 39.172379, 37.174538>,  <28.919687, 38.903534, 37.440887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790152, 39.172379, 37.174538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417595, -0.733076, -0.536855,
		-0.848966, 0.104212, 0.518071,
		-0.323839, 0.672116, -0.665874,
		28.692999, 39.374012, 36.974777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277723, 38.662506, 37.311832>,  <28.919687, 38.903534, 37.440887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277723, 38.662506, 37.311832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362324, 38.894531, 36.997177>,  <28.413084, 39.033745, 36.808384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362324, 38.894531, 36.997177>,  <28.277723, 38.662506, 37.311832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362324, 38.894531, 36.997177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531277, -0.607323, -0.590681,
		-0.820374, 0.542850, 0.179724,
		0.211501, 0.580062, -0.786636,
		28.425774, 39.068550, 36.761185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646372, 38.746803, 36.942715>,  <28.277723, 38.662506, 37.311832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646372, 38.746803, 36.942715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935867, 38.800842, 36.672028>,  <28.109566, 38.833267, 36.509613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935867, 38.800842, 36.672028>,  <27.646372, 38.746803, 36.942715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935867, 38.800842, 36.672028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384156, -0.735769, -0.557736,
		-0.573258, 0.663621, -0.480606,
		0.723740, 0.135099, -0.676719,
		28.152988, 38.841373, 36.469013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260126, 38.483082, 36.443485>,  <27.646372, 38.746803, 36.942715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260126, 38.483082, 36.443485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630188, 38.541115, 36.303177>,  <27.852224, 38.575935, 36.218990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630188, 38.541115, 36.303177>,  <27.260126, 38.483082, 36.443485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630188, 38.541115, 36.303177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117895, -0.768561, -0.628820,
		-0.360818, 0.623110, -0.693934,
		0.925155, 0.145078, -0.350773,
		27.907734, 38.584637, 36.197945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166298, 38.407444, 35.752754>,  <27.260126, 38.483082, 36.443485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166298, 38.407444, 35.752754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560804, 38.369881, 35.807102>,  <27.797508, 38.347343, 35.839710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560804, 38.369881, 35.807102>,  <27.166298, 38.407444, 35.752754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560804, 38.369881, 35.807102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011084, -0.783169, -0.621710,
		0.164793, 0.614677, -0.771372,
		0.986266, -0.093904, 0.135874,
		27.856684, 38.341709, 35.847866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524176, 38.341400, 35.067814>,  <27.166298, 38.407444, 35.752754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524176, 38.341400, 35.067814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787508, 38.178120, 35.320789>,  <27.945507, 38.080151, 35.472572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787508, 38.178120, 35.320789>,  <27.524176, 38.341400, 35.067814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787508, 38.178120, 35.320789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042216, -0.858890, -0.510418,
		0.751544, 0.309325, -0.582666,
		0.658331, -0.408199, 0.632435,
		27.985006, 38.055660, 35.510521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132370, 38.065418, 34.749741>,  <27.524176, 38.341400, 35.067814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132370, 38.065418, 34.749741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132847, 37.854687, 35.089729>,  <28.133133, 37.728249, 35.293724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132847, 37.854687, 35.089729>,  <28.132370, 38.065418, 34.749741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132847, 37.854687, 35.089729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163460, -0.838642, -0.519578,
		0.986549, -0.138317, -0.087115,
		0.001192, -0.526829, 0.849971,
		28.133205, 37.696636, 35.344719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304914, 37.419174, 34.461685>,  <28.132370, 38.065418, 34.749741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304914, 37.419174, 34.461685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152754, 37.318619, 34.817684>,  <28.061459, 37.258286, 35.031284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152754, 37.318619, 34.817684>,  <28.304914, 37.419174, 34.461685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152754, 37.318619, 34.817684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280096, -0.885832, -0.369931,
		0.881387, -0.390007, 0.266557,
		-0.380400, -0.251390, 0.889999,
		28.038633, 37.243202, 35.084682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472528, 36.819042, 34.529678>,  <28.304914, 37.419174, 34.461685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472528, 36.819042, 34.529678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175415, 36.844505, 34.796276>,  <27.997147, 36.859783, 34.956234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175415, 36.844505, 34.796276>,  <28.472528, 36.819042, 34.529678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175415, 36.844505, 34.796276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386928, -0.853216, -0.349726,
		0.546403, -0.517658, 0.658387,
		-0.742786, 0.063657, 0.666496,
		27.952579, 36.863602, 34.996223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622131, 36.356480, 35.066132>,  <28.472528, 36.819042, 34.529678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622131, 36.356480, 35.066132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232317, 36.441494, 35.037548>,  <27.998428, 36.492500, 35.020397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232317, 36.441494, 35.037548>,  <28.622131, 36.356480, 35.066132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232317, 36.441494, 35.037548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199963, -0.967962, -0.151867,
		-0.101446, -0.133711, 0.985814,
		-0.974538, 0.212533, -0.071458,
		27.939957, 36.505253, 35.016109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358768, 36.061344, 35.031487>,  <28.622131, 36.356480, 35.066132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358768, 36.061344, 35.031487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681253, 36.113701, 34.800701>,  <29.874744, 36.145115, 34.662228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681253, 36.113701, 34.800701>,  <29.358768, 36.061344, 35.031487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681253, 36.113701, 34.800701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211657, 0.846865, 0.487875,
		0.552471, -0.515449, 0.655048,
		0.806212, 0.130891, -0.576966,
		29.923117, 36.152969, 34.627613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150787, 36.015503, 35.281906>,  <29.358768, 36.061344, 35.031487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150787, 36.015503, 35.281906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055586, 36.291641, 35.008621>,  <29.998465, 36.457325, 34.844650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055586, 36.291641, 35.008621>,  <30.150787, 36.015503, 35.281906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055586, 36.291641, 35.008621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399873, 0.710690, 0.578809,
		0.885130, -0.135439, -0.445197,
		-0.238004, 0.690344, -0.683212,
		29.984184, 36.498745, 34.803658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808197, 36.303707, 35.138748>,  <30.150787, 36.015503, 35.281906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808197, 36.303707, 35.138748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477377, 36.527187, 35.113941>,  <30.278885, 36.661274, 35.099056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477377, 36.527187, 35.113941>,  <30.808197, 36.303707, 35.138748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477377, 36.527187, 35.113941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305335, 0.539125, 0.784930,
		0.471973, 0.630240, -0.616473,
		-0.827050, 0.558696, -0.062019,
		30.229261, 36.694798, 35.095337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983351, 37.023346, 35.181301>,  <30.808197, 36.303707, 35.138748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983351, 37.023346, 35.181301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598501, 37.058121, 35.284649>,  <30.367592, 37.078987, 35.346657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598501, 37.058121, 35.284649>,  <30.983351, 37.023346, 35.181301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598501, 37.058121, 35.284649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266058, 0.505971, 0.820492,
		-0.059399, 0.858158, -0.509937,
		-0.962125, 0.086936, 0.258374,
		30.309864, 37.084202, 35.362160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904797, 37.714569, 35.352757>,  <30.983351, 37.023346, 35.181301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904797, 37.714569, 35.352757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650440, 37.468483, 35.539154>,  <30.497828, 37.320831, 35.650993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650440, 37.468483, 35.539154>,  <30.904797, 37.714569, 35.352757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650440, 37.468483, 35.539154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291517, 0.367600, 0.883112,
		-0.714607, 0.697408, -0.054407,
		-0.635889, -0.615217, 0.465996,
		30.459673, 37.283916, 35.678951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376740, 38.027382, 35.797749>,  <30.904797, 37.714569, 35.352757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376740, 38.027382, 35.797749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467632, 37.653408, 35.906757>,  <30.522167, 37.429024, 35.972160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467632, 37.653408, 35.906757>,  <30.376740, 38.027382, 35.797749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467632, 37.653408, 35.906757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461229, 0.349782, 0.815426,
		-0.857691, -0.059596, 0.510700,
		0.227230, -0.934934, 0.272517,
		30.535801, 37.372929, 35.988514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483767, 38.251434, 36.468422>,  <30.376740, 38.027382, 35.797749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483767, 38.251434, 36.468422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612753, 37.877586, 36.408428>,  <30.690145, 37.653278, 36.372433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612753, 37.877586, 36.408428>,  <30.483767, 38.251434, 36.468422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612753, 37.877586, 36.408428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396158, -0.010651, 0.918121,
		-0.859694, -0.355482, 0.366823,
		0.322468, -0.934623, -0.149983,
		30.709494, 37.597198, 36.363434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389355, 37.853046, 37.043499>,  <30.483767, 38.251434, 36.468422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389355, 37.853046, 37.043499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686602, 37.663231, 36.854782>,  <30.864950, 37.549339, 36.741550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686602, 37.663231, 36.854782>,  <30.389355, 37.853046, 37.043499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686602, 37.663231, 36.854782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589594, 0.130877, 0.797026,
		-0.316474, -0.870449, 0.377043,
		0.743117, -0.474540, -0.471792,
		30.909536, 37.520870, 36.713245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686317, 37.461533, 37.536804>,  <30.389355, 37.853046, 37.043499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686317, 37.461533, 37.536804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964525, 37.466034, 37.249435>,  <31.131449, 37.468735, 37.077015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964525, 37.466034, 37.249435>,  <30.686317, 37.461533, 37.536804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964525, 37.466034, 37.249435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718399, 0.006584, 0.695600,
		0.012585, -0.999915, -0.003533,
		0.695517, 0.011292, -0.718421,
		31.173180, 37.469410, 37.033909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213430, 36.945763, 37.733444>,  <30.686317, 37.461533, 37.536804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213430, 36.945763, 37.733444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394377, 37.216095, 37.500683>,  <31.502945, 37.378296, 37.361027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394377, 37.216095, 37.500683>,  <31.213430, 36.945763, 37.733444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394377, 37.216095, 37.500683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774109, 0.026449, 0.632499,
		0.442854, -0.736581, -0.511203,
		0.452366, 0.675831, -0.581907,
		31.530087, 37.418846, 37.326111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888916, 36.834518, 37.833363>,  <31.213430, 36.945763, 37.733444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888916, 36.834518, 37.833363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889647, 37.205360, 37.683449>,  <31.890085, 37.427868, 37.593498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889647, 37.205360, 37.683449>,  <31.888916, 36.834518, 37.833363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889647, 37.205360, 37.683449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790593, 0.228159, 0.568249,
		0.612340, -0.297343, -0.732549,
		0.001827, 0.927109, -0.374788,
		31.890194, 37.483494, 37.571011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568935, 36.977921, 37.694672>,  <31.888916, 36.834518, 37.833363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568935, 36.977921, 37.694672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381855, 37.329350, 37.733376>,  <32.269608, 37.540207, 37.756599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381855, 37.329350, 37.733376>,  <32.568935, 36.977921, 37.694672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381855, 37.329350, 37.733376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740109, 0.329420, 0.586277,
		0.483214, 0.345815, -0.804311,
		-0.467700, 0.878575, 0.096760,
		32.241547, 37.592922, 37.762405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074139, 37.458672, 37.683987>,  <32.568935, 36.977921, 37.694672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074139, 37.458672, 37.683987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776222, 37.657383, 37.862202>,  <32.597473, 37.776608, 37.969131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776222, 37.657383, 37.862202>,  <33.074139, 37.458672, 37.683987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776222, 37.657383, 37.862202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660764, 0.455793, 0.596359,
		0.093182, 0.738558, -0.667720,
		-0.744788, 0.496775, 0.445541,
		32.552788, 37.806416, 37.995865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408688, 38.105640, 37.892159>,  <33.074139, 37.458672, 37.683987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408688, 38.105640, 37.892159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082394, 38.104843, 38.123524>,  <32.886616, 38.104366, 38.262344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082394, 38.104843, 38.123524>,  <33.408688, 38.105640, 37.892159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082394, 38.104843, 38.123524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523113, 0.424177, 0.739207,
		-0.246825, 0.905577, -0.344974,
		-0.815739, -0.001994, 0.578416,
		32.837673, 38.104244, 38.297050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367786, 38.816700, 38.137154>,  <33.408688, 38.105640, 37.892159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367786, 38.816700, 38.137154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159050, 38.576595, 38.379597>,  <33.033810, 38.432533, 38.525063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159050, 38.576595, 38.379597>,  <33.367786, 38.816700, 38.137154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159050, 38.576595, 38.379597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452579, 0.407455, 0.793191,
		-0.723085, 0.688231, 0.059041,
		-0.521842, -0.600266, 0.606104,
		33.002499, 38.396515, 38.561428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041702, 39.277740, 38.601002>,  <33.367786, 38.816700, 38.137154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041702, 39.277740, 38.601002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075108, 38.921692, 38.780205>,  <33.095150, 38.708061, 38.887726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075108, 38.921692, 38.780205>,  <33.041702, 39.277740, 38.601002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075108, 38.921692, 38.780205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440789, 0.436201, 0.784496,
		-0.893717, 0.131958, 0.428785,
		0.083516, -0.890121, 0.448006,
		33.100163, 38.654655, 38.914608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105412, 39.491879, 39.256664>,  <33.041702, 39.277740, 38.601002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105412, 39.491879, 39.256664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194942, 39.104946, 39.304272>,  <33.248661, 38.872787, 39.332836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194942, 39.104946, 39.304272>,  <33.105412, 39.491879, 39.256664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194942, 39.104946, 39.304272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310014, 0.186436, 0.932273,
		-0.924009, -0.171771, 0.341616,
		0.223827, -0.967335, 0.119018,
		33.262089, 38.814747, 39.339977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696941, 39.122749, 39.753876>,  <33.105412, 39.491879, 39.256664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696941, 39.122749, 39.753876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020790, 38.888004, 39.749760>,  <33.215099, 38.747158, 39.747292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020790, 38.888004, 39.749760>,  <32.696941, 39.122749, 39.753876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020790, 38.888004, 39.749760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081374, 0.094866, 0.992159,
		-0.581288, -0.804107, 0.124561,
		0.809619, -0.586866, -0.010289,
		33.263676, 38.711945, 39.746674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676884, 38.779446, 40.420620>,  <32.696941, 39.122749, 39.753876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676884, 38.779446, 40.420620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050407, 38.727818, 40.287151>,  <33.274521, 38.696842, 40.207069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050407, 38.727818, 40.287151>,  <32.676884, 38.779446, 40.420620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050407, 38.727818, 40.287151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342685, 0.054769, 0.937852,
		-0.102774, -0.990122, 0.095375,
		0.933812, -0.129071, -0.333671,
		33.330551, 38.689098, 40.187050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999817, 38.288437, 40.815842>,  <32.676884, 38.779446, 40.420620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999817, 38.288437, 40.815842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309078, 38.485905, 40.656578>,  <33.494637, 38.604385, 40.561020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309078, 38.485905, 40.656578>,  <32.999817, 38.288437, 40.815842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309078, 38.485905, 40.656578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399755, 0.108054, 0.910231,
		0.492374, -0.862912, -0.113804,
		0.773152, 0.493668, -0.398156,
		33.541023, 38.634007, 40.537132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535744, 37.896568, 41.123035>,  <32.999817, 38.288437, 40.815842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535744, 37.896568, 41.123035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683304, 38.239838, 40.980232>,  <33.771839, 38.445801, 40.894550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683304, 38.239838, 40.980232>,  <33.535744, 37.896568, 41.123035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683304, 38.239838, 40.980232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503869, 0.138118, 0.852667,
		0.781043, -0.494434, -0.381454,
		0.368901, 0.858172, -0.357006,
		33.793976, 38.497288, 40.873131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226803, 37.885349, 40.972473>,  <33.535744, 37.896568, 41.123035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226803, 37.885349, 40.972473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117435, 38.252522, 41.087463>,  <34.051815, 38.472824, 41.156456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117435, 38.252522, 41.087463>,  <34.226803, 37.885349, 40.972473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117435, 38.252522, 41.087463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428776, -0.151221, 0.890665,
		0.861044, 0.366783, -0.352242,
		-0.273414, 0.917934, 0.287475,
		34.035412, 38.527901, 41.173706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618916, 37.963043, 41.518612>,  <34.226803, 37.885349, 40.972473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618916, 37.963043, 41.518612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421505, 38.304367, 41.585896>,  <34.303059, 38.509159, 41.626266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421505, 38.304367, 41.585896>,  <34.618916, 37.963043, 41.518612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421505, 38.304367, 41.585896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201729, -0.075822, 0.976502,
		0.846010, 0.515867, -0.134716,
		-0.493530, 0.853307, 0.168212,
		34.273445, 38.560360, 41.636360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954815, 38.326672, 42.037777>,  <34.618916, 37.963043, 41.518612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954815, 38.326672, 42.037777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613598, 38.535194, 42.047180>,  <34.408867, 38.660309, 42.052822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613598, 38.535194, 42.047180>,  <34.954815, 38.326672, 42.037777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613598, 38.535194, 42.047180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109181, 0.134242, 0.984915,
		0.510291, 0.842742, -0.171432,
		-0.853043, 0.521310, 0.023509,
		34.357685, 38.691589, 42.054234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022034, 39.005356, 42.470604>,  <34.954815, 38.326672, 42.037777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022034, 39.005356, 42.470604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643494, 38.876564, 42.481503>,  <34.416370, 38.799290, 42.488041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643494, 38.876564, 42.481503>,  <35.022034, 39.005356, 42.470604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643494, 38.876564, 42.481503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019827, 0.026288, 0.999458,
		-0.322521, 0.946382, -0.018494,
		-0.946355, -0.321979, 0.027242,
		34.359589, 38.779972, 42.489674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735447, 39.390167, 43.014977>,  <35.022034, 39.005356, 42.470604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735447, 39.390167, 43.014977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468994, 39.095062, 42.971195>,  <34.309124, 38.917999, 42.944927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468994, 39.095062, 42.971195>,  <34.735447, 39.390167, 43.014977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468994, 39.095062, 42.971195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052821, -0.099714, 0.993613,
		-0.743960, 0.667659, 0.027453,
		-0.666133, -0.737759, -0.109450,
		34.269154, 38.873734, 42.938362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060535, 39.581982, 43.322422>,  <34.735447, 39.390167, 43.014977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060535, 39.581982, 43.322422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060188, 39.182228, 43.336452>,  <34.059978, 38.942375, 43.344872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060188, 39.182228, 43.336452>,  <34.060535, 39.581982, 43.322422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060188, 39.182228, 43.336452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273632, 0.033977, 0.961234,
		-0.961834, -0.008761, -0.273493,
		-0.000871, -0.999385, 0.035078,
		34.059925, 38.882412, 43.346977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472305, 39.490578, 43.670589>,  <34.060535, 39.581982, 43.322422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472305, 39.490578, 43.670589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657658, 39.136501, 43.687176>,  <33.768867, 38.924057, 43.697128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657658, 39.136501, 43.687176>,  <33.472305, 39.490578, 43.670589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657658, 39.136501, 43.687176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085133, 0.002108, 0.996367,
		-0.882061, -0.465226, -0.074382,
		0.463379, -0.885189, 0.041466,
		33.796673, 38.870945, 43.699615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094074, 39.023430, 44.148663>,  <33.472305, 39.490578, 43.670589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094074, 39.023430, 44.148663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459145, 38.861614, 44.125465>,  <33.678188, 38.764526, 44.111546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459145, 38.861614, 44.125465>,  <33.094074, 39.023430, 44.148663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459145, 38.861614, 44.125465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007460, -0.158373, 0.987351,
		-0.408607, -0.900703, -0.147562,
		0.912680, -0.404539, -0.057993,
		33.732948, 38.740253, 44.108067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992615, 38.360432, 44.402489>,  <33.094074, 39.023430, 44.148663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992615, 38.360432, 44.402489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382877, 38.440525, 44.438282>,  <33.617035, 38.488579, 44.459759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382877, 38.440525, 44.438282>,  <32.992615, 38.360432, 44.402489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382877, 38.440525, 44.438282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024654, -0.305296, 0.951938,
		0.217927, -0.930968, -0.292927,
		0.975654, 0.200231, 0.089484,
		33.675575, 38.500595, 44.465126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241501, 37.833401, 44.852131>,  <32.992615, 38.360432, 44.402489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241501, 37.833401, 44.852131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504456, 38.134808, 44.855145>,  <33.662228, 38.315651, 44.856953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504456, 38.134808, 44.855145>,  <33.241501, 37.833401, 44.852131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504456, 38.134808, 44.855145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168417, -0.156663, 0.973187,
		0.734495, -0.638488, -0.229893,
		0.657384, 0.753518, 0.007536,
		33.701672, 38.360863, 44.857407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691696, 37.527363, 45.145199>,  <33.241501, 37.833401, 44.852131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691696, 37.527363, 45.145199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750618, 37.920799, 45.186848>,  <33.785969, 38.156860, 45.211838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750618, 37.920799, 45.186848>,  <33.691696, 37.527363, 45.145199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750618, 37.920799, 45.186848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162393, -0.127895, 0.978402,
		0.975669, -0.127211, -0.178568,
		0.147302, 0.983595, 0.104125,
		33.794807, 38.215878, 45.218086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184322, 37.590408, 45.580135>,  <33.691696, 37.527363, 45.145199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184322, 37.590408, 45.580135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017643, 37.952457, 45.613895>,  <33.917637, 38.169685, 45.634151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017643, 37.952457, 45.613895>,  <34.184322, 37.590408, 45.580135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017643, 37.952457, 45.613895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050032, -0.069868, 0.996301,
		0.907667, 0.419379, -0.016171,
		-0.416698, 0.905119, 0.084399,
		33.892635, 38.223991, 45.639214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600800, 38.054684, 45.946014>,  <34.184322, 37.590408, 45.580135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600800, 38.054684, 45.946014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230705, 38.201530, 45.984299>,  <34.008648, 38.289639, 46.007271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230705, 38.201530, 45.984299>,  <34.600800, 38.054684, 45.946014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230705, 38.201530, 45.984299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139800, 0.095388, 0.985575,
		0.352691, 0.925271, -0.139579,
		-0.925238, 0.367116, 0.095711,
		33.953133, 38.311665, 46.013012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654854, 38.727077, 46.140820>,  <34.600800, 38.054684, 45.946014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654854, 38.727077, 46.140820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287899, 38.648426, 46.279228>,  <34.067726, 38.601234, 46.362274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287899, 38.648426, 46.279228>,  <34.654854, 38.727077, 46.140820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287899, 38.648426, 46.279228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297254, 0.239609, 0.924244,
		-0.264646, 0.950749, -0.161366,
		-0.917389, -0.196631, 0.346026,
		34.012684, 38.589436, 46.383038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644131, 39.176918, 46.755905>,  <34.654854, 38.727077, 46.140820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644131, 39.176918, 46.755905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325394, 38.937183, 46.786480>,  <34.134151, 38.793343, 46.804825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325394, 38.937183, 46.786480>,  <34.644131, 39.176918, 46.755905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325394, 38.937183, 46.786480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124133, -0.038578, 0.991515,
		-0.591301, 0.799568, 0.105137,
		-0.796840, -0.599335, 0.076441,
		34.086342, 38.757381, 46.809414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130726, 39.521458, 47.169701>,  <34.644131, 39.176918, 46.755905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130726, 39.521458, 47.169701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035263, 39.133549, 47.190041>,  <33.977985, 38.900803, 47.202244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035263, 39.133549, 47.190041>,  <34.130726, 39.521458, 47.169701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035263, 39.133549, 47.190041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112594, 0.024380, 0.993342,
		-0.964554, 0.242794, 0.103372,
		-0.238657, -0.969772, 0.050853,
		33.963665, 38.842617, 47.205296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813446, 39.512016, 47.743275>,  <34.130726, 39.521458, 47.169701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813446, 39.512016, 47.743275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896473, 39.124866, 47.686508>,  <33.946289, 38.892578, 47.652447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896473, 39.124866, 47.686508>,  <33.813446, 39.512016, 47.743275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896473, 39.124866, 47.686508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287528, -0.078304, 0.954566,
		-0.935009, -0.238944, 0.262036,
		0.207569, -0.967871, -0.141918,
		33.958744, 38.834507, 47.643932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428055, 39.149281, 48.209702>,  <33.813446, 39.512016, 47.743275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428055, 39.149281, 48.209702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758041, 38.938015, 48.129227>,  <33.956032, 38.811256, 48.080940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758041, 38.938015, 48.129227>,  <33.428055, 39.149281, 48.209702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758041, 38.938015, 48.129227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337391, 0.174626, 0.925026,
		-0.453429, -0.830995, 0.322257,
		0.824966, -0.528161, -0.201190,
		34.005531, 38.779568, 48.068871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316910, 38.556751, 48.759293>,  <33.428055, 39.149281, 48.209702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316910, 38.556751, 48.759293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697697, 38.522446, 48.641720>,  <33.926170, 38.501862, 48.571175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697697, 38.522446, 48.641720>,  <33.316910, 38.556751, 48.759293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697697, 38.522446, 48.641720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289943, -0.056068, 0.955400,
		-0.098427, -0.994736, -0.028506,
		0.951969, -0.085772, -0.293936,
		33.983288, 38.496716, 48.553539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563831, 37.947823, 49.107948>,  <33.316910, 38.556751, 48.759293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563831, 37.947823, 49.107948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850891, 38.198727, 48.986935>,  <34.023125, 38.349270, 48.914326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850891, 38.198727, 48.986935>,  <33.563831, 37.947823, 49.107948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850891, 38.198727, 48.986935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444004, -0.077435, 0.892673,
		0.536513, -0.774949, -0.334077,
		0.717646, 0.627262, -0.302535,
		34.066185, 38.386906, 48.896175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204426, 37.678284, 49.242493>,  <33.563831, 37.947823, 49.107948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204426, 37.678284, 49.242493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294815, 38.067936, 49.244045>,  <34.349049, 38.301727, 49.244976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294815, 38.067936, 49.244045>,  <34.204426, 37.678284, 49.242493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294815, 38.067936, 49.244045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371439, -0.089848, 0.924100,
		0.900540, -0.207374, -0.382131,
		0.225968, 0.974127, 0.003885,
		34.362606, 38.360172, 49.245213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949627, 37.625576, 49.478664>,  <34.204426, 37.678284, 49.242493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949627, 37.625576, 49.478664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805134, 37.994747, 49.531914>,  <34.718437, 38.216248, 49.563866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805134, 37.994747, 49.531914>,  <34.949627, 37.625576, 49.478664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805134, 37.994747, 49.531914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368083, 0.009958, 0.929740,
		0.856754, 0.384851, -0.343310,
		-0.361230, 0.922925, 0.133125,
		34.696766, 38.271626, 49.571850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500988, 38.063805, 49.732449>,  <34.949627, 37.625576, 49.478664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500988, 38.063805, 49.732449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151867, 38.215385, 49.855480>,  <34.942394, 38.306335, 49.929298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151867, 38.215385, 49.855480>,  <35.500988, 38.063805, 49.732449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151867, 38.215385, 49.855480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286505, -0.112391, 0.951464,
		0.395128, 0.918566, -0.010476,
		-0.872805, 0.378952, 0.307582,
		34.890026, 38.329071, 49.947754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708744, 38.207489, 50.368824>,  <35.500988, 38.063805, 49.732449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708744, 38.207489, 50.368824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319244, 38.293667, 50.398193>,  <35.085545, 38.345375, 50.415813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319244, 38.293667, 50.398193>,  <35.708744, 38.207489, 50.368824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319244, 38.293667, 50.398193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023889, -0.224052, 0.974284,
		0.226357, 0.950465, 0.213024,
		-0.973752, 0.215447, 0.073421,
		35.027119, 38.358299, 50.420219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610756, 38.738209, 50.872284>,  <35.708744, 38.207489, 50.368824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610756, 38.738209, 50.872284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258049, 38.549618, 50.866684>,  <35.046425, 38.436462, 50.863323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258049, 38.549618, 50.866684>,  <35.610756, 38.738209, 50.872284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258049, 38.549618, 50.866684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082573, -0.183511, 0.979543,
		-0.464403, 0.862573, 0.200745,
		-0.881766, -0.471479, -0.013998,
		34.993519, 38.408173, 50.862484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156246, 39.045372, 51.441288>,  <35.610756, 38.738209, 50.872284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156246, 39.045372, 51.441288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060188, 38.668915, 51.346149>,  <35.002552, 38.443039, 51.289066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060188, 38.668915, 51.346149>,  <35.156246, 39.045372, 51.441288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060188, 38.668915, 51.346149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130723, -0.274141, 0.952763,
		-0.961894, 0.197712, 0.188864,
		-0.240149, -0.941146, -0.237849,
		34.988144, 38.386570, 51.274796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631855, 38.748322, 51.937393>,  <35.156246, 39.045372, 51.441288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631855, 38.748322, 51.937393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856834, 38.445835, 51.803658>,  <34.991821, 38.264343, 51.723415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856834, 38.445835, 51.803658>,  <34.631855, 38.748322, 51.937393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856834, 38.445835, 51.803658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060451, -0.365667, 0.928781,
		-0.824619, -0.542602, -0.159954,
		0.562449, -0.756221, -0.334337,
		35.025570, 38.218967, 51.703358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433155, 37.962299, 52.155457>,  <34.631855, 38.748322, 51.937393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433155, 37.962299, 52.155457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817230, 38.049210, 52.085232>,  <35.047676, 38.101357, 52.043098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817230, 38.049210, 52.085232>,  <34.433155, 37.962299, 52.155457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817230, 38.049210, 52.085232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236145, -0.295632, 0.925655,
		0.149224, -0.930264, -0.335172,
		0.960191, 0.217279, -0.175561,
		35.105289, 38.114395, 52.032562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518787, 38.606884, 52.640854>,  <34.433155, 37.962299, 52.155457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518787, 38.606884, 52.640854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632347, 38.417503, 52.974380>,  <34.700481, 38.303875, 53.174496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632347, 38.417503, 52.974380>,  <34.518787, 38.606884, 52.640854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632347, 38.417503, 52.974380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114245, -0.846698, -0.519664,
		0.952024, 0.242792, -0.186288,
		0.283900, -0.473450, 0.833814,
		34.717518, 38.275467, 53.224525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249294, 38.153397, 52.587563>,  <34.518787, 38.606884, 52.640854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249294, 38.153397, 52.587563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010521, 38.019249, 52.879097>,  <34.867256, 37.938759, 53.054016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010521, 38.019249, 52.879097>,  <35.249294, 38.153397, 52.587563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010521, 38.019249, 52.879097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046895, -0.921471, -0.385606,
		0.800920, -0.196002, 0.565783,
		-0.596932, -0.335372, 0.728833,
		34.831440, 37.918636, 53.097748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534054, 37.603077, 52.709156>,  <35.249294, 38.153397, 52.587563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534054, 37.603077, 52.709156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148560, 37.554047, 52.803970>,  <34.917263, 37.524628, 52.860859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148560, 37.554047, 52.803970>,  <35.534054, 37.603077, 52.709156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148560, 37.554047, 52.803970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011693, -0.906803, -0.421393,
		0.266597, -0.403340, 0.875353,
		-0.963737, -0.122578, 0.237035,
		34.859440, 37.517273, 52.875080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387554, 37.004837, 53.125084>,  <35.534054, 37.603077, 52.709156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387554, 37.004837, 53.125084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043114, 37.053043, 52.927509>,  <34.836449, 37.081966, 52.808964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043114, 37.053043, 52.927509>,  <35.387554, 37.004837, 53.125084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043114, 37.053043, 52.927509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113841, -0.901130, -0.418337,
		-0.495519, -0.416462, 0.762247,
		-0.861105, 0.120519, -0.493937,
		34.784782, 37.089199, 52.779327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998512, 36.337101, 53.150490>,  <35.387554, 37.004837, 53.125084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998512, 36.337101, 53.150490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922741, 36.562973, 52.829182>,  <34.877277, 36.698498, 52.636395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922741, 36.562973, 52.829182>,  <34.998512, 36.337101, 53.150490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922741, 36.562973, 52.829182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086666, -0.805277, -0.586530,
		-0.978062, -0.180723, 0.103606,
		-0.189431, 0.564684, -0.803273,
		34.865910, 36.732380, 52.588200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536945, 35.828865, 53.297260>,  <34.998512, 36.337101, 53.150490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536945, 35.828865, 53.297260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886242, 35.654888, 53.385143>,  <36.095821, 35.550503, 53.437874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886242, 35.654888, 53.385143>,  <35.536945, 35.828865, 53.297260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886242, 35.654888, 53.385143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248645, -0.785493, -0.566724,
		0.419072, 0.440259, -0.794072,
		0.873243, -0.434940, 0.219710,
		36.148216, 35.524406, 53.451057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773373, 35.553345, 52.674694>,  <35.536945, 35.828865, 53.297260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773373, 35.553345, 52.674694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949959, 35.359695, 52.976883>,  <36.055912, 35.243507, 53.158195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949959, 35.359695, 52.976883>,  <35.773373, 35.553345, 52.674694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949959, 35.359695, 52.976883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007827, -0.839845, -0.542769,
		0.897245, 0.245526, -0.366973,
		0.441464, -0.484125, 0.755469,
		36.082397, 35.214458, 53.203522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208698, 35.152531, 52.302475>,  <35.773373, 35.553345, 52.674694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208698, 35.152531, 52.302475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113747, 34.990414, 52.655605>,  <36.056778, 34.893143, 52.867485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113747, 34.990414, 52.655605>,  <36.208698, 35.152531, 52.302475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113747, 34.990414, 52.655605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007098, -0.908057, -0.418787,
		0.971392, -0.105676, 0.212673,
		-0.237375, -0.405297, 0.882829,
		36.042534, 34.868824, 52.920456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384094, 35.654331, 51.637676>,  <36.208698, 35.152531, 52.302475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384094, 35.654331, 51.637676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000393, 35.752647, 51.581940>,  <35.770172, 35.811638, 51.548496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000393, 35.752647, 51.581940>,  <36.384094, 35.654331, 51.637676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000393, 35.752647, 51.581940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052850, -0.328387, -0.943063,
		-0.277553, -0.912003, 0.302017,
		-0.959256, 0.245788, -0.139344,
		35.712616, 35.826382, 51.540138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875034, 35.096676, 51.594299>,  <36.384094, 35.654331, 51.637676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875034, 35.096676, 51.594299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725262, 35.403294, 51.385605>,  <35.635399, 35.587265, 51.260387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725262, 35.403294, 51.385605>,  <35.875034, 35.096676, 51.594299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725262, 35.403294, 51.385605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146029, -0.506897, -0.849548,
		-0.915682, -0.394289, 0.077862,
		-0.374435, 0.766545, -0.521734,
		35.612930, 35.633259, 51.229084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291267, 34.832443, 51.160328>,  <35.875034, 35.096676, 51.594299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291267, 34.832443, 51.160328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413475, 35.169155, 50.982311>,  <35.486801, 35.371181, 50.875500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413475, 35.169155, 50.982311>,  <35.291267, 34.832443, 51.160328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413475, 35.169155, 50.982311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114534, -0.496490, -0.860454,
		-0.945272, 0.211914, -0.248100,
		0.305521, 0.841778, -0.445046,
		35.505131, 35.421688, 50.848797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981663, 34.752209, 50.460514>,  <35.291267, 34.832443, 51.160328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981663, 34.752209, 50.460514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267132, 35.032272, 50.469063>,  <35.438412, 35.200310, 50.474190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267132, 35.032272, 50.469063>,  <34.981663, 34.752209, 50.460514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267132, 35.032272, 50.469063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324895, -0.303831, -0.895617,
		-0.620577, 0.646119, -0.444313,
		0.713672, 0.700154, 0.021370,
		35.481232, 35.242317, 50.475475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922928, 35.135941, 49.838734>,  <34.981663, 34.752209, 50.460514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922928, 35.135941, 49.838734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296925, 35.145195, 49.980293>,  <35.521324, 35.150745, 50.065231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296925, 35.145195, 49.980293>,  <34.922928, 35.135941, 49.838734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296925, 35.145195, 49.980293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335557, -0.380762, -0.861639,
		0.114821, 0.924384, -0.363773,
		0.934996, 0.023132, 0.353903,
		35.577423, 35.152134, 50.086464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232883, 35.419525, 49.286221>,  <34.922928, 35.135941, 49.838734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232883, 35.419525, 49.286221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531132, 35.277603, 49.511845>,  <35.710079, 35.192448, 49.647217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531132, 35.277603, 49.511845>,  <35.232883, 35.419525, 49.286221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531132, 35.277603, 49.511845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331322, -0.537026, -0.775776,
		0.578166, 0.765319, -0.282861,
		0.745620, -0.354809, 0.564057,
		35.754818, 35.171162, 49.681061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899796, 35.676861, 49.022278>,  <35.232883, 35.419525, 49.286221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899796, 35.676861, 49.022278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990753, 35.348904, 49.232445>,  <36.045326, 35.152130, 49.358547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990753, 35.348904, 49.232445>,  <35.899796, 35.676861, 49.022278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990753, 35.348904, 49.232445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426023, -0.401423, -0.810780,
		0.875669, 0.408207, 0.258012,
		0.227394, -0.819894, 0.525419,
		36.058971, 35.102936, 49.390072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558083, 35.555897, 48.778408>,  <35.899796, 35.676861, 49.022278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558083, 35.555897, 48.778408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448021, 35.207668, 48.941574>,  <36.381985, 34.998730, 49.039474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448021, 35.207668, 48.941574>,  <36.558083, 35.555897, 48.778408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448021, 35.207668, 48.941574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369611, -0.487470, -0.791050,
		0.887513, -0.066890, 0.455902,
		-0.275152, -0.870574, 0.407913,
		36.365475, 34.946495, 49.063950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151867, 35.165413, 48.728436>,  <36.558083, 35.555897, 48.778408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151867, 35.165413, 48.728436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844234, 34.913895, 48.774265>,  <36.659653, 34.762985, 48.801765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844234, 34.913895, 48.774265>,  <37.151867, 35.165413, 48.728436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844234, 34.913895, 48.774265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245577, -0.456223, -0.855308,
		0.590084, -0.629667, 0.505291,
		-0.769085, -0.628792, 0.114579,
		36.613510, 34.725258, 48.808640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458435, 34.517227, 48.590778>,  <37.151867, 35.165413, 48.728436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458435, 34.517227, 48.590778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062344, 34.501167, 48.537373>,  <36.824688, 34.491531, 48.505329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062344, 34.501167, 48.537373>,  <37.458435, 34.517227, 48.590778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062344, 34.501167, 48.537373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136428, -0.476451, -0.868552,
		-0.028744, -0.878284, 0.477274,
		-0.990233, -0.040148, -0.133518,
		36.765274, 34.489124, 48.497318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394592, 33.900951, 48.230400>,  <37.458435, 34.517227, 48.590778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394592, 33.900951, 48.230400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070656, 34.122875, 48.154144>,  <36.876293, 34.256031, 48.108391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070656, 34.122875, 48.154144>,  <37.394592, 33.900951, 48.230400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070656, 34.122875, 48.154144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088181, -0.206145, -0.974540,
		-0.579982, -0.806035, 0.118021,
		-0.809843, 0.554809, -0.190637,
		36.827702, 34.289318, 48.096954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036587, 33.472397, 47.743969>,  <37.394592, 33.900951, 48.230400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036587, 33.472397, 47.743969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936203, 33.859119, 47.724754>,  <36.875973, 34.091152, 47.713226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936203, 33.859119, 47.724754>,  <37.036587, 33.472397, 47.743969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936203, 33.859119, 47.724754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051877, -0.062982, -0.996665,
		-0.966606, -0.247631, 0.065960,
		-0.250959, 0.966805, -0.048032,
		36.860916, 34.149162, 47.710346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455559, 33.448074, 47.216896>,  <37.036587, 33.472397, 47.743969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455559, 33.448074, 47.216896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568970, 33.830723, 47.243679>,  <36.637016, 34.060314, 47.259750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568970, 33.830723, 47.243679>,  <36.455559, 33.448074, 47.216896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568970, 33.830723, 47.243679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347891, 0.167671, -0.922420,
		-0.893636, 0.238236, 0.380340,
		0.283526, 0.956624, 0.066957,
		36.654026, 34.117710, 47.263767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939068, 33.890331, 47.068062>,  <36.455559, 33.448074, 47.216896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939068, 33.890331, 47.068062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277870, 34.076363, 46.965080>,  <36.481152, 34.187981, 46.903290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277870, 34.076363, 46.965080>,  <35.939068, 33.890331, 47.068062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277870, 34.076363, 46.965080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386059, 0.205227, -0.899356,
		-0.365437, 0.861151, 0.353377,
		0.847003, 0.465082, -0.257457,
		36.531971, 34.215889, 46.887844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838295, 34.124443, 46.452297>,  <35.939068, 33.890331, 47.068062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838295, 34.124443, 46.452297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184204, 34.320786, 46.494686>,  <36.391750, 34.438591, 46.520119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184204, 34.320786, 46.494686>,  <35.838295, 34.124443, 46.452297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184204, 34.320786, 46.494686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028230, 0.258221, -0.965673,
		-0.501376, 0.832093, 0.237158,
		0.864769, 0.490860, 0.105976,
		36.443634, 34.468044, 46.526478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819889, 34.888775, 46.273602>,  <35.838295, 34.124443, 46.452297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819889, 34.888775, 46.273602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181778, 34.731823, 46.207249>,  <36.398911, 34.637653, 46.167439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181778, 34.731823, 46.207249>,  <35.819889, 34.888775, 46.273602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181778, 34.731823, 46.207249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038810, 0.311854, -0.949337,
		0.424229, 0.865325, 0.266914,
		0.904723, -0.392377, -0.165881,
		36.453194, 34.614109, 46.157486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213314, 35.386837, 45.877911>,  <35.819889, 34.888775, 46.273602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213314, 35.386837, 45.877911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370640, 35.030605, 45.786545>,  <36.465034, 34.816868, 45.731724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370640, 35.030605, 45.786545>,  <36.213314, 35.386837, 45.877911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370640, 35.030605, 45.786545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249139, 0.135909, -0.958884,
		0.885004, 0.434054, -0.168422,
		0.393317, -0.890576, -0.228419,
		36.488636, 34.763432, 45.718018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447411, 35.519501, 45.308186>,  <36.213314, 35.386837, 45.877911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447411, 35.519501, 45.308186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435883, 35.120235, 45.286888>,  <36.428967, 34.880676, 45.274109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435883, 35.120235, 45.286888>,  <36.447411, 35.519501, 45.308186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435883, 35.120235, 45.286888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253238, 0.058817, -0.965614,
		0.966974, -0.014350, -0.254469,
		-0.028823, -0.998166, -0.053241,
		36.427235, 34.820786, 45.270916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849316, 35.377541, 44.795525>,  <36.447411, 35.519501, 45.308186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849316, 35.377541, 44.795525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597969, 35.071842, 44.853588>,  <36.447159, 34.888420, 44.888424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597969, 35.071842, 44.853588>,  <36.849316, 35.377541, 44.795525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597969, 35.071842, 44.853588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411740, 0.168430, -0.895601,
		0.660015, -0.622537, -0.420509,
		-0.628371, -0.764251, 0.145157,
		36.409458, 34.842567, 44.897137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871639, 35.059982, 44.111633>,  <36.849316, 35.377541, 44.795525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871639, 35.059982, 44.111633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544945, 34.926197, 44.299709>,  <36.348927, 34.845928, 44.412556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544945, 34.926197, 44.299709>,  <36.871639, 35.059982, 44.111633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544945, 34.926197, 44.299709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528208, 0.105399, -0.842548,
		0.232244, -0.936496, -0.262749,
		-0.816737, -0.334463, 0.470187,
		36.299923, 34.825859, 44.440765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636948, 34.490795, 43.638836>,  <36.871639, 35.059982, 44.111633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636948, 34.490795, 43.638836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343548, 34.626099, 43.874653>,  <36.167507, 34.707283, 44.016144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343548, 34.626099, 43.874653>,  <36.636948, 34.490795, 43.638836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343548, 34.626099, 43.874653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643647, -0.066972, -0.762387,
		-0.218403, -0.938666, 0.266844,
		-0.733498, 0.338261, 0.589543,
		36.123497, 34.727577, 44.051517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048733, 34.004650, 43.527172>,  <36.636948, 34.490795, 43.638836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048733, 34.004650, 43.527172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924175, 34.362881, 43.654282>,  <35.849442, 34.577820, 43.730549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924175, 34.362881, 43.654282>,  <36.048733, 34.004650, 43.527172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924175, 34.362881, 43.654282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742423, -0.020542, -0.669617,
		-0.593163, -0.444440, 0.671291,
		-0.311394, 0.895573, 0.317777,
		35.830757, 34.631554, 43.749615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375195, 33.986427, 43.309296>,  <36.048733, 34.004650, 43.527172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375195, 33.986427, 43.309296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395412, 34.374500, 43.404110>,  <35.407543, 34.607346, 43.460999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395412, 34.374500, 43.404110>,  <35.375195, 33.986427, 43.309296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395412, 34.374500, 43.404110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756127, 0.192232, -0.625555,
		-0.652470, -0.147610, 0.743300,
		0.050548, 0.970185, 0.237038,
		35.410576, 34.665554, 43.475220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708775, 34.177624, 43.516434>,  <35.375195, 33.986427, 43.309296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708775, 34.177624, 43.516434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895531, 34.515720, 43.412457>,  <35.007584, 34.718578, 43.350071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895531, 34.515720, 43.412457>,  <34.708775, 34.177624, 43.516434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895531, 34.515720, 43.412457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753367, 0.226256, -0.617452,
		-0.463086, 0.484115, 0.742418,
		0.466894, 0.845246, -0.259940,
		35.035599, 34.769295, 43.334473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194000, 34.507889, 43.336388>,  <34.708775, 34.177624, 43.516434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194000, 34.507889, 43.336388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494438, 34.716057, 43.173897>,  <34.674702, 34.840958, 43.076405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494438, 34.716057, 43.173897>,  <34.194000, 34.507889, 43.336388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494438, 34.716057, 43.173897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489999, 0.027075, -0.871303,
		-0.442448, 0.853479, 0.275343,
		0.751093, 0.520424, -0.406224,
		34.719765, 34.872185, 43.052029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914619, 35.141403, 43.001221>,  <34.194000, 34.507889, 43.336388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914619, 35.141403, 43.001221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269619, 35.084221, 42.825996>,  <34.482620, 35.049911, 42.720860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269619, 35.084221, 42.825996>,  <33.914619, 35.141403, 43.001221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269619, 35.084221, 42.825996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445099, -0.019905, -0.895260,
		0.119265, 0.989529, -0.081296,
		0.887504, -0.142958, -0.438064,
		34.535870, 35.041332, 42.694576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034454, 35.483948, 42.342937>,  <33.914619, 35.141403, 43.001221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034454, 35.483948, 42.342937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293243, 35.185013, 42.282383>,  <34.448517, 35.005653, 42.246052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293243, 35.185013, 42.282383>,  <34.034454, 35.483948, 42.342937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293243, 35.185013, 42.282383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154663, 0.065793, -0.985774,
		0.746666, 0.661179, -0.073019,
		0.646969, -0.747338, -0.151385,
		34.487335, 34.960812, 42.236969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370972, 35.721268, 41.784538>,  <34.034454, 35.483948, 42.342937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370972, 35.721268, 41.784538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425488, 35.325130, 41.794666>,  <34.458195, 35.087448, 41.800743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425488, 35.325130, 41.794666>,  <34.370972, 35.721268, 41.784538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425488, 35.325130, 41.794666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283629, -0.063491, -0.956830,
		0.949200, 0.123224, -0.289544,
		0.136287, -0.990346, 0.025316,
		34.466373, 35.028027, 41.802261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669376, 35.605137, 41.085258>,  <34.370972, 35.721268, 41.784538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669376, 35.605137, 41.085258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544415, 35.251434, 41.224106>,  <34.469437, 35.039211, 41.307415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544415, 35.251434, 41.224106>,  <34.669376, 35.605137, 41.085258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544415, 35.251434, 41.224106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398336, -0.209792, -0.892925,
		0.862398, -0.417228, -0.286691,
		-0.312408, -0.884256, 0.347121,
		34.450691, 34.986156, 41.328243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956200, 35.196918, 40.657471>,  <34.669376, 35.605137, 41.085258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956200, 35.196918, 40.657471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671745, 34.965282, 40.816936>,  <34.501072, 34.826302, 40.912617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671745, 34.965282, 40.816936>,  <34.956200, 35.196918, 40.657471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671745, 34.965282, 40.816936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243182, -0.329438, -0.912323,
		0.659657, -0.745734, 0.093450,
		-0.711137, -0.579095, 0.398666,
		34.458405, 34.791553, 40.936535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962158, 34.463814, 40.305000>,  <34.956200, 35.196918, 40.657471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962158, 34.463814, 40.305000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601154, 34.516308, 40.469070>,  <34.384552, 34.547806, 40.567513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601154, 34.516308, 40.469070>,  <34.962158, 34.463814, 40.305000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601154, 34.516308, 40.469070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430539, -0.297586, -0.852102,
		0.010238, -0.945632, 0.325077,
		-0.902514, 0.131235, 0.410178,
		34.330399, 34.555679, 40.592125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474689, 33.880810, 40.113655>,  <34.962158, 34.463814, 40.305000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474689, 33.880810, 40.113655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247475, 34.191628, 40.222122>,  <34.111145, 34.378117, 40.287205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247475, 34.191628, 40.222122>,  <34.474689, 33.880810, 40.113655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247475, 34.191628, 40.222122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508916, -0.072699, -0.857741,
		-0.646790, -0.625232, 0.436747,
		-0.568038, 0.777046, 0.271170,
		34.077065, 34.424740, 40.303474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811337, 33.664211, 39.985493>,  <34.474689, 33.880810, 40.113655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811337, 33.664211, 39.985493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698212, 34.045586, 40.027393>,  <33.630337, 34.274410, 40.052532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698212, 34.045586, 40.027393>,  <33.811337, 33.664211, 39.985493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698212, 34.045586, 40.027393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425090, -0.026689, -0.904758,
		-0.859833, -0.300410, 0.412844,
		-0.282817, 0.953436, 0.104753,
		33.613365, 34.331615, 40.058819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108150, 33.680214, 39.839439>,  <33.811337, 33.664211, 39.985493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108150, 33.680214, 39.839439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253902, 34.048424, 39.783066>,  <33.341354, 34.269348, 39.749241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253902, 34.048424, 39.783066>,  <33.108150, 33.680214, 39.839439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253902, 34.048424, 39.783066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256335, -0.046348, -0.965476,
		-0.895275, 0.387929, 0.219074,
		0.364383, 0.920523, -0.140934,
		33.363216, 34.324581, 39.740788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511505, 34.151958, 39.500542>,  <33.108150, 33.680214, 39.839439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511505, 34.151958, 39.500542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861080, 34.327175, 39.416309>,  <33.070827, 34.432304, 39.365768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861080, 34.327175, 39.416309>,  <32.511505, 34.151958, 39.500542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861080, 34.327175, 39.416309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338540, 0.237756, -0.910419,
		-0.348739, 0.866942, 0.356081,
		0.873940, 0.438046, -0.210580,
		33.123260, 34.458588, 39.353134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277218, 34.624172, 39.023571>,  <32.511505, 34.151958, 39.500542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277218, 34.624172, 39.023571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670906, 34.660168, 38.962639>,  <32.907120, 34.681767, 38.926079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670906, 34.660168, 38.962639>,  <32.277218, 34.624172, 39.023571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670906, 34.660168, 38.962639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175773, 0.399279, -0.899822,
		-0.020156, 0.912402, 0.408799,
		0.984224, 0.089992, -0.152328,
		32.966175, 34.687164, 38.916939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379368, 35.310425, 38.750622>,  <32.277218, 34.624172, 39.023571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379368, 35.310425, 38.750622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683357, 35.085781, 38.619759>,  <32.865749, 34.950996, 38.541241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683357, 35.085781, 38.619759>,  <32.379368, 35.310425, 38.750622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683357, 35.085781, 38.619759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224817, 0.245148, -0.943059,
		0.609834, 0.790251, 0.060046,
		0.759974, -0.561610, -0.327161,
		32.911350, 34.917297, 38.521610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687973, 35.699387, 38.256027>,  <32.379368, 35.310425, 38.750622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687973, 35.699387, 38.256027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821384, 35.330307, 38.178684>,  <32.901432, 35.108860, 38.132278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821384, 35.330307, 38.178684>,  <32.687973, 35.699387, 38.256027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821384, 35.330307, 38.178684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039003, 0.191422, -0.980733,
		0.941933, 0.334644, 0.027857,
		0.333529, -0.922698, -0.193359,
		32.921444, 35.053497, 38.120678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130711, 35.814602, 37.706566>,  <32.687973, 35.699387, 38.256027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130711, 35.814602, 37.706566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077305, 35.418476, 37.691360>,  <33.045261, 35.180801, 37.682236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077305, 35.418476, 37.691360>,  <33.130711, 35.814602, 37.706566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077305, 35.418476, 37.691360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033339, 0.033850, -0.998871,
		0.990486, -0.134633, 0.028496,
		-0.133516, -0.990317, -0.038016,
		33.037251, 35.121380, 37.679955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620354, 35.592312, 37.165768>,  <33.130711, 35.814602, 37.706566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620354, 35.592312, 37.165768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332291, 35.320019, 37.219395>,  <33.159451, 35.156643, 37.251572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332291, 35.320019, 37.219395>,  <33.620354, 35.592312, 37.165768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332291, 35.320019, 37.219395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133420, -0.053745, -0.989601,
		0.680857, -0.730560, -0.052118,
		-0.720162, -0.680731, 0.134064,
		33.116241, 35.115799, 37.259613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900597, 34.928867, 37.132069>,  <33.620354, 35.592312, 37.165768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900597, 34.928867, 37.132069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147747, 34.777878, 36.856174>,  <34.296040, 34.687283, 36.690636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147747, 34.777878, 36.856174>,  <33.900597, 34.928867, 37.132069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147747, 34.777878, 36.856174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646964, -0.254448, 0.718814,
		-0.446836, -0.890376, 0.086993,
		0.617880, -0.377473, -0.689738,
		34.333111, 34.664635, 36.649254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200146, 34.257858, 37.220280>,  <33.900597, 34.928867, 37.132069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200146, 34.257858, 37.220280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500225, 34.400745, 36.997715>,  <34.680271, 34.486477, 36.864174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500225, 34.400745, 36.997715>,  <34.200146, 34.257858, 37.220280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500225, 34.400745, 36.997715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642074, -0.192550, 0.742068,
		0.157946, -0.913957, -0.373814,
		0.750196, 0.357223, -0.556416,
		34.725285, 34.507912, 36.830791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762039, 33.778866, 37.345909>,  <34.200146, 34.257858, 37.220280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762039, 33.778866, 37.345909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897057, 34.127014, 37.202515>,  <34.978065, 34.335903, 37.116478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897057, 34.127014, 37.202515>,  <34.762039, 33.778866, 37.345909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897057, 34.127014, 37.202515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735856, -0.006488, 0.677108,
		0.587011, -0.492349, -0.642659,
		0.337542, 0.870374, -0.358489,
		34.998318, 34.388126, 37.094967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475025, 33.590015, 37.412098>,  <34.762039, 33.778866, 37.345909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475025, 33.590015, 37.412098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478924, 33.988457, 37.377056>,  <35.481262, 34.227524, 37.356033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478924, 33.988457, 37.377056>,  <35.475025, 33.590015, 37.412098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478924, 33.988457, 37.377056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725017, 0.053293, 0.686666,
		0.688662, -0.070205, -0.721675,
		0.009747, 0.996108, -0.087601,
		35.481850, 34.287289, 37.350777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204624, 33.801048, 37.419220>,  <35.475025, 33.590015, 37.412098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204624, 33.801048, 37.419220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019638, 34.142616, 37.514668>,  <35.908646, 34.347557, 37.571938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019638, 34.142616, 37.514668>,  <36.204624, 33.801048, 37.419220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019638, 34.142616, 37.514668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538648, 0.056820, 0.840613,
		0.704260, 0.517288, -0.486242,
		-0.462467, 0.853923, 0.238620,
		35.880898, 34.398792, 37.586254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764805, 34.351379, 37.530258>,  <36.204624, 33.801048, 37.419220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764805, 34.351379, 37.530258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426018, 34.419212, 37.731808>,  <36.222744, 34.459911, 37.852737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426018, 34.419212, 37.731808>,  <36.764805, 34.351379, 37.530258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426018, 34.419212, 37.731808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518223, 0.051745, 0.853678,
		0.118694, 0.984157, -0.131707,
		-0.846969, 0.169580, 0.503871,
		36.171928, 34.470085, 37.882969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917984, 34.891678, 37.842140>,  <36.764805, 34.351379, 37.530258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917984, 34.891678, 37.842140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602764, 34.745800, 38.040524>,  <36.413631, 34.658272, 38.159554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602764, 34.745800, 38.040524>,  <36.917984, 34.891678, 37.842140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602764, 34.745800, 38.040524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447483, 0.213929, 0.868328,
		-0.422776, 0.906218, -0.005391,
		-0.788048, -0.364696, 0.495962,
		36.366348, 34.636391, 38.189312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093792, 35.093460, 38.403248>,  <36.917984, 34.891678, 37.842140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093792, 35.093460, 38.403248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779282, 34.868057, 38.504627>,  <36.590576, 34.732815, 38.565453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779282, 34.868057, 38.504627>,  <37.093792, 35.093460, 38.403248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779282, 34.868057, 38.504627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400749, -0.152883, 0.903342,
		-0.470294, 0.811841, 0.346033,
		-0.786272, -0.563509, 0.253445,
		36.543400, 34.699005, 38.580662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651531, 35.449570, 38.874931>,  <37.093792, 35.093460, 38.403248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651531, 35.449570, 38.874931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619606, 35.053783, 38.923256>,  <36.600452, 34.816311, 38.952251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619606, 35.053783, 38.923256>,  <36.651531, 35.449570, 38.874931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619606, 35.053783, 38.923256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448837, 0.072546, 0.890664,
		-0.890042, 0.125311, 0.438317,
		-0.079811, -0.989462, 0.120813,
		36.595661, 34.756947, 38.959499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259357, 35.312664, 39.553692>,  <36.651531, 35.449570, 38.874931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259357, 35.312664, 39.553692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422100, 34.954018, 39.483784>,  <36.519745, 34.738831, 39.441841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422100, 34.954018, 39.483784>,  <36.259357, 35.312664, 39.553692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422100, 34.954018, 39.483784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374751, -0.010650, 0.927064,
		-0.833083, -0.442679, 0.331675,
		0.406860, -0.896617, -0.174767,
		36.544159, 34.685032, 39.431355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054836, 34.902630, 40.016613>,  <36.259357, 35.312664, 39.553692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054836, 34.902630, 40.016613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383083, 34.700405, 39.910030>,  <36.580032, 34.579071, 39.846081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383083, 34.700405, 39.910030>,  <36.054836, 34.902630, 40.016613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383083, 34.700405, 39.910030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209081, -0.168336, 0.963301,
		-0.531863, -0.846209, -0.032436,
		0.820614, -0.505562, -0.266458,
		36.629269, 34.548737, 39.830093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110699, 34.335224, 40.471279>,  <36.054836, 34.902630, 40.016613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110699, 34.335224, 40.471279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481331, 34.395721, 40.333538>,  <36.703709, 34.432022, 40.250893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481331, 34.395721, 40.333538>,  <36.110699, 34.335224, 40.471279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481331, 34.395721, 40.333538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345859, 0.017084, 0.938131,
		0.147773, -0.988348, -0.036481,
		0.926577, 0.151248, -0.344353,
		36.759304, 34.441097, 40.230232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473248, 33.846546, 40.688046>,  <36.110699, 34.335224, 40.471279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473248, 33.846546, 40.688046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727386, 34.147018, 40.616425>,  <36.879871, 34.327301, 40.573452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727386, 34.147018, 40.616425>,  <36.473248, 33.846546, 40.688046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727386, 34.147018, 40.616425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400846, -0.122633, 0.907901,
		0.660039, -0.648607, -0.379022,
		0.635351, 0.751179, -0.179049,
		36.917992, 34.372372, 40.562710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047180, 33.550976, 40.897404>,  <36.473248, 33.846546, 40.688046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047180, 33.550976, 40.897404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119709, 33.944286, 40.904152>,  <37.163227, 34.180275, 40.908199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119709, 33.944286, 40.904152>,  <37.047180, 33.550976, 40.897404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119709, 33.944286, 40.904152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488330, -0.104914, 0.866330,
		0.853614, -0.148845, -0.499188,
		0.181321, 0.983279, 0.016870,
		37.174107, 34.239269, 40.909214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690800, 33.592209, 41.051376>,  <37.047180, 33.550976, 40.897404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690800, 33.592209, 41.051376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614941, 33.974739, 41.140343>,  <37.569424, 34.204258, 41.193722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614941, 33.974739, 41.140343>,  <37.690800, 33.592209, 41.051376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614941, 33.974739, 41.140343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414738, -0.127297, 0.900993,
		0.889959, 0.263113, -0.372485,
		-0.189647, 0.956330, 0.222413,
		37.558048, 34.261639, 41.207066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410477, 33.768040, 41.365402>,  <37.690800, 33.592209, 41.051376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410477, 33.768040, 41.365402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170963, 34.072186, 41.466042>,  <38.027256, 34.254673, 41.526424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170963, 34.072186, 41.466042>,  <38.410477, 33.768040, 41.365402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170963, 34.072186, 41.466042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487704, 0.096986, 0.867605,
		0.635297, 0.642211, -0.428908,
		-0.598784, 0.760367, 0.251594,
		37.991329, 34.300297, 41.541519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854218, 34.264168, 41.555340>,  <38.410477, 33.768040, 41.365402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854218, 34.264168, 41.555340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490269, 34.299778, 41.717430>,  <38.271900, 34.321144, 41.814682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490269, 34.299778, 41.717430>,  <38.854218, 34.264168, 41.555340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490269, 34.299778, 41.717430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409027, 0.028911, 0.912064,
		0.069482, 0.995610, -0.062720,
		-0.909873, 0.089026, 0.405222,
		38.217308, 34.326485, 41.838997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943371, 34.782051, 41.986553>,  <38.854218, 34.264168, 41.555340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943371, 34.782051, 41.986553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624836, 34.576210, 42.113689>,  <38.433716, 34.452705, 42.189972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624836, 34.576210, 42.113689>,  <38.943371, 34.782051, 41.986553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624836, 34.576210, 42.113689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233146, 0.223710, 0.946360,
		-0.558106, 0.827728, -0.058171,
		-0.796342, -0.514607, 0.317836,
		38.385933, 34.421829, 42.209042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780758, 35.129402, 42.609711>,  <38.943371, 34.782051, 41.986553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780758, 35.129402, 42.609711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573570, 34.789940, 42.652573>,  <38.449257, 34.586262, 42.678288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573570, 34.789940, 42.652573>,  <38.780758, 35.129402, 42.609711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573570, 34.789940, 42.652573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183051, 0.012392, 0.983025,
		-0.835582, 0.528793, 0.148930,
		-0.517971, -0.848660, 0.107150,
		38.418179, 34.535343, 42.684719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332283, 35.221920, 43.232101>,  <38.780758, 35.129402, 42.609711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332283, 35.221920, 43.232101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323528, 34.828514, 43.160305>,  <38.318275, 34.592472, 43.117226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323528, 34.828514, 43.160305>,  <38.332283, 35.221920, 43.232101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323528, 34.828514, 43.160305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022825, -0.178998, 0.983585,
		-0.999500, 0.025625, -0.018531,
		-0.021887, -0.983516, -0.179493,
		38.316963, 34.533459, 43.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862743, 35.096794, 43.666809>,  <38.332283, 35.221920, 43.232101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862743, 35.096794, 43.666809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061665, 34.756371, 43.599403>,  <38.181019, 34.552116, 43.558960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061665, 34.756371, 43.599403>,  <37.862743, 35.096794, 43.666809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061665, 34.756371, 43.599403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204728, -0.073633, 0.976045,
		-0.843076, -0.519888, 0.137617,
		0.497302, -0.851055, -0.168514,
		38.210854, 34.501053, 43.548851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632111, 34.497528, 44.081261>,  <37.862743, 35.096794, 43.666809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632111, 34.497528, 44.081261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010998, 34.402248, 43.995438>,  <38.238331, 34.345081, 43.943943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010998, 34.402248, 43.995438>,  <37.632111, 34.497528, 44.081261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010998, 34.402248, 43.995438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203206, -0.071524, 0.976520,
		-0.247950, -0.968579, -0.019346,
		0.947221, -0.238197, -0.214555,
		38.295166, 34.330791, 43.931072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849247, 33.890228, 44.454811>,  <37.632111, 34.497528, 44.081261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849247, 33.890228, 44.454811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180176, 34.097061, 44.367023>,  <38.378731, 34.221161, 44.314350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180176, 34.097061, 44.367023>,  <37.849247, 33.890228, 44.454811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180176, 34.097061, 44.367023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319784, -0.112326, 0.940809,
		0.461823, -0.848534, -0.258284,
		0.827320, 0.517082, -0.219473,
		38.428371, 34.252186, 44.301182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415131, 33.512989, 44.736107>,  <37.849247, 33.890228, 44.454811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415131, 33.512989, 44.736107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534897, 33.892944, 44.700184>,  <38.606758, 34.120918, 44.678631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534897, 33.892944, 44.700184>,  <38.415131, 33.512989, 44.736107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534897, 33.892944, 44.700184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235939, 0.017488, 0.971611,
		0.924489, -0.312108, -0.218878,
		0.299420, 0.949886, -0.089806,
		38.624722, 34.177910, 44.673241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014011, 33.588039, 44.992245>,  <38.415131, 33.512989, 44.736107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014011, 33.588039, 44.992245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916710, 33.975979, 44.998135>,  <38.858330, 34.208744, 45.001667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916710, 33.975979, 44.998135>,  <39.014011, 33.588039, 44.992245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916710, 33.975979, 44.998135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191700, 0.033192, 0.980892,
		0.950831, 0.241427, -0.193995,
		-0.243253, 0.969851, 0.014722,
		38.843735, 34.266933, 45.002552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605610, 33.965279, 45.214989>,  <39.014011, 33.588039, 44.992245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605610, 33.965279, 45.214989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267109, 34.168640, 45.278721>,  <39.064011, 34.290657, 45.316959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267109, 34.168640, 45.278721>,  <39.605610, 33.965279, 45.214989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267109, 34.168640, 45.278721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278480, 0.167133, 0.945788,
		0.454212, 0.844745, -0.283016,
		-0.846251, 0.508403, 0.159331,
		39.013233, 34.321159, 45.326519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918991, 34.482609, 45.581879>,  <39.605610, 33.965279, 45.214989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918991, 34.482609, 45.581879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522572, 34.471310, 45.634075>,  <39.284721, 34.464531, 45.665394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522572, 34.471310, 45.634075>,  <39.918991, 34.482609, 45.581879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522572, 34.471310, 45.634075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127646, 0.086155, 0.988071,
		-0.039155, 0.995881, -0.081778,
		-0.991047, -0.028249, 0.130494,
		39.225258, 34.462833, 45.673222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850597, 34.974068, 46.056511>,  <39.918991, 34.482609, 45.581879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850597, 34.974068, 46.056511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516144, 34.755783, 46.078724>,  <39.315472, 34.624813, 46.092052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516144, 34.755783, 46.078724>,  <39.850597, 34.974068, 46.056511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516144, 34.755783, 46.078724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011689, 0.118949, 0.992832,
		-0.548401, 0.829491, -0.105836,
		-0.836134, -0.545707, 0.055536,
		39.265305, 34.592072, 46.095387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330246, 35.321239, 46.439659>,  <39.850597, 34.974068, 46.056511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330246, 35.321239, 46.439659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242352, 34.932259, 46.470791>,  <39.189613, 34.698872, 46.489468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242352, 34.932259, 46.470791>,  <39.330246, 35.321239, 46.439659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242352, 34.932259, 46.470791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079019, 0.097256, 0.992117,
		-0.972354, 0.211853, -0.098212,
		-0.219735, -0.972450, 0.077827,
		39.176430, 34.640522, 46.494141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891972, 35.447830, 46.969883>,  <39.330246, 35.321239, 46.439659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891972, 35.447830, 46.969883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958515, 35.055824, 46.926273>,  <38.998444, 34.820621, 46.900108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958515, 35.055824, 46.926273>,  <38.891972, 35.447830, 46.969883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958515, 35.055824, 46.926273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006393, -0.111634, 0.993729,
		-0.986044, -0.164621, -0.024837,
		0.166361, -0.980019, -0.109024,
		39.008423, 34.761818, 46.893566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371994, 35.136475, 47.275890>,  <38.891972, 35.447830, 46.969883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371994, 35.136475, 47.275890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692871, 34.897915, 47.287231>,  <38.885395, 34.754780, 47.294037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692871, 34.897915, 47.287231>,  <38.371994, 35.136475, 47.275890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692871, 34.897915, 47.287231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150804, -0.156441, 0.976107,
		-0.577712, -0.787297, -0.215434,
		0.802189, -0.596397, 0.028350,
		38.933529, 34.718994, 47.295738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123226, 34.585773, 47.740978>,  <38.371994, 35.136475, 47.275890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123226, 34.585773, 47.740978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522919, 34.571293, 47.746937>,  <38.762733, 34.562603, 47.750511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522919, 34.571293, 47.746937>,  <38.123226, 34.585773, 47.740978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522919, 34.571293, 47.746937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017519, -0.073203, 0.997163,
		-0.035002, -0.996660, -0.073781,
		0.999234, -0.036195, 0.014898,
		38.822689, 34.560432, 47.751408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242851, 34.287037, 48.370209>,  <38.123226, 34.585773, 47.740978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242851, 34.287037, 48.370209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622089, 34.376724, 48.280022>,  <38.849632, 34.430538, 48.225910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622089, 34.376724, 48.280022>,  <38.242851, 34.287037, 48.370209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622089, 34.376724, 48.280022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217750, 0.058920, 0.974224,
		0.231727, -0.972755, 0.007038,
		0.948096, 0.224222, -0.225471,
		38.906517, 34.443989, 48.212379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654079, 33.887035, 48.873646>,  <38.242851, 34.287037, 48.370209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654079, 33.887035, 48.873646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846771, 34.216492, 48.753941>,  <38.962387, 34.414165, 48.682117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846771, 34.216492, 48.753941>,  <38.654079, 33.887035, 48.873646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846771, 34.216492, 48.753941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053751, 0.313081, 0.948204,
		0.874668, -0.472867, 0.106551,
		0.481733, 0.823636, -0.299259,
		38.991291, 34.463581, 48.664162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221638, 33.930977, 49.305347>,  <38.654079, 33.887035, 48.873646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221638, 33.930977, 49.305347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218678, 34.306355, 49.167202>,  <39.216904, 34.531582, 49.084316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218678, 34.306355, 49.167202>,  <39.221638, 33.930977, 49.305347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218678, 34.306355, 49.167202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176602, 0.341168, 0.923264,
		0.984255, -0.054161, -0.168255,
		-0.007399, 0.938441, -0.345361,
		39.216457, 34.587887, 49.063595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732983, 34.272617, 49.695724>,  <39.221638, 33.930977, 49.305347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732983, 34.272617, 49.695724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504639, 34.566654, 49.549438>,  <39.367630, 34.743076, 49.461666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504639, 34.566654, 49.549438>,  <39.732983, 34.272617, 49.695724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504639, 34.566654, 49.549438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102112, 0.505537, 0.856741,
		0.814671, 0.451738, -0.363655,
		-0.570863, 0.735096, -0.365718,
		39.333382, 34.787182, 49.439724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044773, 34.977165, 49.909153>,  <39.732983, 34.272617, 49.695724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044773, 34.977165, 49.909153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664162, 35.072380, 49.831253>,  <39.435795, 35.129509, 49.784512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664162, 35.072380, 49.831253>,  <40.044773, 34.977165, 49.909153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664162, 35.072380, 49.831253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013237, 0.600952, 0.799176,
		0.307268, 0.763019, -0.568673,
		-0.951531, 0.238034, -0.194753,
		39.378704, 35.143791, 49.772827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961872, 35.736095, 49.863632>,  <40.044773, 34.977165, 49.909153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961872, 35.736095, 49.863632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598335, 35.589115, 49.942612>,  <39.380215, 35.500927, 49.989998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598335, 35.589115, 49.942612>,  <39.961872, 35.736095, 49.863632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598335, 35.589115, 49.942612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134052, 0.705497, 0.695920,
		-0.395016, 0.606012, -0.690443,
		-0.908841, -0.367455, 0.197446,
		39.325684, 35.478878, 50.001846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472042, 36.247440, 49.999275>,  <39.961872, 35.736095, 49.863632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472042, 36.247440, 49.999275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343494, 35.920628, 50.190769>,  <39.266365, 35.724541, 50.305664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343494, 35.920628, 50.190769>,  <39.472042, 36.247440, 49.999275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343494, 35.920628, 50.190769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135541, 0.540031, 0.830659,
		-0.937204, 0.202060, -0.284290,
		-0.321369, -0.817030, 0.478732,
		39.247086, 35.675518, 50.334389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543434, 36.791824, 50.575539>,  <39.472042, 36.247440, 49.999275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543434, 36.791824, 50.575539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382912, 37.153492, 50.634098>,  <39.286598, 37.370495, 50.669231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382912, 37.153492, 50.634098>,  <39.543434, 36.791824, 50.575539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382912, 37.153492, 50.634098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237488, 0.051650, -0.970016,
		-0.884622, -0.424037, 0.194003,
		-0.401302, 0.904171, 0.146394,
		39.262520, 37.424744, 50.678017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863674, 36.775883, 50.352013>,  <39.543434, 36.791824, 50.575539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863674, 36.775883, 50.352013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944813, 37.167530, 50.346539>,  <38.993496, 37.402519, 50.343254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944813, 37.167530, 50.346539>,  <38.863674, 36.775883, 50.352013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944813, 37.167530, 50.346539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243394, 0.036879, -0.969226,
		-0.948478, 0.199938, 0.245791,
		0.202850, 0.979114, -0.013685,
		39.005669, 37.461266, 50.342434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323124, 37.134212, 50.111454>,  <38.863674, 36.775883, 50.352013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323124, 37.134212, 50.111454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620743, 37.390877, 50.036972>,  <38.799313, 37.544876, 49.992283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620743, 37.390877, 50.036972>,  <38.323124, 37.134212, 50.111454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620743, 37.390877, 50.036972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314865, 0.090937, -0.944770,
		-0.589286, 0.761581, 0.269697,
		0.744044, 0.641658, -0.186208,
		38.843956, 37.583374, 49.981110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083427, 37.848164, 49.660343>,  <38.323124, 37.134212, 50.111454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083427, 37.848164, 49.660343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478268, 37.823124, 49.601406>,  <38.715172, 37.808102, 49.566044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478268, 37.823124, 49.601406>,  <38.083427, 37.848164, 49.660343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478268, 37.823124, 49.601406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125472, 0.269072, -0.954912,
		0.099423, 0.961083, 0.257747,
		0.987103, -0.062600, -0.147341,
		38.774399, 37.804344, 49.557205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235909, 38.440456, 49.233833>,  <38.083427, 37.848164, 49.660343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235909, 38.440456, 49.233833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550682, 38.196941, 49.193607>,  <38.739544, 38.050831, 49.169472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550682, 38.196941, 49.193607>,  <38.235909, 38.440456, 49.233833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550682, 38.196941, 49.193607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092271, 0.277251, -0.956357,
		0.610104, 0.743306, 0.274351,
		0.786930, -0.608792, -0.100567,
		38.786762, 38.014305, 49.163437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878456, 38.771450, 48.868820>,  <38.235909, 38.440456, 49.233833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878456, 38.771450, 48.868820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918438, 38.377964, 48.809071>,  <38.942429, 38.141872, 48.773220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918438, 38.377964, 48.809071>,  <38.878456, 38.771450, 48.868820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918438, 38.377964, 48.809071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155070, 0.163696, -0.974247,
		0.982834, 0.074218, 0.168907,
		0.099956, -0.983715, -0.149377,
		38.948425, 38.082848, 48.764259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279495, 38.721237, 48.217644>,  <38.878456, 38.771450, 48.868820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279495, 38.721237, 48.217644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146820, 38.345463, 48.252178>,  <39.067215, 38.119999, 48.272900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146820, 38.345463, 48.252178>,  <39.279495, 38.721237, 48.217644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146820, 38.345463, 48.252178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075935, -0.117801, -0.990129,
		0.940329, -0.321855, 0.110409,
		-0.331684, -0.939432, 0.086332,
		39.047314, 38.063633, 48.278076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688663, 38.386105, 47.701065>,  <39.279495, 38.721237, 48.217644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688663, 38.386105, 47.701065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386463, 38.136887, 47.782093>,  <39.205143, 37.987354, 47.830711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386463, 38.136887, 47.782093>,  <39.688663, 38.386105, 47.701065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386463, 38.136887, 47.782093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051597, -0.251654, -0.966441,
		0.653118, -0.740594, 0.157976,
		-0.755496, -0.623049, 0.202573,
		39.159813, 37.949970, 47.842865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798588, 37.694645, 47.433376>,  <39.688663, 38.386105, 47.701065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798588, 37.694645, 47.433376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401249, 37.715694, 47.474354>,  <39.162846, 37.728325, 47.498940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401249, 37.715694, 47.474354>,  <39.798588, 37.694645, 47.433376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401249, 37.715694, 47.474354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113811, -0.312305, -0.943140,
		-0.017635, -0.948523, 0.316216,
		-0.993346, 0.052621, 0.102445,
		39.103245, 37.731480, 47.505089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622440, 37.248234, 46.987446>,  <39.798588, 37.694645, 47.433376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622440, 37.248234, 46.987446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288231, 37.463421, 47.032154>,  <39.087704, 37.592533, 47.058979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288231, 37.463421, 47.032154>,  <39.622440, 37.248234, 46.987446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288231, 37.463421, 47.032154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189192, -0.090694, -0.977743,
		-0.515856, -0.838073, 0.177556,
		-0.835523, 0.537966, 0.111772,
		39.037575, 37.624809, 47.065685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128395, 36.924583, 46.595848>,  <39.622440, 37.248234, 46.987446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128395, 36.924583, 46.595848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017918, 37.307602, 46.628902>,  <38.951630, 37.537411, 46.648735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017918, 37.307602, 46.628902>,  <39.128395, 36.924583, 46.595848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017918, 37.307602, 46.628902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306516, -0.006266, -0.951845,
		-0.910915, -0.288222, 0.295233,
		-0.276192, 0.957543, 0.082637,
		38.935059, 37.594864, 46.653694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381485, 36.953678, 46.446915>,  <39.128395, 36.924583, 46.595848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381485, 36.953678, 46.446915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533577, 37.316978, 46.377056>,  <38.624832, 37.534958, 46.335140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533577, 37.316978, 46.377056>,  <38.381485, 36.953678, 46.446915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533577, 37.316978, 46.377056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376208, -0.020618, -0.926306,
		-0.844921, 0.417913, 0.333852,
		0.380232, 0.908253, -0.174643,
		38.647648, 37.589455, 46.324661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826317, 37.296497, 46.102528>,  <38.381485, 36.953678, 46.446915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826317, 37.296497, 46.102528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178303, 37.466007, 46.016663>,  <38.389496, 37.567715, 45.965145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178303, 37.466007, 46.016663>,  <37.826317, 37.296497, 46.102528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178303, 37.466007, 46.016663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282383, 0.103258, -0.953728,
		-0.382000, 0.899863, 0.210530,
		0.879964, 0.423774, -0.214662,
		38.442291, 37.593140, 45.952263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594395, 37.667919, 45.579693>,  <37.826317, 37.296497, 46.102528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594395, 37.667919, 45.579693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990826, 37.685501, 45.529373>,  <38.228683, 37.696053, 45.499180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990826, 37.685501, 45.529373>,  <37.594395, 37.667919, 45.579693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990826, 37.685501, 45.529373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117959, -0.149821, -0.981651,
		-0.061998, 0.987736, -0.143300,
		0.991081, 0.043957, -0.125801,
		38.288151, 37.698689, 45.491634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750328, 38.147549, 45.039066>,  <37.594395, 37.667919, 45.579693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750328, 38.147549, 45.039066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070038, 37.907887, 45.057732>,  <38.261864, 37.764091, 45.068932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070038, 37.907887, 45.057732>,  <37.750328, 38.147549, 45.039066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070038, 37.907887, 45.057732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010611, -0.063570, -0.997921,
		0.600874, 0.798107, -0.044452,
		0.799274, -0.599153, 0.046666,
		38.309818, 37.728142, 45.071732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252552, 38.411800, 44.568851>,  <37.750328, 38.147549, 45.039066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252552, 38.411800, 44.568851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360626, 38.030910, 44.625790>,  <38.425472, 37.802376, 44.659954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360626, 38.030910, 44.625790>,  <38.252552, 38.411800, 44.568851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360626, 38.030910, 44.625790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073327, -0.127066, -0.989180,
		0.960012, 0.277699, 0.035493,
		0.270184, -0.952228, 0.142348,
		38.441681, 37.745243, 44.668495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942413, 38.243481, 44.239021>,  <38.252552, 38.411800, 44.568851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942413, 38.243481, 44.239021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722248, 37.912121, 44.280582>,  <38.590149, 37.713303, 44.305519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722248, 37.912121, 44.280582>,  <38.942413, 38.243481, 44.239021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722248, 37.912121, 44.280582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081530, -0.177191, -0.980794,
		0.830904, -0.531367, 0.165068,
		-0.550410, -0.828403, 0.103906,
		38.557125, 37.663601, 44.311752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178940, 37.835754, 43.703232>,  <38.942413, 38.243481, 44.239021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178940, 37.835754, 43.703232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847649, 37.644073, 43.819447>,  <38.648876, 37.529064, 43.889175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847649, 37.644073, 43.819447>,  <39.178940, 37.835754, 43.703232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847649, 37.644073, 43.819447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062693, -0.435962, -0.897779,
		0.556877, -0.761778, 0.331032,
		-0.828225, -0.479199, 0.290535,
		38.599182, 37.500313, 43.906609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285461, 37.093685, 43.464363>,  <39.178940, 37.835754, 43.703232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285461, 37.093685, 43.464363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895931, 37.141045, 43.541965>,  <38.662212, 37.169460, 43.588528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895931, 37.141045, 43.541965>,  <39.285461, 37.093685, 43.464363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895931, 37.141045, 43.541965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223458, -0.342872, -0.912417,
		-0.041513, -0.931890, 0.360357,
		-0.973829, 0.118402, 0.194005,
		38.603783, 37.176567, 43.600166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974533, 36.532055, 43.259941>,  <39.285461, 37.093685, 43.464363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974533, 36.532055, 43.259941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633900, 36.738159, 43.298534>,  <38.429520, 36.861820, 43.321690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633900, 36.738159, 43.298534>,  <38.974533, 36.532055, 43.259941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633900, 36.738159, 43.298534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328059, -0.380265, -0.864740,
		-0.408879, -0.768051, 0.492864,
		-0.851583, 0.515263, 0.096483,
		38.378422, 36.892735, 43.327480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519161, 36.081249, 43.240139>,  <38.974533, 36.532055, 43.259941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519161, 36.081249, 43.240139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401970, 36.443371, 43.117123>,  <38.331654, 36.660645, 43.043312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401970, 36.443371, 43.117123>,  <38.519161, 36.081249, 43.240139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401970, 36.443371, 43.117123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190516, -0.370481, -0.909091,
		-0.936945, -0.207754, 0.281019,
		-0.292980, 0.905308, -0.307540,
		38.314075, 36.714962, 43.024860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750683, 36.082306, 42.929703>,  <38.519161, 36.081249, 43.240139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750683, 36.082306, 42.929703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903954, 36.408314, 42.755844>,  <37.995918, 36.603920, 42.651527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903954, 36.408314, 42.755844>,  <37.750683, 36.082306, 42.929703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903954, 36.408314, 42.755844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397999, -0.278955, -0.873946,
		-0.833529, 0.507867, 0.217487,
		0.383179, 0.815019, -0.434647,
		38.018906, 36.652821, 42.625450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320610, 36.278717, 42.438354>,  <37.750683, 36.082306, 42.929703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320610, 36.278717, 42.438354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624405, 36.509525, 42.318203>,  <37.806683, 36.648010, 42.246113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624405, 36.509525, 42.318203>,  <37.320610, 36.278717, 42.438354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624405, 36.509525, 42.318203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296510, -0.103930, -0.949358,
		-0.579020, 0.810088, 0.092159,
		0.759485, 0.577023, -0.300377,
		37.852249, 36.682632, 42.228088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110157, 36.743412, 41.880718>,  <37.320610, 36.278717, 42.438354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110157, 36.743412, 41.880718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508801, 36.723587, 41.854424>,  <37.747986, 36.711693, 41.838646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508801, 36.723587, 41.854424>,  <37.110157, 36.743412, 41.880718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508801, 36.723587, 41.854424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076855, -0.273860, -0.958694,
		0.029515, 0.960491, -0.276740,
		0.996605, -0.049565, -0.065736,
		37.807781, 36.708717, 41.834702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341991, 37.267925, 41.393040>,  <37.110157, 36.743412, 41.880718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341991, 37.267925, 41.393040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641273, 37.003685, 41.417645>,  <37.820843, 36.845139, 41.432407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641273, 37.003685, 41.417645>,  <37.341991, 37.267925, 41.393040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641273, 37.003685, 41.417645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015677, -0.075082, -0.997054,
		0.663277, 0.746970, -0.045821,
		0.748210, -0.660605, 0.061511,
		37.865738, 36.805504, 41.436096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795387, 37.525982, 40.877956>,  <37.341991, 37.267925, 41.393040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795387, 37.525982, 40.877956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897408, 37.146206, 40.951191>,  <37.958618, 36.918343, 40.995132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897408, 37.146206, 40.951191>,  <37.795387, 37.525982, 40.877956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897408, 37.146206, 40.951191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224694, -0.125971, -0.966253,
		0.940458, 0.287582, 0.181204,
		0.255050, -0.949436, 0.183088,
		37.973923, 36.861374, 41.006119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527081, 37.392170, 40.660580>,  <37.795387, 37.525982, 40.877956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527081, 37.392170, 40.660580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353928, 37.031590, 40.660416>,  <38.250034, 36.815243, 40.660316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353928, 37.031590, 40.660416>,  <38.527081, 37.392170, 40.660580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353928, 37.031590, 40.660416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203141, -0.097109, -0.974322,
		0.878262, -0.421852, 0.225158,
		-0.432884, -0.901449, -0.000408,
		38.224064, 36.761154, 40.660294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006447, 36.926128, 40.544857>,  <38.527081, 37.392170, 40.660580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006447, 36.926128, 40.544857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667538, 36.776699, 40.393822>,  <38.464191, 36.687042, 40.303200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667538, 36.776699, 40.393822>,  <39.006447, 36.926128, 40.544857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667538, 36.776699, 40.393822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394044, 0.034626, -0.918439,
		0.356183, -0.926953, 0.117869,
		-0.847268, -0.373577, -0.377593,
		38.413357, 36.664627, 40.280544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197884, 36.468563, 40.033772>,  <39.006447, 36.926128, 40.544857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197884, 36.468563, 40.033772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815804, 36.540104, 39.939457>,  <38.586555, 36.583031, 39.882870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815804, 36.540104, 39.939457>,  <39.197884, 36.468563, 40.033772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815804, 36.540104, 39.939457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219560, -0.105946, -0.969829,
		-0.198442, -0.978154, 0.061930,
		-0.955204, 0.178857, -0.235788,
		38.529243, 36.593761, 39.868721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926975, 35.854710, 39.651581>,  <39.197884, 36.468563, 40.033772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926975, 35.854710, 39.651581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693962, 36.165352, 39.555637>,  <38.554153, 36.351738, 39.498074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693962, 36.165352, 39.555637>,  <38.926975, 35.854710, 39.651581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693962, 36.165352, 39.555637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214529, -0.137725, -0.966959,
		-0.783984, -0.614743, -0.086376,
		-0.582535, 0.776610, -0.239854,
		38.519203, 36.398335, 39.483681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454479, 35.680420, 39.196243>,  <38.926975, 35.854710, 39.651581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454479, 35.680420, 39.196243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484386, 36.077480, 39.158173>,  <38.502331, 36.315716, 39.135330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484386, 36.077480, 39.158173>,  <38.454479, 35.680420, 39.196243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484386, 36.077480, 39.158173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129040, -0.104277, -0.986141,
		-0.988817, 0.061450, -0.135888,
		0.074769, 0.992648, -0.095181,
		38.506817, 36.375275, 39.129620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026917, 35.871094, 38.624725>,  <38.454479, 35.680420, 39.196243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026917, 35.871094, 38.624725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281315, 36.176117, 38.672085>,  <38.433956, 36.359131, 38.700500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281315, 36.176117, 38.672085>,  <38.026917, 35.871094, 38.624725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281315, 36.176117, 38.672085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050163, 0.112249, -0.992413,
		-0.770059, 0.637112, 0.033138,
		0.635998, 0.762554, 0.118398,
		38.472115, 36.404884, 38.707603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922829, 36.152386, 38.095322>,  <38.026917, 35.871094, 38.624725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922829, 36.152386, 38.095322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253105, 36.348000, 38.207809>,  <38.451271, 36.465366, 38.275303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253105, 36.348000, 38.207809>,  <37.922829, 36.152386, 38.095322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253105, 36.348000, 38.207809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164309, 0.268407, -0.949189,
		-0.539667, 0.829941, 0.141268,
		0.825689, 0.489035, 0.281217,
		38.500813, 36.494709, 38.292175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020130, 36.646282, 37.628208>,  <37.922829, 36.152386, 38.095322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020130, 36.646282, 37.628208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384956, 36.604149, 37.786720>,  <38.603851, 36.578869, 37.881828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384956, 36.604149, 37.786720>,  <38.020130, 36.646282, 37.628208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384956, 36.604149, 37.786720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409759, 0.198119, -0.890419,
		0.015276, 0.974502, 0.223857,
		0.912066, -0.105330, 0.396284,
		38.658577, 36.572552, 37.905605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376534, 37.117725, 37.257168>,  <38.020130, 36.646282, 37.628208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376534, 37.117725, 37.257168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653522, 36.877300, 37.416771>,  <38.819714, 36.733044, 37.512531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653522, 36.877300, 37.416771>,  <38.376534, 37.117725, 37.257168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653522, 36.877300, 37.416771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544495, 0.072586, -0.835618,
		0.473297, 0.795898, 0.377540,
		0.692471, -0.601063, 0.399008,
		38.861263, 36.696980, 37.536472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936310, 37.485851, 37.262657>,  <38.376534, 37.117725, 37.257168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936310, 37.485851, 37.262657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072800, 37.110088, 37.275841>,  <39.154694, 36.884632, 37.283752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072800, 37.110088, 37.275841>,  <38.936310, 37.485851, 37.262657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072800, 37.110088, 37.275841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590674, 0.187013, -0.784939,
		0.731211, 0.287310, 0.618695,
		0.341225, -0.939404, 0.032960,
		39.175167, 36.828266, 37.285728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701859, 37.488548, 37.248898>,  <38.936310, 37.485851, 37.262657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701859, 37.488548, 37.248898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605194, 37.121437, 37.122864>,  <39.547195, 36.901169, 37.047245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605194, 37.121437, 37.122864>,  <39.701859, 37.488548, 37.248898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605194, 37.121437, 37.122864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743740, 0.033370, -0.667635,
		0.623258, -0.395683, 0.674526,
		-0.241662, -0.917781, -0.315083,
		39.532696, 36.846104, 37.028339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320629, 37.236446, 36.990208>,  <39.701859, 37.488548, 37.248898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320629, 37.236446, 36.990208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032604, 37.006962, 36.834072>,  <39.859787, 36.869270, 36.740391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032604, 37.006962, 36.834072>,  <40.320629, 37.236446, 36.990208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032604, 37.006962, 36.834072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506642, -0.050299, -0.860688,
		0.474153, -0.817512, 0.326884,
		-0.720065, -0.573711, -0.390336,
		39.816586, 36.834850, 36.716972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719082, 36.629269, 36.713322>,  <40.320629, 37.236446, 36.990208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719082, 36.629269, 36.713322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368141, 36.671680, 36.526127>,  <40.157578, 36.697128, 36.413811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368141, 36.671680, 36.526127>,  <40.719082, 36.629269, 36.713322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368141, 36.671680, 36.526127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463734, -0.063268, -0.883712,
		-0.123313, -0.992348, 0.006337,
		-0.877351, 0.106034, -0.467988,
		40.104935, 36.703491, 36.385731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388912, 36.015629, 36.377861>,  <40.719082, 36.629269, 36.713322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388912, 36.015629, 36.377861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283016, 36.345478, 36.177895>,  <40.219479, 36.543388, 36.057915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283016, 36.345478, 36.177895>,  <40.388912, 36.015629, 36.377861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283016, 36.345478, 36.177895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341732, -0.404545, -0.848270,
		-0.901739, -0.395406, -0.174700,
		-0.264737, 0.824620, -0.499917,
		40.203594, 36.592865, 36.027920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015999, 36.184563, 36.006351>,  <40.388912, 36.015629, 36.377861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015999, 36.184563, 36.006351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746193, 36.475601, 36.056362>,  <40.584309, 36.650227, 36.086369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746193, 36.475601, 36.056362>,  <41.015999, 36.184563, 36.006351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746193, 36.475601, 36.056362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536777, 0.599608, -0.593583,
		-0.506857, -0.333268, -0.795002,
		-0.674512, 0.727601, 0.125025,
		40.543839, 36.693882, 36.093868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723351, 36.497349, 35.435249>,  <41.015999, 36.184563, 36.006351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723351, 36.497349, 35.435249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685329, 36.778851, 35.716869>,  <40.662518, 36.947754, 35.885841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685329, 36.778851, 35.716869>,  <40.723351, 36.497349, 35.435249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685329, 36.778851, 35.716869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482262, 0.651273, -0.585890,
		-0.870856, 0.283850, -0.401297,
		-0.095049, 0.703756, 0.704055,
		40.656815, 36.989979, 35.928085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385788, 36.869583, 35.507816>,  <40.723351, 36.497349, 35.435249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385788, 36.869583, 35.507816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626419, 36.911705, 35.191078>,  <41.770798, 36.936977, 35.001034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626419, 36.911705, 35.191078>,  <41.385788, 36.869583, 35.507816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626419, 36.911705, 35.191078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776663, 0.308933, -0.548958,
		0.186818, 0.945236, 0.267635,
		0.601576, 0.105307, -0.791844,
		41.806892, 36.943298, 34.953526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166210, 37.154541, 35.365494>,  <41.385788, 36.869583, 35.507816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166210, 37.154541, 35.365494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484982, 37.337593, 35.523212>,  <42.676247, 37.447426, 35.617844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484982, 37.337593, 35.523212>,  <42.166210, 37.154541, 35.365494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484982, 37.337593, 35.523212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474556, -0.878172, 0.060086,
		0.373758, 0.139231, -0.917017,
		0.796932, 0.457634, 0.394297,
		42.724060, 37.474884, 35.641502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713108, 37.050907, 34.886944>,  <42.166210, 37.154541, 35.365494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713108, 37.050907, 34.886944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786991, 37.105469, 35.276257>,  <42.831322, 37.138206, 35.509846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786991, 37.105469, 35.276257>,  <42.713108, 37.050907, 34.886944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786991, 37.105469, 35.276257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573627, -0.819095, 0.005937,
		0.798020, 0.557203, -0.229541,
		0.184708, 0.136409, 0.973281,
		42.842403, 37.146393, 35.568241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379002, 36.969204, 34.984608>,  <42.713108, 37.050907, 34.886944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379002, 36.969204, 34.984608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213459, 36.900536, 35.342213>,  <43.114132, 36.859337, 35.556774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213459, 36.900536, 35.342213>,  <43.379002, 36.969204, 34.984608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213459, 36.900536, 35.342213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580536, -0.806224, 0.113930,
		0.701214, 0.566156, 0.433320,
		-0.413855, -0.171669, 0.894010,
		43.089302, 36.849033, 35.610416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836040, 36.998337, 35.680107>,  <43.379002, 36.969204, 34.984608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836040, 36.998337, 35.680107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534691, 36.735741, 35.695316>,  <43.353882, 36.578182, 35.704441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534691, 36.735741, 35.695316>,  <43.836040, 36.998337, 35.680107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534691, 36.735741, 35.695316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653219, -0.753773, -0.071630,
		0.075686, -0.029126, 0.996706,
		-0.753376, -0.656489, 0.038025,
		43.308678, 36.538795, 35.706722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786880, 36.322655, 36.147877>,  <43.836040, 36.998337, 35.680107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786880, 36.322655, 36.147877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974300, 36.195503, 36.477585>,  <44.086754, 36.119213, 36.675407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974300, 36.195503, 36.477585>,  <43.786880, 36.322655, 36.147877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974300, 36.195503, 36.477585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566723, -0.823897, 0.004418,
		0.677707, -0.469201, -0.566184,
		0.468550, -0.317875, 0.824267,
		44.114864, 36.100140, 36.724865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965679, 35.665596, 36.067516>,  <43.786880, 36.322655, 36.147877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965679, 35.665596, 36.067516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967381, 35.685738, 36.467007>,  <43.968399, 35.697823, 36.706699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967381, 35.685738, 36.467007>,  <43.965679, 35.665596, 36.067516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967381, 35.685738, 36.467007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432792, -0.900256, 0.047234,
		0.901484, -0.432440, 0.017968,
		0.004250, 0.050357, 0.998722,
		43.968655, 35.700844, 36.766624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138630, 35.013168, 36.307755>,  <43.965679, 35.665596, 36.067516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138630, 35.013168, 36.307755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972775, 35.168594, 36.636898>,  <43.873260, 35.261848, 36.834385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972775, 35.168594, 36.636898>,  <44.138630, 35.013168, 36.307755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972775, 35.168594, 36.636898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353052, -0.902113, 0.248084,
		0.838706, -0.187646, 0.511235,
		-0.414640, 0.388562, 0.822857,
		43.848381, 35.285164, 36.883755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261219, 34.523216, 36.684853>,  <44.138630, 35.013168, 36.307755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261219, 34.523216, 36.684853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979881, 34.720879, 36.889248>,  <43.811077, 34.839478, 37.011887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979881, 34.720879, 36.889248>,  <44.261219, 34.523216, 36.684853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979881, 34.720879, 36.889248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324719, -0.862814, 0.387440,
		0.632344, 0.106578, 0.767321,
		-0.703348, 0.494159, 0.510988,
		43.768875, 34.869125, 37.042545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227703, 34.186340, 37.266953>,  <44.261219, 34.523216, 36.684853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227703, 34.186340, 37.266953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872410, 34.367741, 37.237629>,  <43.659233, 34.476582, 37.220036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872410, 34.367741, 37.237629>,  <44.227703, 34.186340, 37.266953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872410, 34.367741, 37.237629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431598, -0.769133, 0.471335,
		0.157366, 0.450297, 0.878902,
		-0.888234, 0.453505, -0.073312,
		43.605938, 34.503792, 37.215637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885212, 33.911304, 37.849232>,  <44.227703, 34.186340, 37.266953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885212, 33.911304, 37.849232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596897, 34.067608, 37.620228>,  <43.423908, 34.161392, 37.482826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596897, 34.067608, 37.620228>,  <43.885212, 33.911304, 37.849232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596897, 34.067608, 37.620228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570647, -0.803386, 0.170098,
		-0.393482, 0.449308, 0.802056,
		-0.720787, 0.390760, -0.572514,
		43.380661, 34.184837, 37.448475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386253, 33.788513, 38.211937>,  <43.885212, 33.911304, 37.849232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386253, 33.788513, 38.211937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206516, 33.861046, 37.862030>,  <43.098675, 33.904564, 37.652088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206516, 33.861046, 37.862030>,  <43.386253, 33.788513, 38.211937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206516, 33.861046, 37.862030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602631, -0.784371, 0.146965,
		-0.659490, 0.593197, 0.461725,
		-0.449343, 0.181328, -0.874763,
		43.071712, 33.915443, 37.599602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648735, 33.885773, 38.400711>,  <43.386253, 33.788513, 38.211937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648735, 33.885773, 38.400711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656467, 33.777618, 38.015686>,  <42.661106, 33.712727, 37.784672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656467, 33.777618, 38.015686>,  <42.648735, 33.885773, 38.400711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656467, 33.777618, 38.015686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522389, -0.823607, 0.220864,
		-0.852488, 0.498561, -0.157165,
		0.019328, -0.270385, -0.962558,
		42.662266, 33.696503, 37.726917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006924, 33.647392, 38.198833>,  <42.648735, 33.885773, 38.400711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006924, 33.647392, 38.198833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240501, 33.458740, 37.934540>,  <42.380650, 33.345547, 37.775963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240501, 33.458740, 37.934540>,  <42.006924, 33.647392, 38.198833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240501, 33.458740, 37.934540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433426, -0.869336, 0.237480,
		-0.686404, 0.147705, -0.712062,
		0.583944, -0.471633, -0.660735,
		42.415684, 33.317249, 37.736320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540882, 33.119881, 37.823292>,  <42.006924, 33.647392, 38.198833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540882, 33.119881, 37.823292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923458, 33.006153, 37.796822>,  <42.153004, 32.937916, 37.780937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923458, 33.006153, 37.796822>,  <41.540882, 33.119881, 37.823292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923458, 33.006153, 37.796822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258013, -0.929379, 0.263979,
		-0.136559, -0.235406, -0.962256,
		0.956442, -0.284323, -0.066177,
		42.210392, 32.920856, 37.776970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601501, 32.447361, 37.528709>,  <41.540882, 33.119881, 37.823292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601501, 32.447361, 37.528709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954739, 32.472450, 37.714706>,  <42.166679, 32.487503, 37.826305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954739, 32.472450, 37.714706>,  <41.601501, 32.447361, 37.528709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954739, 32.472450, 37.714706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112962, -0.933455, 0.340442,
		0.455398, -0.353168, -0.817243,
		0.883092, 0.062719, 0.464988,
		42.219666, 32.491264, 37.854202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980682, 31.811085, 37.473019>,  <41.601501, 32.447361, 37.528709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980682, 31.811085, 37.473019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170757, 31.972975, 37.785530>,  <42.284801, 32.070110, 37.973038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170757, 31.972975, 37.785530>,  <41.980682, 31.811085, 37.473019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170757, 31.972975, 37.785530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059995, -0.900770, 0.430132,
		0.877839, -0.157518, -0.452312,
		0.475183, 0.404724, 0.781281,
		42.313313, 32.094391, 38.019913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341583, 31.254148, 37.824196>,  <41.980682, 31.811085, 37.473019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341583, 31.254148, 37.824196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344685, 31.544512, 38.099297>,  <42.346546, 31.718729, 38.264355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344685, 31.544512, 38.099297>,  <42.341583, 31.254148, 37.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344685, 31.544512, 38.099297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018379, -0.687755, 0.725710,
		0.999801, 0.007015, -0.018672,
		0.007751, 0.725909, 0.687747,
		42.347012, 31.762285, 38.305622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862846, 30.986481, 38.261272>,  <42.341583, 31.254148, 37.824196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862846, 30.986481, 38.261272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643322, 31.274162, 38.431709>,  <42.511608, 31.446772, 38.533970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643322, 31.274162, 38.431709>,  <42.862846, 30.986481, 38.261272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643322, 31.274162, 38.431709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037326, -0.488120, 0.871978,
		0.835114, 0.494454, 0.241040,
		-0.548809, 0.719204, 0.426092,
		42.478680, 31.489923, 38.559536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153095, 31.002287, 38.877762>,  <42.862846, 30.986481, 38.261272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153095, 31.002287, 38.877762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795326, 31.173872, 38.928360>,  <42.580666, 31.276823, 38.958717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795326, 31.173872, 38.928360>,  <43.153095, 31.002287, 38.877762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795326, 31.173872, 38.928360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086482, -0.443402, 0.892141,
		0.438781, 0.787012, 0.433686,
		-0.894423, 0.428961, 0.126494,
		42.527000, 31.302561, 38.966309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064758, 31.194124, 39.659290>,  <43.153095, 31.002287, 38.877762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064758, 31.194124, 39.659290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678925, 31.194292, 39.553776>,  <42.447426, 31.194393, 39.490467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678925, 31.194292, 39.553776>,  <43.064758, 31.194124, 39.659290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678925, 31.194292, 39.553776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209748, -0.607649, 0.766008,
		-0.159971, 0.794206, 0.586214,
		-0.964580, 0.000418, -0.263789,
		42.389549, 31.194418, 39.474640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674225, 31.266680, 40.263695>,  <43.064758, 31.194124, 39.659290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674225, 31.266680, 40.263695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423313, 31.084173, 40.011238>,  <42.272766, 30.974670, 39.859764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423313, 31.084173, 40.011238>,  <42.674225, 31.266680, 40.263695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423313, 31.084173, 40.011238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265341, -0.636716, 0.724007,
		-0.732200, 0.621623, 0.278332,
		-0.627278, -0.456265, -0.631146,
		42.235130, 30.947294, 39.821896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083679, 31.122383, 40.622841>,  <42.674225, 31.266680, 40.263695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083679, 31.122383, 40.622841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024090, 30.878738, 40.311253>,  <41.988338, 30.732552, 40.124298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024090, 30.878738, 40.311253>,  <42.083679, 31.122383, 40.622841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024090, 30.878738, 40.311253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156486, -0.763311, 0.626792,
		-0.976381, 0.215271, 0.018393,
		-0.148970, -0.609110, -0.778970,
		41.979401, 30.696005, 40.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492409, 30.677895, 40.856483>,  <42.083679, 31.122383, 40.622841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492409, 30.677895, 40.856483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702068, 30.487722, 40.573860>,  <41.827866, 30.373619, 40.404285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702068, 30.487722, 40.573860>,  <41.492409, 30.677895, 40.856483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702068, 30.487722, 40.573860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053345, -0.846363, 0.529929,
		-0.849974, -0.240052, -0.468956,
		0.524117, -0.475442, -0.706580,
		41.859314, 30.345093, 40.361893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169029, 30.046202, 40.729916>,  <41.492409, 30.677895, 40.856483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169029, 30.046202, 40.729916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546112, 29.986631, 40.610504>,  <41.772362, 29.950890, 40.538857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546112, 29.986631, 40.610504>,  <41.169029, 30.046202, 40.729916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546112, 29.986631, 40.610504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015078, -0.874900, 0.484068,
		-0.333277, -0.460837, -0.822530,
		0.942708, -0.148926, -0.298533,
		41.828926, 29.941954, 40.520943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161903, 29.343613, 40.644951>,  <41.169029, 30.046202, 40.729916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161903, 29.343613, 40.644951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538082, 29.477461, 40.668900>,  <41.763790, 29.557770, 40.683270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538082, 29.477461, 40.668900>,  <41.161903, 29.343613, 40.644951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538082, 29.477461, 40.668900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228033, -0.751629, 0.618914,
		0.252103, -0.568404, -0.783174,
		0.940449, 0.334619, 0.059873,
		41.820217, 29.577847, 40.686863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688442, 28.772579, 40.445992>,  <41.161903, 29.343613, 40.644951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688442, 28.772579, 40.445992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883423, 29.037176, 40.673962>,  <42.000412, 29.195934, 40.810745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883423, 29.037176, 40.673962>,  <41.688442, 28.772579, 40.445992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883423, 29.037176, 40.673962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317336, -0.742308, 0.590150,
		0.813441, -0.106813, -0.571756,
		0.487455, 0.661491, 0.569928,
		42.029659, 29.235622, 40.844940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329681, 28.437651, 40.677624>,  <41.688442, 28.772579, 40.445992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329681, 28.437651, 40.677624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173172, 28.704330, 40.931366>,  <42.079266, 28.864338, 41.083611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173172, 28.704330, 40.931366>,  <42.329681, 28.437651, 40.677624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173172, 28.704330, 40.931366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405445, -0.493927, 0.769188,
		0.826146, 0.558163, -0.077048,
		-0.391277, 0.666701, 0.634360,
		42.055790, 28.904341, 41.121674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937275, 28.844002, 40.965420>,  <42.329681, 28.437651, 40.677624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937275, 28.844002, 40.965420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605793, 28.802423, 41.185398>,  <42.406902, 28.777477, 41.317387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605793, 28.802423, 41.185398>,  <42.937275, 28.844002, 40.965420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605793, 28.802423, 41.185398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534295, -0.439527, 0.722042,
		0.166664, 0.892195, 0.419776,
		-0.828705, -0.103946, 0.549949,
		42.357182, 28.771240, 41.350384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328323, 28.429174, 40.424828>,  <42.937275, 28.844002, 40.965420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328323, 28.429174, 40.424828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463535, 28.130508, 40.195663>,  <43.544662, 27.951309, 40.058163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463535, 28.130508, 40.195663>,  <43.328323, 28.429174, 40.424828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463535, 28.130508, 40.195663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572544, -0.646290, 0.504482,
		-0.746948, 0.157490, -0.645961,
		0.338027, -0.746663, -0.572915,
		43.564945, 27.906509, 40.023788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753387, 28.103298, 40.090305>,  <43.328323, 28.429174, 40.424828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753387, 28.103298, 40.090305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066906, 27.867207, 40.167557>,  <43.255016, 27.725552, 40.213905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066906, 27.867207, 40.167557>,  <42.753387, 28.103298, 40.090305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066906, 27.867207, 40.167557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608579, -0.668062, 0.428164,
		-0.123694, -0.453125, -0.882824,
		0.783793, -0.590229, 0.193127,
		43.302044, 27.690138, 40.225494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711533, 27.453215, 39.710915>,  <42.753387, 28.103298, 40.090305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711533, 27.453215, 39.710915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884441, 27.448385, 40.071579>,  <42.988186, 27.445488, 40.287979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884441, 27.448385, 40.071579>,  <42.711533, 27.453215, 39.710915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884441, 27.448385, 40.071579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776229, -0.513861, 0.365261,
		0.458918, -0.857789, -0.231501,
		0.432276, -0.012073, 0.901660,
		43.014126, 27.444763, 40.342075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250175, 27.161154, 39.236965>,  <42.711533, 27.453215, 39.710915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250175, 27.161154, 39.236965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552979, 26.941406, 39.095463>,  <43.734661, 26.809559, 39.010563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552979, 26.941406, 39.095463>,  <43.250175, 27.161154, 39.236965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552979, 26.941406, 39.095463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230758, 0.731281, -0.641856,
		0.611307, 0.404256, 0.680354,
		0.757004, -0.549368, -0.353752,
		43.780079, 26.776596, 38.989338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794464, 27.579237, 39.236786>,  <43.250175, 27.161154, 39.236965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794464, 27.579237, 39.236786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841347, 27.325165, 38.931419>,  <43.869476, 27.172722, 38.748199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841347, 27.325165, 38.931419>,  <43.794464, 27.579237, 39.236786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841347, 27.325165, 38.931419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142973, 0.771502, -0.619954,
		0.982763, -0.036488, 0.181235,
		0.117202, -0.635179, -0.763420,
		43.876507, 27.134611, 38.702393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509998, 27.629250, 38.967430>,  <43.794464, 27.579237, 39.236786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509998, 27.629250, 38.967430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248711, 27.535803, 38.679337>,  <44.091938, 27.479734, 38.506481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248711, 27.535803, 38.679337>,  <44.509998, 27.629250, 38.967430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248711, 27.535803, 38.679337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116000, 0.909106, -0.400087,
		0.748233, -0.344890, -0.566743,
		-0.653216, -0.233616, -0.720231,
		44.052746, 27.465717, 38.463268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828972, 27.755238, 38.265003>,  <44.509998, 27.629250, 38.967430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828972, 27.755238, 38.265003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429924, 27.781610, 38.256985>,  <44.190495, 27.797434, 38.252174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429924, 27.781610, 38.256985>,  <44.828972, 27.755238, 38.265003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429924, 27.781610, 38.256985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067416, 0.873510, -0.482115,
		-0.014274, -0.482320, -0.875879,
		-0.997623, 0.065930, -0.020048,
		44.130638, 27.801390, 38.250969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548656, 27.910761, 37.488518>,  <44.828972, 27.755238, 38.265003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548656, 27.910761, 37.488518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406727, 28.086803, 37.818466>,  <44.321571, 28.192429, 38.016434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406727, 28.086803, 37.818466>,  <44.548656, 27.910761, 37.488518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406727, 28.086803, 37.818466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417262, 0.864076, -0.281540,
		-0.836657, 0.244290, -0.490231,
		-0.354820, 0.440107, 0.824869,
		44.300282, 28.218836, 38.065926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280144, 28.622620, 37.255501>,  <44.548656, 27.910761, 37.488518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280144, 28.622620, 37.255501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371674, 28.657221, 37.643349>,  <44.426590, 28.677982, 37.876057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371674, 28.657221, 37.643349>,  <44.280144, 28.622620, 37.255501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371674, 28.657221, 37.643349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512547, 0.836095, -0.195551,
		-0.827608, 0.541721, 0.146983,
		0.228826, 0.086504, 0.969616,
		44.440323, 28.683172, 37.934235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131241, 29.253788, 37.390507>,  <44.280144, 28.622620, 37.255501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131241, 29.253788, 37.390507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353584, 29.183411, 37.715485>,  <44.486992, 29.141184, 37.910473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353584, 29.183411, 37.715485>,  <44.131241, 29.253788, 37.390507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353584, 29.183411, 37.715485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393606, 0.916548, -0.070810,
		-0.732185, 0.359143, 0.578724,
		0.555859, -0.175943, 0.812443,
		44.520344, 29.130629, 37.959217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051777, 29.878815, 37.922474>,  <44.131241, 29.253788, 37.390507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051777, 29.878815, 37.922474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396500, 29.707403, 38.031033>,  <44.603333, 29.604555, 38.096169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396500, 29.707403, 38.031033>,  <44.051777, 29.878815, 37.922474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396500, 29.707403, 38.031033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426922, 0.901718, 0.068130,
		-0.273920, 0.057150, 0.960053,
		0.861804, -0.428530, 0.271397,
		44.655041, 29.578844, 38.112453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273815, 30.333282, 38.442856>,  <44.051777, 29.878815, 37.922474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273815, 30.333282, 38.442856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583313, 30.106140, 38.330528>,  <44.769012, 29.969854, 38.263130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583313, 30.106140, 38.330528>,  <44.273815, 30.333282, 38.442856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583313, 30.106140, 38.330528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624154, 0.759200, 0.184520,
		0.108418, -0.318047, 0.941855,
		0.773743, -0.567857, -0.280821,
		44.815437, 29.935783, 38.246281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747047, 30.383987, 38.975876>,  <44.273815, 30.333282, 38.442856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747047, 30.383987, 38.975876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947624, 30.254873, 38.654785>,  <45.067970, 30.177404, 38.462132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.947624, 30.254873, 38.654785>,  <44.747047, 30.383987, 38.975876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947624, 30.254873, 38.654785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717191, 0.674030, 0.176978,
		0.483934, -0.664451, 0.569485,
		0.501443, -0.322783, -0.802724,
		45.098057, 30.158039, 38.413967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474590, 30.417730, 39.110043>,  <44.747047, 30.383987, 38.975876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474590, 30.417730, 39.110043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451283, 30.406073, 38.710892>,  <45.437298, 30.399078, 38.471401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451283, 30.406073, 38.710892>,  <45.474590, 30.417730, 39.110043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451283, 30.406073, 38.710892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532398, 0.844656, -0.055754,
		0.844486, -0.534516, -0.033706,
		-0.058272, -0.029138, -0.997875,
		45.433804, 30.397329, 38.411530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048321, 30.708902, 38.903343>,  <45.474590, 30.417730, 39.110043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048321, 30.708902, 38.903343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852592, 30.730202, 38.555153>,  <45.735157, 30.742981, 38.346237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852592, 30.730202, 38.555153>,  <46.048321, 30.708902, 38.903343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852592, 30.730202, 38.555153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423589, 0.887001, -0.183854,
		0.762324, -0.458688, -0.456582,
		-0.489320, 0.053246, -0.870477,
		45.705795, 30.746176, 38.294010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466076, 31.037434, 38.448948>,  <46.048321, 30.708902, 38.903343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466076, 31.037434, 38.448948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123188, 31.080482, 38.247517>,  <45.917454, 31.106312, 38.126659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123188, 31.080482, 38.247517>,  <46.466076, 31.037434, 38.448948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123188, 31.080482, 38.247517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279601, 0.918483, -0.279665,
		0.432427, -0.380535, -0.817435,
		-0.857223, 0.107621, -0.503575,
		45.866020, 31.112768, 38.096443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652115, 31.269779, 37.748230>,  <46.466076, 31.037434, 38.448948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652115, 31.269779, 37.748230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276463, 31.369616, 37.842663>,  <46.051071, 31.429518, 37.899323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276463, 31.369616, 37.842663>,  <46.652115, 31.269779, 37.748230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276463, 31.369616, 37.842663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190293, 0.950039, -0.247416,
		-0.286040, -0.187432, -0.939708,
		-0.939132, 0.249591, 0.236082,
		45.994724, 31.444492, 37.913486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421444, 31.753384, 37.193893>,  <46.652115, 31.269779, 37.748230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421444, 31.753384, 37.193893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170433, 31.798784, 37.502007>,  <46.019829, 31.826025, 37.686874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170433, 31.798784, 37.502007>,  <46.421444, 31.753384, 37.193893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170433, 31.798784, 37.502007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157678, 0.987344, -0.017031,
		-0.762463, 0.110768, -0.637480,
		-0.627525, 0.113502, 0.770279,
		45.982174, 31.832834, 37.733089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888897, 32.136997, 36.916965>,  <46.421444, 31.753384, 37.193893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888897, 32.136997, 36.916965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.916164, 32.180935, 37.313610>,  <45.932526, 32.207298, 37.551598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.916164, 32.180935, 37.313610>,  <45.888897, 32.136997, 36.916965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916164, 32.180935, 37.313610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238638, 0.963273, -0.123115,
		-0.968713, 0.245028, 0.039453,
		0.068170, 0.109849, 0.991608,
		45.936615, 32.213890, 37.611092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381657, 32.633007, 37.049286>,  <45.888897, 32.136997, 36.916965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381657, 32.633007, 37.049286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639751, 32.624302, 37.354755>,  <45.794609, 32.619080, 37.538036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639751, 32.624302, 37.354755>,  <45.381657, 32.633007, 37.049286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639751, 32.624302, 37.354755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166375, 0.979606, -0.112658,
		-0.745646, 0.199747, 0.635699,
		0.645237, -0.021761, 0.763672,
		45.833324, 32.617775, 37.583858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381790, 33.295269, 37.346783>,  <45.381657, 32.633007, 37.049286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381790, 33.295269, 37.346783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701042, 33.182995, 37.560028>,  <45.892593, 33.115631, 37.687977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701042, 33.182995, 37.560028>,  <45.381790, 33.295269, 37.346783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701042, 33.182995, 37.560028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313151, 0.949199, 0.030939,
		-0.514714, 0.142252, 0.845478,
		0.798126, -0.280687, 0.533113,
		45.940479, 33.098789, 37.719963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414555, 33.667713, 38.043087>,  <45.381790, 33.295269, 37.346783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414555, 33.667713, 38.043087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777702, 33.564049, 37.911263>,  <45.995590, 33.501850, 37.832169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777702, 33.564049, 37.911263>,  <45.414555, 33.667713, 38.043087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777702, 33.564049, 37.911263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281478, 0.959338, 0.021018,
		0.310711, -0.111845, 0.943901,
		0.907871, -0.259157, -0.329559,
		46.050064, 33.486301, 37.812393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574638, 34.321312, 38.156601>,  <45.414555, 33.667713, 38.043087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574638, 34.321312, 38.156601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875889, 34.123978, 37.982513>,  <46.056641, 34.005577, 37.878059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875889, 34.123978, 37.982513>,  <45.574638, 34.321312, 38.156601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875889, 34.123978, 37.982513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497847, 0.859850, -0.113164,
		0.430052, -0.131446, 0.893184,
		0.753129, -0.493335, -0.435221,
		46.101826, 33.975979, 37.851948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209595, 34.436569, 38.520512>,  <45.574638, 34.321312, 38.156601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209595, 34.436569, 38.520512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304859, 34.372543, 38.137333>,  <46.362019, 34.334129, 37.907425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304859, 34.372543, 38.137333>,  <46.209595, 34.436569, 38.520512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304859, 34.372543, 38.137333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462412, 0.886047, -0.033085,
		0.854080, -0.435086, 0.285038,
		0.238162, -0.160062, -0.957945,
		46.376308, 34.324524, 37.849949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.971474, 34.652744, 38.500607>,  <46.209595, 34.436569, 38.520512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.971474, 34.652744, 38.500607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810577, 34.648445, 38.134418>,  <46.714039, 34.645866, 37.914707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810577, 34.648445, 38.134418>,  <46.971474, 34.652744, 38.500607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810577, 34.648445, 38.134418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300169, 0.943112, -0.142961,
		0.864928, -0.332301, -0.376132,
		-0.402240, -0.010748, -0.915471,
		46.689903, 34.645222, 37.859776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.496902, 34.872292, 38.018856>,  <46.971474, 34.652744, 38.500607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.496902, 34.872292, 38.018856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148441, 34.933010, 37.832069>,  <46.939365, 34.969440, 37.719997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148441, 34.933010, 37.832069>,  <47.496902, 34.872292, 38.018856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.148441, 34.933010, 37.832069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311288, 0.906214, -0.286140,
		0.379735, -0.394631, -0.836700,
		-0.871149, 0.151797, -0.466965,
		46.887096, 34.978550, 37.691978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.711609, 35.066216, 37.371452>,  <47.496902, 34.872292, 38.018856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.711609, 35.066216, 37.371452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335251, 35.178791, 37.446823>,  <47.109436, 35.246338, 37.492046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.335251, 35.178791, 37.446823>,  <47.711609, 35.066216, 37.371452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.335251, 35.178791, 37.446823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207303, 0.918494, -0.336742,
		-0.267842, -0.277777, -0.922551,
		-0.940896, 0.281441, 0.188427,
		47.052982, 35.263222, 37.503349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.456181, 35.424259, 36.750114>,  <47.711609, 35.066216, 37.371452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.456181, 35.424259, 36.750114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251892, 35.567722, 37.062660>,  <47.129318, 35.653801, 37.250187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251892, 35.567722, 37.062660>,  <47.456181, 35.424259, 36.750114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.251892, 35.567722, 37.062660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246407, 0.931766, -0.266640,
		-0.823679, 0.056354, -0.564249,
		-0.510721, 0.358660, 0.781362,
		47.098675, 35.675320, 37.297070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054668, 35.563465, 36.375126>,  <47.456181, 35.424259, 36.750114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054668, 35.563465, 36.375126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.825695, 35.644569, 36.057331>,  <47.688313, 35.693233, 35.866653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.825695, 35.644569, 36.057331>,  <48.054668, 35.563465, 36.375126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.825695, 35.644569, 36.057331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525233, -0.653378, -0.545186,
		-0.629642, -0.729373, 0.267519,
		-0.572435, 0.202762, -0.794485,
		47.653965, 35.705399, 35.818985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.647671, 34.904949, 36.214344>,  <48.054668, 35.563465, 36.375126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.647671, 34.904949, 36.214344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754787, 35.143158, 35.911388>,  <47.819057, 35.286083, 35.729614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754787, 35.143158, 35.911388>,  <47.647671, 34.904949, 36.214344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.754787, 35.143158, 35.911388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410105, -0.781788, -0.469702,
		-0.871837, -0.184826, -0.453586,
		0.267795, 0.595522, -0.757390,
		47.835125, 35.321815, 35.684170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.365791, 34.822132, 35.519447>,  <47.647671, 34.904949, 36.214344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.365791, 34.822132, 35.519447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729557, 34.983578, 35.479340>,  <47.947819, 35.080444, 35.455276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729557, 34.983578, 35.479340>,  <47.365791, 34.822132, 35.519447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.729557, 34.983578, 35.479340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377657, -0.902434, -0.207335,
		-0.174169, 0.150687, -0.973118,
		0.909417, 0.403616, -0.100269,
		48.002380, 35.104664, 35.449261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.603893, 34.809139, 34.754345>,  <47.365791, 34.822132, 35.519447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.603893, 34.809139, 34.754345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.892509, 34.792671, 35.030804>,  <48.065681, 34.782791, 35.196678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.892509, 34.792671, 35.030804>,  <47.603893, 34.809139, 34.754345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.892509, 34.792671, 35.030804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241967, -0.920293, -0.307428,
		0.648713, 0.389056, -0.654069,
		0.721542, -0.041169, 0.691145,
		48.108971, 34.780319, 35.238148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.126469, 41.062443, 43.906197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729759, 41.092861, 43.947372>,  <36.491734, 41.111115, 43.972076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729759, 41.092861, 43.947372>,  <37.126469, 41.062443, 43.906197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729759, 41.092861, 43.947372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096250, 0.086911, -0.991555,
		-0.084354, -0.993309, -0.078877,
		-0.991776, 0.076049, 0.102937,
		36.432228, 41.115677, 43.978252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901943, 40.443974, 43.545921>,  <37.126469, 41.062443, 43.906197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901943, 40.443974, 43.545921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612343, 40.719883, 43.548153>,  <36.438583, 40.885429, 43.549492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612343, 40.719883, 43.548153>,  <36.901943, 40.443974, 43.545921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612343, 40.719883, 43.548153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273847, -0.279995, -0.920115,
		-0.633112, -0.667691, 0.391610,
		-0.724001, 0.689777, 0.005577,
		36.395142, 40.926815, 43.549828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426270, 40.077618, 43.154442>,  <36.901943, 40.443974, 43.545921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426270, 40.077618, 43.154442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276073, 40.445946, 43.196579>,  <36.185955, 40.666943, 43.221859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276073, 40.445946, 43.196579>,  <36.426270, 40.077618, 43.154442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276073, 40.445946, 43.196579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549136, -0.129470, -0.825643,
		-0.746632, -0.367864, 0.554271,
		-0.375486, 0.920822, 0.105341,
		36.163429, 40.722191, 43.228180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670399, 40.069199, 43.035297>,  <36.426270, 40.077618, 43.154442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670399, 40.069199, 43.035297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810448, 40.435791, 42.957867>,  <35.894478, 40.655746, 42.911407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810448, 40.435791, 42.957867>,  <35.670399, 40.069199, 43.035297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810448, 40.435791, 42.957867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226733, -0.117592, -0.966832,
		-0.908849, 0.382399, 0.166626,
		0.350122, 0.916484, -0.193576,
		35.915485, 40.710735, 42.899796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174923, 40.376530, 42.685440>,  <35.670399, 40.069199, 43.035297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174923, 40.376530, 42.685440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502476, 40.585747, 42.590900>,  <35.699005, 40.711277, 42.534176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502476, 40.585747, 42.590900>,  <35.174923, 40.376530, 42.685440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502476, 40.585747, 42.590900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219189, -0.095592, -0.970988,
		-0.530463, 0.846927, 0.036367,
		0.818880, 0.523045, -0.236345,
		35.748138, 40.742661, 42.519997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899239, 40.707817, 42.190899>,  <35.174923, 40.376530, 42.685440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899239, 40.707817, 42.190899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281178, 40.802574, 42.119179>,  <35.510342, 40.859428, 42.076145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281178, 40.802574, 42.119179>,  <34.899239, 40.707817, 42.190899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281178, 40.802574, 42.119179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169390, -0.061715, -0.983615,
		-0.244080, 0.969573, -0.018801,
		0.954847, 0.236896, -0.179300,
		35.567631, 40.873642, 42.065388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853439, 41.185390, 41.690598>,  <34.899239, 40.707817, 42.190899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853439, 41.185390, 41.690598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226151, 41.043659, 41.658974>,  <35.449776, 40.958622, 41.639999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226151, 41.043659, 41.658974>,  <34.853439, 41.185390, 41.690598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226151, 41.043659, 41.658974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178240, -0.256783, -0.949891,
		0.316270, 0.899175, -0.302418,
		0.931775, -0.354325, -0.079057,
		35.505684, 40.937363, 41.635258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046410, 41.462723, 41.087559>,  <34.853439, 41.185390, 41.690598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046410, 41.462723, 41.087559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.280087, 41.145176, 41.155083>,  <35.420292, 40.954647, 41.195595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.280087, 41.145176, 41.155083>,  <35.046410, 41.462723, 41.087559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280087, 41.145176, 41.155083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199252, -0.061341, -0.978027,
		0.786780, 0.604987, 0.122346,
		0.584188, -0.793869, 0.168807,
		35.455341, 40.907017, 41.205723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694202, 41.592342, 40.690979>,  <35.046410, 41.462723, 41.087559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694202, 41.592342, 40.690979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658161, 41.195675, 40.727795>,  <35.636536, 40.957676, 40.749886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658161, 41.195675, 40.727795>,  <35.694202, 41.592342, 40.690979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658161, 41.195675, 40.727795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310777, -0.115799, -0.943402,
		0.946202, -0.056399, 0.318622,
		-0.090103, -0.991670, 0.092041,
		35.631130, 40.898174, 40.755405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038300, 41.441742, 40.127117>,  <35.694202, 41.592342, 40.690979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038300, 41.441742, 40.127117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882038, 41.089653, 40.234890>,  <35.788280, 40.878399, 40.299553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882038, 41.089653, 40.234890>,  <36.038300, 41.441742, 40.127117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882038, 41.089653, 40.234890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098163, -0.330852, -0.938563,
		0.915290, -0.340202, 0.215653,
		-0.390650, -0.880227, 0.269431,
		35.764843, 40.825584, 40.315720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457893, 40.924900, 39.947109>,  <36.038300, 41.441742, 40.127117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457893, 40.924900, 39.947109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091110, 40.765800, 39.959641>,  <35.871040, 40.670341, 39.967159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091110, 40.765800, 39.959641>,  <36.457893, 40.924900, 39.947109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091110, 40.765800, 39.959641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106267, -0.319167, -0.941722,
		0.384568, -0.860191, 0.334931,
		-0.916960, -0.397747, 0.031332,
		35.816021, 40.646477, 39.969040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463760, 40.379227, 39.529282>,  <36.457893, 40.924900, 39.947109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463760, 40.379227, 39.529282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064987, 40.366631, 39.557922>,  <35.825722, 40.359074, 39.575108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064987, 40.366631, 39.557922>,  <36.463760, 40.379227, 39.529282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064987, 40.366631, 39.557922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054044, -0.384447, -0.921564,
		0.056543, -0.922610, 0.381568,
		-0.996936, -0.031487, 0.071599,
		35.765907, 40.357185, 39.579403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264282, 39.707283, 39.349674>,  <36.463760, 40.379227, 39.529282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264282, 39.707283, 39.349674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952171, 39.943489, 39.267246>,  <35.764904, 40.085213, 39.217789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952171, 39.943489, 39.267246>,  <36.264282, 39.707283, 39.349674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952171, 39.943489, 39.267246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056866, -0.395096, -0.916878,
		-0.622845, -0.703699, 0.341864,
		-0.780275, 0.590514, -0.206067,
		35.718090, 40.120644, 39.205425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779514, 39.231747, 39.051228>,  <36.264282, 39.707283, 39.349674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779514, 39.231747, 39.051228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642609, 39.591225, 38.941540>,  <35.560463, 39.806911, 38.875729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642609, 39.591225, 38.941540>,  <35.779514, 39.231747, 39.051228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642609, 39.591225, 38.941540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344419, -0.391532, -0.853275,
		-0.874201, -0.197602, 0.443537,
		-0.342268, 0.898697, -0.274219,
		35.539928, 39.860832, 38.859276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110172, 39.124851, 38.816147>,  <35.779514, 39.231747, 39.051228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110172, 39.124851, 38.816147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269878, 39.447773, 38.642323>,  <35.365704, 39.641525, 38.538029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269878, 39.447773, 38.642323>,  <35.110172, 39.124851, 38.816147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269878, 39.447773, 38.642323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236433, -0.367290, -0.899554,
		-0.885824, 0.461908, 0.044227,
		0.399268, 0.807303, -0.434565,
		35.389660, 39.689964, 38.511951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777328, 39.212631, 38.230629>,  <35.110172, 39.124851, 38.816147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777328, 39.212631, 38.230629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107239, 39.422138, 38.145386>,  <35.305183, 39.547844, 38.094242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.107239, 39.422138, 38.145386>,  <34.777328, 39.212631, 38.230629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107239, 39.422138, 38.145386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021058, -0.348154, -0.937200,
		-0.565069, 0.777466, -0.276119,
		0.824774, 0.523769, -0.213103,
		35.354671, 39.579269, 38.081455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744534, 39.152454, 37.607574>,  <34.777328, 39.212631, 38.230629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744534, 39.152454, 37.607574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092205, 39.349644, 37.623112>,  <35.300808, 39.467957, 37.632435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092205, 39.349644, 37.623112>,  <34.744534, 39.152454, 37.607574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092205, 39.349644, 37.623112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117989, -0.130456, -0.984408,
		-0.480223, 0.860206, -0.171555,
		0.869175, 0.492977, 0.038847,
		35.352959, 39.497536, 37.634766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895813, 39.528629, 36.970570>,  <34.744534, 39.152454, 37.607574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895813, 39.528629, 36.970570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.262749, 39.440662, 37.103313>,  <35.482910, 39.387882, 37.182961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.262749, 39.440662, 37.103313>,  <34.895813, 39.528629, 36.970570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262749, 39.440662, 37.103313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238293, -0.364454, -0.900217,
		0.318918, 0.904882, -0.281923,
		0.917337, -0.219915, 0.331858,
		35.537949, 39.374687, 37.202869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291893, 39.579521, 36.411739>,  <34.895813, 39.528629, 36.970570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291893, 39.579521, 36.411739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549866, 39.380566, 36.643829>,  <35.704651, 39.261192, 36.783085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549866, 39.380566, 36.643829>,  <35.291893, 39.579521, 36.411739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549866, 39.380566, 36.643829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323767, -0.509904, -0.796977,
		0.692270, 0.701855, -0.167814,
		0.644932, -0.497391, 0.580229,
		35.743343, 39.231350, 36.817898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028297, 39.693462, 36.163269>,  <35.291893, 39.579521, 36.411739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028297, 39.693462, 36.163269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023293, 39.355560, 36.377270>,  <36.020290, 39.152817, 36.505669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023293, 39.355560, 36.377270>,  <36.028297, 39.693462, 36.163269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023293, 39.355560, 36.377270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239590, -0.521990, -0.818610,
		0.970794, 0.117937, 0.208928,
		-0.012514, -0.844759, 0.535001,
		36.019539, 39.102131, 36.537769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584106, 39.366055, 35.940899>,  <36.028297, 39.693462, 36.163269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584106, 39.366055, 35.940899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354759, 39.085037, 36.109509>,  <36.217152, 38.916428, 36.210674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354759, 39.085037, 36.109509>,  <36.584106, 39.366055, 35.940899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354759, 39.085037, 36.109509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234625, -0.633746, -0.737100,
		0.784982, -0.323732, 0.528205,
		-0.573371, -0.702541, 0.421524,
		36.182747, 38.874275, 36.235966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003464, 38.691204, 36.144859>,  <36.584106, 39.366055, 35.940899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003464, 38.691204, 36.144859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627747, 38.561516, 36.099922>,  <36.402317, 38.483704, 36.072960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627747, 38.561516, 36.099922>,  <37.003464, 38.691204, 36.144859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627747, 38.561516, 36.099922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307227, -0.648845, -0.696141,
		0.152806, -0.688392, 0.709060,
		-0.939288, -0.324217, -0.112345,
		36.345959, 38.464252, 36.066219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240593, 38.590126, 36.831112>,  <37.003464, 38.691204, 36.144859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240593, 38.590126, 36.831112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630096, 38.499092, 36.831844>,  <37.863796, 38.444473, 36.832283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630096, 38.499092, 36.831844>,  <37.240593, 38.590126, 36.831112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630096, 38.499092, 36.831844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098731, 0.429670, 0.897572,
		-0.205063, -0.873835, 0.440864,
		0.973756, -0.227586, 0.001835,
		37.922222, 38.430817, 36.832394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435478, 38.434429, 37.546223>,  <37.240593, 38.590126, 36.831112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435478, 38.434429, 37.546223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798103, 38.517570, 37.399288>,  <38.015678, 38.567455, 37.311127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798103, 38.517570, 37.399288>,  <37.435478, 38.434429, 37.546223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798103, 38.517570, 37.399288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272699, 0.375809, 0.885666,
		0.322134, -0.903087, 0.284015,
		0.906568, 0.207852, -0.367331,
		38.070072, 38.579926, 37.289089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935627, 38.148212, 37.908283>,  <37.435478, 38.434429, 37.546223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935627, 38.148212, 37.908283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.085098, 38.478195, 37.738670>,  <38.174782, 38.676186, 37.636902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.085098, 38.478195, 37.738670>,  <37.935627, 38.148212, 37.908283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085098, 38.478195, 37.738670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214791, 0.367768, 0.904772,
		0.902345, -0.429176, -0.039766,
		0.373682, 0.824958, -0.424037,
		38.197205, 38.725681, 37.611458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395531, 38.380238, 38.365013>,  <37.935627, 38.148212, 37.908283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395531, 38.380238, 38.365013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440678, 38.673798, 38.097084>,  <38.467766, 38.849934, 37.936329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440678, 38.673798, 38.097084>,  <38.395531, 38.380238, 38.365013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440678, 38.673798, 38.097084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418148, 0.576442, 0.702045,
		0.901340, -0.359319, -0.241818,
		0.112864, 0.733897, -0.669819,
		38.474537, 38.893967, 37.896137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120686, 38.791828, 38.400764>,  <38.395531, 38.380238, 38.365013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120686, 38.791828, 38.400764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853065, 39.025543, 38.217033>,  <38.692493, 39.165771, 38.106792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853065, 39.025543, 38.217033>,  <39.120686, 38.791828, 38.400764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853065, 39.025543, 38.217033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147933, 0.710355, 0.688121,
		0.728345, 0.392438, -0.561698,
		-0.669051, 0.584284, -0.459330,
		38.652351, 39.200829, 38.079235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454544, 39.424637, 38.307438>,  <39.120686, 38.791828, 38.400764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454544, 39.424637, 38.307438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061165, 39.496510, 38.298103>,  <38.825138, 39.539631, 38.292503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061165, 39.496510, 38.298103>,  <39.454544, 39.424637, 38.307438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061165, 39.496510, 38.298103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112754, 0.707715, 0.697442,
		0.141829, 0.683268, -0.716261,
		-0.983449, 0.179679, -0.023334,
		38.766129, 39.550415, 38.291103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371498, 40.199936, 38.303448>,  <39.454544, 39.424637, 38.307438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371498, 40.199936, 38.303448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037971, 40.021973, 38.434177>,  <38.837856, 39.915195, 38.512615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037971, 40.021973, 38.434177>,  <39.371498, 40.199936, 38.303448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037971, 40.021973, 38.434177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021076, 0.565931, 0.824183,
		-0.551643, 0.694104, -0.462504,
		-0.833814, -0.444907, 0.326821,
		38.787827, 39.888500, 38.532223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011608, 40.720932, 38.641186>,  <39.371498, 40.199936, 38.303448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011608, 40.720932, 38.641186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.864597, 40.373356, 38.773766>,  <38.776390, 40.164810, 38.853313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.864597, 40.373356, 38.773766>,  <39.011608, 40.720932, 38.641186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864597, 40.373356, 38.773766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117642, 0.310092, 0.943400,
		-0.922541, 0.385719, -0.011744,
		-0.367529, -0.868944, 0.331449,
		38.754337, 40.112671, 38.873199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524414, 40.905132, 39.096390>,  <39.011608, 40.720932, 38.641186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524414, 40.905132, 39.096390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585041, 40.528366, 39.216274>,  <38.621418, 40.302307, 39.288204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585041, 40.528366, 39.216274>,  <38.524414, 40.905132, 39.096390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585041, 40.528366, 39.216274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024405, 0.306690, 0.951497,
		-0.988145, -0.136905, 0.069473,
		0.151572, -0.941912, 0.299713,
		38.630512, 40.245792, 39.306187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118610, 40.782444, 39.606632>,  <38.524414, 40.905132, 39.096390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118610, 40.782444, 39.606632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383778, 40.488293, 39.662872>,  <38.542877, 40.311802, 39.696617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383778, 40.488293, 39.662872>,  <38.118610, 40.782444, 39.606632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383778, 40.488293, 39.662872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098117, 0.100846, 0.990052,
		-0.742239, -0.670115, -0.005300,
		0.662914, -0.735375, 0.140602,
		38.582653, 40.267681, 39.705051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012733, 40.405277, 40.245834>,  <38.118610, 40.782444, 39.606632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012733, 40.405277, 40.245834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391399, 40.296078, 40.177372>,  <38.618599, 40.230556, 40.136295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391399, 40.296078, 40.177372>,  <38.012733, 40.405277, 40.245834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391399, 40.296078, 40.177372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151672, -0.091120, 0.984222,
		-0.284288, -0.957689, -0.044854,
		0.946666, -0.273000, -0.171159,
		38.675400, 40.214180, 40.126026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111977, 39.751698, 40.623981>,  <38.012733, 40.405277, 40.245834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111977, 39.751698, 40.623981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466633, 39.922531, 40.553020>,  <38.679428, 40.025032, 40.510445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466633, 39.922531, 40.553020>,  <38.111977, 39.751698, 40.623981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466633, 39.922531, 40.553020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154263, 0.088509, 0.984058,
		0.435974, -0.899871, 0.012592,
		0.886639, 0.427081, -0.177404,
		38.732624, 40.050655, 40.499798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482063, 39.376522, 40.971634>,  <38.111977, 39.751698, 40.623981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482063, 39.376522, 40.971634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718311, 39.693157, 40.908958>,  <38.860062, 39.883137, 40.871353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718311, 39.693157, 40.908958>,  <38.482063, 39.376522, 40.971634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718311, 39.693157, 40.908958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221313, 0.027833, 0.974806,
		0.776006, -0.610420, -0.158750,
		0.590622, 0.791588, -0.156693,
		38.895496, 39.930634, 40.861950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088997, 39.244827, 41.338245>,  <38.482063, 39.376522, 40.971634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088997, 39.244827, 41.338245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.042496, 39.638744, 41.286598>,  <39.014595, 39.875095, 41.255611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.042496, 39.638744, 41.286598>,  <39.088997, 39.244827, 41.338245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042496, 39.638744, 41.286598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087854, 0.139687, 0.986291,
		0.989326, 0.103318, -0.102757,
		-0.116256, 0.984791, -0.129119,
		39.007618, 39.934181, 41.247864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709290, 39.632206, 41.635025>,  <39.088997, 39.244827, 41.338245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709290, 39.632206, 41.635025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.412830, 39.900330, 41.649899>,  <39.234955, 40.061203, 41.658821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.412830, 39.900330, 41.649899>,  <39.709290, 39.632206, 41.635025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412830, 39.900330, 41.649899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194051, 0.160878, 0.967710,
		0.642683, 0.724433, -0.249309,
		-0.741149, 0.670310, 0.037183,
		39.190487, 40.101421, 41.661053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988602, 40.146397, 42.120098>,  <39.709290, 39.632206, 41.635025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988602, 40.146397, 42.120098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.590023, 40.167015, 42.093468>,  <39.350876, 40.179386, 42.077492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.590023, 40.167015, 42.093468>,  <39.988602, 40.146397, 42.120098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590023, 40.167015, 42.093468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057366, 0.163121, 0.984937,
		0.061628, 0.985259, -0.159584,
		-0.996449, 0.051545, -0.066573,
		39.291088, 40.182480, 42.073494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814743, 40.681141, 42.525795>,  <39.988602, 40.146397, 42.120098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814743, 40.681141, 42.525795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.465618, 40.486191, 42.515461>,  <39.256145, 40.369221, 42.509258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.465618, 40.486191, 42.515461>,  <39.814743, 40.681141, 42.525795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465618, 40.486191, 42.515461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126720, 0.175174, 0.976348,
		-0.471322, 0.855441, -0.214653,
		-0.872810, -0.487375, -0.025838,
		39.203773, 40.339977, 42.507710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354916, 41.232094, 42.930332>,  <39.814743, 40.681141, 42.525795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354916, 41.232094, 42.930332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138359, 40.897247, 42.899021>,  <39.008423, 40.696339, 42.880234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138359, 40.897247, 42.899021>,  <39.354916, 41.232094, 42.930332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138359, 40.897247, 42.899021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397038, 0.172487, 0.901448,
		-0.741116, 0.519118, -0.425750,
		-0.541395, -0.837117, -0.078276,
		38.975941, 40.646111, 42.875538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.594257, 41.286358, 43.086941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695415, 40.907990, 43.168205>,  <38.756111, 40.680969, 43.216965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695415, 40.907990, 43.168205>,  <38.594257, 41.286358, 43.086941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695415, 40.907990, 43.168205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156642, 0.167189, 0.973402,
		-0.954728, -0.277995, -0.105890,
		0.252897, -0.945921, 0.203166,
		38.771286, 40.624214, 43.229156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989250, 41.039165, 43.585987>,  <38.594257, 41.286358, 43.086941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989250, 41.039165, 43.585987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278103, 40.764893, 43.622574>,  <38.451416, 40.600330, 43.644527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278103, 40.764893, 43.622574>,  <37.989250, 41.039165, 43.585987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278103, 40.764893, 43.622574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279459, -0.168214, 0.945308,
		-0.632793, -0.708200, -0.313092,
		0.722133, -0.685680, 0.091468,
		38.494743, 40.559189, 43.650013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610130, 40.390118, 43.763451>,  <37.989250, 41.039165, 43.585987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610130, 40.390118, 43.763451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989372, 40.349636, 43.884022>,  <38.216919, 40.325348, 43.956364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989372, 40.349636, 43.884022>,  <37.610130, 40.390118, 43.763451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989372, 40.349636, 43.884022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311642, -0.107721, 0.944074,
		-0.063070, -0.989017, -0.133669,
		0.948104, -0.101200, 0.301426,
		38.273804, 40.319275, 43.974449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506046, 40.048035, 44.355038>,  <37.610130, 40.390118, 43.763451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506046, 40.048035, 44.355038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887562, 40.160664, 44.397007>,  <38.116470, 40.228241, 44.422188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887562, 40.160664, 44.397007>,  <37.506046, 40.048035, 44.355038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887562, 40.160664, 44.397007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107749, -0.005480, 0.994163,
		0.280508, -0.959523, 0.025113,
		0.953785, 0.281577, 0.104925,
		38.173698, 40.245136, 44.428486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771664, 39.778873, 44.922882>,  <37.506046, 40.048035, 44.355038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771664, 39.778873, 44.922882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022625, 40.088970, 44.893589>,  <38.173203, 40.275028, 44.876011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022625, 40.088970, 44.893589>,  <37.771664, 39.778873, 44.922882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022625, 40.088970, 44.893589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158148, 0.218946, 0.962835,
		0.762467, -0.592502, 0.259970,
		0.627402, 0.775244, -0.073236,
		38.210846, 40.321545, 44.871616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336910, 39.669018, 45.491608>,  <37.771664, 39.778873, 44.922882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336910, 39.669018, 45.491608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.384132, 40.046139, 45.366909>,  <38.412464, 40.272411, 45.292088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.384132, 40.046139, 45.366909>,  <38.336910, 39.669018, 45.491608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384132, 40.046139, 45.366909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045969, 0.308419, 0.950139,
		0.991943, -0.126498, -0.006930,
		0.118053, 0.942802, -0.311749,
		38.419548, 40.328979, 45.273384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955433, 39.925827, 45.827724>,  <38.336910, 39.669018, 45.491608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955433, 39.925827, 45.827724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720871, 40.236416, 45.735451>,  <38.580135, 40.422771, 45.680084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720871, 40.236416, 45.735451>,  <38.955433, 39.925827, 45.827724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720871, 40.236416, 45.735451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074663, 0.335393, 0.939115,
		0.806570, 0.533477, -0.254650,
		-0.586404, 0.776475, -0.230687,
		38.544949, 40.469360, 45.666245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177963, 40.394001, 46.175499>,  <38.955433, 39.925827, 45.827724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177963, 40.394001, 46.175499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833809, 40.581299, 46.095020>,  <38.627316, 40.693676, 46.046734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833809, 40.581299, 46.095020>,  <39.177963, 40.394001, 46.175499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833809, 40.581299, 46.095020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015669, 0.418893, 0.907901,
		0.509396, 0.777996, -0.367747,
		-0.860389, 0.468243, -0.201192,
		38.575691, 40.721771, 46.034664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211281, 41.160988, 46.203651>,  <39.177963, 40.394001, 46.175499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211281, 41.160988, 46.203651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834885, 41.058609, 46.292225>,  <38.609047, 40.997181, 46.345367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834885, 41.058609, 46.292225>,  <39.211281, 41.160988, 46.203651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834885, 41.058609, 46.292225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073638, 0.483763, 0.872096,
		-0.330335, 0.836936, -0.436367,
		-0.940987, -0.255951, 0.221435,
		38.552589, 40.981823, 46.358654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847824, 41.688007, 46.482861>,  <39.211281, 41.160988, 46.203651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847824, 41.688007, 46.482861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588699, 41.405426, 46.596886>,  <38.433224, 41.235878, 46.665302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588699, 41.405426, 46.596886>,  <38.847824, 41.688007, 46.482861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588699, 41.405426, 46.596886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067556, 0.426002, 0.902197,
		-0.758795, 0.565200, -0.323696,
		-0.647816, -0.706450, 0.285066,
		38.394356, 41.193493, 46.682404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299713, 42.056862, 46.897934>,  <38.847824, 41.688007, 46.482861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299713, 42.056862, 46.897934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254578, 41.673695, 47.003506>,  <38.227497, 41.443794, 47.066849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254578, 41.673695, 47.003506>,  <38.299713, 42.056862, 46.897934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254578, 41.673695, 47.003506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123699, 0.277099, 0.952846,
		-0.985884, 0.074866, -0.149760,
		-0.112834, -0.957920, 0.263926,
		38.220726, 41.386318, 47.082684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720947, 42.070011, 47.371761>,  <38.299713, 42.056862, 46.897934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720947, 42.070011, 47.371761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900570, 41.716827, 47.426498>,  <38.008343, 41.504917, 47.459339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900570, 41.716827, 47.426498>,  <37.720947, 42.070011, 47.371761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900570, 41.716827, 47.426498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162283, 0.070009, 0.984258,
		-0.878642, -0.464195, -0.111851,
		0.449057, -0.882962, 0.136844,
		38.035286, 41.451939, 47.467552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260818, 41.606899, 47.765720>,  <37.720947, 42.070011, 47.371761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260818, 41.606899, 47.765720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647961, 41.522533, 47.820515>,  <37.880245, 41.471912, 47.853394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647961, 41.522533, 47.820515>,  <37.260818, 41.606899, 47.765720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647961, 41.522533, 47.820515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122271, 0.081379, 0.989155,
		-0.219778, -0.974111, 0.052974,
		0.967857, -0.210917, 0.136990,
		37.938316, 41.459259, 47.861610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147804, 41.157681, 48.302956>,  <37.260818, 41.606899, 47.765720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147804, 41.157681, 48.302956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542282, 41.223690, 48.297424>,  <37.778969, 41.263294, 48.294106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542282, 41.223690, 48.297424>,  <37.147804, 41.157681, 48.302956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542282, 41.223690, 48.297424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017027, -0.018014, 0.999693,
		0.164723, -0.986125, -0.020575,
		0.986193, 0.165023, -0.013824,
		37.838139, 41.273197, 48.293278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380077, 40.603790, 48.775726>,  <37.147804, 41.157681, 48.302956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380077, 40.603790, 48.775726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660503, 40.889027, 48.774376>,  <37.828758, 41.060169, 48.773563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660503, 40.889027, 48.774376>,  <37.380077, 40.603790, 48.775726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660503, 40.889027, 48.774376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134514, -0.127589, 0.982663,
		0.700292, -0.689368, -0.185369,
		0.701068, 0.713086, -0.003380,
		37.870823, 41.102951, 48.773361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895603, 40.328819, 49.166267>,  <37.380077, 40.603790, 48.775726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895603, 40.328819, 49.166267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923641, 40.727829, 49.168282>,  <37.940464, 40.967236, 49.169491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923641, 40.727829, 49.168282>,  <37.895603, 40.328819, 49.166267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923641, 40.727829, 49.168282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110605, -0.012792, 0.993782,
		0.991389, -0.069104, -0.111229,
		0.070097, 0.997527, 0.005038,
		37.944672, 41.027088, 49.169792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315918, 40.417400, 49.675091>,  <37.895603, 40.328819, 49.166267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315918, 40.417400, 49.675091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.183884, 40.786995, 49.597851>,  <38.104664, 41.008751, 49.551506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.183884, 40.786995, 49.597851>,  <38.315918, 40.417400, 49.675091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183884, 40.786995, 49.597851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190530, 0.265574, 0.945076,
		0.924522, 0.275166, -0.263709,
		-0.330087, 0.923988, -0.193101,
		38.084858, 41.064190, 49.539921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804893, 40.919163, 49.911770>,  <38.315918, 40.417400, 49.675091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804893, 40.919163, 49.911770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456089, 41.114285, 49.895542>,  <38.246807, 41.231358, 49.885807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456089, 41.114285, 49.895542>,  <38.804893, 40.919163, 49.911770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456089, 41.114285, 49.895542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123688, 0.299780, 0.945956,
		0.473605, 0.819864, -0.321746,
		-0.872009, 0.487806, -0.040570,
		38.194485, 41.260628, 49.883369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922005, 41.465237, 50.339813>,  <38.804893, 40.919163, 49.911770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922005, 41.465237, 50.339813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522266, 41.454727, 50.329948>,  <38.282421, 41.448421, 50.324028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522266, 41.454727, 50.329948>,  <38.922005, 41.465237, 50.339813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522266, 41.454727, 50.329948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029921, 0.223438, 0.974259,
		-0.020086, 0.974364, -0.224079,
		-0.999350, -0.026274, -0.024666,
		38.222462, 41.446846, 50.322548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741558, 42.015335, 50.797485>,  <38.922005, 41.465237, 50.339813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741558, 42.015335, 50.797485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429211, 41.768002, 50.761917>,  <38.241802, 41.619602, 50.740574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429211, 41.768002, 50.761917>,  <38.741558, 42.015335, 50.797485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429211, 41.768002, 50.761917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170153, 0.073562, 0.982668,
		-0.601077, 0.782464, -0.162654,
		-0.780868, -0.618335, -0.088922,
		38.194950, 41.582500, 50.735241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143017, 42.326160, 51.012524>,  <38.741558, 42.015335, 50.797485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143017, 42.326160, 51.012524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062439, 41.936954, 51.057522>,  <38.014091, 41.703430, 51.084522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062439, 41.936954, 51.057522>,  <38.143017, 42.326160, 51.012524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062439, 41.936954, 51.057522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270277, 0.165609, 0.948433,
		-0.941473, 0.160651, -0.296345,
		-0.201444, -0.973019, 0.112496,
		38.002007, 41.645050, 51.091270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588730, 42.352112, 51.429440>,  <38.143017, 42.326160, 51.012524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588730, 42.352112, 51.429440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762253, 41.993210, 51.462288>,  <37.866367, 41.777870, 51.481998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762253, 41.993210, 51.462288>,  <37.588730, 42.352112, 51.429440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762253, 41.993210, 51.462288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144163, 0.020850, 0.989334,
		-0.889396, -0.441024, -0.120305,
		0.433812, -0.897253, 0.082123,
		37.892395, 41.724033, 51.486923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043556, 41.907898, 51.800343>,  <37.588730, 42.352112, 51.429440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043556, 41.907898, 51.800343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418991, 41.771889, 51.823799>,  <37.644253, 41.690285, 51.837875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418991, 41.771889, 51.823799>,  <37.043556, 41.907898, 51.800343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418991, 41.771889, 51.823799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140676, -0.221901, 0.964868,
		-0.315066, -0.913862, -0.256106,
		0.938586, -0.340025, 0.058645,
		37.700565, 41.669880, 51.841393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498802, 41.766891, 52.215702>,  <37.043556, 41.907898, 51.800343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498802, 41.766891, 52.215702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178757, 41.551151, 52.320713>,  <35.986729, 41.421707, 52.383720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178757, 41.551151, 52.320713>,  <36.498802, 41.766891, 52.215702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178757, 41.551151, 52.320713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135296, -0.588641, -0.796993,
		0.584387, -0.602169, 0.543952,
		-0.800117, -0.539346, 0.262523,
		35.938721, 41.389347, 52.399471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570576, 40.940102, 52.172501>,  <36.498802, 41.766891, 52.215702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570576, 40.940102, 52.172501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186913, 41.019966, 52.092354>,  <35.956715, 41.067886, 52.044266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186913, 41.019966, 52.092354>,  <36.570576, 40.940102, 52.172501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186913, 41.019966, 52.092354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136152, -0.295013, -0.945743,
		-0.247933, -0.934401, 0.255782,
		-0.959162, 0.199655, -0.200364,
		35.899166, 41.079865, 52.032246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499866, 40.538948, 51.565498>,  <36.570576, 40.940102, 52.172501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499866, 40.538948, 51.565498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171322, 40.767056, 51.570641>,  <35.974197, 40.903919, 51.573727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171322, 40.767056, 51.570641>,  <36.499866, 40.538948, 51.565498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171322, 40.767056, 51.570641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136150, -0.174117, -0.975267,
		-0.553927, -0.802793, 0.220654,
		-0.821357, 0.570269, 0.012852,
		35.924915, 40.938137, 51.574497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882664, 40.152336, 51.214783>,  <36.499866, 40.538948, 51.565498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882664, 40.152336, 51.214783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.800091, 40.542751, 51.187256>,  <35.750549, 40.777000, 51.170738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.800091, 40.542751, 51.187256>,  <35.882664, 40.152336, 51.214783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800091, 40.542751, 51.187256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261264, -0.122765, -0.957429,
		-0.942936, -0.179659, 0.280345,
		-0.206428, 0.976039, -0.068821,
		35.738163, 40.835564, 51.166611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176010, 40.255077, 51.046925>,  <35.882664, 40.152336, 51.214783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176010, 40.255077, 51.046925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391708, 40.566208, 50.917809>,  <35.521126, 40.752888, 50.840340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391708, 40.566208, 50.917809>,  <35.176010, 40.255077, 51.046925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391708, 40.566208, 50.917809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348115, -0.143133, -0.926461,
		-0.766831, 0.611958, 0.193591,
		0.539246, 0.777831, -0.322791,
		35.553482, 40.799557, 50.820972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871220, 40.430817, 50.498882>,  <35.176010, 40.255077, 51.046925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871220, 40.430817, 50.498882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180977, 40.667282, 50.408695>,  <35.366833, 40.809162, 50.354584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180977, 40.667282, 50.408695>,  <34.871220, 40.430817, 50.498882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180977, 40.667282, 50.408695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280523, 0.001381, -0.959846,
		-0.567118, 0.806548, 0.166906,
		0.774393, 0.591167, -0.225472,
		35.413296, 40.844631, 50.341053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602787, 40.766216, 50.002430>,  <34.871220, 40.430817, 50.498882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602787, 40.766216, 50.002430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000763, 40.787182, 49.968163>,  <35.239548, 40.799763, 49.947601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000763, 40.787182, 49.968163>,  <34.602787, 40.766216, 50.002430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000763, 40.787182, 49.968163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083619, -0.040054, -0.995692,
		-0.055622, 0.997822, -0.035468,
		0.994944, 0.052416, -0.085665,
		35.299248, 40.802906, 49.942463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652164, 41.099339, 49.290421>,  <34.602787, 40.766216, 50.002430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652164, 41.099339, 49.290421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028450, 41.004208, 49.387157>,  <35.254223, 40.947128, 49.445198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028450, 41.004208, 49.387157>,  <34.652164, 41.099339, 49.290421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028450, 41.004208, 49.387157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224511, -0.097852, -0.969546,
		0.254253, 0.966365, -0.038655,
		0.940718, -0.237832, 0.241838,
		35.310665, 40.932858, 49.459709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104382, 41.538971, 48.950191>,  <34.652164, 41.099339, 49.290421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104382, 41.538971, 48.950191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312141, 41.204414, 49.020245>,  <35.436798, 41.003681, 49.062275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.312141, 41.204414, 49.020245>,  <35.104382, 41.538971, 48.950191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312141, 41.204414, 49.020245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218917, -0.067869, -0.973380,
		0.826012, 0.543916, 0.147849,
		0.519403, -0.836390, 0.175133,
		35.467964, 40.953499, 49.072784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759903, 41.564693, 48.569527>,  <35.104382, 41.538971, 48.950191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759903, 41.564693, 48.569527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723736, 41.172424, 48.638939>,  <35.702038, 40.937065, 48.680588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723736, 41.172424, 48.638939>,  <35.759903, 41.564693, 48.569527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723736, 41.172424, 48.638939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100210, -0.182321, -0.978119,
		0.990850, -0.071047, 0.114757,
		-0.090415, -0.980669, 0.173533,
		35.696609, 40.878223, 48.690998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411690, 41.210670, 48.288750>,  <35.759903, 41.564693, 48.569527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411690, 41.210670, 48.288750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105453, 40.955299, 48.320461>,  <35.921711, 40.802078, 48.339489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105453, 40.955299, 48.320461>,  <36.411690, 41.210670, 48.288750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105453, 40.955299, 48.320461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099963, -0.239795, -0.965663,
		0.635518, -0.731374, 0.247403,
		-0.765587, -0.638428, 0.079284,
		35.875778, 40.763771, 48.344246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596489, 40.660580, 47.934986>,  <36.411690, 41.210670, 48.288750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596489, 40.660580, 47.934986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.196499, 40.658382, 47.932858>,  <35.956505, 40.657063, 47.931580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.196499, 40.658382, 47.932858>,  <36.596489, 40.660580, 47.934986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196499, 40.658382, 47.932858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006253, -0.186865, -0.982366,
		0.004403, -0.982370, 0.186894,
		-0.999971, -0.005494, -0.005320,
		35.896507, 40.656734, 47.931263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445297, 39.998512, 47.516041>,  <36.596489, 40.660580, 47.934986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445297, 39.998512, 47.516041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.131371, 40.245579, 47.536251>,  <35.943016, 40.393818, 47.548378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.131371, 40.245579, 47.536251>,  <36.445297, 39.998512, 47.516041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131371, 40.245579, 47.536251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083143, -0.024144, -0.996245,
		-0.614129, -0.786068, 0.070303,
		-0.784814, 0.617669, 0.050528,
		35.895927, 40.430878, 47.551411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035141, 39.744442, 47.071613>,  <36.445297, 39.998512, 47.516041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035141, 39.744442, 47.071613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914635, 40.122272, 47.123802>,  <35.842331, 40.348969, 47.155117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914635, 40.122272, 47.123802>,  <36.035141, 39.744442, 47.071613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914635, 40.122272, 47.123802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024497, 0.129118, -0.991327,
		-0.953225, -0.301849, -0.015760,
		-0.301266, 0.944571, 0.130472,
		35.824253, 40.405643, 47.162945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550274, 39.865883, 46.544365>,  <36.035141, 39.744442, 47.071613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550274, 39.865883, 46.544365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670876, 40.230309, 46.656837>,  <35.743237, 40.448963, 46.724319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670876, 40.230309, 46.656837>,  <35.550274, 39.865883, 46.544365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670876, 40.230309, 46.656837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025682, 0.302555, -0.952786,
		-0.953120, 0.280043, 0.114618,
		0.301499, 0.911063, 0.281179,
		35.761326, 40.503628, 46.741192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229088, 40.255032, 46.052555>,  <35.550274, 39.865883, 46.544365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229088, 40.255032, 46.052555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487350, 40.532307, 46.180691>,  <35.642307, 40.698673, 46.257572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487350, 40.532307, 46.180691>,  <35.229088, 40.255032, 46.052555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487350, 40.532307, 46.180691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051124, 0.379320, -0.923852,
		-0.761914, 0.612869, 0.209472,
		0.645657, 0.693187, 0.320342,
		35.681049, 40.740261, 46.276794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127930, 40.833763, 45.622341>,  <35.229088, 40.255032, 46.052555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127930, 40.833763, 45.622341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.491196, 40.903160, 45.774727>,  <35.709156, 40.944798, 45.866158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.491196, 40.903160, 45.774727>,  <35.127930, 40.833763, 45.622341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491196, 40.903160, 45.774727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282832, 0.416624, -0.863962,
		-0.308610, 0.892370, 0.329295,
		0.908166, 0.173493, 0.380965,
		35.763645, 40.955208, 45.889015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311016, 41.564133, 45.332428>,  <35.127930, 40.833763, 45.622341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311016, 41.564133, 45.332428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651344, 41.381680, 45.436775>,  <35.855541, 41.272205, 45.499382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651344, 41.381680, 45.436775>,  <35.311016, 41.564133, 45.332428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651344, 41.381680, 45.436775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418464, 0.287925, -0.861387,
		0.317799, 0.842045, 0.435848,
		0.850818, -0.456135, 0.260863,
		35.906590, 41.244839, 45.515034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933781, 42.097214, 45.182224>,  <35.311016, 41.564133, 45.332428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933781, 42.097214, 45.182224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033787, 41.710201, 45.167393>,  <36.093792, 41.477993, 45.158493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033787, 41.710201, 45.167393>,  <35.933781, 42.097214, 45.182224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033787, 41.710201, 45.167393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414010, 0.141445, -0.899215,
		0.875264, 0.209466, 0.435932,
		0.250015, -0.967532, -0.037081,
		36.108791, 41.419941, 45.156269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544704, 42.042122, 44.746460>,  <35.933781, 42.097214, 45.182224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544704, 42.042122, 44.746460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446312, 41.654827, 44.764347>,  <36.387276, 41.422451, 44.775082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.446312, 41.654827, 44.764347>,  <36.544704, 42.042122, 44.746460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446312, 41.654827, 44.764347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116641, -0.075373, -0.990310,
		0.962230, -0.238384, 0.131478,
		-0.245984, -0.968242, 0.044721,
		36.372517, 41.364353, 44.777763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983063, 41.652252, 44.329849>,  <36.544704, 42.042122, 44.746460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983063, 41.652252, 44.329849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663181, 41.412762, 44.347736>,  <36.471252, 41.269066, 44.358471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663181, 41.412762, 44.347736>,  <36.983063, 41.652252, 44.329849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663181, 41.412762, 44.347736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134072, 0.105478, -0.985342,
		0.585237, -0.793975, -0.164624,
		-0.799701, -0.598730, 0.044720,
		36.423271, 41.233143, 44.361153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.054779, 30.017445, 40.678646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675934, 29.889206, 40.684303>,  <42.448627, 29.812262, 40.687698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675934, 29.889206, 40.684303>,  <43.054779, 30.017445, 40.678646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675934, 29.889206, 40.684303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185685, 0.511543, -0.838954,
		0.261733, -0.797208, -0.544018,
		-0.947110, -0.320598, 0.014142,
		42.391800, 29.793026, 40.688545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932598, 29.649513, 39.981739>,  <43.054779, 30.017445, 40.678646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932598, 29.649513, 39.981739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593342, 29.787609, 40.142467>,  <42.389786, 29.870466, 40.238903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593342, 29.787609, 40.142467>,  <42.932598, 29.649513, 39.981739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593342, 29.787609, 40.142467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284729, 0.342553, -0.895314,
		-0.446745, -0.873765, -0.192234,
		-0.848144, 0.345242, 0.401820,
		42.338898, 29.891182, 40.263012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453384, 29.591099, 39.391964>,  <42.932598, 29.649513, 39.981739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453384, 29.591099, 39.391964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.298126, 29.826860, 39.675358>,  <42.204971, 29.968317, 39.845394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.298126, 29.826860, 39.675358>,  <42.453384, 29.591099, 39.391964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298126, 29.826860, 39.675358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333667, 0.626726, -0.704188,
		-0.859075, -0.509725, -0.046597,
		-0.388145, 0.589402, 0.708483,
		42.181683, 30.003681, 39.887901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909142, 29.900288, 39.076103>,  <42.453384, 29.591099, 39.391964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909142, 29.900288, 39.076103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.950603, 30.142525, 39.391701>,  <41.975483, 30.287867, 39.581059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.950603, 30.142525, 39.391701>,  <41.909142, 29.900288, 39.076103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950603, 30.142525, 39.391701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022045, 0.791673, -0.610547,
		-0.994369, 0.080681, 0.068712,
		0.103657, 0.605594, 0.788993,
		41.981701, 30.324203, 39.628399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364357, 30.364750, 39.062340>,  <41.909142, 29.900288, 39.076103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364357, 30.364750, 39.062340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643169, 30.543978, 39.286263>,  <41.810455, 30.651514, 39.420616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643169, 30.543978, 39.286263>,  <41.364357, 30.364750, 39.062340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643169, 30.543978, 39.286263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000656, 0.781116, -0.624386,
		-0.717044, 0.434846, 0.544753,
		0.697027, 0.448070, 0.559809,
		41.852276, 30.678398, 39.454205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292496, 31.008114, 38.861546>,  <41.364357, 30.364750, 39.062340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292496, 31.008114, 38.861546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.627605, 31.050272, 39.075844>,  <41.828671, 31.075567, 39.204422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.627605, 31.050272, 39.075844>,  <41.292496, 31.008114, 38.861546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627605, 31.050272, 39.075844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264579, 0.779940, -0.567178,
		-0.477627, 0.616915, 0.625530,
		0.837777, 0.105398, 0.535744,
		41.878937, 31.081892, 39.236568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235680, 31.671005, 39.146828>,  <41.292496, 31.008114, 38.861546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235680, 31.671005, 39.146828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.616180, 31.556633, 39.100597>,  <41.844482, 31.488010, 39.072861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.616180, 31.556633, 39.100597>,  <41.235680, 31.671005, 39.146828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616180, 31.556633, 39.100597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159082, 0.775966, -0.610385,
		0.264206, 0.562247, 0.783629,
		0.951256, -0.285928, -0.115571,
		41.901558, 31.470854, 39.065926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619854, 32.255119, 39.125149>,  <41.235680, 31.671005, 39.146828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619854, 32.255119, 39.125149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.898361, 32.031147, 38.945507>,  <42.065464, 31.896765, 38.837723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.898361, 32.031147, 38.945507>,  <41.619854, 32.255119, 39.125149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898361, 32.031147, 38.945507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318525, 0.801725, -0.505745,
		0.643239, 0.209082, 0.736565,
		0.696265, -0.559929, -0.449103,
		42.107243, 31.863169, 38.810776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338459, 32.547913, 39.294056>,  <41.619854, 32.255119, 39.125149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338459, 32.547913, 39.294056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.351326, 32.306995, 38.975006>,  <42.359047, 32.162445, 38.783577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.351326, 32.306995, 38.975006>,  <42.338459, 32.547913, 39.294056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351326, 32.306995, 38.975006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502225, 0.699713, -0.508106,
		0.864138, -0.384244, 0.324995,
		0.032167, -0.602294, -0.797626,
		42.360977, 32.126308, 38.735718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011311, 32.594620, 38.942394>,  <42.338459, 32.547913, 39.294056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011311, 32.594620, 38.942394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779976, 32.443993, 38.652920>,  <42.641174, 32.353615, 38.479237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779976, 32.443993, 38.652920>,  <43.011311, 32.594620, 38.942394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779976, 32.443993, 38.652920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405875, 0.636688, -0.655662,
		0.707664, -0.672921, -0.215381,
		-0.578340, -0.376571, -0.723684,
		42.606472, 32.331020, 38.435814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409386, 32.562626, 38.368935>,  <43.011311, 32.594620, 38.942394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409386, 32.562626, 38.368935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039448, 32.550556, 38.217274>,  <42.817486, 32.543316, 38.126278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039448, 32.550556, 38.217274>,  <43.409386, 32.562626, 38.368935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039448, 32.550556, 38.217274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278973, 0.623762, -0.730134,
		0.258529, -0.781032, -0.568464,
		-0.924844, -0.030175, -0.379148,
		42.761993, 32.541504, 38.103531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465988, 32.618137, 37.543076>,  <43.409386, 32.562626, 38.368935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465988, 32.618137, 37.543076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077694, 32.683952, 37.613045>,  <42.844719, 32.723442, 37.655025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077694, 32.683952, 37.613045>,  <43.465988, 32.618137, 37.543076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077694, 32.683952, 37.613045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037072, 0.822332, -0.567800,
		-0.237268, -0.544699, -0.804367,
		-0.970737, 0.164540, 0.174920,
		42.786472, 32.733315, 37.665520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098053, 32.754986, 36.843102>,  <43.465988, 32.618137, 37.543076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098053, 32.754986, 36.843102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865715, 32.936768, 37.113243>,  <42.726315, 33.045837, 37.275326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865715, 32.936768, 37.113243>,  <43.098053, 32.754986, 36.843102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865715, 32.936768, 37.113243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059246, 0.851051, -0.521729,
		-0.811858, -0.263029, -0.521250,
		-0.580840, 0.454452, 0.675350,
		42.691463, 33.073105, 37.315849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798897, 33.289345, 36.483330>,  <43.098053, 32.754986, 36.843102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798897, 33.289345, 36.483330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.745979, 33.429581, 36.854187>,  <42.714230, 33.513721, 37.076702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.745979, 33.429581, 36.854187>,  <42.798897, 33.289345, 36.483330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745979, 33.429581, 36.854187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357339, 0.889331, -0.285306,
		-0.924559, 0.293560, -0.242928,
		-0.132289, 0.350590, 0.927139,
		42.706291, 33.534760, 37.132328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500648, 33.957447, 36.452721>,  <42.798897, 33.289345, 36.483330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500648, 33.957447, 36.452721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674107, 33.959129, 36.813148>,  <42.778183, 33.960140, 37.029408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674107, 33.959129, 36.813148>,  <42.500648, 33.957447, 36.452721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674107, 33.959129, 36.813148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425242, 0.880674, -0.208766,
		-0.794429, 0.473705, 0.380113,
		0.433649, 0.004210, 0.901072,
		42.804203, 33.960392, 37.083469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359840, 34.603607, 36.776539>,  <42.500648, 33.957447, 36.452721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359840, 34.603607, 36.776539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.681980, 34.477177, 36.977142>,  <42.875263, 34.401318, 37.097504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.681980, 34.477177, 36.977142>,  <42.359840, 34.603607, 36.776539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681980, 34.477177, 36.977142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458419, 0.868448, -0.188813,
		-0.375856, 0.381962, 0.844297,
		0.805347, -0.316075, 0.501510,
		42.923584, 34.382355, 37.127594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470413, 35.140961, 37.314957>,  <42.359840, 34.603607, 36.776539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470413, 35.140961, 37.314957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.819817, 34.949894, 37.277412>,  <43.029461, 34.835255, 37.254887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.819817, 34.949894, 37.277412>,  <42.470413, 35.140961, 37.314957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819817, 34.949894, 37.277412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469429, 0.877583, -0.097387,
		0.128887, 0.041009, 0.990811,
		0.873513, -0.477668, -0.093858,
		43.081871, 34.806595, 37.249256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853271, 35.675797, 37.433666>,  <42.470413, 35.140961, 37.314957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853271, 35.675797, 37.433666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122509, 35.402271, 37.320995>,  <43.284050, 35.238155, 37.253395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.122509, 35.402271, 37.320995>,  <42.853271, 35.675797, 37.433666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122509, 35.402271, 37.320995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699615, 0.712223, -0.057246,
		0.239761, -0.158532, 0.957801,
		0.673092, -0.683818, -0.281675,
		43.324436, 35.197124, 37.236492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368961, 35.816822, 37.939507>,  <42.853271, 35.675797, 37.433666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368961, 35.816822, 37.939507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513176, 35.656456, 37.602631>,  <43.599705, 35.560238, 37.400505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513176, 35.656456, 37.602631>,  <43.368961, 35.816822, 37.939507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513176, 35.656456, 37.602631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691828, 0.720541, -0.046839,
		0.625609, -0.565762, 0.537147,
		0.360537, -0.400916, -0.842187,
		43.621338, 35.536182, 37.349976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003220, 36.064064, 38.053993>,  <43.368961, 35.816822, 37.939507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003220, 36.064064, 38.053993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.985809, 35.931793, 37.676899>,  <43.975361, 35.852432, 37.450642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.985809, 35.931793, 37.676899>,  <44.003220, 36.064064, 38.053993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985809, 35.931793, 37.676899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563419, 0.771134, -0.296498,
		0.825024, -0.544064, 0.152742,
		-0.043530, -0.330676, -0.942740,
		43.972752, 35.832592, 37.394077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617538, 35.996429, 37.876270>,  <44.003220, 36.064064, 38.053993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617538, 35.996429, 37.876270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.444546, 36.020721, 37.516434>,  <44.340752, 36.035297, 37.300529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.444546, 36.020721, 37.516434>,  <44.617538, 35.996429, 37.876270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444546, 36.020721, 37.516434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619000, 0.745454, -0.247260,
		0.655590, -0.663785, -0.359987,
		-0.432482, 0.060730, -0.899595,
		44.314800, 36.038940, 37.246555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145054, 35.952362, 37.333031>,  <44.617538, 35.996429, 37.876270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145054, 35.952362, 37.333031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831783, 36.183773, 37.241867>,  <44.643822, 36.322620, 37.187168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831783, 36.183773, 37.241867>,  <45.145054, 35.952362, 37.333031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831783, 36.183773, 37.241867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621269, 0.712876, -0.325318,
		-0.025732, -0.396376, -0.917728,
		-0.783175, 0.578527, -0.227912,
		44.596832, 36.357330, 37.173492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770378, 35.611553, 37.559029>,  <45.145054, 35.952362, 37.333031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770378, 35.611553, 37.559029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.155663, 35.512737, 37.516697>,  <46.386833, 35.453449, 37.491299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.155663, 35.512737, 37.516697>,  <45.770378, 35.611553, 37.559029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155663, 35.512737, 37.516697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233752, -0.964395, 0.123705,
		-0.132621, -0.094416, -0.986660,
		0.963209, -0.247040, -0.105829,
		46.444626, 35.438625, 37.484947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783623, 35.126511, 36.966488>,  <45.770378, 35.611553, 37.559029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783623, 35.126511, 36.966488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.104073, 35.081612, 37.201637>,  <46.296341, 35.054672, 37.342728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.104073, 35.081612, 37.201637>,  <45.783623, 35.126511, 36.966488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104073, 35.081612, 37.201637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195003, -0.977610, 0.079079,
		0.565837, -0.177990, -0.805076,
		0.801126, -0.112247, 0.587877,
		46.344410, 35.047939, 37.377998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.177765, 34.601330, 36.640446>,  <45.783623, 35.126511, 36.966488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.177765, 34.601330, 36.640446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324146, 34.622547, 37.012093>,  <46.411976, 34.635277, 37.235081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324146, 34.622547, 37.012093>,  <46.177765, 34.601330, 36.640446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324146, 34.622547, 37.012093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123723, -0.986739, 0.105065,
		0.922374, -0.153402, -0.354534,
		0.365950, 0.053045, 0.929122,
		46.433929, 34.638462, 37.290829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.681900, 34.017986, 36.640034>,  <46.177765, 34.601330, 36.640446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.681900, 34.017986, 36.640034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574802, 34.121204, 37.011349>,  <46.510544, 34.183136, 37.234138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574802, 34.121204, 37.011349>,  <46.681900, 34.017986, 36.640034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574802, 34.121204, 37.011349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221362, -0.954169, 0.201396,
		0.937717, -0.151566, 0.312594,
		-0.267742, 0.258049, 0.928291,
		46.494480, 34.198620, 37.289837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.074944, 33.603985, 37.073303>,  <46.681900, 34.017986, 36.640034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.074944, 33.603985, 37.073303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.773792, 33.704350, 37.316685>,  <46.593102, 33.764568, 37.462715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.773792, 33.704350, 37.316685>,  <47.074944, 33.603985, 37.073303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773792, 33.704350, 37.316685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123293, -0.961881, 0.244097,
		0.646511, 0.108756, 0.755113,
		-0.752876, 0.250912, 0.608458,
		46.547928, 33.779625, 37.499222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158379, 32.967148, 37.401321>,  <47.074944, 33.603985, 37.073303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158379, 32.967148, 37.401321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.825283, 33.143837, 37.534840>,  <46.625423, 33.249851, 37.614952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.825283, 33.143837, 37.534840>,  <47.158379, 32.967148, 37.401321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.825283, 33.143837, 37.534840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188154, -0.792790, 0.579726,
		0.520712, 0.419956, 0.743301,
		-0.832741, 0.441726, 0.333799,
		46.575462, 33.276356, 37.634979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.126965, 32.770935, 38.132267>,  <47.158379, 32.967148, 37.401321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.126965, 32.770935, 38.132267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.759785, 32.850483, 37.994965>,  <46.539478, 32.898212, 37.912582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.759785, 32.850483, 37.994965>,  <47.126965, 32.770935, 38.132267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.759785, 32.850483, 37.994965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359813, -0.781745, 0.509323,
		-0.167051, 0.591039, 0.789156,
		-0.917948, 0.198866, -0.343255,
		46.484402, 32.910141, 37.891987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617023, 32.667240, 38.663544>,  <47.126965, 32.770935, 38.132267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617023, 32.667240, 38.663544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.407959, 32.657101, 38.322678>,  <46.282520, 32.651016, 38.118160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.407959, 32.657101, 38.322678>,  <46.617023, 32.667240, 38.663544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407959, 32.657101, 38.322678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452059, -0.839226, 0.302228,
		-0.722819, 0.543191, 0.427172,
		-0.522662, -0.025349, -0.852163,
		46.251160, 32.649494, 38.067028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926857, 32.450321, 38.883316>,  <46.617023, 32.667240, 38.663544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926857, 32.450321, 38.883316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967796, 32.353992, 38.497253>,  <45.992359, 32.296196, 38.265617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967796, 32.353992, 38.497253>,  <45.926857, 32.450321, 38.883316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967796, 32.353992, 38.497253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624276, -0.770949, 0.126167,
		-0.774471, 0.589612, -0.229244,
		0.102346, -0.240824, -0.965157,
		45.998501, 32.281746, 38.207706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225117, 32.068661, 38.775017>,  <45.926857, 32.450321, 38.883316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225117, 32.068661, 38.775017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438702, 32.010773, 38.441803>,  <45.566853, 31.976040, 38.241875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438702, 32.010773, 38.441803>,  <45.225117, 32.068661, 38.775017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438702, 32.010773, 38.441803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417205, -0.902043, -0.110717,
		-0.735406, 0.406664, -0.542035,
		0.533964, -0.144718, -0.833030,
		45.598892, 31.967358, 38.191895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773293, 31.804722, 38.175018>,  <45.225117, 32.068661, 38.775017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773293, 31.804722, 38.175018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150612, 31.685835, 38.115898>,  <45.377003, 31.614502, 38.080425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150612, 31.685835, 38.115898>,  <44.773293, 31.804722, 38.175018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150612, 31.685835, 38.115898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331562, -0.864887, -0.376877,
		-0.015817, 0.404514, -0.914395,
		0.943301, -0.297217, -0.147801,
		45.433601, 31.596670, 38.071556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745480, 31.408291, 37.634270>,  <44.773293, 31.804722, 38.175018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745480, 31.408291, 37.634270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.091488, 31.293215, 37.798695>,  <45.299091, 31.224169, 37.897350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.091488, 31.293215, 37.798695>,  <44.745480, 31.408291, 37.634270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.091488, 31.293215, 37.798695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150816, -0.930483, -0.333850,
		0.478535, 0.226791, -0.848275,
		0.865020, -0.287692, 0.411065,
		45.350994, 31.206907, 37.922012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099899, 30.990086, 37.163811>,  <44.745480, 31.408291, 37.634270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099899, 30.990086, 37.163811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.260307, 30.911015, 37.521603>,  <45.356552, 30.863571, 37.736279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.260307, 30.911015, 37.521603>,  <45.099899, 30.990086, 37.163811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260307, 30.911015, 37.521603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178963, -0.974531, -0.135135,
		0.898416, -0.105887, -0.426188,
		0.401025, -0.197679, 0.894484,
		45.380615, 30.851711, 37.789948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499863, 30.373625, 37.127213>,  <45.099899, 30.990086, 37.163811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499863, 30.373625, 37.127213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433884, 30.383512, 37.521610>,  <45.394295, 30.389444, 37.758247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433884, 30.383512, 37.521610>,  <45.499863, 30.373625, 37.127213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433884, 30.383512, 37.521610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184742, -0.982767, -0.006269,
		0.968846, -0.183189, 0.166670,
		-0.164946, 0.024718, 0.985993,
		45.384399, 30.390928, 37.817410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724899, 29.723087, 37.337513>,  <45.499863, 30.373625, 37.127213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724899, 29.723087, 37.337513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.518543, 29.846241, 37.657280>,  <45.394730, 29.920134, 37.849140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.518543, 29.846241, 37.657280>,  <45.724899, 29.723087, 37.337513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518543, 29.846241, 37.657280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296539, -0.939672, 0.170533,
		0.803690, -0.149080, 0.576070,
		-0.515894, 0.307883, 0.799413,
		45.363773, 29.938606, 37.897102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864136, 29.238142, 37.772289>,  <45.724899, 29.723087, 37.337513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864136, 29.238142, 37.772289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.576347, 29.446922, 37.955563>,  <45.403675, 29.572189, 38.065525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.576347, 29.446922, 37.955563>,  <45.864136, 29.238142, 37.772289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576347, 29.446922, 37.955563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508483, -0.845230, 0.164408,
		0.473083, -0.114692, 0.873520,
		-0.719470, 0.521949, 0.458183,
		45.360508, 29.603508, 38.093018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744427, 28.939571, 38.410805>,  <45.864136, 29.238142, 37.772289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744427, 28.939571, 38.410805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408375, 29.141333, 38.331043>,  <45.206745, 29.262388, 38.283188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408375, 29.141333, 38.331043>,  <45.744427, 28.939571, 38.410805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408375, 29.141333, 38.331043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527997, -0.844686, 0.087892,
		-0.124097, 0.179124, 0.975969,
		-0.840131, 0.504401, -0.199400,
		45.156334, 29.292652, 38.271225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285107, 28.796869, 38.934864>,  <45.744427, 28.939571, 38.410805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285107, 28.796869, 38.934864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060226, 28.916828, 38.626579>,  <44.925297, 28.988804, 38.441608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060226, 28.916828, 38.626579>,  <45.285107, 28.796869, 38.934864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060226, 28.916828, 38.626579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615928, -0.773734, 0.148219,
		-0.551872, 0.558030, 0.619709,
		-0.562201, 0.299899, -0.770708,
		44.891567, 29.006798, 38.395367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563026, 28.774067, 39.220028>,  <45.285107, 28.796869, 38.934864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563026, 28.774067, 39.220028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552723, 28.763945, 38.820290>,  <44.546543, 28.757872, 38.580444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552723, 28.763945, 38.820290>,  <44.563026, 28.774067, 39.220028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552723, 28.763945, 38.820290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697567, -0.715610, 0.036099,
		-0.716057, 0.698042, 0.000779,
		-0.025757, -0.025305, -0.999348,
		44.544994, 28.756353, 38.520485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829556, 28.802444, 39.084629>,  <44.563026, 28.774067, 39.220028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829556, 28.802444, 39.084629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000092, 28.599415, 38.785137>,  <44.102413, 28.477596, 38.605442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.000092, 28.599415, 38.785137>,  <43.829556, 28.802444, 39.084629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000092, 28.599415, 38.785137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728745, -0.683093, 0.048115,
		-0.535876, 0.525122, -0.661124,
		0.426342, -0.507575, -0.748733,
		44.127995, 28.447142, 38.560516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.922695, 40.488857, 40.246754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551785, 40.357452, 40.318573>,  <39.329239, 40.278610, 40.361664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551785, 40.357452, 40.318573>,  <39.922695, 40.488857, 40.246754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551785, 40.357452, 40.318573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031185, -0.410141, -0.911489,
		0.373075, -0.850802, 0.370070,
		-0.927278, -0.328513, 0.179545,
		39.273602, 40.258900, 40.372437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900124, 39.897678, 39.824181>,  <39.922695, 40.488857, 40.246754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900124, 39.897678, 39.824181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524433, 39.986607, 39.928810>,  <39.299019, 40.039963, 39.991589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524433, 39.986607, 39.928810>,  <39.900124, 39.897678, 39.824181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524433, 39.986607, 39.928810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328404, -0.359960, -0.873258,
		-0.099991, -0.906091, 0.411097,
		-0.939230, 0.222324, 0.261571,
		39.242664, 40.053303, 40.007282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412777, 39.309750, 39.876213>,  <39.900124, 39.897678, 39.824181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412777, 39.309750, 39.876213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171185, 39.621834, 39.811123>,  <39.026230, 39.809082, 39.772068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171185, 39.621834, 39.811123>,  <39.412777, 39.309750, 39.876213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171185, 39.621834, 39.811123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359387, -0.448857, -0.818149,
		-0.711368, -0.435666, 0.551498,
		-0.603984, 0.780207, -0.162730,
		38.989990, 39.855896, 39.762302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845524, 39.008186, 39.603378>,  <39.412777, 39.309750, 39.876213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845524, 39.008186, 39.603378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770622, 39.392464, 39.521404>,  <38.725681, 39.623032, 39.472221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770622, 39.392464, 39.521404>,  <38.845524, 39.008186, 39.603378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770622, 39.392464, 39.521404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380498, -0.263274, -0.886515,
		-0.905625, -0.088030, 0.414843,
		-0.187257, 0.960697, -0.204932,
		38.714443, 39.680672, 39.459923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149727, 39.003193, 39.234474>,  <38.845524, 39.008186, 39.603378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149727, 39.003193, 39.234474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322388, 39.355057, 39.154602>,  <38.425983, 39.566177, 39.106678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322388, 39.355057, 39.154602>,  <38.149727, 39.003193, 39.234474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322388, 39.355057, 39.154602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163429, -0.141432, -0.976364,
		-0.887111, 0.454085, 0.082713,
		0.431654, 0.879661, -0.199676,
		38.451885, 39.618954, 39.094700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609436, 39.383022, 38.903316>,  <38.149727, 39.003193, 39.234474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609436, 39.383022, 38.903316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961044, 39.543533, 38.800323>,  <38.172009, 39.639839, 38.738525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961044, 39.543533, 38.800323>,  <37.609436, 39.383022, 38.903316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961044, 39.543533, 38.800323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213199, -0.152234, -0.965076,
		-0.426458, 0.903219, -0.048266,
		0.879022, 0.401273, -0.257487,
		38.224751, 39.663914, 38.723076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518894, 39.895748, 38.278671>,  <37.609436, 39.383022, 38.903316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518894, 39.895748, 38.278671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900669, 39.776379, 38.278782>,  <38.129734, 39.704758, 38.278847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900669, 39.776379, 38.278782>,  <37.518894, 39.895748, 38.278671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900669, 39.776379, 38.278782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109699, -0.351692, -0.929666,
		0.277531, 0.887274, -0.368404,
		0.954433, -0.298424, 0.000272,
		38.187000, 39.686852, 38.278862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752155, 39.981094, 37.601353>,  <37.518894, 39.895748, 38.278671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752155, 39.981094, 37.601353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026024, 39.730743, 37.750751>,  <38.190346, 39.580532, 37.840393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026024, 39.730743, 37.750751>,  <37.752155, 39.981094, 37.601353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026024, 39.730743, 37.750751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028681, -0.488915, -0.871860,
		0.728287, 0.607650, -0.316795,
		0.684672, -0.625878, 0.373499,
		38.231426, 39.542980, 37.862801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344547, 39.962112, 37.050751>,  <37.752155, 39.981094, 37.601353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344547, 39.962112, 37.050751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382221, 39.647926, 37.295429>,  <38.404827, 39.459415, 37.442238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382221, 39.647926, 37.295429>,  <38.344547, 39.962112, 37.050751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382221, 39.647926, 37.295429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211938, -0.584524, -0.783207,
		0.972734, 0.203408, 0.111417,
		0.094185, -0.785466, 0.611696,
		38.410477, 39.412285, 37.478939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813030, 39.583908, 36.760208>,  <38.344547, 39.962112, 37.050751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813030, 39.583908, 36.760208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651997, 39.304264, 36.996571>,  <38.555374, 39.136478, 37.138390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651997, 39.304264, 36.996571>,  <38.813030, 39.583908, 36.760208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651997, 39.304264, 36.996571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005346, -0.643725, -0.765238,
		0.915367, -0.311233, 0.255417,
		-0.402586, -0.699108, 0.590908,
		38.531219, 39.094532, 37.173843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231564, 38.903591, 36.703918>,  <38.813030, 39.583908, 36.760208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231564, 38.903591, 36.703918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890625, 38.782280, 36.874344>,  <38.686062, 38.709492, 36.976601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890625, 38.782280, 36.874344>,  <39.231564, 38.903591, 36.703918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890625, 38.782280, 36.874344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171126, -0.608108, -0.775191,
		0.494194, -0.733640, 0.466417,
		-0.852343, -0.303279, 0.426068,
		38.634922, 38.691296, 37.002163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233837, 38.175457, 36.857445>,  <39.231564, 38.903591, 36.703918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233837, 38.175457, 36.857445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848976, 38.276814, 36.817352>,  <38.618057, 38.337627, 36.793297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848976, 38.276814, 36.817352>,  <39.233837, 38.175457, 36.857445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848976, 38.276814, 36.817352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090112, -0.643003, -0.760544,
		-0.257169, -0.722729, 0.641503,
		-0.962156, 0.253396, -0.100234,
		38.560329, 38.352833, 36.787281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869854, 38.329079, 36.209721>,  <39.233837, 38.175457, 36.857445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869854, 38.329079, 36.209721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787094, 37.983360, 36.393101>,  <38.737438, 37.775928, 36.503128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787094, 37.983360, 36.393101>,  <38.869854, 38.329079, 36.209721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787094, 37.983360, 36.393101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795667, -0.124026, -0.592901,
		0.569305, -0.487445, -0.662035,
		-0.206897, -0.864300, 0.458452,
		38.725025, 37.724072, 36.530636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745445, 37.927277, 35.603027>,  <38.869854, 38.329079, 36.209721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745445, 37.927277, 35.603027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570320, 37.752075, 35.917091>,  <38.465244, 37.646954, 36.105530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570320, 37.752075, 35.917091>,  <38.745445, 37.927277, 35.603027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570320, 37.752075, 35.917091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733102, -0.331630, -0.593787,
		0.520460, -0.835571, -0.175905,
		-0.437816, -0.437999, 0.785159,
		38.438976, 37.620674, 36.152637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250492, 37.390194, 35.782471>,  <38.745445, 37.927277, 35.603027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250492, 37.390194, 35.782471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457779, 37.048122, 35.777935>,  <39.582150, 36.842880, 35.775215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457779, 37.048122, 35.777935>,  <39.250492, 37.390194, 35.782471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457779, 37.048122, 35.777935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240300, -0.158316, 0.957702,
		-0.820797, -0.493571, -0.287540,
		0.518216, -0.855175, -0.011340,
		39.613243, 36.791569, 35.774532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853546, 36.774929, 35.845074>,  <39.250492, 37.390194, 35.782471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853546, 36.774929, 35.845074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224224, 36.733765, 35.989658>,  <39.446629, 36.709068, 36.076408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224224, 36.733765, 35.989658>,  <38.853546, 36.774929, 35.845074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224224, 36.733765, 35.989658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374571, -0.174528, 0.910624,
		-0.030624, -0.979260, -0.200279,
		0.926692, -0.102906, 0.361458,
		39.502232, 36.702892, 36.098095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959824, 36.110538, 36.093395>,  <38.853546, 36.774929, 35.845074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959824, 36.110538, 36.093395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225689, 36.336487, 36.289001>,  <39.385208, 36.472057, 36.406364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225689, 36.336487, 36.289001>,  <38.959824, 36.110538, 36.093395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225689, 36.336487, 36.289001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501838, -0.147360, 0.852316,
		0.553514, -0.811912, 0.185531,
		0.664666, 0.564875, 0.489014,
		39.425087, 36.505951, 36.435707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100681, 35.693592, 36.624260>,  <38.959824, 36.110538, 36.093395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100681, 35.693592, 36.624260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205517, 36.061279, 36.741802>,  <39.268417, 36.281891, 36.812328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205517, 36.061279, 36.741802>,  <39.100681, 35.693592, 36.624260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205517, 36.061279, 36.741802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277988, -0.219684, 0.935127,
		0.924138, -0.326777, 0.197954,
		0.262090, 0.919215, 0.293858,
		39.284145, 36.337044, 36.829960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453621, 35.567924, 37.347553>,  <39.100681, 35.693592, 36.624260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453621, 35.567924, 37.347553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393341, 35.962887, 37.328278>,  <39.357174, 36.199863, 37.316711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393341, 35.962887, 37.328278>,  <39.453621, 35.567924, 37.347553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393341, 35.962887, 37.328278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337025, -0.005489, 0.941479,
		0.929356, 0.158124, 0.333608,
		-0.150702, 0.987404, -0.048190,
		39.348129, 36.259109, 37.313820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718693, 35.796307, 37.983219>,  <39.453621, 35.567924, 37.347553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718693, 35.796307, 37.983219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487877, 36.093800, 37.848225>,  <39.349388, 36.272293, 37.767227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487877, 36.093800, 37.848225>,  <39.718693, 35.796307, 37.983219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487877, 36.093800, 37.848225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426726, 0.077777, 0.901030,
		0.696370, 0.663942, 0.272488,
		-0.577039, 0.743729, -0.337483,
		39.314766, 36.316917, 37.746979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854420, 36.466198, 38.392132>,  <39.718693, 35.796307, 37.983219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854420, 36.466198, 38.392132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486427, 36.424198, 38.241077>,  <39.265633, 36.398998, 38.150444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486427, 36.424198, 38.241077>,  <39.854420, 36.466198, 38.392132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486427, 36.424198, 38.241077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365731, -0.116579, 0.923391,
		-0.140983, 0.987615, 0.068848,
		-0.919981, -0.105003, -0.377637,
		39.210434, 36.392696, 38.127785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618656, 37.059391, 38.652744>,  <39.854420, 36.466198, 38.392132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618656, 37.059391, 38.652744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292553, 36.850895, 38.551823>,  <39.096889, 36.725796, 38.491268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292553, 36.850895, 38.551823>,  <39.618656, 37.059391, 38.652744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292553, 36.850895, 38.551823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412401, 0.216714, 0.884850,
		-0.406542, 0.825435, -0.391639,
		-0.815260, -0.521241, -0.252307,
		39.047974, 36.694523, 38.476131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252689, 37.367157, 39.193150>,  <39.618656, 37.059391, 38.652744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252689, 37.367157, 39.193150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035393, 37.086414, 39.008850>,  <38.905014, 36.917969, 38.898270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035393, 37.086414, 39.008850>,  <39.252689, 37.367157, 39.193150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035393, 37.086414, 39.008850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668965, 0.030234, 0.742679,
		-0.507326, 0.711673, -0.485944,
		-0.543237, -0.701860, -0.460746,
		38.872421, 36.875854, 38.870625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471840, 37.645866, 39.209435>,  <39.252689, 37.367157, 39.193150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471840, 37.645866, 39.209435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494213, 37.249741, 39.158592>,  <38.507637, 37.012066, 39.128086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494213, 37.249741, 39.158592>,  <38.471840, 37.645866, 39.209435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494213, 37.249741, 39.158592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570531, -0.136176, 0.809908,
		-0.819369, 0.027214, -0.572620,
		0.055936, -0.990311, -0.127105,
		38.510994, 36.952648, 39.120461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732018, 37.405586, 39.320801>,  <38.471840, 37.645866, 39.209435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732018, 37.405586, 39.320801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974903, 37.090469, 39.362125>,  <38.120636, 36.901398, 39.386921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974903, 37.090469, 39.362125>,  <37.732018, 37.405586, 39.320801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974903, 37.090469, 39.362125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412409, -0.201361, 0.888467,
		-0.679126, -0.582095, -0.447162,
		0.607213, -0.787794, 0.103312,
		38.157066, 36.854130, 39.393120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319973, 36.933018, 39.605110>,  <37.732018, 37.405586, 39.320801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319973, 36.933018, 39.605110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694931, 36.822960, 39.690525>,  <37.919907, 36.756927, 39.741772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694931, 36.822960, 39.690525>,  <37.319973, 36.933018, 39.605110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694931, 36.822960, 39.690525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237899, -0.058047, 0.969554,
		-0.254369, -0.959650, -0.119868,
		0.937390, -0.275141, 0.213534,
		37.976147, 36.740417, 39.754585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325249, 36.223316, 39.850269>,  <37.319973, 36.933018, 39.605110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325249, 36.223316, 39.850269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651775, 36.398571, 40.000828>,  <37.847691, 36.503723, 40.091164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651775, 36.398571, 40.000828>,  <37.325249, 36.223316, 39.850269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651775, 36.398571, 40.000828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213088, -0.377242, 0.901267,
		0.536866, -0.815921, -0.214587,
		0.816314, 0.438134, 0.376392,
		37.896671, 36.530010, 40.113747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695225, 35.758465, 40.198551>,  <37.325249, 36.223316, 39.850269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695225, 35.758465, 40.198551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750057, 36.114204, 40.373032>,  <37.782955, 36.327648, 40.477718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750057, 36.114204, 40.373032>,  <37.695225, 35.758465, 40.198551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750057, 36.114204, 40.373032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411263, -0.349510, 0.841847,
		0.901150, -0.294795, 0.317844,
		0.137083, 0.889347, 0.436199,
		37.791183, 36.381008, 40.503891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996548, 35.147552, 40.337254>,  <37.695225, 35.758465, 40.198551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996548, 35.147552, 40.337254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675217, 34.920105, 40.408058>,  <37.482418, 34.783638, 40.450542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675217, 34.920105, 40.408058>,  <37.996548, 35.147552, 40.337254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675217, 34.920105, 40.408058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218883, 0.005487, -0.975736,
		0.553848, -0.822584, -0.128868,
		-0.803332, -0.568616, 0.177011,
		37.434216, 34.749519, 40.461163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983475, 34.626186, 39.869171>,  <37.996548, 35.147552, 40.337254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983475, 34.626186, 39.869171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603016, 34.577522, 39.982674>,  <37.374741, 34.548325, 40.050774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603016, 34.577522, 39.982674>,  <37.983475, 34.626186, 39.869171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603016, 34.577522, 39.982674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257780, -0.192849, -0.946762,
		0.169907, -0.973657, 0.152066,
		-0.951147, -0.121662, 0.283756,
		37.317673, 34.541023, 40.067799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754242, 34.159142, 39.383881>,  <37.983475, 34.626186, 39.869171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754242, 34.159142, 39.383881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388927, 34.256374, 39.514614>,  <37.169739, 34.314716, 39.593052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388927, 34.256374, 39.514614>,  <37.754242, 34.159142, 39.383881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388927, 34.256374, 39.514614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380359, -0.221910, -0.897821,
		-0.145717, -0.944281, 0.295126,
		-0.913287, 0.243082, 0.326830,
		37.114941, 34.329300, 39.612663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248783, 33.598255, 39.194813>,  <37.754242, 34.159142, 39.383881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248783, 33.598255, 39.194813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054615, 33.942799, 39.254707>,  <36.938114, 34.149525, 39.290646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054615, 33.942799, 39.254707>,  <37.248783, 33.598255, 39.194813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054615, 33.942799, 39.254707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436415, -0.090319, -0.895201,
		-0.757567, -0.499899, 0.419754,
		-0.485422, 0.861362, 0.149741,
		36.908989, 34.201206, 39.299629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470432, 33.488785, 39.156879>,  <37.248783, 33.598255, 39.194813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470432, 33.488785, 39.156879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553738, 33.873444, 39.085484>,  <36.603722, 34.104240, 39.042645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553738, 33.873444, 39.085484>,  <36.470432, 33.488785, 39.156879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553738, 33.873444, 39.085484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482521, -0.057720, -0.873981,
		-0.850764, 0.268147, 0.451994,
		0.208267, 0.961647, -0.178492,
		36.616219, 34.161938, 39.031937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812481, 33.740070, 39.008099>,  <36.470432, 33.488785, 39.156879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812481, 33.740070, 39.008099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010880, 34.061245, 38.875866>,  <36.129917, 34.253948, 38.796524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010880, 34.061245, 38.875866>,  <35.812481, 33.740070, 39.008099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010880, 34.061245, 38.875866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579243, 0.022321, -0.814850,
		-0.646892, 0.595649, 0.476165,
		0.495993, 0.802935, -0.330586,
		36.159676, 34.302124, 38.776691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287865, 34.251785, 38.846016>,  <35.812481, 33.740070, 39.008099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287865, 34.251785, 38.846016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612999, 34.374989, 38.648254>,  <35.808079, 34.448910, 38.529598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612999, 34.374989, 38.648254>,  <35.287865, 34.251785, 38.846016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612999, 34.374989, 38.648254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520349, 0.002459, -0.853950,
		-0.261806, 0.951381, 0.162270,
		0.812831, 0.308006, -0.494407,
		35.856850, 34.467392, 38.499931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007477, 34.794331, 38.479504>,  <35.287865, 34.251785, 38.846016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007477, 34.794331, 38.479504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355881, 34.694180, 38.310436>,  <35.564922, 34.634087, 38.208996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355881, 34.694180, 38.310436>,  <35.007477, 34.794331, 38.479504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355881, 34.694180, 38.310436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379278, 0.204075, -0.902497,
		0.312223, 0.946395, 0.082788,
		0.871014, -0.250381, -0.422664,
		35.617184, 34.619064, 38.183636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155937, 35.405342, 38.012463>,  <35.007477, 34.794331, 38.479504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155937, 35.405342, 38.012463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366261, 35.086563, 37.893539>,  <35.492455, 34.895294, 37.822186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366261, 35.086563, 37.893539>,  <35.155937, 35.405342, 38.012463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366261, 35.086563, 37.893539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294250, 0.157520, -0.942658,
		0.798085, 0.583142, -0.151677,
		0.525811, -0.796952, -0.297304,
		35.524002, 34.847477, 37.804348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384075, 35.607693, 37.358162>,  <35.155937, 35.405342, 38.012463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384075, 35.607693, 37.358162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399769, 35.208347, 37.341534>,  <35.409184, 34.968739, 37.331558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399769, 35.208347, 37.341534>,  <35.384075, 35.607693, 37.358162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399769, 35.208347, 37.341534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334728, 0.026067, -0.941954,
		0.941498, 0.050871, -0.333158,
		0.039233, -0.998365, -0.041570,
		35.411537, 34.908836, 37.329063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579479, 35.500309, 36.645779>,  <35.384075, 35.607693, 37.358162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579479, 35.500309, 36.645779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414833, 35.163467, 36.785168>,  <35.316048, 34.961361, 36.868801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414833, 35.163467, 36.785168>,  <35.579479, 35.500309, 36.645779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414833, 35.163467, 36.785168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373254, -0.193056, -0.907420,
		0.831419, -0.503573, -0.234855,
		-0.411612, -0.842107, 0.348471,
		35.291348, 34.910835, 36.889709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553818, 35.112888, 36.105202>,  <35.579479, 35.500309, 36.645779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553818, 35.112888, 36.105202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258705, 34.976830, 36.338436>,  <35.081638, 34.895195, 36.478374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258705, 34.976830, 36.338436>,  <35.553818, 35.112888, 36.105202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258705, 34.976830, 36.338436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555018, -0.186004, -0.810776,
		0.384235, -0.921795, -0.051555,
		-0.737779, -0.340143, 0.583081,
		35.037373, 34.874786, 36.513359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.540833, 34.131275, 43.520943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177681, 34.204597, 43.671757>,  <38.959789, 34.248592, 43.762245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177681, 34.204597, 43.671757>,  <39.540833, 34.131275, 43.520943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177681, 34.204597, 43.671757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400003, -0.109520, -0.909947,
		-0.125538, -0.976930, 0.172768,
		-0.907875, 0.183341, 0.377026,
		38.905315, 34.259590, 43.784866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151131, 33.646278, 43.232574>,  <39.540833, 34.131275, 43.520943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151131, 33.646278, 43.232574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860355, 33.908726, 43.313644>,  <38.685890, 34.066193, 43.362286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860355, 33.908726, 43.313644>,  <39.151131, 33.646278, 43.232574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860355, 33.908726, 43.313644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367668, -0.122589, -0.921842,
		-0.579990, -0.744636, 0.330347,
		-0.726933, 0.656116, 0.202678,
		38.642277, 34.105560, 43.374447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601944, 33.330448, 42.836624>,  <39.151131, 33.646278, 43.232574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601944, 33.330448, 42.836624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.523682, 33.711273, 42.930691>,  <38.476723, 33.939766, 42.987129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.523682, 33.711273, 42.930691>,  <38.601944, 33.330448, 42.836624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523682, 33.711273, 42.930691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505740, 0.107497, -0.855963,
		-0.840206, -0.286407, 0.460461,
		-0.195655, 0.952059, 0.235167,
		38.464985, 33.996891, 43.001240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932144, 33.336983, 42.775436>,  <38.601944, 33.330448, 42.836624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932144, 33.336983, 42.775436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058079, 33.715641, 42.747875>,  <38.133640, 33.942837, 42.731339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058079, 33.715641, 42.747875>,  <37.932144, 33.336983, 42.775436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058079, 33.715641, 42.747875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502744, 0.104749, -0.858065,
		-0.805064, 0.304787, 0.508897,
		0.314834, 0.946642, -0.068901,
		38.152531, 33.999634, 42.727203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372494, 33.769131, 42.697311>,  <37.932144, 33.336983, 42.775436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372494, 33.769131, 42.697311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673851, 33.987785, 42.551117>,  <37.854664, 34.118980, 42.463398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673851, 33.987785, 42.551117>,  <37.372494, 33.769131, 42.697311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673851, 33.987785, 42.551117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534866, 0.186109, -0.824185,
		-0.382512, 0.816424, 0.432592,
		0.753394, 0.546640, -0.365489,
		37.899868, 34.151775, 42.441471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041836, 34.423187, 42.454803>,  <37.372494, 33.769131, 42.697311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041836, 34.423187, 42.454803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388615, 34.395714, 42.257347>,  <37.596684, 34.379230, 42.138874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388615, 34.395714, 42.257347>,  <37.041836, 34.423187, 42.454803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388615, 34.395714, 42.257347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481262, 0.142129, -0.864978,
		0.129571, 0.987463, 0.090163,
		0.866948, -0.068684, -0.493644,
		37.648701, 34.375107, 42.109253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006634, 35.029449, 42.013416>,  <37.041836, 34.423187, 42.454803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006634, 35.029449, 42.013416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289021, 34.789825, 41.862289>,  <37.458450, 34.646049, 41.771614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289021, 34.789825, 41.862289>,  <37.006634, 35.029449, 42.013416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289021, 34.789825, 41.862289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246282, 0.292515, -0.924002,
		0.664048, 0.745360, 0.058967,
		0.705964, -0.599060, -0.377813,
		37.500809, 34.610107, 41.748947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514263, 35.511833, 41.599796>,  <37.006634, 35.029449, 42.013416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514263, 35.511833, 41.599796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484486, 35.129478, 41.486141>,  <37.466618, 34.900066, 41.417950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484486, 35.129478, 41.486141>,  <37.514263, 35.511833, 41.599796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484486, 35.129478, 41.486141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257811, 0.293687, -0.920479,
		0.963323, 0.004725, -0.268303,
		-0.074448, -0.955890, -0.284133,
		37.462151, 34.842712, 41.400902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564899, 35.497784, 40.875130>,  <37.514263, 35.511833, 41.599796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564899, 35.497784, 40.875130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454418, 35.114109, 40.899368>,  <37.388130, 34.883904, 40.913914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.454418, 35.114109, 40.899368>,  <37.564899, 35.497784, 40.875130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454418, 35.114109, 40.899368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351212, 0.042038, -0.935352,
		0.894631, -0.279626, -0.348489,
		-0.276199, -0.959188, 0.060600,
		37.371559, 34.826351, 40.917549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269558, 35.577477, 41.194294>,  <37.564899, 35.497784, 40.875130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269558, 35.577477, 41.194294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189400, 35.966816, 41.149704>,  <38.141304, 36.200420, 41.122952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189400, 35.966816, 41.149704>,  <38.269558, 35.577477, 41.194294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189400, 35.966816, 41.149704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250100, 0.160837, 0.954768,
		0.947255, 0.163452, -0.275666,
		-0.200396, 0.973352, -0.111474,
		38.129280, 36.258823, 41.116261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767311, 35.902908, 41.589245>,  <38.269558, 35.577477, 41.194294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767311, 35.902908, 41.589245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500847, 36.196030, 41.533775>,  <38.340969, 36.371902, 41.500492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500847, 36.196030, 41.533775>,  <38.767311, 35.902908, 41.589245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500847, 36.196030, 41.533775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071727, 0.248028, 0.966094,
		0.742353, 0.633625, -0.217788,
		-0.666159, 0.732804, -0.138676,
		38.300999, 36.415871, 41.492172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041843, 36.517673, 41.820713>,  <38.767311, 35.902908, 41.589245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041843, 36.517673, 41.820713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651451, 36.604774, 41.817783>,  <38.417217, 36.657036, 41.816025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651451, 36.604774, 41.817783>,  <39.041843, 36.517673, 41.820713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651451, 36.604774, 41.817783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090410, 0.435346, 0.895712,
		0.198231, 0.873532, -0.444575,
		-0.975977, 0.217752, -0.007324,
		38.358658, 36.670101, 41.815586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995441, 37.216263, 42.061848>,  <39.041843, 36.517673, 41.820713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995441, 37.216263, 42.061848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.631119, 37.058807, 42.111629>,  <38.412525, 36.964333, 42.141499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.631119, 37.058807, 42.111629>,  <38.995441, 37.216263, 42.061848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631119, 37.058807, 42.111629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061255, 0.426973, 0.902187,
		-0.408273, 0.814091, -0.413001,
		-0.910802, -0.393637, 0.124455,
		38.357880, 36.940716, 42.148968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578362, 37.714146, 42.231693>,  <38.995441, 37.216263, 42.061848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578362, 37.714146, 42.231693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431057, 37.371037, 42.375145>,  <38.342674, 37.165173, 42.461216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431057, 37.371037, 42.375145>,  <38.578362, 37.714146, 42.231693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431057, 37.371037, 42.375145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066706, 0.360363, 0.930424,
		-0.927326, 0.366562, -0.075490,
		-0.368262, -0.857771, 0.358626,
		38.320580, 37.113705, 42.482735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099434, 37.948040, 42.792610>,  <38.578362, 37.714146, 42.231693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099434, 37.948040, 42.792610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.132229, 37.552177, 42.839687>,  <38.151905, 37.314659, 42.867931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.132229, 37.552177, 42.839687>,  <38.099434, 37.948040, 42.792610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132229, 37.552177, 42.839687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080649, 0.111112, 0.990530,
		-0.993365, -0.090701, -0.070705,
		0.081985, -0.989660, 0.117690,
		38.156826, 37.255280, 42.874996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442116, 37.745358, 43.230743>,  <38.099434, 37.948040, 42.792610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442116, 37.745358, 43.230743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736259, 37.475769, 43.259071>,  <37.912746, 37.314014, 43.276070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736259, 37.475769, 43.259071>,  <37.442116, 37.745358, 43.230743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736259, 37.475769, 43.259071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003795, 0.108602, 0.994078,
		-0.677672, -0.730731, 0.082419,
		0.735355, -0.673971, 0.070824,
		37.956867, 37.273579, 43.280319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308609, 37.365131, 43.863312>,  <37.442116, 37.745358, 43.230743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308609, 37.365131, 43.863312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.698009, 37.313801, 43.787601>,  <37.931648, 37.283001, 43.742176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.698009, 37.313801, 43.787601>,  <37.308609, 37.365131, 43.863312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698009, 37.313801, 43.787601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205045, 0.123410, 0.970941,
		-0.101241, -0.984023, 0.146453,
		0.973502, -0.128329, -0.189275,
		37.990059, 37.275303, 43.730820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594387, 36.734802, 44.224850>,  <37.308609, 37.365131, 43.863312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594387, 36.734802, 44.224850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890873, 36.986546, 44.131454>,  <38.068764, 37.137592, 44.075417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890873, 36.986546, 44.131454>,  <37.594387, 36.734802, 44.224850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890873, 36.986546, 44.131454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308762, -0.010799, 0.951078,
		0.596045, -0.777042, -0.202326,
		0.741212, 0.629356, -0.233485,
		38.113235, 37.175354, 44.061409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260628, 36.428673, 44.416134>,  <37.594387, 36.734802, 44.224850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260628, 36.428673, 44.416134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304924, 36.825974, 44.402321>,  <38.331501, 37.064354, 44.394032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304924, 36.825974, 44.402321>,  <38.260628, 36.428673, 44.416134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304924, 36.825974, 44.402321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286641, 0.001352, 0.958037,
		0.951616, -0.115995, -0.284557,
		0.110743, 0.993249, -0.034535,
		38.338146, 37.123947, 44.391960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829952, 36.539791, 44.889774>,  <38.260628, 36.428673, 44.416134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829952, 36.539791, 44.889774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.726376, 36.918438, 44.812973>,  <38.664230, 37.145626, 44.766891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.726376, 36.918438, 44.812973>,  <38.829952, 36.539791, 44.889774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726376, 36.918438, 44.812973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140607, 0.233611, 0.962110,
		0.955605, 0.222130, -0.193592,
		-0.258939, 0.946617, -0.192007,
		38.648693, 37.202423, 44.755371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413841, 37.015591, 45.132027>,  <38.829952, 36.539791, 44.889774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413841, 37.015591, 45.132027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076637, 37.229542, 45.109234>,  <38.874313, 37.357910, 45.095558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076637, 37.229542, 45.109234>,  <39.413841, 37.015591, 45.132027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076637, 37.229542, 45.109234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137589, 0.316827, 0.938451,
		0.520005, 0.783282, -0.340680,
		-0.843009, 0.534873, -0.056981,
		38.823734, 37.390003, 45.092140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606079, 37.594864, 45.460659>,  <39.413841, 37.015591, 45.132027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606079, 37.594864, 45.460659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.208355, 37.636894, 45.453579>,  <38.969723, 37.662113, 45.449329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.208355, 37.636894, 45.453579>,  <39.606079, 37.594864, 45.460659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208355, 37.636894, 45.453579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029797, 0.433669, 0.900579,
		0.102309, 0.894924, -0.434331,
		-0.994306, 0.105079, -0.017702,
		38.910065, 37.668419, 45.448269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476883, 38.318451, 45.716671>,  <39.606079, 37.594864, 45.460659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476883, 38.318451, 45.716671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.153824, 38.098202, 45.801060>,  <38.959988, 37.966053, 45.851692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.153824, 38.098202, 45.801060>,  <39.476883, 38.318451, 45.716671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153824, 38.098202, 45.801060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083356, 0.247586, 0.965273,
		-0.583738, 0.797191, -0.154066,
		-0.807652, -0.550625, 0.210976,
		38.911530, 37.933014, 45.864353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.821709, 38.921104, 46.054974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169003, 38.722706, 46.049885>,  <33.377377, 38.603664, 46.046833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169003, 38.722706, 46.049885>,  <32.821709, 38.921104, 46.054974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169003, 38.722706, 46.049885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038321, 0.092596, -0.994966,
		0.494680, 0.863372, 0.099402,
		0.868230, -0.495999, -0.012721,
		33.429470, 38.573906, 46.046070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313236, 39.416031, 45.712662>,  <32.821709, 38.921104, 46.054974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313236, 39.416031, 45.712662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487644, 39.056240, 45.701111>,  <33.592289, 38.840366, 45.694180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.487644, 39.056240, 45.701111>,  <33.313236, 39.416031, 45.712662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487644, 39.056240, 45.701111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462849, 0.251658, -0.849964,
		0.771788, 0.357234, 0.526048,
		0.436020, -0.899473, -0.028881,
		33.618450, 38.786400, 45.692448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899586, 39.496716, 45.366909>,  <33.313236, 39.416031, 45.712662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899586, 39.496716, 45.366909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.914669, 39.098618, 45.331001>,  <33.923721, 38.859756, 45.309456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.914669, 39.098618, 45.331001>,  <33.899586, 39.496716, 45.366909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914669, 39.098618, 45.331001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321202, 0.097134, -0.942016,
		0.946260, 0.006691, 0.323339,
		0.037710, -0.995249, -0.089765,
		33.925983, 38.800041, 45.304073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509876, 39.358929, 44.955814>,  <33.899586, 39.496716, 45.366909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509876, 39.358929, 44.955814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290485, 39.026363, 44.920216>,  <34.158852, 38.826824, 44.898857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290485, 39.026363, 44.920216>,  <34.509876, 39.358929, 44.955814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290485, 39.026363, 44.920216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194299, -0.023206, -0.980668,
		0.813276, -0.555169, 0.174271,
		-0.548480, -0.831414, -0.088996,
		34.125942, 38.776939, 44.893517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913315, 38.844849, 44.655552>,  <34.509876, 39.358929, 44.955814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913315, 38.844849, 44.655552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526859, 38.771706, 44.582726>,  <34.294987, 38.727821, 44.539028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526859, 38.771706, 44.582726>,  <34.913315, 38.844849, 44.655552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526859, 38.771706, 44.582726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228612, -0.279342, -0.932580,
		0.119667, -0.942620, 0.311684,
		-0.966135, -0.182854, -0.182066,
		34.237019, 38.716850, 44.528107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971630, 38.275291, 44.156727>,  <34.913315, 38.844849, 44.655552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971630, 38.275291, 44.156727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589668, 38.388920, 44.122196>,  <34.360489, 38.457096, 44.101479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589668, 38.388920, 44.122196>,  <34.971630, 38.275291, 44.156727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589668, 38.388920, 44.122196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016627, -0.341461, -0.939749,
		-0.296431, -0.895940, 0.330788,
		-0.954910, 0.284071, -0.086322,
		34.303196, 38.474144, 44.096298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583244, 37.765827, 43.668716>,  <34.971630, 38.275291, 44.156727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583244, 37.765827, 43.668716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345711, 38.087170, 43.686508>,  <34.203190, 38.279976, 43.697182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345711, 38.087170, 43.686508>,  <34.583244, 37.765827, 43.668716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345711, 38.087170, 43.686508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009841, 0.048027, -0.998797,
		-0.804530, -0.593554, -0.020614,
		-0.593830, 0.803360, 0.044480,
		34.167561, 38.328178, 43.699852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110954, 37.581356, 43.299007>,  <34.583244, 37.765827, 43.668716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110954, 37.581356, 43.299007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072956, 37.979507, 43.304543>,  <34.050156, 38.218399, 43.307865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072956, 37.979507, 43.304543>,  <34.110954, 37.581356, 43.299007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072956, 37.979507, 43.304543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209494, -0.006399, -0.977789,
		-0.973184, -0.095786, 0.209134,
		-0.094997, 0.995381, 0.013839,
		34.044456, 38.278122, 43.308693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544628, 37.808620, 42.797363>,  <34.110954, 37.581356, 43.299007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544628, 37.808620, 42.797363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768749, 38.136883, 42.842213>,  <33.903221, 38.333839, 42.869122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768749, 38.136883, 42.842213>,  <33.544628, 37.808620, 42.797363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768749, 38.136883, 42.842213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086300, 0.192475, -0.977500,
		-0.823777, 0.538024, 0.178668,
		0.560307, 0.820660, 0.112125,
		33.936840, 38.383080, 42.875851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171299, 38.424503, 42.518078>,  <33.544628, 37.808620, 42.797363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171299, 38.424503, 42.518078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556702, 38.531303, 42.510349>,  <33.787941, 38.595383, 42.505711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556702, 38.531303, 42.510349>,  <33.171299, 38.424503, 42.518078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556702, 38.531303, 42.510349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101885, 0.299004, -0.948797,
		-0.247551, 0.916137, 0.315295,
		0.963503, 0.267000, -0.019322,
		33.845753, 38.611404, 42.504551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166946, 39.066601, 42.238613>,  <33.171299, 38.424503, 42.518078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166946, 39.066601, 42.238613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539112, 38.932636, 42.179062>,  <33.762413, 38.852257, 42.143333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539112, 38.932636, 42.179062>,  <33.166946, 39.066601, 42.238613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539112, 38.932636, 42.179062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021274, 0.356161, -0.934182,
		0.365889, 0.872345, 0.324252,
		0.930415, -0.334909, -0.148874,
		33.818237, 38.832165, 42.134399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479164, 39.566689, 41.908478>,  <33.166946, 39.066601, 42.238613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479164, 39.566689, 41.908478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698231, 39.247692, 41.807228>,  <33.829670, 39.056293, 41.746479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698231, 39.247692, 41.807228>,  <33.479164, 39.566689, 41.908478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698231, 39.247692, 41.807228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017867, 0.291316, -0.956460,
		0.836508, 0.528341, 0.145294,
		0.547663, -0.797490, -0.253128,
		33.862530, 39.008446, 41.731289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759502, 39.791691, 41.256058>,  <33.479164, 39.566689, 41.908478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759502, 39.791691, 41.256058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818371, 39.396229, 41.244091>,  <33.853691, 39.158951, 41.236912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818371, 39.396229, 41.244091>,  <33.759502, 39.791691, 41.256058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818371, 39.396229, 41.244091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122429, 0.048221, -0.991305,
		0.981504, 0.142232, 0.128138,
		0.147174, -0.988658, -0.029916,
		33.862522, 39.099632, 41.235115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372566, 39.622349, 40.733784>,  <33.759502, 39.791691, 41.256058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372566, 39.622349, 40.733784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168377, 39.281494, 40.779877>,  <34.045864, 39.076981, 40.807533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.168377, 39.281494, 40.779877>,  <34.372566, 39.622349, 40.733784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168377, 39.281494, 40.779877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031738, -0.115240, -0.992831,
		0.859308, -0.510471, 0.031782,
		-0.510473, -0.852138, 0.115228,
		34.015236, 39.025852, 40.814445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094952, 39.669300, 40.493675>,  <34.372566, 39.622349, 40.733784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094952, 39.669300, 40.493675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294178, 40.013485, 40.450695>,  <35.413712, 40.219994, 40.424908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294178, 40.013485, 40.450695>,  <35.094952, 39.669300, 40.493675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294178, 40.013485, 40.450695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103561, 0.063998, 0.992562,
		0.860934, -0.505486, -0.057235,
		0.498064, 0.860458, -0.107447,
		35.443596, 40.271622, 40.418461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587040, 39.617966, 41.006756>,  <35.094952, 39.669300, 40.493675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587040, 39.617966, 41.006756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590385, 40.007374, 40.915375>,  <35.592392, 40.241020, 40.860546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.590385, 40.007374, 40.915375>,  <35.587040, 39.617966, 41.006756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590385, 40.007374, 40.915375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393858, 0.206789, 0.895609,
		0.919134, -0.097466, -0.381699,
		0.008360, 0.973519, -0.228455,
		35.592892, 40.299431, 40.846840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288975, 39.853397, 41.421055>,  <35.587040, 39.617966, 41.006756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288975, 39.853397, 41.421055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044388, 40.158531, 41.336979>,  <35.897636, 40.341614, 41.286533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044388, 40.158531, 41.336979>,  <36.288975, 39.853397, 41.421055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044388, 40.158531, 41.336979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333537, 0.489372, 0.805772,
		0.717535, 0.422601, -0.553672,
		-0.611471, 0.762839, -0.210188,
		35.860947, 40.387383, 41.273922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686306, 40.582554, 41.319061>,  <36.288975, 39.853397, 41.421055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686306, 40.582554, 41.319061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318039, 40.662235, 41.453339>,  <36.097080, 40.710045, 41.533905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318039, 40.662235, 41.453339>,  <36.686306, 40.582554, 41.319061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318039, 40.662235, 41.453339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389497, 0.525609, 0.756325,
		-0.025779, 0.827074, -0.561501,
		-0.920667, 0.199206, 0.335693,
		36.041840, 40.721996, 41.554047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908207, 40.851444, 41.959042>,  <36.686306, 40.582554, 41.319061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908207, 40.851444, 41.959042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508755, 40.872288, 41.956974>,  <36.269085, 40.884796, 41.955734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.508755, 40.872288, 41.956974>,  <36.908207, 40.851444, 41.959042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508755, 40.872288, 41.956974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019264, 0.457268, 0.889120,
		0.048696, 0.887801, -0.457644,
		-0.998628, 0.052112, -0.005165,
		36.209167, 40.887920, 41.955425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704372, 41.563126, 42.207226>,  <36.908207, 40.851444, 41.959042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704372, 41.563126, 42.207226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.409641, 41.310955, 42.304924>,  <36.232803, 41.159653, 42.363541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.409641, 41.310955, 42.304924>,  <36.704372, 41.563126, 42.207226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409641, 41.310955, 42.304924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013423, 0.347549, 0.937566,
		-0.675950, 0.694100, -0.247621,
		-0.736825, -0.630424, 0.244243,
		36.188595, 41.121826, 42.378197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234367, 41.949192, 42.642429>,  <36.704372, 41.563126, 42.207226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234367, 41.949192, 42.642429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167915, 41.563057, 42.722946>,  <36.128044, 41.331375, 42.771255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167915, 41.563057, 42.722946>,  <36.234367, 41.949192, 42.642429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167915, 41.563057, 42.722946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048546, 0.195872, 0.979427,
		-0.984909, 0.172481, 0.014324,
		-0.166127, -0.965342, 0.201289,
		36.118076, 41.273453, 42.783333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681370, 41.949841, 43.198009>,  <36.234367, 41.949192, 42.642429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681370, 41.949841, 43.198009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843403, 41.584274, 43.208302>,  <35.940624, 41.364933, 43.214478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843403, 41.584274, 43.208302>,  <35.681370, 41.949841, 43.198009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843403, 41.584274, 43.208302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088321, -0.011102, 0.996030,
		-0.910004, -0.405748, -0.085215,
		0.405083, -0.913917, 0.025733,
		35.964928, 41.310101, 43.216022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379627, 41.667515, 43.694599>,  <35.681370, 41.949841, 43.198009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379627, 41.667515, 43.694599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675987, 41.406101, 43.632690>,  <35.853806, 41.249252, 43.595547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675987, 41.406101, 43.632690>,  <35.379627, 41.667515, 43.694599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675987, 41.406101, 43.632690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003529, -0.234232, 0.972174,
		-0.671604, -0.719740, -0.175849,
		0.740902, -0.653536, -0.154771,
		35.898258, 41.210041, 43.586258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166878, 41.111252, 44.031342>,  <35.379627, 41.667515, 43.694599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166878, 41.111252, 44.031342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.565834, 41.116714, 44.002960>,  <35.805206, 41.119991, 43.985931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.565834, 41.116714, 44.002960>,  <35.166878, 41.111252, 44.031342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565834, 41.116714, 44.002960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070222, -0.414410, 0.907377,
		-0.017012, -0.909988, -0.414286,
		0.997386, 0.013656, -0.070951,
		35.865051, 41.120811, 43.981674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384480, 40.458775, 44.408943>,  <35.166878, 41.111252, 44.031342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384480, 40.458775, 44.408943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699409, 40.704712, 44.390644>,  <35.888367, 40.852276, 44.379665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699409, 40.704712, 44.390644>,  <35.384480, 40.458775, 44.408943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699409, 40.704712, 44.390644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107847, -0.064286, 0.992087,
		0.607038, -0.786024, -0.116923,
		0.787321, 0.614844, -0.045746,
		35.935604, 40.889164, 44.376919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987621, 40.136101, 44.779663>,  <35.384480, 40.458775, 44.408943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987621, 40.136101, 44.779663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.082363, 40.524693, 44.775013>,  <36.139210, 40.757847, 44.772224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.082363, 40.524693, 44.775013>,  <35.987621, 40.136101, 44.779663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082363, 40.524693, 44.775013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336457, -0.070798, 0.939034,
		0.911426, -0.226323, -0.343629,
		0.236853, 0.971476, -0.011621,
		36.153419, 40.816135, 44.771526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533291, 40.154964, 45.266811>,  <35.987621, 40.136101, 44.779663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533291, 40.154964, 45.266811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420712, 40.537014, 45.229862>,  <36.353165, 40.766243, 45.207691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420712, 40.537014, 45.229862>,  <36.533291, 40.154964, 45.266811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420712, 40.537014, 45.229862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084689, 0.120616, 0.989080,
		0.955833, 0.270547, -0.114835,
		-0.281444, 0.955121, -0.092376,
		36.336277, 40.823551, 45.202148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006805, 40.654877, 45.687603>,  <36.533291, 40.154964, 45.266811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006805, 40.654877, 45.687603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.655743, 40.843842, 45.655239>,  <36.445103, 40.957218, 45.635818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.655743, 40.843842, 45.655239>,  <37.006805, 40.654877, 45.687603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655743, 40.843842, 45.655239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014380, 0.142787, 0.989649,
		0.479071, 0.869737, -0.118525,
		-0.877659, 0.472407, -0.080912,
		36.392445, 40.985565, 45.630966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462681, 41.258293, 45.667339>,  <37.006805, 40.654877, 45.687603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462681, 41.258293, 45.667339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807060, 41.103218, 45.799076>,  <38.013687, 41.010174, 45.878117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807060, 41.103218, 45.799076>,  <37.462681, 41.258293, 45.667339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807060, 41.103218, 45.799076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269093, -0.202320, -0.941624,
		0.431687, 0.899314, -0.069863,
		0.860950, -0.387687, 0.329338,
		38.065346, 40.986912, 45.897877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920097, 41.582413, 45.413567>,  <37.462681, 41.258293, 45.667339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920097, 41.582413, 45.413567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114513, 41.239143, 45.479675>,  <38.231163, 41.033184, 45.519341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114513, 41.239143, 45.479675>,  <37.920097, 41.582413, 45.413567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114513, 41.239143, 45.479675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312555, -0.005909, -0.949881,
		0.816135, 0.513334, 0.265353,
		0.486038, -0.858169, 0.165267,
		38.260326, 40.981693, 45.529255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508224, 41.600735, 44.880692>,  <37.920097, 41.582413, 45.413567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508224, 41.600735, 44.880692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475925, 41.226711, 45.018764>,  <38.456547, 41.002296, 45.101608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475925, 41.226711, 45.018764>,  <38.508224, 41.600735, 44.880692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475925, 41.226711, 45.018764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259240, -0.354097, -0.898560,
		0.962431, 0.016930, 0.270996,
		-0.080746, -0.935056, 0.345183,
		38.451702, 40.946194, 45.122318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059875, 41.273899, 44.724060>,  <38.508224, 41.600735, 44.880692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059875, 41.273899, 44.724060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.801605, 40.972298, 44.772366>,  <38.646645, 40.791336, 44.801350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.801605, 40.972298, 44.772366>,  <39.059875, 41.273899, 44.724060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801605, 40.972298, 44.772366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195159, -0.315839, -0.928525,
		0.738251, -0.575959, 0.351080,
		-0.645677, -0.754001, 0.120765,
		38.607903, 40.746098, 44.808594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381744, 40.678638, 44.648354>,  <39.059875, 41.273899, 44.724060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381744, 40.678638, 44.648354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.011620, 40.555672, 44.559551>,  <38.789543, 40.481892, 44.506271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.011620, 40.555672, 44.559551>,  <39.381744, 40.678638, 44.648354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011620, 40.555672, 44.559551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298115, -0.227938, -0.926915,
		0.234351, -0.923870, 0.302562,
		-0.925314, -0.307422, -0.222002,
		38.734024, 40.463444, 44.492950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460232, 40.012756, 44.393692>,  <39.381744, 40.678638, 44.648354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460232, 40.012756, 44.393692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105904, 40.124039, 44.245136>,  <38.893307, 40.190807, 44.156002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105904, 40.124039, 44.245136>,  <39.460232, 40.012756, 44.393692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105904, 40.124039, 44.245136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353804, -0.112932, -0.928477,
		-0.300247, -0.953860, 0.001608,
		-0.885818, 0.278204, -0.371387,
		38.840157, 40.207500, 44.133720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456966, 39.732624, 43.818005>,  <39.460232, 40.012756, 44.393692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456966, 39.732624, 43.818005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138844, 39.968712, 43.762684>,  <38.947968, 40.110363, 43.729492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138844, 39.968712, 43.762684>,  <39.456966, 39.732624, 43.818005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138844, 39.968712, 43.762684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152600, -0.025876, -0.987949,
		-0.586681, -0.806831, -0.069488,
		-0.795310, 0.590215, -0.138304,
		38.900249, 40.145775, 43.721191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936478, 39.363335, 43.380062>,  <39.456966, 39.732624, 43.818005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936478, 39.363335, 43.380062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873486, 39.755329, 43.331356>,  <38.835690, 39.990524, 43.302132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873486, 39.755329, 43.331356>,  <38.936478, 39.363335, 43.380062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873486, 39.755329, 43.331356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157505, -0.096803, -0.982762,
		-0.974880, -0.173947, -0.139108,
		-0.157483, 0.979985, -0.121769,
		38.826241, 40.049324, 43.294827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420120, 39.466629, 42.766869>,  <38.936478, 39.363335, 43.380062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420120, 39.466629, 42.766869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581215, 39.830986, 42.802845>,  <38.677872, 40.049599, 42.824429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581215, 39.830986, 42.802845>,  <38.420120, 39.466629, 42.766869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581215, 39.830986, 42.802845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150098, 0.031205, -0.988179,
		-0.902926, 0.411472, -0.124155,
		0.402734, 0.910888, 0.089937,
		38.702034, 40.104252, 42.829826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086395, 39.812191, 42.226921>,  <38.420120, 39.466629, 42.766869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086395, 39.812191, 42.226921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413284, 40.021782, 42.322922>,  <38.609417, 40.147537, 42.380524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413284, 40.021782, 42.322922>,  <38.086395, 39.812191, 42.226921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413284, 40.021782, 42.322922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199437, 0.133593, -0.970761,
		-0.540715, 0.841193, 0.004675,
		0.817222, 0.523973, 0.240001,
		38.658451, 40.178974, 42.394920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002407, 40.504440, 42.019169>,  <38.086395, 39.812191, 42.226921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002407, 40.504440, 42.019169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.391598, 40.416557, 42.047581>,  <38.625111, 40.363827, 42.064629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.391598, 40.416557, 42.047581>,  <38.002407, 40.504440, 42.019169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391598, 40.416557, 42.047581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088752, 0.071873, -0.993457,
		0.213162, 0.972915, 0.089430,
		0.972977, -0.219705, 0.071028,
		38.683491, 40.350647, 42.068890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281139, 41.020306, 41.551388>,  <38.002407, 40.504440, 42.019169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281139, 41.020306, 41.551388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.533821, 40.712242, 41.586742>,  <38.685429, 40.527405, 41.607956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.533821, 40.712242, 41.586742>,  <38.281139, 41.020306, 41.551388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533821, 40.712242, 41.586742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116270, -0.018601, -0.993044,
		0.766443, 0.637584, 0.077796,
		0.631701, -0.770156, 0.088389,
		38.723331, 40.481194, 41.613258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836864, 41.256187, 41.060516>,  <38.281139, 41.020306, 41.551388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836864, 41.256187, 41.060516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906193, 40.869827, 41.137447>,  <38.947788, 40.638012, 41.183605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906193, 40.869827, 41.137447>,  <38.836864, 41.256187, 41.060516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906193, 40.869827, 41.137447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316259, -0.130354, -0.939675,
		0.932706, 0.223690, 0.282883,
		0.173321, -0.965904, 0.192326,
		38.958191, 40.580055, 41.195145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340157, 41.098103, 40.595566>,  <38.836864, 41.256187, 41.060516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340157, 41.098103, 40.595566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.242569, 40.723701, 40.697060>,  <39.184017, 40.499062, 40.757954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.242569, 40.723701, 40.697060>,  <39.340157, 41.098103, 40.595566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242569, 40.723701, 40.697060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369739, -0.331650, -0.867930,
		0.896535, -0.117931, 0.426987,
		-0.243966, -0.936003, 0.253732,
		39.169380, 40.442902, 40.773178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.544882, 42.678524, 36.508797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293150, 42.925430, 36.319939>,  <29.142111, 43.073574, 36.206623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293150, 42.925430, 36.319939>,  <29.544882, 42.678524, 36.508797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293150, 42.925430, 36.319939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503511, -0.786648, -0.357297,
		-0.591964, 0.012875, 0.805862,
		-0.629329, 0.617268, -0.472150,
		29.104351, 43.110611, 36.178295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830141, 42.585609, 36.695183>,  <29.544882, 42.678524, 36.508797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830141, 42.585609, 36.695183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846445, 42.728935, 36.322098>,  <28.856228, 42.814930, 36.098248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846445, 42.728935, 36.322098>,  <28.830141, 42.585609, 36.695183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846445, 42.728935, 36.322098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594937, -0.741265, -0.310768,
		-0.802738, 0.567571, 0.182960,
		0.040761, 0.358315, -0.932711,
		28.858673, 42.836430, 36.042286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190241, 42.610016, 36.538445>,  <28.830141, 42.585609, 36.695183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190241, 42.610016, 36.538445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359259, 42.624485, 36.176197>,  <28.460669, 42.633167, 35.958847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359259, 42.624485, 36.176197>,  <28.190241, 42.610016, 36.538445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359259, 42.624485, 36.176197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564814, -0.770946, -0.294325,
		-0.708831, 0.635872, -0.305328,
		0.422545, 0.036173, -0.905620,
		28.486023, 42.635338, 35.904510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649309, 42.537777, 36.046425>,  <28.190241, 42.610016, 36.538445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649309, 42.537777, 36.046425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966570, 42.439739, 35.823414>,  <28.156927, 42.380917, 35.689606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966570, 42.439739, 35.823414>,  <27.649309, 42.537777, 36.046425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966570, 42.439739, 35.823414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567696, -0.629002, -0.531109,
		-0.220516, 0.737758, -0.638033,
		0.793154, -0.245090, -0.557528,
		28.204515, 42.366211, 35.656155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378349, 42.604534, 35.390350>,  <27.649309, 42.537777, 36.046425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378349, 42.604534, 35.390350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703789, 42.372944, 35.369022>,  <27.899052, 42.233990, 35.356224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703789, 42.372944, 35.369022>,  <27.378349, 42.604534, 35.390350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703789, 42.372944, 35.369022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539693, -0.717901, -0.439715,
		0.216306, 0.386528, -0.896553,
		0.813599, -0.578977, -0.053319,
		27.947868, 42.199249, 35.353027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312946, 42.326424, 34.814255>,  <27.378349, 42.604534, 35.390350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312946, 42.326424, 34.814255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610081, 42.100605, 34.958195>,  <27.788361, 41.965115, 35.044559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610081, 42.100605, 34.958195>,  <27.312946, 42.326424, 34.814255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610081, 42.100605, 34.958195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415861, -0.810334, -0.412818,
		0.524650, 0.157009, -0.836714,
		0.742834, -0.564542, 0.359847,
		27.832932, 41.931244, 35.066151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483496, 41.904881, 34.286579>,  <27.312946, 42.326424, 34.814255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483496, 41.904881, 34.286579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.586388, 41.736935, 34.634727>,  <27.648123, 41.636166, 34.843616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.586388, 41.736935, 34.634727>,  <27.483496, 41.904881, 34.286579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586388, 41.736935, 34.634727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445253, -0.850870, -0.278872,
		0.857662, -0.315801, -0.405816,
		0.257229, -0.419868, 0.870370,
		27.663557, 41.610973, 34.895840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809759, 41.321205, 34.138447>,  <27.483496, 41.904881, 34.286579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809759, 41.321205, 34.138447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707678, 41.247566, 34.518127>,  <27.646429, 41.203384, 34.745934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707678, 41.247566, 34.518127>,  <27.809759, 41.321205, 34.138447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707678, 41.247566, 34.518127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392639, -0.877385, -0.275736,
		0.883575, -0.443061, 0.151628,
		-0.255205, -0.184099, 0.949199,
		27.631117, 41.192337, 34.802887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897167, 40.501961, 34.220463>,  <27.809759, 41.321205, 34.138447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897167, 40.501961, 34.220463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658854, 40.641190, 34.509983>,  <27.515865, 40.724728, 34.683697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658854, 40.641190, 34.509983>,  <27.897167, 40.501961, 34.220463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658854, 40.641190, 34.509983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520055, -0.853955, -0.017410,
		0.612035, -0.386789, 0.689788,
		-0.595782, 0.348072, 0.723802,
		27.480118, 40.745609, 34.727123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744778, 39.949909, 34.605148>,  <27.897167, 40.501961, 34.220463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744778, 39.949909, 34.605148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472225, 40.195583, 34.764393>,  <27.308693, 40.342987, 34.859940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.472225, 40.195583, 34.764393>,  <27.744778, 39.949909, 34.605148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472225, 40.195583, 34.764393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520818, -0.789024, 0.325866,
		0.514264, 0.014694, 0.857506,
		-0.681381, 0.614186, 0.398114,
		27.267811, 40.379841, 34.883827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591366, 39.628090, 35.189098>,  <27.744778, 39.949909, 34.605148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591366, 39.628090, 35.189098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.287325, 39.866623, 35.085846>,  <27.104900, 40.009743, 35.023895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.287325, 39.866623, 35.085846>,  <27.591366, 39.628090, 35.189098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287325, 39.866623, 35.085846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646915, -0.657038, 0.387043,
		0.061204, 0.461181, 0.885193,
		-0.760102, 0.596333, -0.258131,
		27.059294, 40.045525, 35.008408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181232, 39.696751, 35.814915>,  <27.591366, 39.628090, 35.189098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181232, 39.696751, 35.814915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.939323, 39.792763, 35.511169>,  <26.794178, 39.850368, 35.328922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.939323, 39.792763, 35.511169>,  <27.181232, 39.696751, 35.814915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939323, 39.792763, 35.511169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695667, -0.623379, 0.356996,
		-0.387685, 0.744168, 0.543980,
		-0.604771, 0.240026, -0.759368,
		26.757893, 39.864769, 35.283360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585344, 39.668728, 36.123203>,  <27.181232, 39.696751, 35.814915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585344, 39.668728, 36.123203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.498558, 39.613224, 35.736698>,  <26.446486, 39.579922, 35.504795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.498558, 39.613224, 35.736698>,  <26.585344, 39.668728, 36.123203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498558, 39.613224, 35.736698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814785, -0.519420, 0.257542,
		-0.537634, 0.843178, -0.000362,
		-0.216966, -0.138758, -0.966267,
		26.433468, 39.571598, 35.446819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845011, 39.655750, 36.178318>,  <26.585344, 39.668728, 36.123203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845011, 39.655750, 36.178318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.913971, 39.503159, 35.815056>,  <25.955347, 39.411606, 35.597099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.913971, 39.503159, 35.815056>,  <25.845011, 39.655750, 36.178318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913971, 39.503159, 35.815056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758032, -0.640129, 0.124988,
		-0.629019, 0.666866, -0.399532,
		0.172402, -0.381478, -0.908159,
		25.965691, 39.388714, 35.542606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152264, 39.341637, 35.926659>,  <25.845011, 39.655750, 36.178318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152264, 39.341637, 35.926659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.425154, 39.177437, 35.684647>,  <25.588888, 39.078915, 35.539440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.425154, 39.177437, 35.684647>,  <25.152264, 39.341637, 35.926659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425154, 39.177437, 35.684647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645044, -0.727522, -0.233732,
		-0.344223, 0.549727, -0.761125,
		0.682224, -0.410503, -0.605028,
		25.629820, 39.054287, 35.503139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.777689, 39.022499, 35.471958>,  <25.152264, 39.341637, 35.926659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.777689, 39.022499, 35.471958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.130199, 38.837147, 35.434788>,  <25.341705, 38.725937, 35.412487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.130199, 38.837147, 35.434788>,  <24.777689, 39.022499, 35.471958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130199, 38.837147, 35.434788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468605, -0.882283, -0.044557,
		-0.061340, 0.082812, -0.994676,
		0.881276, -0.463377, -0.092926,
		25.394583, 38.698135, 35.406910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837601, 38.560101, 34.759171>,  <24.777689, 39.022499, 35.471958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837601, 38.560101, 34.759171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.081438, 38.410305, 35.038643>,  <25.227741, 38.320427, 35.206326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.081438, 38.410305, 35.038643>,  <24.837601, 38.560101, 34.759171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081438, 38.410305, 35.038643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287484, -0.925812, -0.245406,
		0.738748, -0.051262, -0.672029,
		0.609593, -0.374491, 0.698679,
		25.264317, 38.297958, 35.248245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051542, 37.887444, 34.418755>,  <24.837601, 38.560101, 34.759171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051542, 37.887444, 34.418755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.140591, 37.866177, 34.808136>,  <25.194019, 37.853416, 35.041763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.140591, 37.866177, 34.808136>,  <25.051542, 37.887444, 34.418755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140591, 37.866177, 34.808136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275904, -0.961127, 0.010604,
		0.935049, -0.270940, -0.228638,
		0.222623, -0.053167, 0.973454,
		25.207378, 37.850227, 35.100174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603231, 37.401814, 34.553581>,  <25.051542, 37.887444, 34.418755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603231, 37.401814, 34.553581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.375311, 37.417496, 34.881920>,  <25.238558, 37.426907, 35.078922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.375311, 37.417496, 34.881920>,  <25.603231, 37.401814, 34.553581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375311, 37.417496, 34.881920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150580, -0.986931, -0.057387,
		0.807868, -0.156302, 0.568259,
		-0.569802, 0.039207, 0.820846,
		25.204370, 37.429256, 35.128174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863503, 36.857319, 35.066158>,  <25.603231, 37.401814, 34.553581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863503, 36.857319, 35.066158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.487236, 36.946918, 35.168118>,  <25.261477, 37.000679, 35.229294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.487236, 36.946918, 35.168118>,  <25.863503, 36.857319, 35.066158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487236, 36.946918, 35.168118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237025, -0.971273, -0.021170,
		0.242837, -0.080332, 0.966735,
		-0.940664, 0.224000, 0.254901,
		25.205036, 37.014118, 35.244587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656757, 36.689308, 34.928360>,  <25.863503, 36.857319, 35.066158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656757, 36.689308, 34.928360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050991, 36.629524, 34.960060>,  <27.287531, 36.593655, 34.979080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050991, 36.629524, 34.960060>,  <26.656757, 36.689308, 34.928360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050991, 36.629524, 34.960060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079851, 0.823986, 0.560956,
		-0.149143, -0.546542, 0.824044,
		0.985586, -0.149464, 0.079250,
		27.346666, 36.584686, 34.983833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860260, 36.881630, 35.658928>,  <26.656757, 36.689308, 34.928360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860260, 36.881630, 35.658928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208778, 36.885460, 35.462662>,  <27.417889, 36.887756, 35.344902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208778, 36.885460, 35.462662>,  <26.860260, 36.881630, 35.658928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208778, 36.885460, 35.462662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287218, 0.800749, 0.525650,
		0.397931, -0.598924, 0.694940,
		0.871296, 0.009573, -0.490665,
		27.470167, 36.888332, 35.315464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412992, 37.009247, 36.247658>,  <26.860260, 36.881630, 35.658928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412992, 37.009247, 36.247658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.584734, 37.100853, 35.898212>,  <27.687778, 37.155815, 35.688545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.584734, 37.100853, 35.898212>,  <27.412992, 37.009247, 36.247658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584734, 37.100853, 35.898212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418198, 0.806950, 0.417064,
		0.800475, -0.544416, 0.250703,
		0.429361, 0.229006, -0.873616,
		27.713541, 37.169556, 35.636127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130577, 37.068783, 36.536373>,  <27.412992, 37.009247, 36.247658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130577, 37.068783, 36.536373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112028, 37.266113, 36.188931>,  <28.100899, 37.384514, 35.980465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112028, 37.266113, 36.188931>,  <28.130577, 37.068783, 36.536373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112028, 37.266113, 36.188931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447344, 0.787730, 0.423515,
		0.893159, -0.368926, -0.257218,
		-0.046373, 0.493331, -0.868605,
		28.098116, 37.414112, 35.928349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731392, 37.477997, 36.450375>,  <28.130577, 37.068783, 36.536373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731392, 37.477997, 36.450375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494276, 37.658077, 36.183266>,  <28.352007, 37.766125, 36.023003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494276, 37.658077, 36.183266>,  <28.731392, 37.477997, 36.450375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494276, 37.658077, 36.183266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356971, 0.890141, 0.283233,
		0.721922, -0.070477, -0.688376,
		-0.592790, 0.450203, -0.667770,
		28.316439, 37.793137, 35.982933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132158, 37.970901, 36.084698>,  <28.731392, 37.477997, 36.450375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132158, 37.970901, 36.084698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.751942, 38.085003, 36.035534>,  <28.523811, 38.153461, 36.006035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.751942, 38.085003, 36.035534>,  <29.132158, 37.970901, 36.084698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751942, 38.085003, 36.035534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268992, 0.953855, 0.133434,
		0.155300, 0.093773, -0.983406,
		-0.950539, 0.285250, -0.122909,
		28.466780, 38.170578, 35.998661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246914, 38.580627, 35.774101>,  <29.132158, 37.970901, 36.084698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246914, 38.580627, 35.774101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866096, 38.605793, 35.893871>,  <28.637606, 38.620892, 35.965733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866096, 38.605793, 35.893871>,  <29.246914, 38.580627, 35.774101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866096, 38.605793, 35.893871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129277, 0.969699, 0.207295,
		-0.277314, 0.236063, -0.931328,
		-0.952042, 0.062914, 0.299429,
		28.580484, 38.624668, 35.983700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931122, 39.286514, 35.565014>,  <29.246914, 38.580627, 35.774101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931122, 39.286514, 35.565014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707706, 39.125538, 35.855141>,  <28.573658, 39.028954, 36.029217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707706, 39.125538, 35.855141>,  <28.931122, 39.286514, 35.565014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707706, 39.125538, 35.855141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149758, 0.811124, 0.565376,
		-0.815849, 0.424405, -0.392774,
		-0.558537, -0.402440, 0.725313,
		28.540146, 39.004807, 36.072735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535419, 39.838978, 35.667545>,  <28.931122, 39.286514, 35.565014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535419, 39.838978, 35.667545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514988, 39.625504, 36.005203>,  <28.502729, 39.497421, 36.207798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514988, 39.625504, 36.005203>,  <28.535419, 39.838978, 35.667545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514988, 39.625504, 36.005203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275483, 0.804922, 0.525557,
		-0.959948, 0.259391, 0.105906,
		-0.051079, -0.533682, 0.844141,
		28.499664, 39.465401, 36.258446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142330, 40.233768, 36.176685>,  <28.535419, 39.838978, 35.667545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142330, 40.233768, 36.176685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317745, 39.963726, 36.413975>,  <28.422995, 39.801701, 36.556347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317745, 39.963726, 36.413975>,  <28.142330, 40.233768, 36.176685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317745, 39.963726, 36.413975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152654, 0.706447, 0.691107,
		-0.885653, -0.212519, 0.412861,
		0.438538, -0.675106, 0.593225,
		28.449306, 39.761192, 36.591942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857742, 40.311638, 36.788044>,  <28.142330, 40.233768, 36.176685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857742, 40.311638, 36.788044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.187059, 40.116936, 36.904842>,  <28.384649, 40.000114, 36.974922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.187059, 40.116936, 36.904842>,  <27.857742, 40.311638, 36.788044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187059, 40.116936, 36.904842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158449, 0.691053, 0.705223,
		-0.545057, -0.534337, 0.646063,
		0.823290, -0.486755, 0.291999,
		28.434046, 39.970909, 36.992443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888014, 40.320717, 37.524025>,  <27.857742, 40.311638, 36.788044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888014, 40.320717, 37.524025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263077, 40.253483, 37.402336>,  <28.488113, 40.213142, 37.329323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263077, 40.253483, 37.402336>,  <27.888014, 40.320717, 37.524025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263077, 40.253483, 37.402336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322279, 0.748219, 0.579918,
		0.130148, -0.641807, 0.755741,
		0.937655, -0.168084, -0.304220,
		28.544373, 40.203056, 37.311069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229132, 40.431374, 38.154312>,  <27.888014, 40.320717, 37.524025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229132, 40.431374, 38.154312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497223, 40.478256, 37.861176>,  <28.658077, 40.506386, 37.685291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497223, 40.478256, 37.861176>,  <28.229132, 40.431374, 38.154312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497223, 40.478256, 37.861176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483381, 0.680339, 0.550892,
		0.563152, -0.723464, 0.399324,
		0.670226, 0.117210, -0.732843,
		28.698290, 40.513420, 37.641323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776817, 40.352814, 38.503124>,  <28.229132, 40.431374, 38.154312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776817, 40.352814, 38.503124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924215, 40.535252, 38.179104>,  <29.012653, 40.644714, 37.984692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924215, 40.535252, 38.179104>,  <28.776817, 40.352814, 38.503124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924215, 40.535252, 38.179104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188604, 0.816573, 0.545561,
		0.910296, -0.353816, 0.214881,
		0.368495, 0.456095, -0.810055,
		29.034763, 40.672081, 37.936089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504375, 40.473782, 38.586845>,  <28.776817, 40.352814, 38.503124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504375, 40.473782, 38.586845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362532, 40.737694, 38.321835>,  <29.277426, 40.896042, 38.162830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362532, 40.737694, 38.321835>,  <29.504375, 40.473782, 38.586845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362532, 40.737694, 38.321835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184578, 0.744022, 0.642154,
		0.916615, 0.105427, -0.385619,
		-0.354609, 0.659785, -0.662522,
		29.256149, 40.935631, 38.123077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968868, 40.987579, 38.512527>,  <29.504375, 40.473782, 38.586845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968868, 40.987579, 38.512527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.656607, 41.167042, 38.338501>,  <29.469250, 41.274719, 38.234085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.656607, 41.167042, 38.338501>,  <29.968868, 40.987579, 38.512527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656607, 41.167042, 38.338501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257389, 0.865181, 0.430363,
		0.569497, 0.223984, -0.790888,
		-0.780656, 0.448656, -0.435067,
		29.422409, 41.301640, 38.207981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249893, 41.617043, 38.343731>,  <29.968868, 40.987579, 38.512527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249893, 41.617043, 38.343731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.859987, 41.702358, 38.317387>,  <29.626043, 41.753548, 38.301582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.859987, 41.702358, 38.317387>,  <30.249893, 41.617043, 38.343731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859987, 41.702358, 38.317387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190500, 0.948616, 0.252661,
		0.116364, 0.233739, -0.965311,
		-0.974766, 0.213292, -0.065858,
		29.567558, 41.766346, 38.297630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118975, 42.246075, 37.947197>,  <30.249893, 41.617043, 38.343731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118975, 42.246075, 37.947197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834244, 42.189503, 38.222385>,  <29.663406, 42.155560, 38.387497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834244, 42.189503, 38.222385>,  <30.118975, 42.246075, 37.947197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834244, 42.189503, 38.222385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192797, 0.902544, 0.385024,
		-0.675377, 0.406709, -0.615186,
		-0.711825, -0.141430, 0.687970,
		29.620697, 42.147072, 38.428776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880371, 42.931927, 38.117329>,  <30.118975, 42.246075, 37.947197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880371, 42.931927, 38.117329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.754223, 42.701389, 38.418888>,  <29.678534, 42.563065, 38.599823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.754223, 42.701389, 38.418888>,  <29.880371, 42.931927, 38.117329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754223, 42.701389, 38.418888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038265, 0.801519, 0.596743,
		-0.948197, 0.159347, -0.274829,
		-0.315370, -0.576346, 0.753901,
		29.659613, 42.528484, 38.645058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237175, 43.197792, 38.335793>,  <29.880371, 42.931927, 38.117329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237175, 43.197792, 38.335793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.372454, 43.009869, 38.661961>,  <29.453621, 42.897114, 38.857662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.372454, 43.009869, 38.661961>,  <29.237175, 43.197792, 38.335793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372454, 43.009869, 38.661961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241300, 0.794215, 0.557671,
		-0.909615, -0.385361, 0.155234,
		0.338194, -0.469808, 0.815417,
		29.473911, 42.868927, 38.906586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750071, 43.244793, 38.886906>,  <29.237175, 43.197792, 38.335793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750071, 43.244793, 38.886906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111034, 43.190876, 39.050606>,  <29.327614, 43.158527, 39.148827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111034, 43.190876, 39.050606>,  <28.750071, 43.244793, 38.886906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111034, 43.190876, 39.050606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085248, 0.875178, 0.476231,
		-0.422357, -0.464644, 0.778280,
		0.902412, -0.134793, 0.409248,
		29.381758, 43.150436, 39.173382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651012, 43.401855, 39.573914>,  <28.750071, 43.244793, 38.886906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651012, 43.401855, 39.573914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037415, 43.474495, 39.500317>,  <29.269257, 43.518078, 39.456158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037415, 43.474495, 39.500317>,  <28.651012, 43.401855, 39.573914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037415, 43.474495, 39.500317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076589, 0.880798, 0.467256,
		0.246911, -0.437281, 0.864766,
		0.966006, 0.181603, -0.183988,
		29.327217, 43.528976, 39.445122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.128036, 38.766830, 46.291313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955044, 38.406197, 46.295441>,  <38.851250, 38.189816, 46.297916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955044, 38.406197, 46.295441>,  <39.128036, 38.766830, 46.291313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955044, 38.406197, 46.295441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138812, 0.077890, 0.987251,
		-0.890894, 0.425533, -0.158837,
		-0.432480, -0.901585, 0.010323,
		38.825298, 38.135719, 46.298538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527142, 38.805389, 46.678162>,  <39.128036, 38.766830, 46.291313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527142, 38.805389, 46.678162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649448, 38.424667, 46.687679>,  <38.722832, 38.196232, 46.693390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.649448, 38.424667, 46.687679>,  <38.527142, 38.805389, 46.678162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649448, 38.424667, 46.687679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276195, -0.064754, 0.958918,
		-0.911165, -0.299778, -0.282685,
		0.305767, -0.951809, 0.023796,
		38.741180, 38.139126, 46.694817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058010, 38.401951, 47.185287>,  <38.527142, 38.805389, 46.678162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058010, 38.401951, 47.185287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.337986, 38.119259, 47.144070>,  <38.505970, 37.949642, 47.119339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.337986, 38.119259, 47.144070>,  <38.058010, 38.401951, 47.185287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337986, 38.119259, 47.144070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051734, -0.194068, 0.979623,
		-0.712329, -0.680343, -0.172398,
		0.699937, -0.706733, -0.103044,
		38.547966, 37.907238, 47.113155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835171, 37.851799, 47.578899>,  <38.058010, 38.401951, 47.185287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835171, 37.851799, 47.578899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.233891, 37.823795, 47.563496>,  <38.473122, 37.806995, 47.554253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.233891, 37.823795, 47.563496>,  <37.835171, 37.851799, 47.578899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233891, 37.823795, 47.563496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039026, 0.006060, 0.999220,
		-0.069719, -0.997528, 0.008773,
		0.996803, -0.070007, -0.038507,
		38.532932, 37.802795, 47.551945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013256, 37.380085, 48.115238>,  <37.835171, 37.851799, 47.578899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013256, 37.380085, 48.115238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.374313, 37.529152, 48.029125>,  <38.590950, 37.618591, 47.977455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.374313, 37.529152, 48.029125>,  <38.013256, 37.380085, 48.115238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374313, 37.529152, 48.029125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252510, -0.053497, 0.966114,
		0.348522, -0.926422, -0.142391,
		0.902647, 0.372668, -0.215286,
		38.645107, 37.640953, 47.964539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491405, 36.933567, 48.501488>,  <38.013256, 37.380085, 48.115238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491405, 36.933567, 48.501488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647552, 37.293861, 48.425289>,  <38.741241, 37.510036, 48.379570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647552, 37.293861, 48.425289>,  <38.491405, 36.933567, 48.501488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647552, 37.293861, 48.425289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293465, 0.074376, 0.953072,
		0.872635, -0.427950, -0.235301,
		0.390366, 0.900737, -0.190492,
		38.764664, 37.564083, 48.368141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092438, 36.812561, 48.870811>,  <38.491405, 36.933567, 48.501488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092438, 36.812561, 48.870811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.082794, 37.208057, 48.811729>,  <39.077007, 37.445354, 48.776279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.082794, 37.208057, 48.811729>,  <39.092438, 36.812561, 48.870811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082794, 37.208057, 48.811729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381911, 0.145649, 0.912650,
		0.923885, -0.034409, -0.381121,
		-0.024106, 0.988738, -0.147705,
		39.075562, 37.504677, 48.767418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738720, 37.118641, 49.042076>,  <39.092438, 36.812561, 48.870811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738720, 37.118641, 49.042076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458996, 37.402237, 49.078522>,  <39.291161, 37.572395, 49.100391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458996, 37.402237, 49.078522>,  <39.738720, 37.118641, 49.042076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458996, 37.402237, 49.078522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304068, 0.179678, 0.935552,
		0.646926, 0.681944, -0.341231,
		-0.699306, 0.708991, 0.091119,
		39.249203, 37.614933, 49.105858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044647, 37.691647, 49.383144>,  <39.738720, 37.118641, 49.042076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044647, 37.691647, 49.383144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.652046, 37.736103, 49.445503>,  <39.416485, 37.762775, 49.482918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.652046, 37.736103, 49.445503>,  <40.044647, 37.691647, 49.383144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652046, 37.736103, 49.445503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185443, 0.349351, 0.918458,
		0.047617, 0.930377, -0.363499,
		-0.981501, 0.111142, 0.155897,
		39.357597, 37.769447, 49.492271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925636, 38.300922, 49.807491>,  <40.044647, 37.691647, 49.383144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925636, 38.300922, 49.807491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584732, 38.095509, 49.847366>,  <39.380192, 37.972260, 49.871292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584732, 38.095509, 49.847366>,  <39.925636, 38.300922, 49.807491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584732, 38.095509, 49.847366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028094, 0.145360, 0.988980,
		-0.522366, 0.845667, -0.109457,
		-0.852258, -0.513535, 0.099690,
		39.329056, 37.941448, 49.877274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425507, 38.691414, 50.263103>,  <39.925636, 38.300922, 49.807491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425507, 38.691414, 50.263103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.294052, 38.315315, 50.298733>,  <39.215179, 38.089657, 50.320110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.294052, 38.315315, 50.298733>,  <39.425507, 38.691414, 50.263103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294052, 38.315315, 50.298733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086100, 0.123742, 0.988572,
		-0.940522, 0.317216, -0.121622,
		-0.328640, -0.940246, 0.089069,
		39.195461, 38.033241, 50.325455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858013, 38.702915, 50.781769>,  <39.425507, 38.691414, 50.263103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858013, 38.702915, 50.781769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.963551, 38.317673, 50.760551>,  <39.026875, 38.086529, 50.747822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.963551, 38.317673, 50.760551>,  <38.858013, 38.702915, 50.781769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963551, 38.317673, 50.760551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011629, -0.058163, 0.998239,
		-0.964496, -0.262761, -0.026546,
		0.263843, -0.963106, -0.053042,
		39.042702, 38.028740, 50.744640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630257, 39.263046, 51.019764>,  <38.858013, 38.702915, 50.781769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630257, 39.263046, 51.019764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590614, 39.103523, 50.655098>,  <38.566830, 39.007809, 50.436298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590614, 39.103523, 50.655098>,  <38.630257, 39.263046, 51.019764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590614, 39.103523, 50.655098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536615, 0.750120, -0.386476,
		0.837987, -0.527514, 0.139667,
		-0.099104, -0.398809, -0.911663,
		38.560883, 38.983879, 50.381599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271889, 39.952869, 51.119518>,  <38.630257, 39.263046, 51.019764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271889, 39.952869, 51.119518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.285606, 39.663006, 50.844219>,  <38.293835, 39.489086, 50.679039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.285606, 39.663006, 50.844219>,  <38.271889, 39.952869, 51.119518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285606, 39.663006, 50.844219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051982, 0.686431, -0.725335,
		0.998059, 0.060650, -0.014130,
		0.034292, -0.724661, -0.688251,
		38.295895, 39.445606, 50.637745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341671, 40.417244, 51.601715>,  <38.271889, 39.952869, 51.119518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341671, 40.417244, 51.601715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175999, 40.779671, 51.567085>,  <38.076595, 40.997128, 51.546307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175999, 40.779671, 51.567085>,  <38.341671, 40.417244, 51.601715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175999, 40.779671, 51.567085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224019, -0.193669, -0.955148,
		-0.882197, -0.376207, 0.283190,
		-0.414179, 0.906069, -0.086576,
		38.051746, 41.051491, 51.541111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647419, 40.399239, 51.203121>,  <38.341671, 40.417244, 51.601715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647419, 40.399239, 51.203121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773216, 40.778389, 51.182602>,  <37.848694, 41.005878, 51.170292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773216, 40.778389, 51.182602>,  <37.647419, 40.399239, 51.203121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773216, 40.778389, 51.182602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213281, 0.017901, -0.976827,
		-0.924991, 0.318142, 0.207793,
		0.314489, 0.947874, -0.051296,
		37.867561, 41.062752, 51.167213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183674, 40.787449, 50.805702>,  <37.647419, 40.399239, 51.203121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183674, 40.787449, 50.805702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.511658, 41.012951, 50.766026>,  <37.708450, 41.148254, 50.742222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.511658, 41.012951, 50.766026>,  <37.183674, 40.787449, 50.805702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511658, 41.012951, 50.766026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116069, -0.005932, -0.993223,
		-0.560526, 0.825919, 0.060570,
		0.819963, 0.563758, -0.099189,
		37.757645, 41.182079, 50.736267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940765, 41.415051, 50.447166>,  <37.183674, 40.787449, 50.805702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940765, 41.415051, 50.447166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336464, 41.436611, 50.392773>,  <37.573883, 41.449547, 50.360138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336464, 41.436611, 50.392773>,  <36.940765, 41.415051, 50.447166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336464, 41.436611, 50.392773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143990, 0.195182, -0.970140,
		-0.025751, 0.979285, 0.200844,
		0.989244, 0.053901, -0.135982,
		37.633236, 41.452782, 50.351978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088726, 41.892673, 49.919559>,  <36.940765, 41.415051, 50.447166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088726, 41.892673, 49.919559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443501, 41.708469, 49.905308>,  <37.656364, 41.597946, 49.896755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443501, 41.708469, 49.905308>,  <37.088726, 41.892673, 49.919559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443501, 41.708469, 49.905308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007506, 0.062763, -0.998000,
		0.461829, 0.885431, 0.052211,
		0.886937, -0.460513, -0.035632,
		37.709583, 41.570316, 49.894619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518795, 42.220974, 49.492313>,  <37.088726, 41.892673, 49.919559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518795, 42.220974, 49.492313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710743, 41.871510, 49.524418>,  <37.825912, 41.661831, 49.543682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710743, 41.871510, 49.524418>,  <37.518795, 42.220974, 49.492313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710743, 41.871510, 49.524418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077128, -0.049118, -0.995811,
		0.873941, 0.484054, 0.043813,
		0.479874, -0.873659, 0.080260,
		37.854706, 41.609413, 49.548496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111355, 42.339897, 49.134422>,  <37.518795, 42.220974, 49.492313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111355, 42.339897, 49.134422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.054577, 41.944286, 49.150822>,  <38.020508, 41.706921, 49.160664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.054577, 41.944286, 49.150822>,  <38.111355, 42.339897, 49.134422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054577, 41.944286, 49.150822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414345, -0.096983, -0.904938,
		0.898982, -0.111466, 0.423563,
		-0.141948, -0.989025, 0.041001,
		38.011993, 41.647579, 49.163120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739758, 42.071339, 48.720898>,  <38.111355, 42.339897, 49.134422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739758, 42.071339, 48.720898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.505871, 41.748783, 48.756317>,  <38.365540, 41.555248, 48.777569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.505871, 41.748783, 48.756317>,  <38.739758, 42.071339, 48.720898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505871, 41.748783, 48.756317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344895, -0.345903, -0.872581,
		0.734273, -0.479669, 0.480375,
		-0.584714, -0.806392, 0.088552,
		38.330456, 41.506866, 48.782883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103088, 41.514637, 48.372070>,  <38.739758, 42.071339, 48.720898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103088, 41.514637, 48.372070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715466, 41.415928, 48.373978>,  <38.482891, 41.356701, 48.375122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715466, 41.415928, 48.373978>,  <39.103088, 41.514637, 48.372070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715466, 41.415928, 48.373978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050861, -0.218566, -0.974496,
		0.241523, -0.944104, 0.224356,
		-0.969061, -0.246774, 0.004771,
		38.424747, 41.341896, 48.375408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980206, 40.842846, 48.253204>,  <39.103088, 41.514637, 48.372070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980206, 40.842846, 48.253204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673294, 41.056709, 48.111546>,  <38.489147, 41.185028, 48.026550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673294, 41.056709, 48.111546>,  <38.980206, 40.842846, 48.253204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673294, 41.056709, 48.111546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084199, -0.463453, -0.882112,
		-0.635761, -0.706645, 0.310580,
		-0.767280, 0.534662, -0.354144,
		38.443111, 41.217110, 48.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802231, 40.461578, 47.797401>,  <38.980206, 40.842846, 48.253204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802231, 40.461578, 47.797401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.546753, 40.753536, 47.699978>,  <38.393467, 40.928711, 47.641525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.546753, 40.753536, 47.699978>,  <38.802231, 40.461578, 47.797401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546753, 40.753536, 47.699978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074858, -0.373968, -0.924415,
		-0.765810, -0.572188, 0.293490,
		-0.638695, 0.729896, -0.243556,
		38.355145, 40.972504, 47.626911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244354, 40.181179, 47.444080>,  <38.802231, 40.461578, 47.797401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244354, 40.181179, 47.444080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.211678, 40.559746, 47.319103>,  <38.192074, 40.786888, 47.244118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.211678, 40.559746, 47.319103>,  <38.244354, 40.181179, 47.444080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211678, 40.559746, 47.319103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209483, -0.322788, -0.922998,
		-0.974394, -0.009946, 0.224626,
		-0.081687, 0.946419, -0.312439,
		38.187172, 40.843670, 47.225372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618233, 40.220779, 47.039299>,  <38.244354, 40.181179, 47.444080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618233, 40.220779, 47.039299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836544, 40.535988, 46.925354>,  <37.967529, 40.725113, 46.856987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836544, 40.535988, 46.925354>,  <37.618233, 40.220779, 47.039299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836544, 40.535988, 46.925354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190608, -0.214287, -0.957992,
		-0.815964, 0.577145, 0.033251,
		0.545775, 0.788025, -0.284860,
		38.000278, 40.772396, 46.839897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326340, 40.546043, 46.414822>,  <37.618233, 40.220779, 47.039299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326340, 40.546043, 46.414822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705479, 40.673531, 46.413773>,  <37.932961, 40.750023, 46.413143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705479, 40.673531, 46.413773>,  <37.326340, 40.546043, 46.414822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705479, 40.673531, 46.413773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038514, -0.122696, -0.991697,
		-0.316390, 0.939876, -0.128572,
		0.947847, 0.318715, -0.002622,
		37.989834, 40.769146, 46.412987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971397, 41.218288, 46.309826>,  <37.326340, 40.546043, 46.414822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971397, 41.218288, 46.309826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602642, 41.128422, 46.183563>,  <36.381390, 41.074501, 46.107803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602642, 41.128422, 46.183563>,  <36.971397, 41.218288, 46.309826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602642, 41.128422, 46.183563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304413, -0.083999, 0.948829,
		-0.239689, 0.970808, 0.009045,
		-0.921890, -0.224671, -0.315660,
		36.326077, 41.061020, 46.088863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528275, 41.612057, 46.767807>,  <36.971397, 41.218288, 46.309826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528275, 41.612057, 46.767807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.282749, 41.339211, 46.608833>,  <36.135433, 41.175503, 46.513451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.282749, 41.339211, 46.608833>,  <36.528275, 41.612057, 46.767807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282749, 41.339211, 46.608833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447450, -0.114159, 0.886993,
		-0.650398, 0.722282, -0.235138,
		-0.613816, -0.682111, -0.397434,
		36.098606, 41.134579, 46.489605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960033, 41.767818, 46.984558>,  <36.528275, 41.612057, 46.767807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960033, 41.767818, 46.984558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874004, 41.384819, 46.907669>,  <35.822388, 41.155022, 46.861534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874004, 41.384819, 46.907669>,  <35.960033, 41.767818, 46.984558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874004, 41.384819, 46.907669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364992, -0.103757, 0.925211,
		-0.905829, 0.269143, -0.327163,
		-0.215069, -0.957495, -0.192221,
		35.809483, 41.097572, 46.850002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328472, 41.602753, 47.332752>,  <35.960033, 41.767818, 46.984558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328472, 41.602753, 47.332752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484409, 41.243423, 47.251720>,  <35.577972, 41.027828, 47.203102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484409, 41.243423, 47.251720>,  <35.328472, 41.602753, 47.332752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484409, 41.243423, 47.251720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243425, -0.312690, 0.918134,
		-0.888124, -0.308618, -0.340575,
		0.389847, -0.898321, -0.202582,
		35.601364, 40.973927, 47.190945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843437, 41.178879, 47.607018>,  <35.328472, 41.602753, 47.332752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843437, 41.178879, 47.607018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177917, 40.960720, 47.583984>,  <35.378605, 40.829826, 47.570164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177917, 40.960720, 47.583984>,  <34.843437, 41.178879, 47.607018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177917, 40.960720, 47.583984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114936, -0.276947, 0.953986,
		-0.536251, -0.791101, -0.294268,
		0.836196, -0.545398, -0.057587,
		35.428776, 40.797100, 47.566708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637768, 40.564106, 47.971085>,  <34.843437, 41.178879, 47.607018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637768, 40.564106, 47.971085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033569, 40.621899, 47.971973>,  <35.271049, 40.656574, 47.972507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033569, 40.621899, 47.971973>,  <34.637768, 40.564106, 47.971085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033569, 40.621899, 47.971973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040170, -0.289788, 0.956248,
		0.138807, -0.946122, -0.292550,
		0.989505, 0.144486, 0.002219,
		35.330421, 40.665245, 47.972641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924557, 39.899582, 48.386070>,  <34.637768, 40.564106, 47.971085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924557, 39.899582, 48.386070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217022, 40.171963, 48.369507>,  <35.392502, 40.335392, 48.359570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217022, 40.171963, 48.369507>,  <34.924557, 39.899582, 48.386070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217022, 40.171963, 48.369507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104008, -0.051278, 0.993254,
		0.674232, -0.730533, -0.108317,
		0.731159, 0.680949, -0.041408,
		35.436371, 40.376247, 48.357086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030106, 39.198132, 48.612736>,  <34.924557, 39.899582, 48.386070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030106, 39.198132, 48.612736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716515, 38.965050, 48.698364>,  <34.528358, 38.825199, 48.749741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716515, 38.965050, 48.698364>,  <35.030106, 39.198132, 48.612736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716515, 38.965050, 48.698364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156611, -0.148041, -0.976502,
		0.600708, -0.799083, 0.024802,
		-0.783978, -0.582709, 0.214074,
		34.481319, 38.790237, 48.762585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234322, 38.526039, 48.304905>,  <35.030106, 39.198132, 48.612736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234322, 38.526039, 48.304905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838177, 38.509010, 48.357624>,  <34.600491, 38.498791, 48.389256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838177, 38.509010, 48.357624>,  <35.234322, 38.526039, 48.304905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838177, 38.509010, 48.357624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114543, -0.283227, -0.952188,
		0.077870, -0.958107, 0.275620,
		-0.990361, -0.042577, 0.131800,
		34.541069, 38.496239, 48.397163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967255, 37.947193, 47.906868>,  <35.234322, 38.526039, 48.304905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967255, 37.947193, 47.906868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669521, 38.208988, 47.959961>,  <34.490883, 38.366066, 47.991817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669521, 38.208988, 47.959961>,  <34.967255, 37.947193, 47.906868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669521, 38.208988, 47.959961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187724, -0.014322, -0.982117,
		-0.640885, -0.755935, 0.133523,
		-0.744329, 0.654490, 0.132728,
		34.446224, 38.405334, 47.999779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380714, 37.630966, 47.662834>,  <34.967255, 37.947193, 47.906868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380714, 37.630966, 47.662834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272881, 38.016151, 47.660568>,  <34.208179, 38.247261, 47.659210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272881, 38.016151, 47.660568>,  <34.380714, 37.630966, 47.662834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272881, 38.016151, 47.660568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453747, -0.132214, -0.881268,
		-0.849375, -0.235006, 0.472583,
		-0.269585, 0.962960, -0.005666,
		34.192005, 38.305038, 47.658867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855221, 37.578896, 47.069988>,  <34.380714, 37.630966, 47.662834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855221, 37.578896, 47.069988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884819, 37.965614, 47.167835>,  <33.902576, 38.197643, 47.226543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884819, 37.965614, 47.167835>,  <33.855221, 37.578896, 47.069988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884819, 37.965614, 47.167835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477390, 0.249695, -0.842468,
		-0.875571, -0.054442, 0.480012,
		0.073991, 0.966793, 0.244616,
		33.907017, 38.255653, 47.241219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120274, 37.920559, 47.053085>,  <33.855221, 37.578896, 47.069988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120274, 37.920559, 47.053085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429859, 38.158630, 46.966610>,  <33.615612, 38.301476, 46.914726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429859, 38.158630, 46.966610>,  <33.120274, 37.920559, 47.053085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429859, 38.158630, 46.966610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359396, 0.131789, -0.923832,
		-0.521357, 0.792711, 0.315906,
		0.773965, 0.595182, -0.216188,
		33.662048, 38.337185, 46.901752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761436, 38.396111, 46.549820>,  <33.120274, 37.920559, 47.053085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761436, 38.396111, 46.549820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156399, 38.449173, 46.515316>,  <33.393375, 38.481010, 46.494614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156399, 38.449173, 46.515316>,  <32.761436, 38.396111, 46.549820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156399, 38.449173, 46.515316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104678, 0.138841, -0.984767,
		-0.118655, 0.981390, 0.150978,
		0.987402, 0.132652, -0.086255,
		33.452618, 38.488968, 46.489441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.680576, 34.705093, 50.611668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747944, 35.085453, 50.507805>,  <38.788364, 35.313671, 50.445488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747944, 35.085453, 50.507805>,  <38.680576, 34.705093, 50.611668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747944, 35.085453, 50.507805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096692, -0.278086, -0.955677,
		-0.980961, 0.135849, -0.138780,
		0.168421, 0.950901, -0.259656,
		38.798470, 35.370724, 50.429909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195061, 34.839600, 50.107239>,  <38.680576, 34.705093, 50.611668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195061, 34.839600, 50.107239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.510700, 35.081852, 50.066200>,  <38.700085, 35.227203, 50.041576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.510700, 35.081852, 50.066200>,  <38.195061, 34.839600, 50.107239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510700, 35.081852, 50.066200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137757, -0.337243, -0.931284,
		-0.598616, 0.720746, -0.349550,
		0.789102, 0.605634, -0.102592,
		38.747433, 35.263542, 50.035423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108204, 35.231697, 49.517155>,  <38.195061, 34.839600, 50.107239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108204, 35.231697, 49.517155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.499374, 35.219944, 49.599911>,  <38.734077, 35.212891, 49.649563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.499374, 35.219944, 49.599911>,  <38.108204, 35.231697, 49.517155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499374, 35.219944, 49.599911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191250, -0.273112, -0.942780,
		0.084207, 0.961533, -0.261462,
		0.977923, -0.029384, 0.206891,
		38.792751, 35.211128, 49.661980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484146, 35.690971, 48.966843>,  <38.108204, 35.231697, 49.517155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484146, 35.690971, 48.966843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.742241, 35.429932, 49.125725>,  <38.897099, 35.273308, 49.221054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.742241, 35.429932, 49.125725>,  <38.484146, 35.690971, 48.966843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742241, 35.429932, 49.125725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266506, -0.294990, -0.917581,
		0.715988, 0.697919, -0.016418,
		0.645241, -0.652602, 0.397209,
		38.935814, 35.234150, 49.244888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111366, 35.804111, 48.623238>,  <38.484146, 35.690971, 48.966843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111366, 35.804111, 48.623238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.105873, 35.432888, 48.772114>,  <39.102577, 35.210155, 48.861439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.105873, 35.432888, 48.772114>,  <39.111366, 35.804111, 48.623238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105873, 35.432888, 48.772114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076404, -0.372110, -0.925039,
		0.996982, 0.015734, 0.076017,
		-0.013733, -0.928055, 0.372190,
		39.101753, 35.154472, 48.883770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713593, 35.469887, 48.273952>,  <39.111366, 35.804111, 48.623238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713593, 35.469887, 48.273952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.482849, 35.165016, 48.391472>,  <39.344402, 34.982094, 48.461983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.482849, 35.165016, 48.391472>,  <39.713593, 35.469887, 48.273952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482849, 35.165016, 48.391472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092755, -0.418468, -0.903483,
		0.811562, -0.493929, 0.312092,
		-0.576857, -0.762180, 0.293799,
		39.309792, 34.936363, 48.479610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049034, 34.952824, 47.959988>,  <39.713593, 35.469887, 48.273952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049034, 34.952824, 47.959988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.680183, 34.822285, 48.043102>,  <39.458874, 34.743961, 48.092972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.680183, 34.822285, 48.043102>,  <40.049034, 34.952824, 47.959988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680183, 34.822285, 48.043102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099986, -0.317794, -0.942873,
		0.373739, -0.890226, 0.260416,
		-0.922129, -0.326350, 0.207782,
		39.403545, 34.724380, 48.105438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085022, 34.362801, 47.691357>,  <40.049034, 34.952824, 47.959988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085022, 34.362801, 47.691357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.693359, 34.439087, 47.719311>,  <39.458363, 34.484859, 47.736084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.693359, 34.439087, 47.719311>,  <40.085022, 34.362801, 47.691357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693359, 34.439087, 47.719311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124060, -0.289136, -0.949215,
		-0.160820, -0.938099, 0.306769,
		-0.979156, 0.190711, 0.069882,
		39.399612, 34.496300, 47.740276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799118, 33.797600, 47.531021>,  <40.085022, 34.362801, 47.691357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799118, 33.797600, 47.531021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.532310, 34.082207, 47.442631>,  <39.372227, 34.252972, 47.389599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.532310, 34.082207, 47.442631>,  <39.799118, 33.797600, 47.531021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532310, 34.082207, 47.442631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033783, -0.325170, -0.945052,
		-0.744276, -0.622901, 0.240932,
		-0.667018, 0.711518, -0.220972,
		39.332207, 34.295662, 47.376339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393219, 33.515797, 46.825054>,  <39.799118, 33.797600, 47.531021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393219, 33.515797, 46.825054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.259792, 33.892738, 46.835716>,  <39.179737, 34.118904, 46.842113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.259792, 33.892738, 46.835716>,  <39.393219, 33.515797, 46.825054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259792, 33.892738, 46.835716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218608, -0.049813, -0.974540,
		-0.917030, -0.330902, 0.222621,
		-0.333567, 0.942349, 0.026658,
		39.159721, 34.175442, 46.843712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728580, 33.441303, 46.611794>,  <39.393219, 33.515797, 46.825054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728580, 33.441303, 46.611794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.838070, 33.821854, 46.555286>,  <38.903763, 34.050182, 46.521381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.838070, 33.821854, 46.555286>,  <38.728580, 33.441303, 46.611794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838070, 33.821854, 46.555286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401526, -0.020436, -0.915620,
		-0.873986, 0.307352, 0.376409,
		0.273726, 0.951376, -0.141270,
		38.920189, 34.107265, 46.512905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155727, 33.895203, 46.328655>,  <38.728580, 33.441303, 46.611794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155727, 33.895203, 46.328655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.492592, 34.092201, 46.240837>,  <38.694710, 34.210400, 46.188145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.492592, 34.092201, 46.240837>,  <38.155727, 33.895203, 46.328655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492592, 34.092201, 46.240837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188338, -0.112853, -0.975599,
		-0.505258, 0.862965, -0.002285,
		0.842166, 0.492498, -0.219549,
		38.745243, 34.239952, 46.174973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537731, 34.258480, 46.745255>,  <38.155727, 33.895203, 46.328655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537731, 34.258480, 46.745255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.241188, 34.490929, 46.610981>,  <37.063263, 34.630398, 46.530418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.241188, 34.490929, 46.610981>,  <37.537731, 34.258480, 46.745255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241188, 34.490929, 46.610981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131537, 0.364672, 0.921799,
		0.658089, 0.727541, -0.193915,
		-0.741361, 0.581119, -0.335685,
		37.018780, 34.665264, 46.510277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457733, 35.087635, 47.011116>,  <37.537731, 34.258480, 46.745255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457733, 35.087635, 47.011116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.120186, 34.880817, 46.953773>,  <36.917656, 34.756725, 46.919369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.120186, 34.880817, 46.953773>,  <37.457733, 35.087635, 47.011116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120186, 34.880817, 46.953773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230037, 0.107266, 0.967252,
		-0.484739, 0.849209, -0.209458,
		-0.843867, -0.517048, -0.143353,
		36.867027, 34.725704, 46.910767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838280, 35.436123, 47.369278>,  <37.457733, 35.087635, 47.011116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838280, 35.436123, 47.369278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.809055, 35.038223, 47.340622>,  <36.791519, 34.799484, 47.323429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.809055, 35.038223, 47.340622>,  <36.838280, 35.436123, 47.369278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809055, 35.038223, 47.340622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223616, -0.053666, 0.973199,
		-0.971935, 0.087122, -0.218521,
		-0.073060, -0.994751, -0.071642,
		36.787136, 34.739799, 47.319130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326057, 35.328281, 47.716011>,  <36.838280, 35.436123, 47.369278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326057, 35.328281, 47.716011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473392, 34.956894, 47.696953>,  <36.561794, 34.734062, 47.685516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473392, 34.956894, 47.696953>,  <36.326057, 35.328281, 47.716011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473392, 34.956894, 47.696953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100449, -0.090693, 0.990800,
		-0.924250, -0.360163, -0.126670,
		0.368338, -0.928470, -0.047645,
		36.583893, 34.678352, 47.682659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738548, 35.008694, 48.014809>,  <36.326057, 35.328281, 47.716011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738548, 35.008694, 48.014809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.053989, 34.763916, 48.038921>,  <36.243256, 34.617050, 48.053387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.053989, 34.763916, 48.038921>,  <35.738548, 35.008694, 48.014809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053989, 34.763916, 48.038921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150913, -0.097577, 0.983719,
		-0.596097, -0.784860, -0.169300,
		0.788602, -0.611942, 0.060280,
		36.290569, 34.580334, 48.057007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481129, 34.474991, 48.313183>,  <35.738548, 35.008694, 48.014809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481129, 34.474991, 48.313183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.875454, 34.476822, 48.380306>,  <36.112049, 34.477921, 48.420582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.875454, 34.476822, 48.380306>,  <35.481129, 34.474991, 48.313183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875454, 34.476822, 48.380306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167080, -0.070114, 0.983447,
		0.016271, -0.997528, -0.068353,
		0.985809, 0.004581, 0.167808,
		36.171196, 34.478195, 48.430649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589344, 33.957905, 48.885269>,  <35.481129, 34.474991, 48.313183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589344, 33.957905, 48.885269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.899902, 34.209667, 48.872269>,  <36.086239, 34.360725, 48.864468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.899902, 34.209667, 48.872269>,  <35.589344, 33.957905, 48.885269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899902, 34.209667, 48.872269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120903, 0.199356, 0.972440,
		0.618539, -0.751069, 0.230876,
		0.776397, 0.629406, -0.032503,
		36.132820, 34.398487, 48.862518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927666, 33.819309, 49.542130>,  <35.589344, 33.957905, 48.885269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927666, 33.819309, 49.542130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.075130, 34.171349, 49.422455>,  <36.163609, 34.382572, 49.350651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.075130, 34.171349, 49.422455>,  <35.927666, 33.819309, 49.542130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075130, 34.171349, 49.422455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038979, 0.336214, 0.940979,
		0.928745, -0.335242, 0.158256,
		0.368664, 0.880098, -0.299190,
		36.185730, 34.435379, 49.332699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376091, 34.048866, 50.120201>,  <35.927666, 33.819309, 49.542130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376091, 34.048866, 50.120201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.277599, 34.362968, 49.892960>,  <36.218506, 34.551430, 49.756615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.277599, 34.362968, 49.892960>,  <36.376091, 34.048866, 50.120201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277599, 34.362968, 49.892960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133620, 0.553052, 0.822362,
		0.959958, 0.278397, -0.031250,
		-0.246225, 0.785257, -0.568106,
		36.203732, 34.598545, 49.722527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763103, 34.696468, 50.377190>,  <36.376091, 34.048866, 50.120201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763103, 34.696468, 50.377190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.470577, 34.829781, 50.139164>,  <36.295063, 34.909767, 49.996349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.470577, 34.829781, 50.139164>,  <36.763103, 34.696468, 50.377190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470577, 34.829781, 50.139164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203916, 0.725729, 0.657066,
		0.650842, 0.601866, -0.462777,
		-0.731316, 0.333278, -0.595065,
		36.251183, 34.929764, 49.960644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746841, 35.315308, 50.567654>,  <36.763103, 34.696468, 50.377190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746841, 35.315308, 50.567654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.394993, 35.305424, 50.377640>,  <36.183884, 35.299492, 50.263634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.394993, 35.305424, 50.377640>,  <36.746841, 35.315308, 50.567654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394993, 35.305424, 50.377640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374287, 0.652257, 0.659144,
		0.293555, 0.757595, -0.582988,
		-0.879622, -0.024710, -0.475031,
		36.131107, 35.298012, 50.235130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537605, 36.009224, 50.298664>,  <36.746841, 35.315308, 50.567654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537605, 36.009224, 50.298664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.215683, 35.782619, 50.369492>,  <36.022530, 35.646656, 50.411987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.215683, 35.782619, 50.369492>,  <36.537605, 36.009224, 50.298664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215683, 35.782619, 50.369492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256159, 0.600636, 0.757376,
		-0.535414, 0.564184, -0.628513,
		-0.804807, -0.566509, 0.177068,
		35.974239, 35.612667, 50.422611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991859, 36.495892, 50.333218>,  <36.537605, 36.009224, 50.298664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991859, 36.495892, 50.333218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.845592, 36.160572, 50.494980>,  <35.757832, 35.959381, 50.592037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.845592, 36.160572, 50.494980>,  <35.991859, 36.495892, 50.333218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845592, 36.160572, 50.494980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269030, 0.511148, 0.816303,
		-0.891015, 0.189702, -0.412439,
		-0.365672, -0.838296, 0.404405,
		35.735889, 35.909084, 50.616302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284061, 36.683056, 50.576263>,  <35.991859, 36.495892, 50.333218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284061, 36.683056, 50.576263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.407776, 36.366562, 50.787277>,  <35.482006, 36.176666, 50.913887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.407776, 36.366562, 50.787277>,  <35.284061, 36.683056, 50.576263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407776, 36.366562, 50.787277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319895, 0.435840, 0.841255,
		-0.895550, -0.428944, -0.118313,
		0.309286, -0.791234, 0.527534,
		35.500561, 36.129192, 50.945538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012577, 37.113335, 51.113266>,  <35.284061, 36.683056, 50.576263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012577, 37.113335, 51.113266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.920879, 37.444683, 51.317715>,  <34.865860, 37.643494, 51.440384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.920879, 37.444683, 51.317715>,  <35.012577, 37.113335, 51.113266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920879, 37.444683, 51.317715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581252, 0.304705, -0.754520,
		-0.780766, -0.470059, 0.411642,
		-0.229240, 0.828371, 0.511126,
		34.852108, 37.693195, 51.471054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415554, 37.302723, 50.938473>,  <35.012577, 37.113335, 51.113266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415554, 37.302723, 50.938473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566742, 37.650467, 51.065815>,  <34.657455, 37.859116, 51.142220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566742, 37.650467, 51.065815>,  <34.415554, 37.302723, 50.938473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566742, 37.650467, 51.065815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466808, 0.475905, -0.745389,
		-0.799520, 0.133123, 0.585702,
		0.377967, 0.869363, 0.318353,
		34.680134, 37.911278, 51.161320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919212, 37.753590, 50.734554>,  <34.415554, 37.302723, 50.938473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919212, 37.753590, 50.734554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.239101, 37.985870, 50.795517>,  <34.431034, 38.125240, 50.832096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.239101, 37.985870, 50.795517>,  <33.919212, 37.753590, 50.734554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239101, 37.985870, 50.795517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175660, 0.469067, -0.865517,
		-0.574100, 0.665400, 0.477129,
		0.799721, 0.580705, 0.152407,
		34.479019, 38.160084, 50.841240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713120, 38.469856, 50.583038>,  <33.919212, 37.753590, 50.734554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713120, 38.469856, 50.583038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106644, 38.426926, 50.525627>,  <34.342758, 38.401169, 50.491180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106644, 38.426926, 50.525627>,  <33.713120, 38.469856, 50.583038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106644, 38.426926, 50.525627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074455, 0.483740, -0.872039,
		0.163021, 0.868607, 0.467917,
		0.983809, -0.107322, -0.143532,
		34.401787, 38.394730, 50.482567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892494, 39.087326, 50.240288>,  <33.713120, 38.469856, 50.583038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892494, 39.087326, 50.240288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.185383, 38.828918, 50.154015>,  <34.361115, 38.673874, 50.102253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.185383, 38.828918, 50.154015>,  <33.892494, 39.087326, 50.240288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185383, 38.828918, 50.154015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153764, 0.465308, -0.871691,
		0.663483, 0.605106, 0.440042,
		0.732221, -0.646015, -0.215680,
		34.405048, 38.635113, 50.089310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257519, 39.475800, 49.770885>,  <33.892494, 39.087326, 50.240288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257519, 39.475800, 49.770885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378277, 39.101700, 49.696945>,  <34.450729, 38.877239, 49.652580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378277, 39.101700, 49.696945>,  <34.257519, 39.475800, 49.770885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378277, 39.101700, 49.696945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231064, 0.259902, -0.937582,
		0.924916, 0.240336, 0.294565,
		0.301892, -0.935248, -0.184854,
		34.468845, 38.821125, 49.641487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821358, 39.572460, 49.299000>,  <34.257519, 39.475800, 49.770885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821358, 39.572460, 49.299000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.667355, 39.204010, 49.276054>,  <34.574951, 38.982941, 49.262287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.667355, 39.204010, 49.276054>,  <34.821358, 39.572460, 49.299000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667355, 39.204010, 49.276054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016852, 0.069160, -0.997463,
		0.922758, -0.383069, -0.042151,
		-0.385012, -0.921127, -0.057363,
		34.551849, 38.927673, 49.258846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571178, 39.594528, 48.965233>,  <34.821358, 39.572460, 49.299000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571178, 39.594528, 48.965233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621231, 39.981895, 48.878963>,  <35.651260, 40.214314, 48.827202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621231, 39.981895, 48.878963>,  <35.571178, 39.594528, 48.965233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621231, 39.981895, 48.878963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264219, 0.177007, 0.948081,
		0.956311, -0.175616, -0.233725,
		0.125127, 0.968415, -0.215675,
		35.658768, 40.272419, 48.814262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064930, 39.865738, 49.360832>,  <35.571178, 39.594528, 48.965233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064930, 39.865738, 49.360832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.883198, 40.206055, 49.255199>,  <35.774158, 40.410244, 49.191818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.883198, 40.206055, 49.255199>,  <36.064930, 39.865738, 49.360832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883198, 40.206055, 49.255199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042455, 0.316789, 0.947546,
		0.889819, 0.419292, -0.180048,
		-0.454335, 0.850788, -0.264084,
		35.746899, 40.461292, 49.175976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465366, 40.349854, 49.605133>,  <36.064930, 39.865738, 49.360832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465366, 40.349854, 49.605133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.111073, 40.531189, 49.565201>,  <35.898499, 40.639988, 49.541241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.111073, 40.531189, 49.565201>,  <36.465366, 40.349854, 49.605133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111073, 40.531189, 49.565201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083220, 0.366658, 0.926626,
		0.456677, 0.812434, -0.362487,
		-0.885732, 0.453335, -0.099833,
		35.845352, 40.667191, 49.535252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591328, 41.029842, 49.847569>,  <36.465366, 40.349854, 49.605133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591328, 41.029842, 49.847569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.193996, 40.984833, 49.857651>,  <35.955597, 40.957825, 49.863701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.193996, 40.984833, 49.857651>,  <36.591328, 41.029842, 49.847569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193996, 40.984833, 49.857651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007729, 0.283017, 0.959084,
		-0.115055, 0.952491, -0.281999,
		-0.993329, -0.112527, 0.025201,
		35.895996, 40.951073, 49.865211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368160, 41.639378, 50.041645>,  <36.591328, 41.029842, 49.847569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368160, 41.639378, 50.041645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086674, 41.374733, 50.145222>,  <35.917782, 41.215946, 50.207367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086674, 41.374733, 50.145222>,  <36.368160, 41.639378, 50.041645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086674, 41.374733, 50.145222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080823, 0.287550, 0.954349,
		-0.705868, 0.692520, -0.148881,
		-0.703717, -0.661612, 0.258944,
		35.875557, 41.176250, 50.222904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950272, 41.980297, 50.518730>,  <36.368160, 41.639378, 50.041645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950272, 41.980297, 50.518730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.821648, 41.610954, 50.602646>,  <35.744473, 41.389347, 50.652996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.821648, 41.610954, 50.602646>,  <35.950272, 41.980297, 50.518730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821648, 41.610954, 50.602646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017670, 0.227368, 0.973648,
		-0.946725, 0.309378, -0.089428,
		-0.321558, -0.923357, 0.209789,
		35.725182, 41.333946, 50.665581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323826, 42.034782, 50.958881>,  <35.950272, 41.980297, 50.518730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323826, 42.034782, 50.958881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.461761, 41.666908, 51.034004>,  <35.544525, 41.446186, 51.079079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.461761, 41.666908, 51.034004>,  <35.323826, 42.034782, 50.958881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461761, 41.666908, 51.034004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077986, 0.171314, 0.982125,
		-0.935415, -0.353325, -0.012646,
		0.344843, -0.919681, 0.187805,
		35.565216, 41.391003, 51.090347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852234, 41.676086, 51.458107>,  <35.323826, 42.034782, 50.958881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852234, 41.676086, 51.458107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.199249, 41.477650, 51.472347>,  <35.407459, 41.358589, 51.480892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.199249, 41.477650, 51.472347>,  <34.852234, 41.676086, 51.458107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199249, 41.477650, 51.472347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047598, -0.011565, 0.998800,
		-0.495084, -0.868194, -0.033646,
		0.867540, -0.496091, 0.035598,
		35.459511, 41.328823, 51.483028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677139, 41.090145, 51.905998>,  <34.852234, 41.676086, 51.458107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677139, 41.090145, 51.905998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070934, 41.159275, 51.918148>,  <35.307209, 41.200752, 51.925438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070934, 41.159275, 51.918148>,  <34.677139, 41.090145, 51.905998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070934, 41.159275, 51.918148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018273, -0.071162, 0.997297,
		0.174523, -0.982378, -0.066900,
		0.984483, 0.172829, 0.030370,
		35.366280, 41.211124, 51.927258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.124962, 38.065788, 36.105984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506466, 38.183788, 36.082962>,  <35.735371, 38.254589, 36.069149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506466, 38.183788, 36.082962>,  <35.124962, 38.065788, 36.105984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506466, 38.183788, 36.082962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039924, 0.314146, 0.948535,
		0.297880, -0.902385, 0.311399,
		0.953768, 0.294982, -0.057552,
		35.792595, 38.272289, 36.065697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454807, 37.896420, 36.713646>,  <35.124962, 38.065788, 36.105984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454807, 37.896420, 36.713646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701145, 38.182453, 36.581352>,  <35.848949, 38.354073, 36.501976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701145, 38.182453, 36.581352>,  <35.454807, 37.896420, 36.713646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701145, 38.182453, 36.581352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058564, 0.460171, 0.885897,
		0.785688, -0.526206, 0.325272,
		0.615845, 0.715088, -0.330734,
		35.885899, 38.396980, 36.482132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034843, 37.963825, 37.154724>,  <35.454807, 37.896420, 36.713646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034843, 37.963825, 37.154724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024792, 38.322594, 36.978130>,  <36.018761, 38.537853, 36.872173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024792, 38.322594, 36.978130>,  <36.034843, 37.963825, 37.154724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024792, 38.322594, 36.978130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121912, 0.435578, 0.891857,
		0.992223, 0.076232, 0.098401,
		-0.025127, 0.896917, -0.441484,
		36.017254, 38.591667, 36.845684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426373, 38.454411, 37.643204>,  <36.034843, 37.963825, 37.154724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426373, 38.454411, 37.643204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216774, 38.696285, 37.403278>,  <36.091015, 38.841412, 37.259323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216774, 38.696285, 37.403278>,  <36.426373, 38.454411, 37.643204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216774, 38.696285, 37.403278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208714, 0.591607, 0.778742,
		0.825750, 0.533251, -0.183796,
		-0.524001, 0.604685, -0.599816,
		36.059574, 38.877689, 37.223335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556873, 39.147667, 37.867321>,  <36.426373, 38.454411, 37.643204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556873, 39.147667, 37.867321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247963, 39.210102, 37.620995>,  <36.062618, 39.247562, 37.473198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247963, 39.210102, 37.620995>,  <36.556873, 39.147667, 37.867321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247963, 39.210102, 37.620995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299047, 0.765917, 0.569159,
		0.560506, 0.623704, -0.544818,
		-0.772273, 0.156091, -0.615817,
		36.016281, 39.256927, 37.436249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588959, 39.834499, 37.780556>,  <36.556873, 39.147667, 37.867321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588959, 39.834499, 37.780556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203533, 39.745911, 37.720570>,  <35.972279, 39.692757, 37.684578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203533, 39.745911, 37.720570>,  <36.588959, 39.834499, 37.780556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203533, 39.745911, 37.720570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262427, 0.674519, 0.690041,
		-0.051669, 0.704255, -0.708064,
		-0.963567, -0.221469, -0.149964,
		35.914463, 39.679470, 37.675579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247795, 40.421089, 37.678112>,  <36.588959, 39.834499, 37.780556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247795, 40.421089, 37.678112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970654, 40.166298, 37.813297>,  <35.804367, 40.013424, 37.894409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970654, 40.166298, 37.813297>,  <36.247795, 40.421089, 37.678112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970654, 40.166298, 37.813297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232806, 0.641189, 0.731217,
		-0.682462, 0.427948, -0.592542,
		-0.692854, -0.636975, 0.337958,
		35.762798, 39.975204, 37.914684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905872, 40.859859, 38.027081>,  <36.247795, 40.421089, 37.678112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905872, 40.859859, 38.027081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746857, 40.520626, 38.167202>,  <35.651447, 40.317085, 38.251274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746857, 40.520626, 38.167202>,  <35.905872, 40.859859, 38.027081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746857, 40.520626, 38.167202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147580, 0.435898, 0.887814,
		-0.905638, 0.301246, -0.298448,
		-0.397543, -0.848082, 0.350308,
		35.627594, 40.266201, 38.272293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270226, 41.046658, 38.454964>,  <35.905872, 40.859859, 38.027081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270226, 41.046658, 38.454964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329266, 40.671188, 38.579613>,  <35.364689, 40.445908, 38.654404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329266, 40.671188, 38.579613>,  <35.270226, 41.046658, 38.454964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329266, 40.671188, 38.579613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112435, 0.297108, 0.948201,
		-0.982636, -0.174989, -0.061687,
		0.147598, -0.938672, 0.311624,
		35.373547, 40.389587, 38.673100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753868, 40.935825, 38.815929>,  <35.270226, 41.046658, 38.454964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753868, 40.935825, 38.815929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048283, 40.699524, 38.948151>,  <35.224930, 40.557743, 39.027481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048283, 40.699524, 38.948151>,  <34.753868, 40.935825, 38.815929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048283, 40.699524, 38.948151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237460, 0.231954, 0.943298,
		-0.633930, -0.772791, 0.030445,
		0.736034, -0.590755, 0.330549,
		35.269093, 40.522297, 39.047314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483116, 40.617813, 39.557392>,  <34.753868, 40.935825, 38.815929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483116, 40.617813, 39.557392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878296, 40.556030, 39.553524>,  <35.115406, 40.518959, 39.551201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878296, 40.556030, 39.553524>,  <34.483116, 40.617813, 39.557392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878296, 40.556030, 39.553524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001483, -0.071963, 0.997406,
		-0.154757, -0.985375, -0.071325,
		0.987952, -0.154461, -0.009675,
		35.174683, 40.509693, 39.550621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672001, 40.005554, 39.935528>,  <34.483116, 40.617813, 39.557392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672001, 40.005554, 39.935528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015892, 40.209175, 39.952171>,  <35.222225, 40.331348, 39.962158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015892, 40.209175, 39.952171>,  <34.672001, 40.005554, 39.935528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015892, 40.209175, 39.952171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071038, -0.199856, 0.977247,
		0.505790, -0.837209, -0.207984,
		0.859727, 0.509056, 0.041611,
		35.273811, 40.361893, 39.964653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533657, 39.302086, 40.078686>,  <34.672001, 40.005554, 39.935528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533657, 39.302086, 40.078686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234768, 39.090561, 40.239685>,  <34.055435, 38.963646, 40.336285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234768, 39.090561, 40.239685>,  <34.533657, 39.302086, 40.078686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234768, 39.090561, 40.239685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254336, -0.331993, -0.908347,
		0.613977, -0.781110, 0.113576,
		-0.747225, -0.528817, 0.402501,
		34.010601, 38.931915, 40.360435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565720, 38.674530, 39.799164>,  <34.533657, 39.302086, 40.078686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565720, 38.674530, 39.799164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183147, 38.704369, 39.912067>,  <33.953602, 38.722271, 39.979809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183147, 38.704369, 39.912067>,  <34.565720, 38.674530, 39.799164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183147, 38.704369, 39.912067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288352, -0.392777, -0.873258,
		0.045721, -0.916603, 0.397176,
		-0.956432, 0.074600, 0.282263,
		33.896217, 38.726749, 39.996746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254520, 37.995110, 39.518803>,  <34.565720, 38.674530, 39.799164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254520, 37.995110, 39.518803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942936, 38.223644, 39.622185>,  <33.755985, 38.360764, 39.684212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942936, 38.223644, 39.622185>,  <34.254520, 37.995110, 39.518803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942936, 38.223644, 39.622185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493327, -0.303914, -0.815024,
		-0.387109, -0.762369, 0.518594,
		-0.778957, 0.571340, 0.258450,
		33.709248, 38.395046, 39.699718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625851, 37.549232, 39.489212>,  <34.254520, 37.995110, 39.518803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625851, 37.549232, 39.489212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509045, 37.928867, 39.441948>,  <33.438961, 38.156647, 39.413589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509045, 37.928867, 39.441948>,  <33.625851, 37.549232, 39.489212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509045, 37.928867, 39.441948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629441, -0.283731, -0.723395,
		-0.720089, -0.136870, 0.680249,
		-0.292019, 0.949085, -0.118160,
		33.421440, 38.213593, 39.406498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921654, 37.502705, 39.455292>,  <33.625851, 37.549232, 39.489212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921654, 37.502705, 39.455292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994343, 37.858421, 39.287418>,  <33.037956, 38.071854, 39.186695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994343, 37.858421, 39.287418>,  <32.921654, 37.502705, 39.455292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994343, 37.858421, 39.287418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691644, -0.187788, -0.697398,
		-0.699004, 0.417000, 0.580951,
		0.181720, 0.889295, -0.419680,
		33.048859, 38.125210, 39.161514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308243, 37.665836, 39.393730>,  <32.921654, 37.502705, 39.455292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308243, 37.665836, 39.393730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542240, 37.855045, 39.130203>,  <32.682636, 37.968571, 38.972088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542240, 37.855045, 39.130203>,  <32.308243, 37.665836, 39.393730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542240, 37.855045, 39.130203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694681, -0.126995, -0.708019,
		-0.418577, 0.871848, 0.254311,
		0.584989, 0.473025, -0.658814,
		32.717735, 37.996952, 38.932560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823807, 38.043011, 39.099068>,  <32.308243, 37.665836, 39.393730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823807, 38.043011, 39.099068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128242, 38.034889, 38.839737>,  <32.310905, 38.030014, 38.684139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128242, 38.034889, 38.839737>,  <31.823807, 38.043011, 39.099068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128242, 38.034889, 38.839737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644689, -0.133921, -0.752623,
		-0.071542, 0.990784, -0.115017,
		0.761090, -0.020307, -0.648328,
		32.356571, 38.028797, 38.645237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550734, 38.443371, 38.554688>,  <31.823807, 38.043011, 39.099068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550734, 38.443371, 38.554688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868435, 38.263699, 38.391029>,  <32.059055, 38.155895, 38.292835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868435, 38.263699, 38.391029>,  <31.550734, 38.443371, 38.554688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868435, 38.263699, 38.391029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556151, -0.266314, -0.787257,
		0.244659, 0.852827, -0.461333,
		0.794253, -0.449180, -0.409144,
		32.106712, 38.128944, 38.268288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686291, 38.732445, 37.823303>,  <31.550734, 38.443371, 38.554688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686291, 38.732445, 37.823303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867311, 38.376148, 37.806438>,  <31.975924, 38.162369, 37.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867311, 38.376148, 37.806438>,  <31.686291, 38.732445, 37.823303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867311, 38.376148, 37.806438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360483, -0.139492, -0.922277,
		0.815628, 0.432577, -0.384224,
		0.452551, -0.890741, -0.042163,
		32.003078, 38.108925, 37.793789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811474, 38.701988, 37.159248>,  <31.686291, 38.732445, 37.823303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811474, 38.701988, 37.159248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845011, 38.323284, 37.283585>,  <31.865133, 38.096062, 37.358185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845011, 38.323284, 37.283585>,  <31.811474, 38.701988, 37.159248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845011, 38.323284, 37.283585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456024, -0.313810, -0.832806,
		0.886009, -0.071924, -0.458056,
		0.083844, -0.946758, 0.310838,
		31.870165, 38.039257, 37.376835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058105, 38.364246, 36.557945>,  <31.811474, 38.701988, 37.159248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058105, 38.364246, 36.557945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900049, 38.077381, 36.787567>,  <31.805216, 37.905262, 36.925343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900049, 38.077381, 36.787567>,  <32.058105, 38.364246, 36.557945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900049, 38.077381, 36.787567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493398, -0.361434, -0.791154,
		0.774870, -0.595856, -0.211029,
		-0.395140, -0.717162, 0.574058,
		31.781507, 37.862232, 36.959785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190907, 37.692707, 36.250568>,  <32.058105, 38.364246, 36.557945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190907, 37.692707, 36.250568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865316, 37.625057, 36.472862>,  <31.669962, 37.584469, 36.606239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865316, 37.625057, 36.472862>,  <32.190907, 37.692707, 36.250568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865316, 37.625057, 36.472862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480643, -0.341185, -0.807821,
		0.326229, -0.924657, 0.196429,
		-0.813975, -0.169123, 0.555735,
		31.621124, 37.574322, 36.639584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002182, 37.021259, 36.060772>,  <32.190907, 37.692707, 36.250568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002182, 37.021259, 36.060772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681940, 37.185101, 36.235706>,  <31.489796, 37.283405, 36.340668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681940, 37.185101, 36.235706>,  <32.002182, 37.021259, 36.060772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681940, 37.185101, 36.235706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577579, -0.333246, -0.745218,
		-0.159506, -0.849217, 0.503376,
		-0.800600, 0.409606, 0.437335,
		31.441759, 37.307983, 36.366905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553404, 36.516888, 36.078388>,  <32.002182, 37.021259, 36.060772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553404, 36.516888, 36.078388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314997, 36.833530, 36.132229>,  <31.171953, 37.023518, 36.164532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314997, 36.833530, 36.132229>,  <31.553404, 36.516888, 36.078388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314997, 36.833530, 36.132229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632612, -0.359680, -0.685881,
		-0.494537, -0.493946, 0.715157,
		-0.596016, 0.791611, 0.134602,
		31.136192, 37.071014, 36.172611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852596, 35.921349, 36.409702>,  <31.553404, 36.516888, 36.078388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852596, 35.921349, 36.409702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144417, 36.192616, 36.445141>,  <32.319508, 36.355373, 36.466404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144417, 36.192616, 36.445141>,  <31.852596, 35.921349, 36.409702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144417, 36.192616, 36.445141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679950, 0.705247, 0.200733,
		0.073647, -0.206687, 0.975631,
		0.729550, 0.678164, 0.088597,
		32.363281, 36.396065, 36.471722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234631, 35.332058, 36.679485>,  <31.852596, 35.921349, 36.409702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234631, 35.332058, 36.679485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427490, 34.993912, 36.587498>,  <32.543205, 34.791023, 36.532307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427490, 34.993912, 36.587498>,  <32.234631, 35.332058, 36.679485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427490, 34.993912, 36.587498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152730, -0.177368, 0.972221,
		-0.862673, -0.503879, 0.043595,
		0.482150, -0.845368, -0.229968,
		32.572136, 34.740303, 36.518509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888662, 34.737564, 36.996471>,  <32.234631, 35.332058, 36.679485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888662, 34.737564, 36.996471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284145, 34.761532, 36.941532>,  <32.521435, 34.775913, 36.908569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284145, 34.761532, 36.941532>,  <31.888662, 34.737564, 36.996471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284145, 34.761532, 36.941532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142414, -0.090661, 0.985646,
		0.046609, -0.994078, -0.098171,
		0.988709, 0.059921, -0.137345,
		32.580757, 34.779507, 36.900330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272980, 34.109596, 37.284035>,  <31.888662, 34.737564, 36.996471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272980, 34.109596, 37.284035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551216, 34.396946, 37.280106>,  <32.718159, 34.569355, 37.277748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551216, 34.396946, 37.280106>,  <32.272980, 34.109596, 37.284035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551216, 34.396946, 37.280106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195169, -0.175787, 0.964888,
		0.691423, -0.673081, -0.262480,
		0.695588, 0.718374, -0.009821,
		32.759892, 34.612457, 37.277161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766636, 33.827888, 37.697456>,  <32.272980, 34.109596, 37.284035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766636, 33.827888, 37.697456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842247, 34.220272, 37.679619>,  <32.887611, 34.455704, 37.668915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842247, 34.220272, 37.679619>,  <32.766636, 33.827888, 37.697456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842247, 34.220272, 37.679619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468081, -0.050090, 0.882264,
		0.863232, -0.187644, -0.468637,
		0.189025, 0.980959, -0.044593,
		32.898956, 34.514561, 37.666241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409439, 33.786854, 37.812733>,  <32.766636, 33.827888, 37.697456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409439, 33.786854, 37.812733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268944, 34.146549, 37.917042>,  <33.184647, 34.362366, 37.979630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268944, 34.146549, 37.917042>,  <33.409439, 33.786854, 37.812733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268944, 34.146549, 37.917042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582649, -0.008097, 0.812684,
		0.732908, 0.437384, -0.521096,
		-0.351236, 0.899238, 0.260775,
		33.163574, 34.416321, 37.995274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956921, 34.203949, 38.125771>,  <33.409439, 33.786854, 37.812733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956921, 34.203949, 38.125771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625484, 34.386711, 38.255184>,  <33.426624, 34.496368, 38.332832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625484, 34.386711, 38.255184>,  <33.956921, 34.203949, 38.125771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625484, 34.386711, 38.255184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351271, -0.025706, 0.935921,
		0.435947, 0.889142, -0.139200,
		-0.828588, 0.456909, 0.323536,
		33.376907, 34.523785, 38.352245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186241, 34.718216, 38.548782>,  <33.956921, 34.203949, 38.125771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186241, 34.718216, 38.548782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812218, 34.652390, 38.674374>,  <33.587803, 34.612892, 38.749729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812218, 34.652390, 38.674374>,  <34.186241, 34.718216, 38.548782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812218, 34.652390, 38.674374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306483, 0.069770, 0.949316,
		-0.178133, 0.983895, -0.014801,
		-0.935060, -0.164568, 0.313975,
		33.531700, 34.603020, 38.768566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180737, 35.145882, 39.120445>,  <34.186241, 34.718216, 38.548782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180737, 35.145882, 39.120445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853287, 34.925396, 39.184963>,  <33.656818, 34.793102, 39.223675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853287, 34.925396, 39.184963>,  <34.180737, 35.145882, 39.120445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853287, 34.925396, 39.184963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041244, 0.223690, 0.973787,
		-0.572847, 0.803818, -0.160384,
		-0.818624, -0.551216, 0.161293,
		33.607700, 34.760033, 39.233353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886055, 35.606918, 39.482658>,  <34.180737, 35.145882, 39.120445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886055, 35.606918, 39.482658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731457, 35.242085, 39.537384>,  <33.638699, 35.023182, 39.570221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731457, 35.242085, 39.537384>,  <33.886055, 35.606918, 39.482658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731457, 35.242085, 39.537384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125073, 0.095137, 0.987576,
		-0.913771, 0.398807, 0.077307,
		-0.386497, -0.912087, 0.136813,
		33.615509, 34.968460, 39.578426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403667, 35.606270, 40.081116>,  <33.886055, 35.606918, 39.482658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403667, 35.606270, 40.081116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488049, 35.216324, 40.052456>,  <33.538677, 34.982357, 40.035259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488049, 35.216324, 40.052456>,  <33.403667, 35.606270, 40.081116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488049, 35.216324, 40.052456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342041, 0.004953, 0.939672,
		-0.915700, -0.222733, 0.334489,
		0.210952, -0.974867, -0.071649,
		33.551334, 34.923862, 40.030960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294937, 35.364277, 40.763084>,  <33.403667, 35.606270, 40.081116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294937, 35.364277, 40.763084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519909, 35.068943, 40.614201>,  <33.654892, 34.891743, 40.524868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519909, 35.068943, 40.614201>,  <33.294937, 35.364277, 40.763084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519909, 35.068943, 40.614201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403450, -0.147882, 0.902972,
		-0.721738, -0.658023, 0.214708,
		0.562425, -0.738333, -0.372212,
		33.688637, 34.847443, 40.502537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171158, 34.816650, 41.156269>,  <33.294937, 35.364277, 40.763084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171158, 34.816650, 41.156269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529690, 34.780678, 40.982601>,  <33.744808, 34.759094, 40.878403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529690, 34.780678, 40.982601>,  <33.171158, 34.816650, 41.156269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529690, 34.780678, 40.982601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419136, -0.147533, 0.895857,
		-0.144493, -0.984973, -0.094607,
		0.896352, -0.089792, -0.434155,
		33.798588, 34.753700, 40.852352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481922, 34.211460, 41.482861>,  <33.171158, 34.816650, 41.156269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481922, 34.211460, 41.482861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777557, 34.421993, 41.314709>,  <33.954937, 34.548313, 41.213818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777557, 34.421993, 41.314709>,  <33.481922, 34.211460, 41.482861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777557, 34.421993, 41.314709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587989, -0.199610, 0.783852,
		0.328659, -0.826514, -0.457009,
		0.739088, 0.526337, -0.420378,
		33.999283, 34.579895, 41.188595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081879, 33.799217, 41.548096>,  <33.481922, 34.211460, 41.482861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081879, 33.799217, 41.548096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205013, 34.176601, 41.498909>,  <34.278893, 34.403030, 41.469398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205013, 34.176601, 41.498909>,  <34.081879, 33.799217, 41.548096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205013, 34.176601, 41.498909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434317, -0.024354, 0.900431,
		0.846527, -0.330588, -0.417258,
		0.307834, 0.943461, -0.122963,
		34.297363, 34.459641, 41.462021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742577, 33.768276, 41.805077>,  <34.081879, 33.799217, 41.548096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742577, 33.768276, 41.805077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657700, 34.159149, 41.808956>,  <34.606773, 34.393673, 41.811283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657700, 34.159149, 41.808956>,  <34.742577, 33.768276, 41.805077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657700, 34.159149, 41.808956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484693, 0.096620, 0.869332,
		0.848557, 0.189162, -0.494134,
		-0.212188, 0.977181, 0.009698,
		34.594044, 34.452305, 41.811867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409328, 34.109871, 41.956684>,  <34.742577, 33.768276, 41.805077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409328, 34.109871, 41.956684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123848, 34.373543, 42.051434>,  <34.952560, 34.531746, 42.108284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123848, 34.373543, 42.051434>,  <35.409328, 34.109871, 41.956684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123848, 34.373543, 42.051434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444737, 0.165187, 0.880297,
		0.541143, 0.733620, -0.411055,
		-0.713704, 0.659177, 0.236878,
		34.909737, 34.571297, 42.122498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698185, 34.713276, 42.196178>,  <35.409328, 34.109871, 41.956684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698185, 34.713276, 42.196178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339737, 34.798996, 42.351639>,  <35.124668, 34.850430, 42.444916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339737, 34.798996, 42.351639>,  <35.698185, 34.713276, 42.196178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339737, 34.798996, 42.351639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443784, 0.442936, 0.779014,
		-0.005201, 0.870564, -0.492027,
		-0.896118, 0.214302, 0.388647,
		35.070900, 34.863285, 42.468231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627628, 35.469013, 42.286461>,  <35.698185, 34.713276, 42.196178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627628, 35.469013, 42.286461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378117, 35.280655, 42.535992>,  <35.228409, 35.167641, 42.685711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378117, 35.280655, 42.535992>,  <35.627628, 35.469013, 42.286461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378117, 35.280655, 42.535992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622808, 0.182772, 0.760726,
		-0.472241, 0.863047, 0.179269,
		-0.623777, -0.470897, 0.623825,
		35.190983, 35.139385, 42.723141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608486, 35.874653, 42.844425>,  <35.627628, 35.469013, 42.286461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608486, 35.874653, 42.844425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469791, 35.520576, 42.968494>,  <35.386574, 35.308128, 43.042934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469791, 35.520576, 42.968494>,  <35.608486, 35.874653, 42.844425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469791, 35.520576, 42.968494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578974, 0.058184, 0.813267,
		-0.737947, 0.461568, 0.492331,
		-0.346732, -0.885195, 0.310173,
		35.365772, 35.255016, 43.061546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568733, 35.947224, 43.579933>,  <35.608486, 35.874653, 42.844425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568733, 35.947224, 43.579933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530487, 35.550209, 43.549660>,  <35.507538, 35.312000, 43.531494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530487, 35.550209, 43.549660>,  <35.568733, 35.947224, 43.579933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530487, 35.550209, 43.549660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438522, -0.110258, 0.891931,
		-0.893619, 0.052098, 0.445792,
		-0.095620, -0.992537, -0.075683,
		35.501801, 35.252449, 43.526955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452869, 35.779613, 44.209583>,  <35.568733, 35.947224, 43.579933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452869, 35.779613, 44.209583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564816, 35.420776, 44.072819>,  <35.631985, 35.205475, 43.990761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564816, 35.420776, 44.072819>,  <35.452869, 35.779613, 44.209583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564816, 35.420776, 44.072819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494863, -0.170384, 0.852103,
		-0.822669, -0.407676, 0.396252,
		0.279866, -0.897090, -0.341914,
		35.648777, 35.151649, 43.970245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195553, 35.365231, 44.744686>,  <35.452869, 35.779613, 44.209583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195553, 35.365231, 44.744686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479832, 35.186577, 44.527275>,  <35.650398, 35.079384, 44.396828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479832, 35.186577, 44.527275>,  <35.195553, 35.365231, 44.744686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479832, 35.186577, 44.527275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520548, -0.185837, 0.833364,
		-0.473218, -0.875203, 0.100421,
		0.710700, -0.446636, -0.543526,
		35.693043, 35.052586, 44.364216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158218, 34.571369, 44.897991>,  <35.195553, 35.365231, 44.744686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158218, 34.571369, 44.897991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525726, 34.675964, 44.779682>,  <35.746231, 34.738720, 44.708698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525726, 34.675964, 44.779682>,  <35.158218, 34.571369, 44.897991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525726, 34.675964, 44.779682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377068, -0.359323, 0.853643,
		0.116941, -0.895830, -0.428736,
		0.918773, 0.261488, -0.295769,
		35.801357, 34.754410, 44.690952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549255, 33.902863, 45.048782>,  <35.158218, 34.571369, 44.897991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549255, 33.902863, 45.048782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824848, 34.189430, 45.004879>,  <35.990204, 34.361370, 44.978539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824848, 34.189430, 45.004879>,  <35.549255, 33.902863, 45.048782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824848, 34.189430, 45.004879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565099, -0.436172, 0.700298,
		0.453833, -0.544518, -0.705362,
		0.688984, 0.716418, -0.109758,
		36.031544, 34.404354, 44.971951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086300, 33.630928, 45.263496>,  <35.549255, 33.902863, 45.048782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086300, 33.630928, 45.263496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226746, 34.005447, 45.260399>,  <36.311012, 34.230160, 45.258541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226746, 34.005447, 45.260399>,  <36.086300, 33.630928, 45.263496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226746, 34.005447, 45.260399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576666, -0.209719, 0.789604,
		0.737684, -0.281703, -0.613568,
		0.351110, 0.936302, -0.007742,
		36.332077, 34.286339, 45.258076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831112, 33.584030, 45.345646>,  <36.086300, 33.630928, 45.263496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831112, 33.584030, 45.345646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719612, 33.946949, 45.471577>,  <36.652714, 34.164700, 45.547134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719612, 33.946949, 45.471577>,  <36.831112, 33.584030, 45.345646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719612, 33.946949, 45.471577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593759, -0.094842, 0.799034,
		0.754818, 0.409659, -0.512278,
		-0.278746, 0.907295, 0.314827,
		36.635990, 34.219139, 45.566025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396278, 33.896336, 45.567390>,  <36.831112, 33.584030, 45.345646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396278, 33.896336, 45.567390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085728, 34.060921, 45.758358>,  <36.899399, 34.159672, 45.872940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085728, 34.060921, 45.758358>,  <37.396278, 33.896336, 45.567390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085728, 34.060921, 45.758358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438991, -0.190502, 0.878064,
		0.452243, 0.891294, -0.032728,
		-0.776378, 0.411466, 0.477423,
		36.852814, 34.184361, 45.901585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940353, 34.425312, 45.855217>,  <37.396278, 33.896336, 45.567390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940353, 34.425312, 45.855217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335339, 34.462963, 45.804535>,  <38.572330, 34.485554, 45.774128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335339, 34.462963, 45.804535>,  <37.940353, 34.425312, 45.855217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335339, 34.462963, 45.804535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143577, 0.202238, -0.968754,
		-0.065560, 0.974802, 0.213217,
		0.987465, 0.094125, -0.126701,
		38.631577, 34.491199, 45.766525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085197, 35.174335, 45.605129>,  <37.940353, 34.425312, 45.855217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085197, 35.174335, 45.605129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374416, 34.919945, 45.497250>,  <38.547947, 34.767311, 45.432522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374416, 34.919945, 45.497250>,  <38.085197, 35.174335, 45.605129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374416, 34.919945, 45.497250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105573, 0.284103, -0.952964,
		0.682684, 0.717510, 0.138278,
		0.723047, -0.635975, -0.269702,
		38.591331, 34.729153, 45.416340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408157, 35.448463, 44.985397>,  <38.085197, 35.174335, 45.605129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408157, 35.448463, 44.985397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562569, 35.080696, 45.015480>,  <38.655216, 34.860035, 45.033527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562569, 35.080696, 45.015480>,  <38.408157, 35.448463, 44.985397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562569, 35.080696, 45.015480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034969, -0.066880, -0.997148,
		0.921823, 0.387560, 0.006334,
		0.386031, -0.919415, 0.075204,
		38.678379, 34.804871, 45.038040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992344, 35.441479, 44.459854>,  <38.408157, 35.448463, 44.985397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992344, 35.441479, 44.459854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878262, 35.064510, 44.529701>,  <38.809811, 34.838329, 44.571609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878262, 35.064510, 44.529701>,  <38.992344, 35.441479, 44.459854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878262, 35.064510, 44.529701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030905, -0.191132, -0.981078,
		0.957968, -0.274414, 0.083638,
		-0.285207, -0.942426, 0.174617,
		38.792698, 34.781784, 44.582085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467010, 34.984055, 43.995026>,  <38.992344, 35.441479, 44.459854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467010, 34.984055, 43.995026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151360, 34.752087, 44.075996>,  <38.961971, 34.612907, 44.124580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151360, 34.752087, 44.075996>,  <39.467010, 34.984055, 43.995026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151360, 34.752087, 44.075996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038225, -0.282560, -0.958488,
		0.613043, -0.764104, 0.200808,
		-0.789124, -0.579918, 0.202430,
		38.914623, 34.578110, 44.136726>
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
