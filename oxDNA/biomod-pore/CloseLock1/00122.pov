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
	<24.035162, 34.511509, 35.197193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128069, 34.816284, 34.955368>,  <24.183813, 34.999149, 34.810272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128069, 34.816284, 34.955368>,  <24.035162, 34.511509, 35.197193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.128069, 34.816284, 34.955368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950125, 0.044737, -0.308645,
		-0.208122, 0.646099, 0.734330,
		0.232267, 0.761941, -0.604564,
		24.197748, 35.044865, 34.773998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.666348, 34.495224, 35.499737>,  <24.035162, 34.511509, 35.197193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.666348, 34.495224, 35.499737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366581, 34.712624, 35.650993>,  <24.186722, 34.843063, 35.741745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366581, 34.712624, 35.650993>,  <24.666348, 34.495224, 35.499737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.366581, 34.712624, 35.650993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605664, 0.332008, 0.723147,
		0.267481, 0.770963, -0.577987,
		-0.749416, 0.543495, 0.378139,
		24.141756, 34.875671, 35.764435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166706, 34.537838, 34.963955>,  <24.666348, 34.495224, 35.499737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166706, 34.537838, 34.963955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964775, 34.801483, 34.740986>,  <24.843616, 34.959671, 34.607204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964775, 34.801483, 34.740986>,  <25.166706, 34.537838, 34.963955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.964775, 34.801483, 34.740986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609832, 0.729340, 0.310111,
		0.610947, -0.183380, -0.770140,
		-0.504825, 0.659117, -0.557419,
		24.813328, 34.999218, 34.573761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621620, 34.829727, 34.549255>,  <25.166706, 34.537838, 34.963955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621620, 34.829727, 34.549255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336666, 35.108696, 34.580540>,  <25.165693, 35.276077, 34.599308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336666, 35.108696, 34.580540>,  <25.621620, 34.829727, 34.549255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336666, 35.108696, 34.580540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664128, 0.633942, 0.396297,
		0.226806, 0.334255, -0.914786,
		-0.712385, 0.697417, 0.078206,
		25.122950, 35.317921, 34.604000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780035, 35.556343, 34.216969>,  <25.621620, 34.829727, 34.549255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780035, 35.556343, 34.216969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542952, 35.570419, 34.538830>,  <25.400702, 35.578865, 34.731945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542952, 35.570419, 34.538830>,  <25.780035, 35.556343, 34.216969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542952, 35.570419, 34.538830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581421, 0.710042, 0.397227,
		-0.557358, 0.703280, -0.441305,
		-0.592707, 0.035187, 0.804649,
		25.365139, 35.580975, 34.780224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510071, 35.489647, 34.130196>,  <25.780035, 35.556343, 34.216969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510071, 35.489647, 34.130196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708660, 35.143852, 34.161629>,  <26.827814, 34.936375, 34.180489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708660, 35.143852, 34.161629>,  <26.510071, 35.489647, 34.130196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708660, 35.143852, 34.161629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344477, 0.279306, 0.896283,
		-0.796776, -0.417908, 0.436464,
		0.496471, -0.864489, 0.078584,
		26.857601, 34.884506, 34.185204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320004, 35.162197, 33.499111>,  <26.510071, 35.489647, 34.130196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320004, 35.162197, 33.499111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566540, 35.476440, 33.477425>,  <26.714462, 35.664986, 33.464413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566540, 35.476440, 33.477425>,  <26.320004, 35.162197, 33.499111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566540, 35.476440, 33.477425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148026, 0.047957, -0.987820,
		-0.773441, 0.616861, 0.145849,
		0.616342, 0.785610, -0.054220,
		26.751442, 35.712124, 33.461159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938362, 35.663654, 33.106655>,  <26.320004, 35.162197, 33.499111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938362, 35.663654, 33.106655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334221, 35.685318, 33.053493>,  <26.571735, 35.698318, 33.021595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334221, 35.685318, 33.053493>,  <25.938362, 35.663654, 33.106655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334221, 35.685318, 33.053493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143204, 0.311174, -0.939502,
		-0.009528, 0.948808, 0.315709,
		0.989647, 0.054163, -0.132908,
		26.631115, 35.701569, 33.013622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024658, 36.283390, 32.758625>,  <25.938362, 35.663654, 33.106655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024658, 36.283390, 32.758625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352741, 36.074486, 32.665245>,  <26.549591, 35.949142, 32.609219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352741, 36.074486, 32.665245>,  <26.024658, 36.283390, 32.758625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352741, 36.074486, 32.665245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023032, 0.377602, -0.925681,
		0.571599, 0.764630, 0.297684,
		0.820210, -0.522262, -0.233448,
		26.598804, 35.917809, 32.595211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483175, 36.755360, 32.486439>,  <26.024658, 36.283390, 32.758625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483175, 36.755360, 32.486439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571207, 36.389961, 32.349560>,  <26.624025, 36.170723, 32.267433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571207, 36.389961, 32.349560>,  <26.483175, 36.755360, 32.486439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571207, 36.389961, 32.349560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061192, 0.337179, -0.939450,
		0.973561, 0.227693, 0.018307,
		0.220079, -0.913491, -0.342197,
		26.637230, 36.115913, 32.246902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108494, 36.939281, 32.012184>,  <26.483175, 36.755360, 32.486439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108494, 36.939281, 32.012184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970919, 36.577663, 31.910669>,  <26.888374, 36.360691, 31.849760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970919, 36.577663, 31.910669>,  <27.108494, 36.939281, 32.012184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970919, 36.577663, 31.910669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015978, 0.275870, -0.961062,
		0.938857, -0.326490, -0.109327,
		-0.343937, -0.904046, -0.253786,
		26.867737, 36.306450, 31.834534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640179, 36.660049, 31.420883>,  <27.108494, 36.939281, 32.012184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640179, 36.660049, 31.420883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302240, 36.446575, 31.405811>,  <27.099478, 36.318489, 31.396769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302240, 36.446575, 31.405811>,  <27.640179, 36.660049, 31.420883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302240, 36.446575, 31.405811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034838, 0.125158, -0.991525,
		0.533877, -0.836371, -0.124331,
		-0.844844, -0.533684, -0.037682,
		27.048788, 36.286469, 31.394506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881277, 36.174595, 30.978401>,  <27.640179, 36.660049, 31.420883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881277, 36.174595, 30.978401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481644, 36.171272, 30.995192>,  <27.241863, 36.169281, 31.005266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481644, 36.171272, 30.995192>,  <27.881277, 36.174595, 30.978401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481644, 36.171272, 30.995192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042678, 0.123137, -0.991472,
		0.003059, -0.992355, -0.123379,
		-0.999084, -0.008299, 0.041975,
		27.181919, 36.168781, 31.007784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553951, 35.528923, 30.650322>,  <27.881277, 36.174595, 30.978401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553951, 35.528923, 30.650322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252657, 35.791927, 30.643131>,  <27.071880, 35.949730, 30.638817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252657, 35.791927, 30.643131>,  <27.553951, 35.528923, 30.650322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252657, 35.791927, 30.643131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075912, -0.114051, -0.990570,
		-0.653357, -0.744767, 0.135820,
		-0.753234, 0.657507, -0.017979,
		27.026686, 35.989178, 30.637737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970856, 35.267479, 30.183624>,  <27.553951, 35.528923, 30.650322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970856, 35.267479, 30.183624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936363, 35.664375, 30.219465>,  <26.915668, 35.902512, 30.240969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936363, 35.664375, 30.219465>,  <26.970856, 35.267479, 30.183624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936363, 35.664375, 30.219465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345250, 0.054602, -0.936921,
		-0.934541, -0.111725, 0.337862,
		-0.086229, 0.992238, 0.089601,
		26.910494, 35.962048, 30.246346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548658, 35.456470, 29.670998>,  <26.970856, 35.267479, 30.183624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548658, 35.456470, 29.670998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684853, 35.823971, 29.750957>,  <26.766569, 36.044472, 29.798933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684853, 35.823971, 29.750957>,  <26.548658, 35.456470, 29.670998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684853, 35.823971, 29.750957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229317, 0.287327, -0.929977,
		-0.911857, 0.270803, 0.308517,
		0.340486, 0.918754, 0.199902,
		26.786999, 36.099598, 29.810928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072676, 36.025875, 29.413668>,  <26.548658, 35.456470, 29.670998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072676, 36.025875, 29.413668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443634, 36.174492, 29.431093>,  <26.666208, 36.263660, 29.441547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443634, 36.174492, 29.431093>,  <26.072676, 36.025875, 29.413668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443634, 36.174492, 29.431093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026511, 0.181430, -0.983046,
		-0.373146, 0.910516, 0.178107,
		0.927394, 0.371542, 0.043561,
		26.721851, 36.285954, 29.444162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025232, 36.547497, 28.956747>,  <26.072676, 36.025875, 29.413668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025232, 36.547497, 28.956747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410780, 36.455811, 29.011026>,  <26.642109, 36.400799, 29.043594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410780, 36.455811, 29.011026>,  <26.025232, 36.547497, 28.956747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410780, 36.455811, 29.011026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153539, 0.061808, -0.986208,
		0.217671, 0.971410, 0.094769,
		0.963870, -0.229220, 0.135696,
		26.699942, 36.387043, 29.051735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353249, 37.107327, 28.573601>,  <26.025232, 36.547497, 28.956747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353249, 37.107327, 28.573601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635572, 36.826305, 28.609941>,  <26.804966, 36.657692, 28.631746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635572, 36.826305, 28.609941>,  <26.353249, 37.107327, 28.573601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635572, 36.826305, 28.609941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211392, 0.086472, -0.973569,
		0.676128, 0.706358, 0.209547,
		0.705808, -0.702553, 0.090852,
		26.847315, 36.615540, 28.637197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952749, 37.466534, 28.371418>,  <26.353249, 37.107327, 28.573601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952749, 37.466534, 28.371418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036549, 37.076542, 28.341703>,  <27.086828, 36.842545, 28.323874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036549, 37.076542, 28.341703>,  <26.952749, 37.466534, 28.371418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036549, 37.076542, 28.341703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512189, 0.174136, -0.841035,
		0.832931, 0.138145, 0.535857,
		0.209497, -0.974983, -0.074287,
		27.099398, 36.784046, 28.319418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600420, 37.457191, 28.135725>,  <26.952749, 37.466534, 28.371418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600420, 37.457191, 28.135725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519064, 37.073277, 28.058329>,  <27.470251, 36.842926, 28.011890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519064, 37.073277, 28.058329>,  <27.600420, 37.457191, 28.135725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519064, 37.073277, 28.058329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632617, 0.022009, -0.774152,
		0.747281, -0.279861, 0.602701,
		-0.203390, -0.959788, -0.193492,
		27.458046, 36.785339, 28.000280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217821, 37.066792, 28.002615>,  <27.600420, 37.457191, 28.135725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217821, 37.066792, 28.002615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941860, 36.850880, 27.809669>,  <27.776283, 36.721333, 27.693903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941860, 36.850880, 27.809669>,  <28.217821, 37.066792, 28.002615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941860, 36.850880, 27.809669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568955, 0.007672, -0.822333,
		0.447579, -0.841772, 0.301817,
		-0.689901, -0.539779, -0.482364,
		27.734890, 36.688946, 27.664961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572121, 36.643932, 27.700508>,  <28.217821, 37.066792, 28.002615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572121, 36.643932, 27.700508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230001, 36.642262, 27.493261>,  <28.024731, 36.641258, 27.368914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230001, 36.642262, 27.493261>,  <28.572121, 36.643932, 27.700508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230001, 36.642262, 27.493261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518136, -0.008149, -0.855260,
		-0.000646, -0.999958, 0.009136,
		-0.855298, -0.004181, -0.518119,
		27.973412, 36.641010, 27.337826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765873, 36.185787, 27.105846>,  <28.572121, 36.643932, 27.700508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765873, 36.185787, 27.105846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430748, 36.373100, 26.993572>,  <28.229673, 36.485489, 26.926207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430748, 36.373100, 26.993572>,  <28.765873, 36.185787, 27.105846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430748, 36.373100, 26.993572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339070, 0.043344, -0.939762,
		-0.427906, -0.882516, -0.195094,
		-0.837812, 0.468280, -0.280687,
		28.179405, 36.513584, 26.909367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449326, 35.788616, 26.522881>,  <28.765873, 36.185787, 27.105846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449326, 35.788616, 26.522881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295979, 36.155922, 26.483234>,  <28.203970, 36.376305, 26.459448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295979, 36.155922, 26.483234>,  <28.449326, 35.788616, 26.522881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295979, 36.155922, 26.483234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089508, -0.069869, -0.993532,
		-0.919249, -0.389757, -0.055407,
		-0.383365, 0.918263, -0.099113,
		28.180969, 36.431400, 26.453501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748711, 35.798256, 26.001902>,  <28.449326, 35.788616, 26.522881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748711, 35.798256, 26.001902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972036, 36.129131, 26.027340>,  <28.106031, 36.327656, 26.042603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972036, 36.129131, 26.027340>,  <27.748711, 35.798256, 26.001902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972036, 36.129131, 26.027340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009322, 0.070394, -0.997476,
		-0.829577, 0.557498, 0.031591,
		0.558315, 0.827188, 0.063594,
		28.139530, 36.377289, 26.046417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351564, 36.228371, 25.642241>,  <27.748711, 35.798256, 26.001902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351564, 36.228371, 25.642241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724831, 36.368984, 25.612236>,  <27.948792, 36.453350, 25.594233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724831, 36.368984, 25.612236>,  <27.351564, 36.228371, 25.642241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724831, 36.368984, 25.612236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100719, 0.055396, -0.993371,
		-0.345045, 0.934536, 0.087100,
		0.933166, 0.351531, -0.075011,
		28.004780, 36.474442, 25.589733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331173, 36.955711, 25.362246>,  <27.351564, 36.228371, 25.642241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331173, 36.955711, 25.362246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648411, 36.725506, 25.282461>,  <27.838753, 36.587383, 25.234591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648411, 36.725506, 25.282461>,  <27.331173, 36.955711, 25.362246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648411, 36.725506, 25.282461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192036, 0.074512, -0.978555,
		0.578033, 0.814391, -0.051424,
		0.793095, -0.575513, -0.199463,
		27.886339, 36.552853, 25.222622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610439, 37.459160, 24.976904>,  <27.331173, 36.955711, 25.362246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610439, 37.459160, 24.976904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958672, 37.397022, 24.790161>,  <28.167612, 37.359737, 24.678116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958672, 37.397022, 24.790161>,  <27.610439, 37.459160, 24.976904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958672, 37.397022, 24.790161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016849, -0.957705, 0.287257,
		-0.491734, -0.242215, -0.836379,
		0.870583, -0.155346, -0.466855,
		28.219847, 37.350418, 24.650105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423359, 38.040718, 25.338581>,  <27.610439, 37.459160, 24.976904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423359, 38.040718, 25.338581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749439, 38.271004, 25.363857>,  <27.945087, 38.409176, 25.379023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749439, 38.271004, 25.363857>,  <27.423359, 38.040718, 25.338581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749439, 38.271004, 25.363857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396317, -0.474935, -0.785729,
		-0.422348, 0.665571, -0.615335,
		0.815203, 0.575719, 0.063189,
		27.993999, 38.443718, 25.382814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581758, 38.135979, 24.612751>,  <27.423359, 38.040718, 25.338581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581758, 38.135979, 24.612751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892906, 38.238636, 24.842201>,  <28.079596, 38.300232, 24.979872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892906, 38.238636, 24.842201>,  <27.581758, 38.135979, 24.612751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892906, 38.238636, 24.842201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591494, -0.607317, -0.530378,
		0.212253, 0.751863, -0.624220,
		0.777871, 0.256648, 0.573628,
		28.126268, 38.315632, 25.014290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173784, 38.004181, 24.250271>,  <27.581758, 38.135979, 24.612751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173784, 38.004181, 24.250271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336891, 38.033886, 24.614296>,  <28.434755, 38.051708, 24.832710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336891, 38.033886, 24.614296>,  <28.173784, 38.004181, 24.250271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336891, 38.033886, 24.614296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788386, -0.531433, -0.309882,
		0.460624, 0.843839, -0.275249,
		0.407766, 0.074263, 0.910061,
		28.459221, 38.056164, 24.887314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837439, 38.268383, 24.291821>,  <28.173784, 38.004181, 24.250271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837439, 38.268383, 24.291821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861067, 38.075054, 24.641199>,  <28.875244, 37.959057, 24.850826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861067, 38.075054, 24.641199>,  <28.837439, 38.268383, 24.291821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861067, 38.075054, 24.641199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796987, -0.504033, -0.332809,
		0.601101, 0.715785, 0.355429,
		0.059071, -0.483324, 0.873446,
		28.878788, 37.930058, 24.903233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562513, 38.251083, 24.675053>,  <28.837439, 38.268383, 24.291821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562513, 38.251083, 24.675053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368809, 37.928219, 24.810099>,  <29.252586, 37.734501, 24.891127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368809, 37.928219, 24.810099>,  <29.562513, 38.251083, 24.675053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368809, 37.928219, 24.810099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789349, -0.569503, -0.229336,
		0.377384, 0.155438, 0.912919,
		-0.484262, -0.807159, 0.337616,
		29.223530, 37.686069, 24.911383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222601, 38.380341, 24.458946>,  <29.562513, 38.251083, 24.675053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222601, 38.380341, 24.458946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405636, 38.722168, 24.557196>,  <30.515457, 38.927265, 24.616146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405636, 38.722168, 24.557196>,  <30.222601, 38.380341, 24.458946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405636, 38.722168, 24.557196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065124, -0.243288, 0.967765,
		0.886778, -0.458831, -0.055672,
		0.457585, 0.854567, 0.245623,
		30.542912, 38.978539, 24.630882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695761, 38.260262, 24.982296>,  <30.222601, 38.380341, 24.458946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695761, 38.260262, 24.982296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628626, 38.649994, 25.042295>,  <30.588345, 38.883835, 25.078295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628626, 38.649994, 25.042295>,  <30.695761, 38.260262, 24.982296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628626, 38.649994, 25.042295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075810, -0.164465, 0.983465,
		0.982895, 0.153693, 0.101468,
		-0.167840, 0.974335, 0.150001,
		30.578274, 38.942295, 25.087296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088827, 38.521805, 25.470444>,  <30.695761, 38.260262, 24.982296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088827, 38.521805, 25.470444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799236, 38.797684, 25.465176>,  <30.625483, 38.963211, 25.462015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799236, 38.797684, 25.465176>,  <31.088827, 38.521805, 25.470444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799236, 38.797684, 25.465176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021167, -0.003127, 0.999771,
		0.689500, 0.724090, 0.016863,
		-0.723977, 0.689699, -0.013170,
		30.582043, 39.004593, 25.461224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234484, 38.895325, 26.027067>,  <31.088827, 38.521805, 25.470444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234484, 38.895325, 26.027067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852692, 38.984119, 25.947380>,  <30.623615, 39.037395, 25.899569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852692, 38.984119, 25.947380>,  <31.234484, 38.895325, 26.027067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852692, 38.984119, 25.947380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210687, -0.029005, 0.977123,
		0.211129, 0.974618, 0.074454,
		-0.954482, 0.221985, -0.199216,
		30.566347, 39.050716, 25.887615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030220, 39.452358, 26.425161>,  <31.234484, 38.895325, 26.027067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030220, 39.452358, 26.425161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697206, 39.254578, 26.325241>,  <30.497398, 39.135910, 26.265289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697206, 39.254578, 26.325241>,  <31.030220, 39.452358, 26.425161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697206, 39.254578, 26.325241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196941, -0.157296, 0.967715,
		-0.517782, 0.854854, 0.033577,
		-0.832536, -0.494453, -0.249801,
		30.447445, 39.106243, 26.250301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520800, 39.757565, 26.695436>,  <31.030220, 39.452358, 26.425161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520800, 39.757565, 26.695436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337139, 39.409428, 26.624247>,  <30.226942, 39.200546, 26.581533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337139, 39.409428, 26.624247>,  <30.520800, 39.757565, 26.695436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337139, 39.409428, 26.624247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363184, 0.001075, 0.931717,
		-0.810725, 0.492438, -0.316590,
		-0.459153, -0.870347, -0.177975,
		30.199392, 39.148323, 26.570854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981497, 39.939156, 27.025295>,  <30.520800, 39.757565, 26.695436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981497, 39.939156, 27.025295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998674, 39.539871, 27.008680>,  <30.008982, 39.300301, 26.998711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998674, 39.539871, 27.008680>,  <29.981497, 39.939156, 27.025295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998674, 39.539871, 27.008680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276521, -0.051827, 0.959609,
		-0.960048, -0.029723, -0.278252,
		0.042943, -0.998214, -0.041538,
		30.011557, 39.240406, 26.996220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483299, 39.680038, 27.521128>,  <29.981497, 39.939156, 27.025295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483299, 39.680038, 27.521128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718529, 39.362488, 27.459249>,  <29.859667, 39.171959, 27.422123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718529, 39.362488, 27.459249>,  <29.483299, 39.680038, 27.521128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718529, 39.362488, 27.459249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371192, -0.434839, 0.820446,
		-0.718601, -0.425059, -0.550398,
		0.588072, -0.793876, -0.154697,
		29.894951, 39.124325, 27.412840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063227, 39.099201, 27.664009>,  <29.483299, 39.680038, 27.521128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063227, 39.099201, 27.664009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441082, 38.970604, 27.690237>,  <29.667795, 38.893444, 27.705973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441082, 38.970604, 27.690237>,  <29.063227, 39.099201, 27.664009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441082, 38.970604, 27.690237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192094, -0.379881, 0.904870,
		-0.266001, -0.867371, -0.420608,
		0.944639, -0.321493, 0.065568,
		29.724474, 38.874157, 27.709908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970566, 38.435303, 27.998747>,  <29.063227, 39.099201, 27.664009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970566, 38.435303, 27.998747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352171, 38.543663, 28.050085>,  <29.581135, 38.608677, 28.080889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352171, 38.543663, 28.050085>,  <28.970566, 38.435303, 27.998747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352171, 38.543663, 28.050085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043147, -0.299606, 0.953087,
		0.296641, -0.914796, -0.274140,
		0.954014, 0.270896, 0.128346,
		29.638374, 38.624931, 28.088589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292780, 37.855667, 28.341503>,  <28.970566, 38.435303, 27.998747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292780, 37.855667, 28.341503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515671, 38.181816, 28.404314>,  <29.649405, 38.377506, 28.442001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515671, 38.181816, 28.404314>,  <29.292780, 37.855667, 28.341503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515671, 38.181816, 28.404314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183105, -0.305113, 0.934547,
		0.809920, -0.492002, -0.319317,
		0.557227, 0.815377, 0.157029,
		29.682838, 38.426430, 28.451424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793640, 37.443600, 28.657114>,  <29.292780, 37.855667, 28.341503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793640, 37.443600, 28.657114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840925, 37.823227, 28.773937>,  <29.869297, 38.051003, 28.844032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840925, 37.823227, 28.773937>,  <29.793640, 37.443600, 28.657114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840925, 37.823227, 28.773937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265692, -0.313629, 0.911616,
		0.956783, -0.030168, -0.289234,
		0.118214, 0.949066, 0.292060,
		29.876389, 38.107948, 28.861555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427809, 37.463478, 28.979084>,  <29.793640, 37.443600, 28.657114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427809, 37.463478, 28.979084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217089, 37.772522, 29.120821>,  <30.090656, 37.957947, 29.205864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217089, 37.772522, 29.120821>,  <30.427809, 37.463478, 28.979084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217089, 37.772522, 29.120821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129878, -0.338817, 0.931845,
		0.840008, 0.536917, 0.078144,
		-0.526800, 0.772608, 0.354343,
		30.059048, 38.004303, 29.227123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750410, 37.633087, 29.624176>,  <30.427809, 37.463478, 28.979084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750410, 37.633087, 29.624176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404682, 37.834209, 29.628796>,  <30.197245, 37.954884, 29.631567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404682, 37.834209, 29.628796>,  <30.750410, 37.633087, 29.624176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404682, 37.834209, 29.628796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109118, -0.209890, 0.971617,
		0.490962, 0.838528, 0.236277,
		-0.864320, 0.502809, 0.011550,
		30.145386, 37.985054, 29.632261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821859, 38.069412, 30.183750>,  <30.750410, 37.633087, 29.624176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821859, 38.069412, 30.183750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435003, 38.003746, 30.106098>,  <30.202888, 37.964348, 30.059507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435003, 38.003746, 30.106098>,  <30.821859, 38.069412, 30.183750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435003, 38.003746, 30.106098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108449, -0.424240, 0.899032,
		-0.229948, 0.890545, 0.392497,
		-0.967141, -0.164165, -0.194132,
		30.144861, 37.954498, 30.047859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380899, 38.277336, 30.821926>,  <30.821859, 38.069412, 30.183750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380899, 38.277336, 30.821926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159756, 38.017937, 30.612625>,  <30.027069, 37.862297, 30.487043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159756, 38.017937, 30.612625>,  <30.380899, 38.277336, 30.821926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159756, 38.017937, 30.612625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221351, -0.491093, 0.842515,
		-0.803336, 0.581616, 0.127960,
		-0.552861, -0.648498, -0.523254,
		29.993898, 37.823387, 30.455648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745583, 38.285992, 31.236750>,  <30.380899, 38.277336, 30.821926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745583, 38.285992, 31.236750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733568, 37.959057, 31.006599>,  <29.726360, 37.762897, 30.868509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733568, 37.959057, 31.006599>,  <29.745583, 38.285992, 31.236750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733568, 37.959057, 31.006599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055855, -0.573365, 0.817394,
		-0.997987, 0.056688, -0.028431,
		-0.030035, -0.817337, -0.575377,
		29.724558, 37.713856, 30.833986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136335, 37.952347, 31.431932>,  <29.745583, 38.285992, 31.236750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136335, 37.952347, 31.431932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382563, 37.683887, 31.266699>,  <29.530300, 37.522812, 31.167559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382563, 37.683887, 31.266699>,  <29.136335, 37.952347, 31.431932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382563, 37.683887, 31.266699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308071, -0.687382, 0.657722,
		-0.725373, -0.277615, -0.629892,
		0.615570, -0.671145, -0.413083,
		29.567234, 37.482544, 31.142775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755829, 37.345280, 31.261545>,  <29.136335, 37.952347, 31.431932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755829, 37.345280, 31.261545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143105, 37.246174, 31.275551>,  <29.375469, 37.186710, 31.283955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143105, 37.246174, 31.275551>,  <28.755829, 37.345280, 31.261545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143105, 37.246174, 31.275551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224978, -0.800686, 0.555235,
		-0.109532, -0.545449, -0.830956,
		0.968188, -0.247763, 0.035013,
		29.433561, 37.171844, 31.286055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811907, 36.569092, 31.232094>,  <28.755829, 37.345280, 31.261545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811907, 36.569092, 31.232094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158764, 36.647507, 31.415236>,  <29.366879, 36.694557, 31.525120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158764, 36.647507, 31.415236>,  <28.811907, 36.569092, 31.232094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158764, 36.647507, 31.415236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189143, -0.720791, 0.666847,
		0.460746, -0.664852, -0.587949,
		0.867144, 0.196041, 0.457854,
		29.418907, 36.706318, 31.552591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179817, 35.900230, 31.272842>,  <28.811907, 36.569092, 31.232094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179817, 35.900230, 31.272842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398476, 36.113407, 31.531191>,  <29.529671, 36.241314, 31.686199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398476, 36.113407, 31.531191>,  <29.179817, 35.900230, 31.272842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398476, 36.113407, 31.531191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141192, -0.701607, 0.698436,
		0.825374, -0.472990, -0.308284,
		0.546647, 0.532943, 0.645870,
		29.562469, 36.273289, 31.724953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590683, 35.341534, 31.668629>,  <29.179817, 35.900230, 31.272842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590683, 35.341534, 31.668629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594576, 35.683304, 31.876419>,  <29.596912, 35.888367, 32.001095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594576, 35.683304, 31.876419>,  <29.590683, 35.341534, 31.668629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594576, 35.683304, 31.876419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046086, -0.519334, 0.853328,
		0.998890, 0.015636, -0.044432,
		0.009732, 0.854428, 0.519478,
		29.597496, 35.939632, 32.032261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203718, 35.368084, 32.153011>,  <29.590683, 35.341534, 31.668629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203718, 35.368084, 32.153011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915146, 35.605572, 32.295582>,  <29.742002, 35.748062, 32.381126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915146, 35.605572, 32.295582>,  <30.203718, 35.368084, 32.153011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915146, 35.605572, 32.295582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054431, -0.464499, 0.883899,
		0.690346, 0.657071, 0.302787,
		-0.721429, 0.593715, 0.356430,
		29.698717, 35.783688, 32.402512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420738, 35.419903, 32.835983>,  <30.203718, 35.368084, 32.153011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420738, 35.419903, 32.835983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049908, 35.569366, 32.848061>,  <29.827410, 35.659042, 32.855305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049908, 35.569366, 32.848061>,  <30.420738, 35.419903, 32.835983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049908, 35.569366, 32.848061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120562, -0.373445, 0.919784,
		0.354957, 0.849070, 0.391261,
		-0.927076, 0.373655, 0.030191,
		29.771786, 35.681461, 32.857117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844112, 35.045696, 32.262554>,  <30.420738, 35.419903, 32.835983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844112, 35.045696, 32.262554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582106, 34.935974, 31.980927>,  <30.424902, 34.870140, 31.811951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582106, 34.935974, 31.980927>,  <30.844112, 35.045696, 32.262554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582106, 34.935974, 31.980927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617405, 0.342889, -0.707982,
		0.435620, -0.898434, -0.055240,
		-0.655016, -0.274306, -0.704067,
		30.385601, 34.853683, 31.769707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103094, 34.697056, 31.730658>,  <30.844112, 35.045696, 32.262554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103094, 34.697056, 31.730658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087362, 35.034790, 31.516907>,  <31.077923, 35.237431, 31.388657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087362, 35.034790, 31.516907>,  <31.103094, 34.697056, 31.730658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087362, 35.034790, 31.516907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610479, 0.443679, 0.656097,
		0.791055, -0.300423, -0.532896,
		-0.039328, 0.844331, -0.534377,
		31.075563, 35.288090, 31.356594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844751, 34.979446, 31.675964>,  <31.103094, 34.697056, 31.730658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844751, 34.979446, 31.675964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540956, 35.238899, 31.656158>,  <31.358679, 35.394573, 31.644276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540956, 35.238899, 31.656158>,  <31.844751, 34.979446, 31.675964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540956, 35.238899, 31.656158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505847, 0.636723, 0.581982,
		0.409020, 0.416962, -0.811693,
		-0.759488, 0.648634, -0.049513,
		31.313110, 35.433491, 31.641304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014862, 35.672394, 31.422428>,  <31.844751, 34.979446, 31.675964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014862, 35.672394, 31.422428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718704, 35.680000, 31.691189>,  <31.541010, 35.684566, 31.852446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718704, 35.680000, 31.691189>,  <32.014862, 35.672394, 31.422428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718704, 35.680000, 31.691189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521776, 0.646431, 0.556666,
		-0.423752, 0.762735, -0.488538,
		-0.740395, 0.019019, 0.671903,
		31.496586, 35.685707, 31.892759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921423, 36.338387, 31.611784>,  <32.014862, 35.672394, 31.422428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921423, 36.338387, 31.611784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833755, 36.102638, 31.922812>,  <31.781155, 35.961189, 32.109428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833755, 36.102638, 31.922812>,  <31.921423, 36.338387, 31.611784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833755, 36.102638, 31.922812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345892, 0.698250, 0.626742,
		-0.912318, 0.406317, 0.050823,
		-0.219168, -0.589367, 0.777568,
		31.768005, 35.925827, 32.156082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517029, 36.742001, 32.142216>,  <31.921423, 36.338387, 31.611784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517029, 36.742001, 32.142216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736059, 36.431934, 32.268246>,  <31.867477, 36.245895, 32.343864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736059, 36.431934, 32.268246>,  <31.517029, 36.742001, 32.142216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736059, 36.431934, 32.268246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519690, 0.610171, 0.598008,
		-0.655805, -0.163717, 0.736964,
		0.547578, -0.775170, 0.315071,
		31.900333, 36.199383, 32.362766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528418, 36.634666, 32.930592>,  <31.517029, 36.742001, 32.142216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528418, 36.634666, 32.930592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854395, 36.483688, 32.754681>,  <32.049980, 36.393101, 32.649136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854395, 36.483688, 32.754681>,  <31.528418, 36.634666, 32.930592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854395, 36.483688, 32.754681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573220, 0.413221, 0.707578,
		-0.085344, -0.828726, 0.553109,
		0.814945, -0.377441, -0.439777,
		32.098877, 36.370457, 32.622749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966393, 36.442814, 33.465748>,  <31.528418, 36.634666, 32.930592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966393, 36.442814, 33.465748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202763, 36.447803, 33.143097>,  <32.344585, 36.450798, 32.949505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202763, 36.447803, 33.143097>,  <31.966393, 36.442814, 33.465748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202763, 36.447803, 33.143097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657967, 0.571090, 0.490851,
		0.466783, -0.820793, 0.329262,
		0.590925, 0.012478, -0.806630,
		32.380039, 36.451546, 32.901108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388309, 35.812328, 33.643814>,  <31.966393, 36.442814, 33.465748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388309, 35.812328, 33.643814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574730, 36.064575, 33.395584>,  <32.686584, 36.215923, 33.246647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574730, 36.064575, 33.395584>,  <32.388309, 35.812328, 33.643814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574730, 36.064575, 33.395584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635149, 0.249830, 0.730870,
		0.615938, -0.734784, -0.284102,
		0.466054, 0.630617, -0.620577,
		32.714546, 36.253761, 33.209412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157848, 35.688137, 33.693146>,  <32.388309, 35.812328, 33.643814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157848, 35.688137, 33.693146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126781, 36.056915, 33.541367>,  <33.108143, 36.278183, 33.450298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126781, 36.056915, 33.541367>,  <33.157848, 35.688137, 33.693146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126781, 36.056915, 33.541367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718175, 0.315721, 0.620117,
		0.691515, -0.224346, -0.686641,
		-0.077666, 0.921949, -0.379445,
		33.103481, 36.333500, 33.427532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835388, 35.809521, 33.633537>,  <33.157848, 35.688137, 33.693146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835388, 35.809521, 33.633537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652599, 36.163097, 33.593891>,  <33.542927, 36.375244, 33.570103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652599, 36.163097, 33.593891>,  <33.835388, 35.809521, 33.633537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652599, 36.163097, 33.593891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685382, 0.420952, 0.594181,
		0.566944, 0.203593, -0.798201,
		-0.456976, 0.883940, -0.099117,
		33.515507, 36.428280, 33.564156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276505, 36.360630, 33.418388>,  <33.835388, 35.809521, 33.633537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276505, 36.360630, 33.418388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979332, 36.575779, 33.577766>,  <33.801029, 36.704868, 33.673393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979332, 36.575779, 33.577766>,  <34.276505, 36.360630, 33.418388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979332, 36.575779, 33.577766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654232, 0.457583, 0.602162,
		0.141564, 0.708036, -0.691842,
		-0.742927, 0.537869, 0.398442,
		33.756454, 36.737141, 33.697300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543121, 37.000610, 33.397583>,  <34.276505, 36.360630, 33.418388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543121, 37.000610, 33.397583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244831, 37.007656, 33.663990>,  <34.065857, 37.011883, 33.823833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244831, 37.007656, 33.663990>,  <34.543121, 37.000610, 33.397583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244831, 37.007656, 33.663990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625544, 0.362571, 0.690823,
		-0.229308, 0.931789, -0.281400,
		-0.745729, 0.017617, 0.666016,
		34.021111, 37.012939, 33.863796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699982, 37.611534, 33.699440>,  <34.543121, 37.000610, 33.397583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699982, 37.611534, 33.699440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454613, 37.416245, 33.947746>,  <34.307392, 37.299072, 34.096729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454613, 37.416245, 33.947746>,  <34.699982, 37.611534, 33.699440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454613, 37.416245, 33.947746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458618, 0.419694, 0.783280,
		-0.642945, 0.765178, -0.033543,
		-0.613426, -0.488222, 0.620764,
		34.270584, 37.269779, 34.133976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471569, 38.084808, 34.081608>,  <34.699982, 37.611534, 33.699440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471569, 38.084808, 34.081608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432022, 37.745564, 34.289814>,  <34.408295, 37.542019, 34.414738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432022, 37.745564, 34.289814>,  <34.471569, 38.084808, 34.081608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432022, 37.745564, 34.289814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333355, 0.464629, 0.820363,
		-0.937603, 0.254623, 0.236785,
		-0.098866, -0.848108, 0.520517,
		34.402363, 37.491131, 34.445969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170425, 38.341381, 34.684456>,  <34.471569, 38.084808, 34.081608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170425, 38.341381, 34.684456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327980, 37.980835, 34.756439>,  <34.422512, 37.764507, 34.799629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327980, 37.980835, 34.756439>,  <34.170425, 38.341381, 34.684456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327980, 37.980835, 34.756439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270206, 0.300688, 0.914645,
		-0.878545, -0.311641, 0.361993,
		0.393888, -0.901369, 0.179961,
		34.446148, 37.710423, 34.810429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909714, 38.053902, 35.273209>,  <34.170425, 38.341381, 34.684456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909714, 38.053902, 35.273209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267204, 37.878357, 35.236015>,  <34.481701, 37.773029, 35.213699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267204, 37.878357, 35.236015>,  <33.909714, 38.053902, 35.273209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267204, 37.878357, 35.236015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230419, 0.271239, 0.934525,
		-0.384907, -0.856638, 0.343537,
		0.893730, -0.438863, -0.092983,
		34.535324, 37.746696, 35.208118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109249, 38.026424, 35.899208>,  <33.909714, 38.053902, 35.273209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109249, 38.026424, 35.899208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460838, 37.893459, 35.762447>,  <34.671791, 37.813679, 35.680389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460838, 37.893459, 35.762447>,  <34.109249, 38.026424, 35.899208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460838, 37.893459, 35.762447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410851, 0.163935, 0.896843,
		-0.242075, -0.928776, 0.280669,
		0.878977, -0.332416, -0.341904,
		34.724533, 37.793736, 35.659878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411102, 37.539440, 36.473385>,  <34.109249, 38.026424, 35.899208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411102, 37.539440, 36.473385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691273, 37.679718, 36.224735>,  <34.859375, 37.763885, 36.075546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691273, 37.679718, 36.224735>,  <34.411102, 37.539440, 36.473385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691273, 37.679718, 36.224735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556675, 0.276645, 0.783314,
		0.446677, -0.894695, -0.001457,
		0.700423, 0.350699, -0.621625,
		34.901402, 37.784927, 36.038246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020412, 37.132290, 36.533871>,  <34.411102, 37.539440, 36.473385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020412, 37.132290, 36.533871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117989, 37.500526, 36.411877>,  <35.176533, 37.721466, 36.338680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117989, 37.500526, 36.411877>,  <35.020412, 37.132290, 36.533871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117989, 37.500526, 36.411877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471174, 0.162364, 0.866968,
		0.847637, -0.355186, -0.394150,
		0.243939, 0.920587, -0.304980,
		35.191170, 37.776703, 36.320381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744244, 37.094204, 36.598068>,  <35.020412, 37.132290, 36.533871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744244, 37.094204, 36.598068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628750, 37.476620, 36.577572>,  <35.559452, 37.706070, 36.565273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628750, 37.476620, 36.577572>,  <35.744244, 37.094204, 36.598068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628750, 37.476620, 36.577572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320871, 0.147057, 0.935637,
		0.902039, 0.253707, -0.349225,
		-0.288734, 0.956037, -0.051244,
		35.542130, 37.763432, 36.562199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159748, 37.374592, 37.011368>,  <35.744244, 37.094204, 36.598068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159748, 37.374592, 37.011368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870323, 37.650681, 37.014210>,  <35.696671, 37.816334, 37.015915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870323, 37.650681, 37.014210>,  <36.159748, 37.374592, 37.011368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870323, 37.650681, 37.014210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150443, 0.147641, 0.977532,
		0.673669, 0.708371, -0.210666,
		-0.723559, 0.690226, 0.007109,
		35.653255, 37.857750, 37.016342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335339, 38.010483, 37.384361>,  <36.159748, 37.374592, 37.011368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335339, 38.010483, 37.384361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936535, 38.008423, 37.415203>,  <35.697254, 38.007187, 37.433708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936535, 38.008423, 37.415203>,  <36.335339, 38.010483, 37.384361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936535, 38.008423, 37.415203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072065, 0.298273, 0.951756,
		-0.027905, 0.954467, -0.297010,
		-0.997009, -0.005155, 0.077107,
		35.637432, 38.006878, 37.438335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234673, 38.407936, 37.984161>,  <36.335339, 38.010483, 37.384361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234673, 38.407936, 37.984161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864220, 38.263752, 37.939701>,  <35.641949, 38.177242, 37.913025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864220, 38.263752, 37.939701>,  <36.234673, 38.407936, 37.984161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864220, 38.263752, 37.939701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211089, 0.251051, 0.944677,
		-0.312611, 0.898356, -0.308594,
		-0.926129, -0.360457, -0.111152,
		35.586380, 38.155613, 37.906357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738300, 38.945335, 38.211445>,  <36.234673, 38.407936, 37.984161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738300, 38.945335, 38.211445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539383, 38.598362, 38.217754>,  <35.420033, 38.390175, 38.221542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539383, 38.598362, 38.217754>,  <35.738300, 38.945335, 38.211445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539383, 38.598362, 38.217754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278517, 0.176841, 0.944010,
		-0.821661, 0.465057, -0.329538,
		-0.497295, -0.867438, 0.015777,
		35.390194, 38.338131, 38.222488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075596, 39.012123, 38.425659>,  <35.738300, 38.945335, 38.211445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075596, 39.012123, 38.425659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097221, 38.619579, 38.499416>,  <35.110199, 38.384052, 38.543671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097221, 38.619579, 38.499416>,  <35.075596, 39.012123, 38.425659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097221, 38.619579, 38.499416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499668, 0.133294, 0.855900,
		-0.864528, -0.138412, -0.483149,
		0.054066, -0.981363, 0.184397,
		35.113441, 38.325169, 38.554737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381985, 38.876724, 38.534328>,  <35.075596, 39.012123, 38.425659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381985, 38.876724, 38.534328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604549, 38.589752, 38.701992>,  <34.738087, 38.417568, 38.802589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604549, 38.589752, 38.701992>,  <34.381985, 38.876724, 38.534328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604549, 38.589752, 38.701992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539644, 0.071574, 0.838845,
		-0.631818, -0.692939, -0.347336,
		0.556408, -0.717435, 0.419162,
		34.771473, 38.374523, 38.827740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905460, 38.341656, 38.781464>,  <34.381985, 38.876724, 38.534328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905460, 38.341656, 38.781464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242737, 38.279545, 38.987347>,  <34.445103, 38.242279, 39.110874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242737, 38.279545, 38.987347>,  <33.905460, 38.341656, 38.781464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242737, 38.279545, 38.987347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518106, 0.020889, 0.855061,
		-0.143525, -0.987650, -0.062838,
		0.843188, -0.155279, 0.514706,
		34.495693, 38.232964, 39.141758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742996, 37.877609, 39.348095>,  <33.905460, 38.341656, 38.781464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742996, 37.877609, 39.348095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095329, 38.023243, 39.469139>,  <34.306728, 38.110626, 39.541767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095329, 38.023243, 39.469139>,  <33.742996, 37.877609, 39.348095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095329, 38.023243, 39.469139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344176, 0.053555, 0.937377,
		0.325084, -0.929822, 0.172484,
		0.880831, 0.364091, 0.302613,
		34.359577, 38.132469, 39.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974934, 37.409691, 39.863361>,  <33.742996, 37.877609, 39.348095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974934, 37.409691, 39.863361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107220, 37.782829, 39.920544>,  <34.186592, 38.006710, 39.954853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107220, 37.782829, 39.920544>,  <33.974934, 37.409691, 39.863361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107220, 37.782829, 39.920544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460394, 0.027247, 0.887296,
		0.823813, -0.359253, 0.438486,
		0.330711, 0.932843, 0.142952,
		34.206432, 38.062683, 39.963428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025715, 37.521301, 40.618870>,  <33.974934, 37.409691, 39.863361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025715, 37.521301, 40.618870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045082, 37.903687, 40.503082>,  <34.056702, 38.133118, 40.433609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045082, 37.903687, 40.503082>,  <34.025715, 37.521301, 40.618870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045082, 37.903687, 40.503082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490600, 0.275197, 0.826788,
		0.870039, 0.101983, 0.482319,
		0.048415, 0.955963, -0.289465,
		34.059608, 38.190475, 40.416245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167683, 37.778244, 41.244648>,  <34.025715, 37.521301, 40.618870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167683, 37.778244, 41.244648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087059, 38.103554, 41.026306>,  <34.038685, 38.298740, 40.895302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087059, 38.103554, 41.026306>,  <34.167683, 37.778244, 41.244648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087059, 38.103554, 41.026306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541761, 0.371717, 0.753871,
		0.816007, 0.447675, 0.365676,
		-0.201561, 0.813273, -0.545857,
		34.026592, 38.347534, 40.862549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455280, 38.257549, 41.656624>,  <34.167683, 37.778244, 41.244648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455280, 38.257549, 41.656624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189178, 38.426109, 41.410091>,  <34.029518, 38.527245, 41.262173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189178, 38.426109, 41.410091>,  <34.455280, 38.257549, 41.656624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189178, 38.426109, 41.410091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237300, 0.663352, 0.709685,
		0.707904, 0.618375, -0.341298,
		-0.665252, 0.421399, -0.616330,
		33.989601, 38.552528, 41.225193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476971, 38.972290, 41.687450>,  <34.455280, 38.257549, 41.656624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476971, 38.972290, 41.687450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111916, 38.899544, 41.541016>,  <33.892883, 38.855896, 41.453156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111916, 38.899544, 41.541016>,  <34.476971, 38.972290, 41.687450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111916, 38.899544, 41.541016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386871, 0.673486, 0.629879,
		0.132006, 0.716480, -0.685005,
		-0.912636, -0.181861, -0.366090,
		33.838123, 38.844986, 41.431190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151493, 39.623257, 41.610756>,  <34.476971, 38.972290, 41.687450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151493, 39.623257, 41.610756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871487, 39.338108, 41.627655>,  <33.703484, 39.167019, 41.637794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871487, 39.338108, 41.627655>,  <34.151493, 39.623257, 41.610756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871487, 39.338108, 41.627655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498807, 0.530432, 0.685444,
		-0.511046, 0.458749, -0.726899,
		-0.700017, -0.712876, 0.042247,
		33.661480, 39.124245, 41.640327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483124, 39.854092, 41.367962>,  <34.151493, 39.623257, 41.610756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483124, 39.854092, 41.367962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432026, 39.554001, 41.627453>,  <33.401367, 39.373947, 41.783146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432026, 39.554001, 41.627453>,  <33.483124, 39.854092, 41.367962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432026, 39.554001, 41.627453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393313, 0.638772, 0.661267,
		-0.910487, -0.170681, -0.376670,
		-0.127741, -0.750225, 0.648726,
		33.393703, 39.328934, 41.822071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863056, 40.070515, 41.771442>,  <33.483124, 39.854092, 41.367962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863056, 40.070515, 41.771442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987835, 39.766911, 42.000034>,  <33.062702, 39.584747, 42.137188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987835, 39.766911, 42.000034>,  <32.863056, 40.070515, 41.771442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987835, 39.766911, 42.000034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491135, 0.386074, 0.780854,
		-0.813311, -0.524262, -0.252341,
		0.311950, -0.759011, 0.571481,
		33.081421, 39.539207, 42.171478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263973, 39.819962, 42.181431>,  <32.863056, 40.070515, 41.771442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263973, 39.819962, 42.181431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588135, 39.720692, 42.393719>,  <32.782631, 39.661129, 42.521091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588135, 39.720692, 42.393719>,  <32.263973, 39.819962, 42.181431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588135, 39.720692, 42.393719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438161, 0.344611, 0.830216,
		-0.388928, -0.905347, 0.170534,
		0.810401, -0.248173, 0.530717,
		32.831257, 39.646240, 42.552933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055054, 39.552292, 42.868782>,  <32.263973, 39.819962, 42.181431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055054, 39.552292, 42.868782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440517, 39.636917, 42.934021>,  <32.671795, 39.687695, 42.973164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440517, 39.636917, 42.934021>,  <32.055054, 39.552292, 42.868782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440517, 39.636917, 42.934021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205053, 0.194517, 0.959227,
		0.171198, -0.957815, 0.230828,
		0.963662, 0.211550, 0.163102,
		32.729614, 39.700386, 42.982952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056610, 39.360817, 43.571945>,  <32.055054, 39.552292, 42.868782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056610, 39.360817, 43.571945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385754, 39.576180, 43.499256>,  <32.583241, 39.705399, 43.455643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385754, 39.576180, 43.499256>,  <32.056610, 39.360817, 43.571945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385754, 39.576180, 43.499256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069465, 0.222090, 0.972549,
		0.563989, -0.812890, 0.145347,
		0.822856, 0.538410, -0.181723,
		32.632610, 39.737701, 43.444740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517475, 39.139393, 44.062416>,  <32.056610, 39.360817, 43.571945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517475, 39.139393, 44.062416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603745, 39.508762, 43.935440>,  <32.655506, 39.730385, 43.859253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603745, 39.508762, 43.935440>,  <32.517475, 39.139393, 44.062416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603745, 39.508762, 43.935440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205364, 0.360714, 0.909786,
		0.954626, -0.131024, 0.267434,
		0.215671, 0.923427, -0.317439,
		32.668446, 39.785789, 43.840210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973427, 39.464611, 44.594513>,  <32.517475, 39.139393, 44.062416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973427, 39.464611, 44.594513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784767, 39.754871, 44.394123>,  <32.671570, 39.929028, 44.273888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784767, 39.754871, 44.394123>,  <32.973427, 39.464611, 44.594513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784767, 39.754871, 44.394123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190885, 0.470644, 0.861428,
		0.860876, 0.501923, -0.083464,
		-0.471653, 0.725650, -0.500976,
		32.643272, 39.972565, 44.243832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322666, 40.116295, 44.852432>,  <32.973427, 39.464611, 44.594513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322666, 40.116295, 44.852432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953964, 40.206013, 44.725906>,  <32.732742, 40.259842, 44.649990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953964, 40.206013, 44.725906>,  <33.322666, 40.116295, 44.852432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953964, 40.206013, 44.725906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123186, 0.604111, 0.787322,
		0.367681, 0.764685, -0.529214,
		-0.921757, 0.224291, -0.316319,
		32.677437, 40.273300, 44.631012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231518, 40.742199, 45.107933>,  <33.322666, 40.116295, 44.852432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231518, 40.742199, 45.107933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862915, 40.657391, 44.977779>,  <32.641754, 40.606506, 44.899685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862915, 40.657391, 44.977779>,  <33.231518, 40.742199, 45.107933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862915, 40.657391, 44.977779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381630, 0.649734, 0.657423,
		0.072027, 0.729995, -0.679646,
		-0.921505, -0.212021, -0.325386,
		32.586464, 40.593784, 44.880165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878208, 41.323139, 44.916622>,  <33.231518, 40.742199, 45.107933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878208, 41.323139, 44.916622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602730, 41.058388, 45.035019>,  <32.437443, 40.899536, 45.106056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602730, 41.058388, 45.035019>,  <32.878208, 41.323139, 44.916622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602730, 41.058388, 45.035019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419566, 0.696751, 0.581810,
		-0.591321, 0.276503, -0.757553,
		-0.688697, -0.661880, 0.295992,
		32.396122, 40.859825, 45.123817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315983, 41.690136, 45.013184>,  <32.878208, 41.323139, 44.916622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315983, 41.690136, 45.013184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186268, 41.344017, 45.166073>,  <32.108440, 41.136345, 45.257805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186268, 41.344017, 45.166073>,  <32.315983, 41.690136, 45.013184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186268, 41.344017, 45.166073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471358, 0.498133, 0.727794,
		-0.820159, 0.055849, -0.569404,
		-0.324286, -0.865300, 0.382223,
		32.088982, 41.084427, 45.280739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623150, 41.868980, 45.253414>,  <32.315983, 41.690136, 45.013184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623150, 41.868980, 45.253414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754230, 41.550228, 45.456429>,  <31.832878, 41.358978, 45.578239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754230, 41.550228, 45.456429>,  <31.623150, 41.868980, 45.253414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754230, 41.550228, 45.456429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269912, 0.435848, 0.858594,
		-0.905406, -0.418352, -0.072260,
		0.327700, -0.796880, 0.507538,
		31.852541, 41.311165, 45.608688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120815, 41.579704, 45.719833>,  <31.623150, 41.868980, 45.253414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120815, 41.579704, 45.719833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494028, 41.519238, 45.850433>,  <31.717955, 41.482960, 45.928795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494028, 41.519238, 45.850433>,  <31.120815, 41.579704, 45.719833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494028, 41.519238, 45.850433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192708, 0.556367, 0.808282,
		-0.303839, -0.817071, 0.489976,
		0.933030, -0.151165, 0.326502,
		31.773937, 41.473888, 45.948383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374350, 41.448353, 46.431576>,  <31.120815, 41.579704, 45.719833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374350, 41.448353, 46.431576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523659, 41.086964, 46.515873>,  <31.613245, 40.870132, 46.566452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523659, 41.086964, 46.515873>,  <31.374350, 41.448353, 46.431576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523659, 41.086964, 46.515873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313239, 0.336556, 0.888038,
		-0.873240, -0.265469, 0.408629,
		0.373273, -0.903469, 0.210738,
		31.635641, 40.815922, 46.579094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156427, 41.176746, 47.117661>,  <31.374350, 41.448353, 46.431576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156427, 41.176746, 47.117661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515673, 41.036198, 47.011887>,  <31.731220, 40.951866, 46.948421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515673, 41.036198, 47.011887>,  <31.156427, 41.176746, 47.117661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515673, 41.036198, 47.011887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387505, 0.348034, 0.853646,
		-0.207918, -0.869142, 0.448735,
		0.898114, -0.351376, -0.264434,
		31.785107, 40.930786, 46.932556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507284, 40.625103, 47.556561>,  <31.156427, 41.176746, 47.117661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507284, 40.625103, 47.556561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788797, 40.839958, 47.370586>,  <31.957706, 40.968872, 47.259003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788797, 40.839958, 47.370586>,  <31.507284, 40.625103, 47.556561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788797, 40.839958, 47.370586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382921, 0.264431, 0.885126,
		0.598380, -0.800973, -0.019579,
		0.703785, 0.537139, -0.464939,
		31.999933, 41.001099, 47.231106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154778, 40.354061, 47.781601>,  <31.507284, 40.625103, 47.556561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154778, 40.354061, 47.781601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168808, 40.735043, 47.660545>,  <32.177227, 40.963631, 47.587910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168808, 40.735043, 47.660545>,  <32.154778, 40.354061, 47.781601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168808, 40.735043, 47.660545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180254, 0.291833, 0.939331,
		0.982994, -0.087502, -0.161447,
		0.035078, 0.952458, -0.302643,
		32.179333, 41.020779, 47.569752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662506, 40.679714, 48.203613>,  <32.154778, 40.354061, 47.781601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662506, 40.679714, 48.203613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403522, 40.965103, 48.096458>,  <32.248135, 41.136337, 48.032166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403522, 40.965103, 48.096458>,  <32.662506, 40.679714, 48.203613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403522, 40.965103, 48.096458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089342, 0.278029, 0.956409,
		0.756848, 0.643166, -0.116269,
		-0.647456, 0.713468, -0.267888,
		32.209286, 41.179142, 48.016090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463455, 40.661228, 48.987408>,  <32.662506, 40.679714, 48.203613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463455, 40.661228, 48.987408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619209, 40.389515, 48.738586>,  <32.712662, 40.226486, 48.589294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619209, 40.389515, 48.738586>,  <32.463455, 40.661228, 48.987408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619209, 40.389515, 48.738586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772447, 0.608690, -0.181169,
		0.501703, -0.409959, 0.761727,
		0.389384, -0.679287, -0.622053,
		32.736023, 40.185730, 48.551971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588310, 39.935238, 49.090672>,  <32.463455, 40.661228, 48.987408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588310, 39.935238, 49.090672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398376, 39.623001, 48.928089>,  <32.284416, 39.435658, 48.830540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398376, 39.623001, 48.928089>,  <32.588310, 39.935238, 49.090672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398376, 39.623001, 48.928089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533108, 0.112348, -0.838554,
		0.700237, -0.614855, 0.362796,
		-0.474830, -0.780597, -0.406455,
		32.255928, 39.388821, 48.806152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048126, 39.716328, 48.684349>,  <32.588310, 39.935238, 49.090672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048126, 39.716328, 48.684349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720081, 39.524696, 48.559193>,  <32.523254, 39.409718, 48.484100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720081, 39.524696, 48.559193>,  <33.048126, 39.716328, 48.684349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720081, 39.524696, 48.559193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462485, -0.232994, -0.855466,
		0.336934, -0.846285, 0.412647,
		-0.820112, -0.479078, -0.312890,
		32.474049, 39.380974, 48.465324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238056, 39.094433, 48.373192>,  <33.048126, 39.716328, 48.684349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238056, 39.094433, 48.373192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893444, 39.180805, 48.189392>,  <32.686676, 39.232628, 48.079113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893444, 39.180805, 48.189392>,  <33.238056, 39.094433, 48.373192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893444, 39.180805, 48.189392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379090, -0.328440, -0.865111,
		-0.337744, -0.919506, 0.201092,
		-0.861522, 0.215954, -0.459505,
		32.634987, 39.245586, 48.051540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850044, 38.521080, 48.125034>,  <33.238056, 39.094433, 48.373192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850044, 38.521080, 48.125034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765827, 38.844746, 47.905609>,  <32.715298, 39.038944, 47.773956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765827, 38.844746, 47.905609>,  <32.850044, 38.521080, 48.125034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765827, 38.844746, 47.905609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290341, -0.484061, -0.825461,
		-0.933474, -0.333065, -0.133019,
		-0.210543, 0.809168, -0.548561,
		32.702663, 39.087498, 47.741039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345169, 38.324764, 47.621861>,  <32.850044, 38.521080, 48.125034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345169, 38.324764, 47.621861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522518, 38.652931, 47.477451>,  <32.628929, 38.849831, 47.390804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522518, 38.652931, 47.477451>,  <32.345169, 38.324764, 47.621861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522518, 38.652931, 47.477451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024592, -0.413759, -0.910054,
		-0.896001, 0.394614, -0.203624,
		0.443372, 0.820417, -0.361024,
		32.655529, 38.899055, 47.369144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924715, 38.498634, 46.970123>,  <32.345169, 38.324764, 47.621861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924715, 38.498634, 46.970123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276840, 38.684803, 46.933376>,  <32.488113, 38.796505, 46.911327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276840, 38.684803, 46.933376>,  <31.924715, 38.498634, 46.970123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276840, 38.684803, 46.933376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042592, -0.115327, -0.992414,
		-0.472481, 0.877546, -0.081701,
		0.880311, 0.465417, -0.091867,
		32.540932, 38.824429, 46.905815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876783, 39.067940, 46.394653>,  <31.924715, 38.498634, 46.970123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876783, 39.067940, 46.394653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259098, 38.977467, 46.469822>,  <32.488487, 38.923183, 46.514923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259098, 38.977467, 46.469822>,  <31.876783, 39.067940, 46.394653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259098, 38.977467, 46.469822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182550, -0.044612, -0.982184,
		0.230532, 0.973064, -0.001351,
		0.955788, -0.226178, 0.187918,
		32.545834, 38.909615, 46.526196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270233, 39.208023, 45.676830>,  <31.876783, 39.067940, 46.394653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270233, 39.208023, 45.676830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552795, 39.040337, 45.904953>,  <32.722332, 38.939724, 46.041824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552795, 39.040337, 45.904953>,  <32.270233, 39.208023, 45.676830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552795, 39.040337, 45.904953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315636, -0.534613, -0.783941,
		0.633531, 0.733791, -0.245336,
		0.706408, -0.419214, 0.570305,
		32.764717, 38.914574, 46.076046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077564, 39.450375, 45.432903>,  <32.270233, 39.208023, 45.676830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077564, 39.450375, 45.432903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029045, 39.099030, 45.617844>,  <32.999935, 38.888222, 45.728809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029045, 39.099030, 45.617844>,  <33.077564, 39.450375, 45.432903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029045, 39.099030, 45.617844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266494, -0.477510, -0.837237,
		0.956174, 0.021662, 0.291997,
		-0.121296, -0.878359, 0.462355,
		32.992657, 38.835522, 45.756550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759163, 39.133904, 45.366280>,  <33.077564, 39.450375, 45.432903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759163, 39.133904, 45.366280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487324, 38.853241, 45.451908>,  <33.324219, 38.684845, 45.503284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487324, 38.853241, 45.451908>,  <33.759163, 39.133904, 45.366280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487324, 38.853241, 45.451908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423032, -0.613253, -0.667056,
		0.599321, -0.362774, 0.713589,
		-0.679602, -0.701652, 0.214071,
		33.283443, 38.642746, 45.516129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115017, 38.501785, 45.357391>,  <33.759163, 39.133904, 45.366280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115017, 38.501785, 45.357391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749401, 38.339981, 45.369419>,  <33.530033, 38.242897, 45.376637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749401, 38.339981, 45.369419>,  <34.115017, 38.501785, 45.357391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749401, 38.339981, 45.369419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282579, -0.688198, -0.668231,
		0.291004, -0.602291, 0.743346,
		-0.914038, -0.404512, 0.030074,
		33.475189, 38.218628, 45.378441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172920, 37.721638, 45.471867>,  <34.115017, 38.501785, 45.357391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172920, 37.721638, 45.471867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830948, 37.799980, 45.279728>,  <33.625767, 37.846985, 45.164444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830948, 37.799980, 45.279728>,  <34.172920, 37.721638, 45.471867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830948, 37.799980, 45.279728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284936, -0.596486, -0.750344,
		-0.433485, -0.778359, 0.454145,
		-0.854928, 0.195860, -0.480350,
		33.574471, 37.858738, 45.135624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897732, 37.069771, 45.293106>,  <34.172920, 37.721638, 45.471867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897732, 37.069771, 45.293106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679962, 37.307098, 45.055927>,  <33.549301, 37.449493, 44.913620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679962, 37.307098, 45.055927>,  <33.897732, 37.069771, 45.293106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679962, 37.307098, 45.055927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092052, -0.660357, -0.745288,
		-0.833746, -0.460332, 0.304897,
		-0.544421, 0.593315, -0.592944,
		33.516636, 37.485092, 44.878044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362244, 36.682423, 45.100079>,  <33.897732, 37.069771, 45.293106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362244, 36.682423, 45.100079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410622, 36.968578, 44.824810>,  <33.439648, 37.140274, 44.659649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410622, 36.968578, 44.824810>,  <33.362244, 36.682423, 45.100079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410622, 36.968578, 44.824810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063028, -0.697400, -0.713906,
		-0.990657, 0.042967, -0.129434,
		0.120942, 0.715393, -0.688175,
		33.446903, 37.183197, 44.618359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011650, 36.406113, 44.544456>,  <33.362244, 36.682423, 45.100079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011650, 36.406113, 44.544456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213623, 36.695217, 44.355713>,  <33.334808, 36.868679, 44.242466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213623, 36.695217, 44.355713>,  <33.011650, 36.406113, 44.544456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213623, 36.695217, 44.355713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012643, -0.540414, -0.841304,
		-0.863065, 0.430770, -0.263736,
		0.504935, 0.722766, -0.471858,
		33.365105, 36.912048, 44.214157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585320, 36.607216, 43.848667>,  <33.011650, 36.406113, 44.544456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585320, 36.607216, 43.848667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955860, 36.746925, 43.792271>,  <33.178185, 36.830750, 43.758434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955860, 36.746925, 43.792271>,  <32.585320, 36.607216, 43.848667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955860, 36.746925, 43.792271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012002, -0.346760, -0.937877,
		-0.376463, 0.870499, -0.317030,
		0.926354, 0.349271, -0.140990,
		33.233765, 36.851707, 43.749973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560055, 37.023033, 43.287277>,  <32.585320, 36.607216, 43.848667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560055, 37.023033, 43.287277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947350, 36.924839, 43.306255>,  <33.179726, 36.865925, 43.317642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947350, 36.924839, 43.306255>,  <32.560055, 37.023033, 43.287277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947350, 36.924839, 43.306255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017797, -0.256959, -0.966258,
		0.249390, 0.934725, -0.253167,
		0.968240, -0.245481, 0.047448,
		33.237820, 36.851196, 43.320488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895485, 37.255714, 42.581589>,  <32.560055, 37.023033, 43.287277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895485, 37.255714, 42.581589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145782, 36.990509, 42.745960>,  <33.295959, 36.831387, 42.844585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145782, 36.990509, 42.745960>,  <32.895485, 37.255714, 42.581589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145782, 36.990509, 42.745960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043882, -0.496060, -0.867178,
		0.778797, 0.560660, -0.281310,
		0.625739, -0.663012, 0.410933,
		33.333504, 36.791607, 42.869240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485104, 37.266354, 42.195881>,  <32.895485, 37.255714, 42.581589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485104, 37.266354, 42.195881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440029, 36.905907, 42.363350>,  <33.412983, 36.689640, 42.463833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440029, 36.905907, 42.363350>,  <33.485104, 37.266354, 42.195881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440029, 36.905907, 42.363350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080817, -0.411652, -0.907751,
		0.990338, -0.136128, -0.026437,
		-0.112688, -0.901117, 0.418676,
		33.406223, 36.635571, 42.488953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856159, 36.826763, 41.725040>,  <33.485104, 37.266354, 42.195881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856159, 36.826763, 41.725040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637947, 36.573299, 41.944447>,  <33.507019, 36.421223, 42.076092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637947, 36.573299, 41.944447>,  <33.856159, 36.826763, 41.725040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637947, 36.573299, 41.944447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047650, -0.629974, -0.775153,
		0.836733, -0.449009, 0.313479,
		-0.545534, -0.633659, 0.548516,
		33.474285, 36.383202, 42.109001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073021, 36.236031, 41.468567>,  <33.856159, 36.826763, 41.725040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073021, 36.236031, 41.468567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741714, 36.138382, 41.670311>,  <33.542931, 36.079792, 41.791355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741714, 36.138382, 41.670311>,  <34.073021, 36.236031, 41.468567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741714, 36.138382, 41.670311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239412, -0.659628, -0.712442,
		0.506609, -0.710842, 0.487904,
		-0.828269, -0.244119, 0.504357,
		33.493233, 36.065147, 41.821617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017097, 35.559399, 41.473167>,  <34.073021, 36.236031, 41.468567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017097, 35.559399, 41.473167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643253, 35.692879, 41.522408>,  <33.418949, 35.772968, 41.551952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643253, 35.692879, 41.522408>,  <34.017097, 35.559399, 41.473167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643253, 35.692879, 41.522408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295985, -0.537756, -0.789437,
		-0.197237, -0.774250, 0.601361,
		-0.934607, 0.333700, 0.123100,
		33.362869, 35.792988, 41.559338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633869, 34.998745, 41.380653>,  <34.017097, 35.559399, 41.473167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633869, 34.998745, 41.380653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384426, 35.305538, 41.320175>,  <33.234760, 35.489613, 41.283890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384426, 35.305538, 41.320175>,  <33.633869, 34.998745, 41.380653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384426, 35.305538, 41.320175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420158, -0.491934, -0.762541,
		-0.659230, -0.411999, 0.629025,
		-0.623605, 0.766980, -0.151193,
		33.197346, 35.535633, 41.274818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987194, 34.660755, 41.288628>,  <33.633869, 34.998745, 41.380653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987194, 34.660755, 41.288628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916222, 35.025688, 41.141026>,  <32.873638, 35.244648, 41.052464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916222, 35.025688, 41.141026>,  <32.987194, 34.660755, 41.288628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916222, 35.025688, 41.141026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340184, -0.408696, -0.846901,
		-0.923469, -0.024733, 0.382875,
		-0.177427, 0.912335, -0.369005,
		32.862995, 35.299389, 41.030323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296841, 34.656639, 41.012871>,  <32.987194, 34.660755, 41.288628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296841, 34.656639, 41.012871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503235, 34.942158, 40.823448>,  <32.627071, 35.113468, 40.709797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503235, 34.942158, 40.823448>,  <32.296841, 34.656639, 41.012871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503235, 34.942158, 40.823448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311350, -0.358740, -0.879981,
		-0.798010, 0.601498, 0.037137,
		0.515985, 0.713797, -0.473555,
		32.658031, 35.156296, 40.681381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958540, 34.783485, 40.520706>,  <32.296841, 34.656639, 41.012871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958540, 34.783485, 40.520706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280907, 34.972965, 40.378662>,  <32.474327, 35.086655, 40.293434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280907, 34.972965, 40.378662>,  <31.958540, 34.783485, 40.520706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280907, 34.972965, 40.378662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236727, -0.291939, -0.926678,
		-0.542642, 0.830889, -0.123140,
		0.805916, 0.473704, -0.355112,
		32.522682, 35.115078, 40.272129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693480, 35.120342, 40.023983>,  <31.958540, 34.783485, 40.520706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693480, 35.120342, 40.023983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082527, 35.136642, 39.932465>,  <32.315956, 35.146423, 39.877552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082527, 35.136642, 39.932465>,  <31.693480, 35.120342, 40.023983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082527, 35.136642, 39.932465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223564, -0.104757, -0.969044,
		-0.063460, 0.993663, -0.092778,
		0.972621, 0.040754, -0.228795,
		32.374313, 35.148869, 39.863827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755671, 35.536682, 39.480522>,  <31.693480, 35.120342, 40.023983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755671, 35.536682, 39.480522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094681, 35.324390, 39.482601>,  <32.298088, 35.197014, 39.483849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094681, 35.324390, 39.482601>,  <31.755671, 35.536682, 39.480522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094681, 35.324390, 39.482601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050556, -0.090478, -0.994614,
		0.528342, 0.842698, -0.103514,
		0.847525, -0.530729, 0.005200,
		32.348938, 35.165173, 39.484161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240284, 35.779594, 38.964272>,  <31.755671, 35.536682, 39.480522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240284, 35.779594, 38.964272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363930, 35.405048, 39.030800>,  <32.438118, 35.180321, 39.070717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363930, 35.405048, 39.030800>,  <32.240284, 35.779594, 38.964272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363930, 35.405048, 39.030800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067316, -0.195988, -0.978293,
		0.948638, 0.291213, -0.123616,
		0.309119, -0.936367, 0.166319,
		32.456665, 35.124138, 39.080696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684402, 35.607853, 38.362228>,  <32.240284, 35.779594, 38.964272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684402, 35.607853, 38.362228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578457, 35.255894, 38.520027>,  <32.514889, 35.044720, 38.614704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578457, 35.255894, 38.520027>,  <32.684402, 35.607853, 38.362228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578457, 35.255894, 38.520027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055042, -0.422234, -0.904814,
		0.962714, -0.217939, 0.160266,
		-0.264864, -0.879899, 0.394495,
		32.498997, 34.991924, 38.638374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043301, 35.149761, 37.918198>,  <32.684402, 35.607853, 38.362228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043301, 35.149761, 37.918198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771931, 34.931881, 38.115391>,  <32.609108, 34.801151, 38.233707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771931, 34.931881, 38.115391>,  <33.043301, 35.149761, 37.918198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771931, 34.931881, 38.115391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127749, -0.573344, -0.809294,
		0.723474, -0.612026, 0.319388,
		-0.678428, -0.544702, 0.492985,
		32.568401, 34.768471, 38.263287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258739, 34.432255, 37.808277>,  <33.043301, 35.149761, 37.918198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258739, 34.432255, 37.808277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872841, 34.404713, 37.909885>,  <32.641300, 34.388187, 37.970848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872841, 34.404713, 37.909885>,  <33.258739, 34.432255, 37.808277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872841, 34.404713, 37.909885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151217, -0.644923, -0.749138,
		0.215404, -0.761140, 0.611774,
		-0.964746, -0.068856, 0.254016,
		32.583416, 34.384056, 37.986092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149590, 33.787529, 37.762604>,  <33.258739, 34.432255, 37.808277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149590, 33.787529, 37.762604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794357, 33.968403, 37.729527>,  <32.581219, 34.076927, 37.709682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794357, 33.968403, 37.729527>,  <33.149590, 33.787529, 37.762604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794357, 33.968403, 37.729527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229674, -0.592305, -0.772285,
		-0.398190, -0.666863, 0.629871,
		-0.888084, 0.452181, -0.082688,
		32.527931, 34.104057, 37.704720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591568, 33.265186, 37.444271>,  <33.149590, 33.787529, 37.762604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591568, 33.265186, 37.444271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459370, 33.638577, 37.388554>,  <32.380051, 33.862610, 37.355125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459370, 33.638577, 37.388554>,  <32.591568, 33.265186, 37.444271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459370, 33.638577, 37.388554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312388, -0.247456, -0.917158,
		-0.890611, -0.259601, 0.373388,
		-0.330492, 0.933474, -0.139291,
		32.360222, 33.918617, 37.346767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983839, 33.160599, 36.989574>,  <32.591568, 33.265186, 37.444271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983839, 33.160599, 36.989574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055134, 33.552387, 36.951916>,  <32.097912, 33.787460, 36.929321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055134, 33.552387, 36.951916>,  <31.983839, 33.160599, 36.989574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055134, 33.552387, 36.951916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222185, -0.053144, -0.973555,
		-0.958574, 0.194442, 0.208152,
		0.178238, 0.979473, -0.094145,
		32.108604, 33.846230, 36.923672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503864, 33.339966, 36.413998>,  <31.983839, 33.160599, 36.989574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503864, 33.339966, 36.413998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770493, 33.634285, 36.461800>,  <31.930470, 33.810875, 36.490482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770493, 33.634285, 36.461800>,  <31.503864, 33.339966, 36.413998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770493, 33.634285, 36.461800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098462, 0.245815, -0.964303,
		-0.738909, 0.631011, 0.236301,
		0.666572, 0.735799, 0.119504,
		31.970465, 33.855026, 36.497650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195499, 33.878437, 36.191479>,  <31.503864, 33.339966, 36.413998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195499, 33.878437, 36.191479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589056, 33.930573, 36.142536>,  <31.825190, 33.961853, 36.113171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589056, 33.930573, 36.142536>,  <31.195499, 33.878437, 36.191479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589056, 33.930573, 36.142536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155082, 0.281774, -0.946865,
		-0.088937, 0.950587, 0.297448,
		0.983890, 0.130340, -0.122359,
		31.884224, 33.969673, 36.105827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194925, 34.356056, 35.738956>,  <31.195499, 33.878437, 36.191479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194925, 34.356056, 35.738956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568741, 34.215412, 35.717022>,  <31.793030, 34.131027, 35.703861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568741, 34.215412, 35.717022>,  <31.194925, 34.356056, 35.738956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568741, 34.215412, 35.717022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015922, 0.195242, -0.980626,
		0.355505, 0.915560, 0.188060,
		0.934539, -0.351611, -0.054832,
		31.849102, 34.109928, 35.700573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660044, 34.823086, 35.215908>,  <31.194925, 34.356056, 35.738956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660044, 34.823086, 35.215908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835842, 34.464558, 35.239403>,  <31.941320, 34.249439, 35.253498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835842, 34.464558, 35.239403>,  <31.660044, 34.823086, 35.215908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835842, 34.464558, 35.239403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065783, -0.033093, -0.997285,
		0.895833, 0.442166, 0.044418,
		0.439496, -0.896322, 0.058732,
		31.967691, 34.195660, 35.257023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204586, 34.909870, 34.814865>,  <31.660044, 34.823086, 35.215908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204586, 34.909870, 34.814865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146477, 34.514263, 34.825703>,  <32.111610, 34.276897, 34.832207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146477, 34.514263, 34.825703>,  <32.204586, 34.909870, 34.814865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146477, 34.514263, 34.825703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266825, -0.065535, -0.961514,
		0.952732, -0.132456, 0.273416,
		-0.145277, -0.989020, 0.027095,
		32.102894, 34.217556, 34.833832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852242, 34.664276, 34.537056>,  <32.204586, 34.909870, 34.814865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852242, 34.664276, 34.537056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539875, 34.420048, 34.484314>,  <32.352455, 34.273510, 34.452671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539875, 34.420048, 34.484314>,  <32.852242, 34.664276, 34.537056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539875, 34.420048, 34.484314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111156, 0.071879, -0.991200,
		0.614671, -0.788696, 0.011737,
		-0.780912, -0.610567, -0.131851,
		32.305603, 34.236877, 34.444759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012127, 33.986069, 34.213970>,  <32.852242, 34.664276, 34.537056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012127, 33.986069, 34.213970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651516, 34.122597, 34.107582>,  <32.435150, 34.204514, 34.043747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651516, 34.122597, 34.107582>,  <33.012127, 33.986069, 34.213970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651516, 34.122597, 34.107582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249609, -0.091882, -0.963978,
		-0.353463, -0.935446, -0.002362,
		-0.901531, 0.341320, -0.265973,
		32.381058, 34.224991, 34.027790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574932, 34.187962, 34.610813>,  <33.012127, 33.986069, 34.213970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574932, 34.187962, 34.610813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944115, 34.307735, 34.514080>,  <34.165627, 34.379601, 34.456039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944115, 34.307735, 34.514080>,  <33.574932, 34.187962, 34.610813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944115, 34.307735, 34.514080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210657, 0.918835, 0.333715,
		0.322131, -0.257061, 0.911126,
		0.922960, 0.299435, -0.241833,
		34.221004, 34.397568, 34.441528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177326, 33.897732, 34.381405>,  <33.574932, 34.187962, 34.610813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177326, 33.897732, 34.381405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565529, 33.813141, 34.427715>,  <34.798450, 33.762386, 34.455502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565529, 33.813141, 34.427715>,  <34.177326, 33.897732, 34.381405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565529, 33.813141, 34.427715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171122, -0.265934, 0.948681,
		-0.169831, -0.940510, -0.294277,
		0.970503, -0.211472, 0.115778,
		34.856678, 33.749699, 34.462448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114044, 33.211704, 34.611618>,  <34.177326, 33.897732, 34.381405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114044, 33.211704, 34.611618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468750, 33.371746, 34.704197>,  <34.681572, 33.467770, 34.759743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468750, 33.371746, 34.704197>,  <34.114044, 33.211704, 34.611618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468750, 33.371746, 34.704197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116332, -0.291413, 0.949497,
		0.447345, -0.868904, -0.211869,
		0.886763, 0.400106, 0.231444,
		34.734779, 33.491779, 34.773628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482769, 32.726929, 34.981133>,  <34.114044, 33.211704, 34.611618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482769, 32.726929, 34.981133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687832, 33.054306, 35.084919>,  <34.810871, 33.250732, 35.147190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687832, 33.054306, 35.084919>,  <34.482769, 32.726929, 34.981133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687832, 33.054306, 35.084919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121562, -0.229969, 0.965576,
		0.849942, -0.526555, -0.018404,
		0.512662, 0.818446, 0.259469,
		34.841629, 33.299839, 35.162758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805412, 32.525211, 35.602760>,  <34.482769, 32.726929, 34.981133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805412, 32.525211, 35.602760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865162, 32.920120, 35.624592>,  <34.901012, 33.157066, 35.637691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865162, 32.920120, 35.624592>,  <34.805412, 32.525211, 35.602760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865162, 32.920120, 35.624592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046473, -0.062147, 0.996984,
		0.987688, -0.146388, -0.055165,
		0.149374, 0.987273, 0.054578,
		34.909973, 33.216301, 35.640965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468887, 32.681778, 36.033794>,  <34.805412, 32.525211, 35.602760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468887, 32.681778, 36.033794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214325, 32.989456, 36.056892>,  <35.061588, 33.174061, 36.070751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214325, 32.989456, 36.056892>,  <35.468887, 32.681778, 36.033794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214325, 32.989456, 36.056892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079951, -0.008675, 0.996761,
		0.767202, 0.638958, -0.055977,
		-0.636403, 0.769192, 0.057741,
		35.023403, 33.220215, 36.074215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851128, 33.069214, 36.544807>,  <35.468887, 32.681778, 36.033794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851128, 33.069214, 36.544807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466991, 33.178799, 36.524082>,  <35.236507, 33.244549, 36.511646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466991, 33.178799, 36.524082>,  <35.851128, 33.069214, 36.544807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466991, 33.178799, 36.524082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044290, 0.033575, 0.998454,
		0.275274, 0.961155, -0.020110,
		-0.960345, 0.273958, -0.051812,
		35.178886, 33.260986, 36.508537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818108, 33.609505, 37.035439>,  <35.851128, 33.069214, 36.544807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818108, 33.609505, 37.035439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441471, 33.485783, 36.982178>,  <35.215488, 33.411549, 36.950222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441471, 33.485783, 36.982178>,  <35.818108, 33.609505, 37.035439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441471, 33.485783, 36.982178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166479, 0.083851, 0.982473,
		-0.292716, 0.947260, -0.130446,
		-0.941596, -0.309302, -0.133155,
		35.158993, 33.392994, 36.942230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462009, 34.002110, 37.417030>,  <35.818108, 33.609505, 37.035439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462009, 34.002110, 37.417030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234695, 33.681995, 37.340511>,  <35.098305, 33.489929, 37.294598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234695, 33.681995, 37.340511>,  <35.462009, 34.002110, 37.417030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234695, 33.681995, 37.340511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160463, -0.120242, 0.979691,
		-0.807031, 0.587444, -0.060083,
		-0.568289, -0.800282, -0.191302,
		35.064209, 33.441910, 37.283119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909794, 34.116589, 37.807144>,  <35.462009, 34.002110, 37.417030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909794, 34.116589, 37.807144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883781, 33.726902, 37.720730>,  <34.868176, 33.493092, 37.668880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883781, 33.726902, 37.720730>,  <34.909794, 34.116589, 37.807144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883781, 33.726902, 37.720730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371877, -0.177240, 0.911205,
		-0.926001, 0.139595, -0.350763,
		-0.065031, -0.974217, -0.216037,
		34.864273, 33.434635, 37.655918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258011, 34.074593, 38.030247>,  <34.909794, 34.116589, 37.807144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258011, 34.074593, 38.030247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439369, 33.718178, 38.021488>,  <34.548183, 33.504330, 38.016232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439369, 33.718178, 38.021488>,  <34.258011, 34.074593, 38.030247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439369, 33.718178, 38.021488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261216, -0.156328, 0.952538,
		-0.852174, -0.426154, -0.303632,
		0.453394, -0.891042, -0.021901,
		34.575386, 33.450867, 38.014919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797504, 33.562958, 38.249725>,  <34.258011, 34.074593, 38.030247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797504, 33.562958, 38.249725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152805, 33.399162, 38.332981>,  <34.365986, 33.300884, 38.382935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152805, 33.399162, 38.332981>,  <33.797504, 33.562958, 38.249725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152805, 33.399162, 38.332981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343231, -0.290539, 0.893185,
		-0.305304, -0.864804, -0.398628,
		0.888247, -0.409514, 0.208125,
		34.419281, 33.276318, 38.395424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633263, 33.038685, 38.640862>,  <33.797504, 33.562958, 38.249725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633263, 33.038685, 38.640862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025970, 33.070362, 38.709972>,  <34.261597, 33.089367, 38.751438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025970, 33.070362, 38.709972>,  <33.633263, 33.038685, 38.640862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025970, 33.070362, 38.709972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165999, -0.085404, 0.982421,
		0.092558, -0.993194, -0.070701,
		0.981773, 0.079195, 0.172775,
		34.320503, 33.094120, 38.761806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714764, 32.826103, 39.223579>,  <33.633263, 33.038685, 38.640862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714764, 32.826103, 39.223579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101139, 32.926617, 39.198860>,  <34.332966, 32.986923, 39.184029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101139, 32.926617, 39.198860>,  <33.714764, 32.826103, 39.223579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101139, 32.926617, 39.198860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086646, -0.089035, 0.992253,
		0.243831, -0.963811, -0.107775,
		0.965939, 0.251280, -0.061801,
		34.390923, 33.001999, 39.180321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025482, 32.486866, 39.825691>,  <33.714764, 32.826103, 39.223579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025482, 32.486866, 39.825691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298306, 32.765900, 39.737904>,  <34.462002, 32.933319, 39.685230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298306, 32.765900, 39.737904>,  <34.025482, 32.486866, 39.825691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298306, 32.765900, 39.737904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205011, 0.105675, 0.973038,
		0.701971, -0.708664, -0.070937,
		0.682061, 0.697587, -0.219465,
		34.502922, 32.975174, 39.672066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751652, 32.322983, 40.198006>,  <34.025482, 32.486866, 39.825691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751652, 32.322983, 40.198006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693554, 32.711445, 40.122353>,  <34.658695, 32.944523, 40.076962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693554, 32.711445, 40.122353>,  <34.751652, 32.322983, 40.198006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693554, 32.711445, 40.122353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215846, 0.217654, 0.951860,
		0.965564, 0.097432, -0.241232,
		-0.145247, 0.971151, -0.189129,
		34.649979, 33.002789, 40.065613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356667, 32.640785, 40.531933>,  <34.751652, 32.322983, 40.198006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356667, 32.640785, 40.531933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089931, 32.932007, 40.468361>,  <34.929890, 33.106739, 40.430218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089931, 32.932007, 40.468361>,  <35.356667, 32.640785, 40.531933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089931, 32.932007, 40.468361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153465, 0.342872, 0.926762,
		0.729229, 0.593609, -0.340371,
		-0.666838, 0.728057, -0.158934,
		34.889881, 33.150425, 40.420681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655643, 33.141731, 40.887623>,  <35.356667, 32.640785, 40.531933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655643, 33.141731, 40.887623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287140, 33.286110, 40.829659>,  <35.066036, 33.372738, 40.794880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287140, 33.286110, 40.829659>,  <35.655643, 33.141731, 40.887623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287140, 33.286110, 40.829659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022698, 0.421826, 0.906393,
		0.388290, 0.831732, -0.396803,
		-0.921258, 0.360950, -0.144912,
		35.010761, 33.394394, 40.786186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740379, 33.755779, 40.999477>,  <35.655643, 33.141731, 40.887623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740379, 33.755779, 40.999477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350807, 33.688179, 41.059994>,  <35.117062, 33.647617, 41.096306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350807, 33.688179, 41.059994>,  <35.740379, 33.755779, 40.999477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350807, 33.688179, 41.059994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058614, 0.456834, 0.887619,
		-0.219125, 0.873351, -0.435020,
		-0.973935, -0.169001, 0.151295,
		35.058628, 33.637478, 41.105381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397511, 34.488960, 41.152084>,  <35.740379, 33.755779, 40.999477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397511, 34.488960, 41.152084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187000, 34.180054, 41.294434>,  <35.060696, 33.994709, 41.379845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187000, 34.180054, 41.294434>,  <35.397511, 34.488960, 41.152084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187000, 34.180054, 41.294434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045040, 0.443248, 0.895267,
		-0.849122, 0.455126, -0.268053,
		-0.526273, -0.772264, 0.355873,
		35.029118, 33.948376, 41.401196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827175, 34.790352, 41.398235>,  <35.397511, 34.488960, 41.152084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827175, 34.790352, 41.398235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854523, 34.444683, 41.597649>,  <34.870930, 34.237282, 41.717297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854523, 34.444683, 41.597649>,  <34.827175, 34.790352, 41.398235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854523, 34.444683, 41.597649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134504, 0.503124, 0.853683,
		-0.988552, 0.008692, 0.150631,
		0.068365, -0.864170, 0.498534,
		34.875031, 34.185432, 41.747208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518112, 34.908222, 41.998386>,  <34.827175, 34.790352, 41.398235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518112, 34.908222, 41.998386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728664, 34.583092, 42.098179>,  <34.854996, 34.388016, 42.158054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728664, 34.583092, 42.098179>,  <34.518112, 34.908222, 41.998386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728664, 34.583092, 42.098179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344389, 0.472099, 0.811492,
		-0.777378, -0.341237, 0.528432,
		0.526383, -0.812822, 0.249482,
		34.886578, 34.339245, 42.173023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243099, 34.580059, 42.552361>,  <34.518112, 34.908222, 41.998386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243099, 34.580059, 42.552361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618912, 34.443291, 42.544735>,  <34.844398, 34.361229, 42.540161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618912, 34.443291, 42.544735>,  <34.243099, 34.580059, 42.552361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618912, 34.443291, 42.544735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136817, 0.323749, 0.936199,
		-0.313934, -0.882200, 0.350954,
		0.939536, -0.341921, -0.019065,
		34.900772, 34.340714, 42.539017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247643, 34.314991, 43.144165>,  <34.243099, 34.580059, 42.552361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247643, 34.314991, 43.144165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627029, 34.367016, 43.028584>,  <34.854660, 34.398232, 42.959236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627029, 34.367016, 43.028584>,  <34.247643, 34.314991, 43.144165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627029, 34.367016, 43.028584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238382, 0.307896, 0.921072,
		0.208765, -0.942488, 0.261024,
		0.948467, 0.130064, -0.288950,
		34.911572, 34.406036, 42.941898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655190, 33.899845, 43.732944>,  <34.247643, 34.314991, 43.144165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655190, 33.899845, 43.732944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922573, 34.138268, 43.555012>,  <35.083004, 34.281322, 43.448254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922573, 34.138268, 43.555012>,  <34.655190, 33.899845, 43.732944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922573, 34.138268, 43.555012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197809, 0.434066, 0.878896,
		0.716960, -0.675498, 0.172250,
		0.668461, 0.596061, -0.444828,
		35.123112, 34.317085, 43.421562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235458, 33.871944, 44.179729>,  <34.655190, 33.899845, 43.732944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235458, 33.871944, 44.179729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276318, 34.209446, 43.968964>,  <35.300835, 34.411945, 43.842503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276318, 34.209446, 43.968964>,  <35.235458, 33.871944, 44.179729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276318, 34.209446, 43.968964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189249, 0.503533, 0.842994,
		0.976602, -0.185829, -0.108245,
		0.102148, 0.843755, -0.526919,
		35.306961, 34.462574, 43.810886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857121, 34.293407, 44.433437>,  <35.235458, 33.871944, 44.179729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857121, 34.293407, 44.433437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641628, 34.563206, 44.231522>,  <35.512333, 34.725086, 44.110371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641628, 34.563206, 44.231522>,  <35.857121, 34.293407, 44.433437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641628, 34.563206, 44.231522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235662, 0.695909, 0.678361,
		0.808843, 0.246496, -0.533865,
		-0.538735, 0.674500, -0.504792,
		35.480007, 34.765556, 44.080086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180645, 34.937840, 44.479790>,  <35.857121, 34.293407, 44.433437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180645, 34.937840, 44.479790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824886, 35.089359, 44.377430>,  <35.611431, 35.180271, 44.316013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824886, 35.089359, 44.377430>,  <36.180645, 34.937840, 44.479790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824886, 35.089359, 44.377430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202858, 0.828696, 0.521644,
		0.409666, 0.412035, -0.813880,
		-0.889395, 0.378801, -0.255904,
		35.558067, 35.202999, 44.300659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380222, 35.608662, 44.618046>,  <36.180645, 34.937840, 44.479790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380222, 35.608662, 44.618046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982639, 35.625431, 44.577461>,  <35.744091, 35.635490, 44.553108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982639, 35.625431, 44.577461>,  <36.380222, 35.608662, 44.618046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982639, 35.625431, 44.577461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020486, 0.837162, 0.546572,
		0.107855, 0.545347, -0.831243,
		-0.993956, 0.041922, -0.101464,
		35.684452, 35.638008, 44.547024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183811, 36.231339, 44.322647>,  <36.380222, 35.608662, 44.618046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183811, 36.231339, 44.322647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842724, 36.109371, 44.492302>,  <35.638069, 36.036190, 44.594097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842724, 36.109371, 44.492302>,  <36.183811, 36.231339, 44.322647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842724, 36.109371, 44.492302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079537, 0.878278, 0.471489,
		-0.516276, 0.368314, -0.773178,
		-0.852721, -0.304915, 0.424139,
		35.586906, 36.017899, 44.619545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743591, 36.839470, 44.348736>,  <36.183811, 36.231339, 44.322647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743591, 36.839470, 44.348736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614704, 36.585808, 44.629883>,  <35.537373, 36.433609, 44.798569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614704, 36.585808, 44.629883>,  <35.743591, 36.839470, 44.348736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614704, 36.585808, 44.629883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143487, 0.766601, 0.625887,
		-0.935728, 0.100821, -0.338007,
		-0.322219, -0.634160, 0.702863,
		35.518040, 36.395561, 44.840740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121536, 37.069580, 44.685268>,  <35.743591, 36.839470, 44.348736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121536, 37.069580, 44.685268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333363, 36.844845, 44.939484>,  <35.460457, 36.710007, 45.092014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333363, 36.844845, 44.939484>,  <35.121536, 37.069580, 44.685268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333363, 36.844845, 44.939484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128763, 0.687291, 0.714878,
		-0.838441, -0.460406, 0.291620,
		0.529563, -0.561834, 0.635537,
		35.492229, 36.676296, 45.130146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704239, 37.070869, 45.266552>,  <35.121536, 37.069580, 44.685268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704239, 37.070869, 45.266552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071575, 36.964802, 45.384087>,  <35.291977, 36.901161, 45.454609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071575, 36.964802, 45.384087>,  <34.704239, 37.070869, 45.266552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071575, 36.964802, 45.384087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049410, 0.659778, 0.749834,
		-0.392699, -0.703120, 0.592798,
		0.918339, -0.265169, 0.293835,
		35.347076, 36.885250, 45.472237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691837, 37.142410, 46.067425>,  <34.704239, 37.070869, 45.266552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691837, 37.142410, 46.067425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087761, 37.097736, 46.032078>,  <35.325314, 37.070930, 46.010872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087761, 37.097736, 46.032078>,  <34.691837, 37.142410, 46.067425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087761, 37.097736, 46.032078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141569, 0.704080, 0.695866,
		-0.015502, -0.701283, 0.712715,
		0.989807, -0.111686, -0.088365,
		35.384705, 37.064232, 46.005569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978401, 36.989445, 46.714367>,  <34.691837, 37.142410, 46.067425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978401, 36.989445, 46.714367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282051, 37.133904, 46.497738>,  <35.464241, 37.220577, 46.367760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282051, 37.133904, 46.497738>,  <34.978401, 36.989445, 46.714367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282051, 37.133904, 46.497738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234664, 0.624205, 0.745185,
		0.607160, -0.692783, 0.389112,
		0.759138, 0.361136, -0.541564,
		35.509789, 37.242249, 46.335266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360985, 37.283833, 47.174091>,  <34.978401, 36.989445, 46.714367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360985, 37.283833, 47.174091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517349, 37.447968, 46.844532>,  <35.611168, 37.546448, 46.646797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517349, 37.447968, 46.844532>,  <35.360985, 37.283833, 47.174091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517349, 37.447968, 46.844532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349635, 0.761830, 0.545317,
		0.851438, -0.501233, 0.154335,
		0.390908, 0.410342, -0.823899,
		35.634621, 37.571072, 46.597363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979557, 37.437447, 47.354553>,  <35.360985, 37.283833, 47.174091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979557, 37.437447, 47.354553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879467, 37.669437, 47.044453>,  <35.819412, 37.808632, 46.858395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879467, 37.669437, 47.044453>,  <35.979557, 37.437447, 47.354553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879467, 37.669437, 47.044453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095674, 0.811615, 0.576305,
		0.963448, 0.070036, -0.258577,
		-0.250227, 0.579979, -0.775249,
		35.804398, 37.843430, 46.811878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449249, 37.951370, 47.459198>,  <35.979557, 37.437447, 47.354553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449249, 37.951370, 47.459198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161991, 38.093666, 47.219959>,  <35.989635, 38.179043, 47.076416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161991, 38.093666, 47.219959>,  <36.449249, 37.951370, 47.459198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161991, 38.093666, 47.219959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008793, 0.854756, 0.518955,
		0.695841, 0.377942, -0.610708,
		-0.718142, 0.355741, -0.598098,
		35.946548, 38.200390, 47.040531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631790, 38.644844, 47.122654>,  <36.449249, 37.951370, 47.459198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631790, 38.644844, 47.122654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245548, 38.579399, 47.203484>,  <36.013802, 38.540134, 47.251980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245548, 38.579399, 47.203484>,  <36.631790, 38.644844, 47.122654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245548, 38.579399, 47.203484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015928, 0.812963, 0.582098,
		-0.259515, 0.558860, -0.787609,
		-0.965608, -0.163609, 0.202074,
		35.955868, 38.530315, 47.264107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523815, 39.347397, 47.485867>,  <36.631790, 38.644844, 47.122654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523815, 39.347397, 47.485867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711868, 39.683170, 47.376823>,  <36.824699, 39.884636, 47.311398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711868, 39.683170, 47.376823>,  <36.523815, 39.347397, 47.485867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711868, 39.683170, 47.376823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104116, -0.253968, -0.961592,
		-0.876432, 0.480462, -0.032001,
		0.470135, 0.839438, -0.272609,
		36.852909, 39.935001, 47.295040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210041, 39.601372, 46.958862>,  <36.523815, 39.347397, 47.485867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210041, 39.601372, 46.958862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569073, 39.771507, 46.912502>,  <36.784492, 39.873589, 46.884686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569073, 39.771507, 46.912502>,  <36.210041, 39.601372, 46.958862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569073, 39.771507, 46.912502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035734, -0.191832, -0.980777,
		-0.439398, 0.884469, -0.156986,
		0.897582, 0.425342, -0.115896,
		36.838348, 39.899109, 46.877735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202988, 40.032761, 46.349369>,  <36.210041, 39.601372, 46.958862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202988, 40.032761, 46.349369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592663, 39.961361, 46.404652>,  <36.826466, 39.918522, 46.437820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592663, 39.961361, 46.404652>,  <36.202988, 40.032761, 46.349369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592663, 39.961361, 46.404652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118756, -0.115438, -0.986190,
		0.191986, 0.977145, -0.091260,
		0.974186, -0.178497, 0.138205,
		36.884918, 39.907810, 46.446114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586887, 40.420761, 45.832142>,  <36.202988, 40.032761, 46.349369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586887, 40.420761, 45.832142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854225, 40.144840, 45.943497>,  <37.014626, 39.979290, 46.010307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854225, 40.144840, 45.943497>,  <36.586887, 40.420761, 45.832142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854225, 40.144840, 45.943497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038987, -0.341245, -0.939165,
		0.742832, 0.638536, -0.201176,
		0.668341, -0.689799, 0.278383,
		37.054729, 39.937901, 46.027012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979046, 40.379372, 45.282108>,  <36.586887, 40.420761, 45.832142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979046, 40.379372, 45.282108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080940, 40.044785, 45.476192>,  <37.142078, 39.844032, 45.592644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080940, 40.044785, 45.476192>,  <36.979046, 40.379372, 45.282108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080940, 40.044785, 45.476192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163984, -0.457129, -0.874152,
		0.953004, 0.302248, 0.020719,
		0.254739, -0.836469, 0.485210,
		37.157364, 39.793842, 45.621754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618385, 40.200058, 44.989594>,  <36.979046, 40.379372, 45.282108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618385, 40.200058, 44.989594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418522, 39.894115, 45.152241>,  <37.298603, 39.710552, 45.249828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418522, 39.894115, 45.152241>,  <37.618385, 40.200058, 44.989594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418522, 39.894115, 45.152241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032219, -0.485502, -0.873642,
		0.865624, -0.423421, 0.267228,
		-0.499658, -0.764855, 0.406619,
		37.268623, 39.664658, 45.274227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918549, 39.598751, 44.685722>,  <37.618385, 40.200058, 44.989594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918549, 39.598751, 44.685722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588818, 39.427181, 44.833511>,  <37.390980, 39.324238, 44.922184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588818, 39.427181, 44.833511>,  <37.918549, 39.598751, 44.685722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588818, 39.427181, 44.833511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167512, -0.438608, -0.882929,
		0.540761, -0.789714, 0.289707,
		-0.824328, -0.428924, 0.369468,
		37.341518, 39.298504, 44.944351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048698, 38.933178, 44.471527>,  <37.918549, 39.598751, 44.685722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048698, 38.933178, 44.471527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667198, 38.959080, 44.588940>,  <37.438297, 38.974621, 44.659389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667198, 38.959080, 44.588940>,  <38.048698, 38.933178, 44.471527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667198, 38.959080, 44.588940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251431, -0.707023, -0.660985,
		0.164737, -0.704220, 0.690605,
		-0.953753, 0.064751, 0.293536,
		37.381073, 38.978504, 44.677002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909813, 38.323349, 44.646885>,  <38.048698, 38.933178, 44.471527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909813, 38.323349, 44.646885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563156, 38.494621, 44.544441>,  <37.355164, 38.597385, 44.482975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563156, 38.494621, 44.544441>,  <37.909813, 38.323349, 44.646885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563156, 38.494621, 44.544441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115204, -0.671179, -0.732289,
		-0.485448, -0.605127, 0.631000,
		-0.866641, 0.428182, -0.256110,
		37.303165, 38.623077, 44.467609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516319, 37.798420, 44.408649>,  <37.909813, 38.323349, 44.646885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516319, 37.798420, 44.408649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327839, 38.112587, 44.248108>,  <37.214748, 38.301086, 44.151783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327839, 38.112587, 44.248108>,  <37.516319, 37.798420, 44.408649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327839, 38.112587, 44.248108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277638, -0.563983, -0.777715,
		-0.837188, -0.255032, 0.483813,
		-0.471205, 0.785419, -0.401353,
		37.186478, 38.348213, 44.127701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727837, 37.620956, 44.346333>,  <37.516319, 37.798420, 44.408649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727837, 37.620956, 44.346333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814362, 37.894608, 44.067715>,  <36.866276, 38.058800, 43.900543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814362, 37.894608, 44.067715>,  <36.727837, 37.620956, 44.346333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814362, 37.894608, 44.067715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362021, -0.606371, -0.707994,
		-0.906725, 0.405312, 0.116504,
		0.216313, 0.684133, -0.696543,
		36.879257, 38.099846, 43.858753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151936, 37.653362, 43.934223>,  <36.727837, 37.620956, 44.346333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151936, 37.653362, 43.934223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431286, 37.832485, 43.710892>,  <36.598896, 37.939960, 43.576893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431286, 37.832485, 43.710892>,  <36.151936, 37.653362, 43.934223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431286, 37.832485, 43.710892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300411, -0.524648, -0.796554,
		-0.649630, 0.724026, -0.231877,
		0.698380, 0.447807, -0.558332,
		36.640800, 37.966827, 43.543392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796055, 37.950428, 43.307503>,  <36.151936, 37.653362, 43.934223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796055, 37.950428, 43.307503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181911, 37.859299, 43.254498>,  <36.413425, 37.804623, 43.222694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181911, 37.859299, 43.254498>,  <35.796055, 37.950428, 43.307503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181911, 37.859299, 43.254498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235178, -0.517089, -0.822988,
		0.118973, 0.825055, -0.552385,
		0.964643, -0.227822, -0.132515,
		36.471306, 37.790951, 43.214745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028660, 38.134510, 42.662914>,  <35.796055, 37.950428, 43.307503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028660, 38.134510, 42.662914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261009, 37.829697, 42.777382>,  <36.400417, 37.646809, 42.846062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261009, 37.829697, 42.777382>,  <36.028660, 38.134510, 42.662914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261009, 37.829697, 42.777382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126682, -0.431907, -0.892977,
		0.804076, 0.482455, -0.347419,
		0.580874, -0.762033, 0.286168,
		36.435272, 37.601086, 42.863232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437435, 37.988998, 42.066635>,  <36.028660, 38.134510, 42.662914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437435, 37.988998, 42.066635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466022, 37.672207, 42.309174>,  <36.483173, 37.482132, 42.454697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466022, 37.672207, 42.309174>,  <36.437435, 37.988998, 42.066635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466022, 37.672207, 42.309174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059033, -0.603479, -0.795191,
		0.995695, 0.092624, 0.003625,
		0.071466, -0.791981, 0.606349,
		36.487461, 37.434612, 42.491077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104755, 37.596401, 41.895531>,  <36.437435, 37.988998, 42.066635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104755, 37.596401, 41.895531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852650, 37.331505, 42.057617>,  <36.701385, 37.172565, 42.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852650, 37.331505, 42.057617>,  <37.104755, 37.596401, 41.895531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852650, 37.331505, 42.057617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185709, -0.635374, -0.749541,
		0.753846, -0.397154, 0.523436,
		-0.630261, -0.662245, 0.405219,
		36.663570, 37.132832, 42.179184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391117, 37.002392, 41.742561>,  <37.104755, 37.596401, 41.895531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391117, 37.002392, 41.742561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032475, 36.867054, 41.856838>,  <36.817287, 36.785851, 41.925404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032475, 36.867054, 41.856838>,  <37.391117, 37.002392, 41.742561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032475, 36.867054, 41.856838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083623, -0.762909, -0.641075,
		0.434860, -0.550901, 0.712323,
		-0.896607, -0.338345, 0.285690,
		36.763493, 36.765553, 41.942547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391270, 36.287483, 41.874767>,  <37.391117, 37.002392, 41.742561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391270, 36.287483, 41.874767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001244, 36.345779, 41.807812>,  <36.767227, 36.380756, 41.767639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001244, 36.345779, 41.807812>,  <37.391270, 36.287483, 41.874767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001244, 36.345779, 41.807812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019966, -0.693537, -0.720144,
		-0.221039, -0.705527, 0.673331,
		-0.975060, 0.145736, -0.167385,
		36.708725, 36.389500, 41.757595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031147, 35.624966, 41.933643>,  <37.391270, 36.287483, 41.874767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031147, 35.624966, 41.933643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752640, 35.831799, 41.734512>,  <36.585537, 35.955898, 41.615032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752640, 35.831799, 41.734512>,  <37.031147, 35.624966, 41.933643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752640, 35.831799, 41.734512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100165, -0.616788, -0.780730,
		-0.710761, -0.593461, 0.377655,
		-0.696266, 0.517084, -0.497833,
		36.543758, 35.986923, 41.585163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591606, 35.057262, 41.682461>,  <37.031147, 35.624966, 41.933643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591606, 35.057262, 41.682461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488846, 35.377426, 41.465816>,  <36.427189, 35.569527, 41.335831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488846, 35.377426, 41.465816>,  <36.591606, 35.057262, 41.682461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488846, 35.377426, 41.465816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013876, -0.563418, -0.826055,
		-0.966339, -0.204696, 0.155847,
		-0.256897, 0.800412, -0.541613,
		36.411777, 35.617550, 41.303333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038818, 34.810894, 41.205940>,  <36.591606, 35.057262, 41.682461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038818, 34.810894, 41.205940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179073, 35.147762, 41.042084>,  <36.263226, 35.349884, 40.943771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179073, 35.147762, 41.042084>,  <36.038818, 34.810894, 41.205940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179073, 35.147762, 41.042084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095389, -0.467249, -0.878965,
		-0.931640, 0.269124, -0.244169,
		0.350639, 0.842170, -0.409636,
		36.284264, 35.400414, 40.919193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549641, 35.037945, 40.659790>,  <36.038818, 34.810894, 41.205940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549641, 35.037945, 40.659790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909645, 35.197632, 40.589813>,  <36.125648, 35.293446, 40.547829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909645, 35.197632, 40.589813>,  <35.549641, 35.037945, 40.659790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909645, 35.197632, 40.589813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036114, -0.468285, -0.882839,
		-0.434368, 0.788247, -0.435879,
		0.900011, 0.399218, -0.174941,
		36.179649, 35.317398, 40.537331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542332, 35.357147, 40.015079>,  <35.549641, 35.037945, 40.659790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542332, 35.357147, 40.015079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933262, 35.288155, 40.064220>,  <36.167820, 35.246761, 40.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933262, 35.288155, 40.064220>,  <35.542332, 35.357147, 40.015079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933262, 35.288155, 40.064220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036206, -0.435517, -0.899452,
		0.208643, 0.883502, -0.419395,
		0.977322, -0.172480, 0.122855,
		36.226460, 35.236412, 40.101078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811665, 35.332783, 39.337017>,  <35.542332, 35.357147, 40.015079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811665, 35.332783, 39.337017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112022, 35.180153, 39.552628>,  <36.292236, 35.088577, 39.681995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112022, 35.180153, 39.552628>,  <35.811665, 35.332783, 39.337017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112022, 35.180153, 39.552628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268798, -0.568949, -0.777203,
		0.603240, 0.728492, -0.324657,
		0.750899, -0.381572, 0.539030,
		36.337292, 35.065681, 39.714336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357578, 35.545628, 38.976295>,  <35.811665, 35.332783, 39.337017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357578, 35.545628, 38.976295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468300, 35.226738, 39.190891>,  <36.534733, 35.035404, 39.319649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468300, 35.226738, 39.190891>,  <36.357578, 35.545628, 38.976295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468300, 35.226738, 39.190891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440621, -0.390848, -0.808141,
		0.853952, 0.460083, 0.243085,
		0.276803, -0.797221, 0.536487,
		36.551342, 34.987572, 39.351837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066860, 35.334827, 38.777763>,  <36.357578, 35.545628, 38.976295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066860, 35.334827, 38.777763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934776, 34.999165, 38.950638>,  <36.855526, 34.797768, 39.054363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934776, 34.999165, 38.950638>,  <37.066860, 35.334827, 38.777763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934776, 34.999165, 38.950638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359643, -0.535181, -0.764355,
		0.872709, -0.096963, 0.478516,
		-0.330207, -0.839154, 0.432185,
		36.835712, 34.747417, 39.080292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703884, 34.936829, 38.770702>,  <37.066860, 35.334827, 38.777763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703884, 34.936829, 38.770702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401638, 34.680161, 38.823311>,  <37.220291, 34.526157, 38.854877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401638, 34.680161, 38.823311>,  <37.703884, 34.936829, 38.770702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401638, 34.680161, 38.823311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406356, -0.616705, -0.674203,
		0.513730, -0.455993, 0.726741,
		-0.755617, -0.641674, 0.131524,
		37.174953, 34.487659, 38.862766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020241, 34.311993, 38.940132>,  <37.703884, 34.936829, 38.770702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020241, 34.311993, 38.940132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658455, 34.222488, 38.794880>,  <37.441383, 34.168785, 38.707729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658455, 34.222488, 38.794880>,  <38.020241, 34.311993, 38.940132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658455, 34.222488, 38.794880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420850, -0.606737, -0.674356,
		-0.069429, -0.762758, 0.642946,
		-0.904469, -0.223764, -0.363132,
		37.387115, 34.155357, 38.685940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008171, 33.552284, 38.943863>,  <38.020241, 34.311993, 38.940132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008171, 33.552284, 38.943863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746044, 33.686180, 38.673012>,  <37.588768, 33.766518, 38.510502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746044, 33.686180, 38.673012>,  <38.008171, 33.552284, 38.943863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746044, 33.686180, 38.673012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410311, -0.594904, -0.691183,
		-0.634195, -0.730780, 0.252504,
		-0.655318, 0.334740, -0.677132,
		37.549450, 33.786602, 38.469872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005688, 32.984844, 38.650097>,  <38.008171, 33.552284, 38.943863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005688, 32.984844, 38.650097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812611, 33.234867, 38.404720>,  <37.696762, 33.384880, 38.257492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812611, 33.234867, 38.404720>,  <38.005688, 32.984844, 38.650097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812611, 33.234867, 38.404720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354940, -0.500724, -0.789489,
		-0.800639, -0.598818, 0.019841,
		-0.482695, 0.625054, -0.613444,
		37.667801, 33.422382, 38.220688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668446, 32.487717, 38.218624>,  <38.005688, 32.984844, 38.650097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668446, 32.487717, 38.218624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715710, 32.842896, 38.040817>,  <37.744068, 33.056004, 37.934135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715710, 32.842896, 38.040817>,  <37.668446, 32.487717, 38.218624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715710, 32.842896, 38.040817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463027, -0.445275, -0.766379,
		-0.878433, -0.115266, -0.463756,
		0.118161, 0.887944, -0.444515,
		37.751160, 33.109280, 37.907463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525974, 32.386108, 37.526760>,  <37.668446, 32.487717, 38.218624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525974, 32.386108, 37.526760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712257, 32.739044, 37.499668>,  <37.824028, 32.950806, 37.483414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712257, 32.739044, 37.499668>,  <37.525974, 32.386108, 37.526760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712257, 32.739044, 37.499668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632174, -0.385275, -0.672250,
		-0.619248, 0.270257, -0.737220,
		0.465712, 0.882340, -0.067731,
		37.851971, 33.003746, 37.479347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616005, 32.554993, 36.800667>,  <37.525974, 32.386108, 37.526760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616005, 32.554993, 36.800667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904217, 32.765213, 36.981613>,  <38.077145, 32.891346, 37.090179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904217, 32.765213, 36.981613>,  <37.616005, 32.554993, 36.800667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904217, 32.765213, 36.981613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659644, -0.318367, -0.680817,
		-0.213788, 0.788947, -0.576070,
		0.720530, 0.525552, 0.452361,
		38.120377, 32.922878, 37.117321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006874, 32.837410, 36.273518>,  <37.616005, 32.554993, 36.800667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006874, 32.837410, 36.273518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253456, 32.869072, 36.586876>,  <38.401405, 32.888069, 36.774891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253456, 32.869072, 36.586876>,  <38.006874, 32.837410, 36.273518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253456, 32.869072, 36.586876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785125, 0.013559, -0.619188,
		-0.059635, 0.996770, -0.053789,
		0.616459, 0.079156, 0.783398,
		38.438393, 32.892818, 36.821896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492519, 33.304932, 36.137230>,  <38.006874, 32.837410, 36.273518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492519, 33.304932, 36.137230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671574, 33.097889, 36.428902>,  <38.779007, 32.973663, 36.603905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671574, 33.097889, 36.428902>,  <38.492519, 33.304932, 36.137230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671574, 33.097889, 36.428902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768044, -0.195079, -0.609962,
		0.457969, 0.833083, 0.310221,
		0.447631, -0.517607, 0.729184,
		38.805862, 32.942608, 36.647655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195293, 33.584820, 36.142944>,  <38.492519, 33.304932, 36.137230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195293, 33.584820, 36.142944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196377, 33.238174, 36.342529>,  <39.197029, 33.030186, 36.462280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196377, 33.238174, 36.342529>,  <39.195293, 33.584820, 36.142944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196377, 33.238174, 36.342529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715941, -0.346678, -0.606006,
		0.698156, 0.358873, 0.619506,
		0.002710, -0.866617, 0.498967,
		39.197189, 32.978188, 36.492218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861473, 33.467083, 36.300804>,  <39.195293, 33.584820, 36.142944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861473, 33.467083, 36.300804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677460, 33.112053, 36.310474>,  <39.567051, 32.899036, 36.316277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677460, 33.112053, 36.310474>,  <39.861473, 33.467083, 36.300804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677460, 33.112053, 36.310474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772205, -0.413380, -0.482511,
		0.438255, -0.203306, 0.875557,
		-0.460035, -0.887572, 0.024172,
		39.539448, 32.845783, 36.317726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274929, 33.114361, 36.590580>,  <39.861473, 33.467083, 36.300804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274929, 33.114361, 36.590580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041691, 32.835339, 36.424007>,  <39.901749, 32.667927, 36.324062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041691, 32.835339, 36.424007>,  <40.274929, 33.114361, 36.590580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041691, 32.835339, 36.424007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807307, -0.440198, -0.393041,
		0.090853, -0.565371, 0.819818,
		-0.583096, -0.697554, -0.416435,
		39.866760, 32.626072, 36.299076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657692, 32.433105, 36.689800>,  <40.274929, 33.114361, 36.590580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657692, 32.433105, 36.689800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405300, 32.352989, 36.389999>,  <40.253864, 32.304920, 36.210121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405300, 32.352989, 36.389999>,  <40.657692, 32.433105, 36.689800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405300, 32.352989, 36.389999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749190, -0.408166, -0.521647,
		-0.201440, -0.890666, 0.407597,
		-0.630981, -0.200287, -0.749499,
		40.216007, 32.292904, 36.165150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800934, 31.751141, 36.453522>,  <40.657692, 32.433105, 36.689800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800934, 31.751141, 36.453522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610966, 31.921873, 36.145683>,  <40.496986, 32.024311, 35.960979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610966, 31.921873, 36.145683>,  <40.800934, 31.751141, 36.453522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610966, 31.921873, 36.145683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637107, -0.436513, -0.635257,
		-0.607083, -0.792006, -0.064629,
		-0.474915, 0.426829, -0.769592,
		40.468491, 32.049923, 35.914806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879757, 31.261679, 35.935402>,  <40.800934, 31.751141, 36.453522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879757, 31.261679, 35.935402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807529, 31.628124, 35.792221>,  <40.764194, 31.847992, 35.706310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807529, 31.628124, 35.792221>,  <40.879757, 31.261679, 35.935402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807529, 31.628124, 35.792221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687765, -0.142565, -0.711797,
		-0.703119, -0.374715, -0.604328,
		-0.180565, 0.916113, -0.357956,
		40.753361, 31.902958, 35.684834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788631, 31.154676, 35.264053>,  <40.879757, 31.261679, 35.935402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788631, 31.154676, 35.264053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954311, 31.504976, 35.363247>,  <41.053719, 31.715157, 35.422764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954311, 31.504976, 35.363247>,  <40.788631, 31.154676, 35.264053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954311, 31.504976, 35.363247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865493, -0.294635, -0.405108,
		-0.281708, 0.382427, -0.879994,
		0.414201, 0.875751, 0.247987,
		41.078571, 31.767702, 35.437641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210793, 31.416136, 34.621273>,  <40.788631, 31.154676, 35.264053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210793, 31.416136, 34.621273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350357, 31.580767, 34.958050>,  <41.434097, 31.679546, 35.160114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350357, 31.580767, 34.958050>,  <41.210793, 31.416136, 34.621273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350357, 31.580767, 34.958050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934883, -0.215382, -0.282142,
		0.065215, 0.885558, -0.459928,
		0.348913, 0.411579, 0.841940,
		41.455032, 31.704241, 35.210632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768021, 31.969376, 34.548096>,  <41.210793, 31.416136, 34.621273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768021, 31.969376, 34.548096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767056, 31.737429, 34.873978>,  <41.766476, 31.598261, 35.069508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767056, 31.737429, 34.873978>,  <41.768021, 31.969376, 34.548096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767056, 31.737429, 34.873978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853560, -0.425650, -0.300430,
		0.520989, 0.694677, 0.495978,
		-0.002411, -0.579868, 0.814707,
		41.766331, 31.563469, 35.118389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416897, 31.849440, 34.922894>,  <41.768021, 31.969376, 34.548096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416897, 31.849440, 34.922894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188232, 31.526951, 34.983837>,  <42.051033, 31.333458, 35.020401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188232, 31.526951, 34.983837>,  <42.416897, 31.849440, 34.922894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188232, 31.526951, 34.983837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754733, -0.589538, -0.287788,
		0.321841, -0.049529, 0.945497,
		-0.571661, -0.806220, 0.152357,
		42.016735, 31.285084, 35.029545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537502, 31.188808, 34.564899>,  <42.416897, 31.849440, 34.922894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537502, 31.188808, 34.564899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143078, 31.249420, 34.592381>,  <41.906422, 31.285788, 34.608871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143078, 31.249420, 34.592381>,  <42.537502, 31.188808, 34.564899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143078, 31.249420, 34.592381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010151, -0.466974, 0.884213,
		0.166069, 0.871191, 0.462003,
		-0.986062, 0.151530, 0.068706,
		41.847260, 31.294880, 34.612991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577755, 31.760914, 34.133354>,  <42.537502, 31.188808, 34.564899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577755, 31.760914, 34.133354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918812, 31.968988, 34.152985>,  <43.123447, 32.093834, 34.164761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918812, 31.968988, 34.152985>,  <42.577755, 31.760914, 34.133354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918812, 31.968988, 34.152985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009425, 0.078592, -0.996862,
		-0.522410, 0.850429, 0.062108,
		0.852642, 0.520186, 0.049073,
		43.174606, 32.125046, 34.167706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571037, 32.409126, 33.735336>,  <42.577755, 31.760914, 34.133354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571037, 32.409126, 33.735336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944973, 32.268768, 33.757046>,  <43.169334, 32.184555, 33.770069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944973, 32.268768, 33.757046>,  <42.571037, 32.409126, 33.735336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944973, 32.268768, 33.757046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030212, -0.073680, -0.996824,
		0.353780, 0.933512, -0.058278,
		0.934841, -0.350895, 0.054270,
		43.225426, 32.163498, 33.773327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004135, 32.945297, 33.268208>,  <42.571037, 32.409126, 33.735336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004135, 32.945297, 33.268208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202435, 32.600616, 33.311501>,  <43.321415, 32.393810, 33.337475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202435, 32.600616, 33.311501>,  <43.004135, 32.945297, 33.268208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202435, 32.600616, 33.311501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300620, 0.053349, -0.952251,
		0.814778, 0.504610, 0.285491,
		0.495746, -0.861698, 0.108228,
		43.351158, 32.342106, 33.343967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527649, 33.052353, 32.868282>,  <43.004135, 32.945297, 33.268208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527649, 33.052353, 32.868282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523643, 32.655823, 32.920689>,  <43.521240, 32.417904, 32.952133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523643, 32.655823, 32.920689>,  <43.527649, 33.052353, 32.868282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523643, 32.655823, 32.920689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224149, -0.129918, -0.965856,
		0.974503, 0.019698, 0.223507,
		-0.010012, -0.991329, 0.131021,
		43.520641, 32.358425, 32.959995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178165, 32.785835, 32.685268>,  <43.527649, 33.052353, 32.868282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178165, 32.785835, 32.685268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923969, 32.478291, 32.656998>,  <43.771450, 32.293762, 32.640034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923969, 32.478291, 32.656998>,  <44.178165, 32.785835, 32.685268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923969, 32.478291, 32.656998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198555, -0.074278, -0.977271,
		0.746140, -0.635082, 0.199865,
		-0.635492, -0.768865, -0.070677,
		43.733322, 32.247631, 32.635796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530296, 32.407547, 32.204605>,  <44.178165, 32.785835, 32.685268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530296, 32.407547, 32.204605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151497, 32.279518, 32.193729>,  <43.924217, 32.202702, 32.187202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151497, 32.279518, 32.193729>,  <44.530296, 32.407547, 32.204605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151497, 32.279518, 32.193729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075591, -0.139782, -0.987293,
		0.312207, -0.937023, 0.156569,
		-0.947002, -0.320075, -0.027190,
		43.867397, 32.183495, 32.185574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485985, 31.766638, 31.833271>,  <44.530296, 32.407547, 32.204605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485985, 31.766638, 31.833271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130623, 31.948929, 31.811171>,  <43.917408, 32.058304, 31.797911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130623, 31.948929, 31.811171>,  <44.485985, 31.766638, 31.833271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130623, 31.948929, 31.811171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073672, 0.022740, -0.997023,
		-0.453115, -0.889828, -0.053777,
		-0.888402, 0.455728, -0.055251,
		43.864101, 32.085648, 31.794596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323174, 31.559534, 31.077969>,  <44.485985, 31.766638, 31.833271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323174, 31.559534, 31.077969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044754, 31.816311, 31.206606>,  <43.877701, 31.970377, 31.283789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.044754, 31.816311, 31.206606>,  <44.323174, 31.559534, 31.077969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044754, 31.816311, 31.206606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329753, 0.112058, -0.937393,
		-0.637790, -0.758520, 0.133685,
		-0.696051, 0.641943, 0.321594,
		43.835938, 32.008892, 31.303083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712452, 31.396347, 30.702982>,  <44.323174, 31.559534, 31.077969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712452, 31.396347, 30.702982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692417, 31.777992, 30.821070>,  <43.680397, 32.006981, 30.891922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692417, 31.777992, 30.821070>,  <43.712452, 31.396347, 30.702982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692417, 31.777992, 30.821070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256272, 0.273418, -0.927128,
		-0.965306, -0.122093, 0.230819,
		-0.050085, 0.954115, 0.295221,
		43.677391, 32.064228, 30.909636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075249, 31.740526, 30.379475>,  <43.712452, 31.396347, 30.702982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075249, 31.740526, 30.379475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348515, 32.020306, 30.463434>,  <43.512474, 32.188171, 30.513811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348515, 32.020306, 30.463434>,  <43.075249, 31.740526, 30.379475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348515, 32.020306, 30.463434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088526, 0.364632, -0.926934,
		-0.724879, 0.614666, 0.311024,
		0.683164, 0.699449, 0.209900,
		43.553463, 32.230141, 30.526403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844860, 32.286766, 30.032265>,  <43.075249, 31.740526, 30.379475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844860, 32.286766, 30.032265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211918, 32.426296, 30.108416>,  <43.432152, 32.510014, 30.154106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211918, 32.426296, 30.108416>,  <42.844860, 32.286766, 30.032265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211918, 32.426296, 30.108416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098410, 0.264670, -0.959304,
		-0.385021, 0.899037, 0.208546,
		0.917646, 0.348829, 0.190378,
		43.487213, 32.530945, 30.165529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968353, 32.983124, 29.705862>,  <42.844860, 32.286766, 30.032265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968353, 32.983124, 29.705862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328396, 32.811504, 29.736156>,  <43.544422, 32.708534, 29.754333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328396, 32.811504, 29.736156>,  <42.968353, 32.983124, 29.705862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328396, 32.811504, 29.736156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198290, 0.248640, -0.948082,
		0.387938, 0.868389, 0.308877,
		0.900103, -0.429044, 0.075736,
		43.598427, 32.682793, 29.758877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420273, 33.450577, 29.342096>,  <42.968353, 32.983124, 29.705862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420273, 33.450577, 29.342096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629505, 33.110706, 29.368742>,  <43.755047, 32.906784, 29.384729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629505, 33.110706, 29.368742>,  <43.420273, 33.450577, 29.342096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629505, 33.110706, 29.368742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290036, 0.103966, -0.951352,
		0.801413, 0.516958, 0.300819,
		0.523084, -0.849674, 0.066616,
		43.786430, 32.855804, 29.388727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196815, 33.567245, 29.261137>,  <43.420273, 33.450577, 29.342096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196815, 33.567245, 29.261137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123802, 33.187992, 29.157045>,  <44.079994, 32.960438, 29.094591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123802, 33.187992, 29.157045>,  <44.196815, 33.567245, 29.261137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123802, 33.187992, 29.157045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486118, 0.143029, -0.862109,
		0.854617, -0.283866, 0.434798,
		-0.182535, -0.948137, -0.260227,
		44.069042, 32.903553, 29.078978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762581, 33.368244, 28.998659>,  <44.196815, 33.567245, 29.261137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762581, 33.368244, 28.998659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496254, 33.100445, 28.866926>,  <44.336456, 32.939766, 28.787888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496254, 33.100445, 28.866926>,  <44.762581, 33.368244, 28.998659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496254, 33.100445, 28.866926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358869, 0.099621, -0.928056,
		0.654139, -0.736105, 0.173932,
		-0.665819, -0.669496, -0.329331,
		44.296509, 32.899597, 28.768127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118683, 33.013771, 28.555872>,  <44.762581, 33.368244, 28.998659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118683, 33.013771, 28.555872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749916, 32.899670, 28.451025>,  <44.528656, 32.831207, 28.388117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749916, 32.899670, 28.451025>,  <45.118683, 33.013771, 28.555872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749916, 32.899670, 28.451025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253620, 0.067027, -0.964979,
		0.292834, -0.956105, 0.010553,
		-0.921914, -0.285255, -0.262115,
		44.473343, 32.814095, 28.372391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234322, 32.390495, 28.120089>,  <45.118683, 33.013771, 28.555872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234322, 32.390495, 28.120089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874634, 32.531513, 28.016464>,  <44.658821, 32.616123, 27.954290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874634, 32.531513, 28.016464>,  <45.234322, 32.390495, 28.120089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874634, 32.531513, 28.016464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258384, -0.049880, -0.964754,
		-0.353046, -0.934463, -0.046240,
		-0.899220, 0.352550, -0.259060,
		44.604866, 32.637280, 27.938745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912819, 31.856859, 27.547220>,  <45.234322, 32.390495, 28.120089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912819, 31.856859, 27.547220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779064, 32.233517, 27.531763>,  <44.698811, 32.459511, 27.522490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779064, 32.233517, 27.531763>,  <44.912819, 31.856859, 27.547220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779064, 32.233517, 27.531763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187601, 0.026324, -0.981892,
		-0.923575, -0.335581, -0.185455,
		-0.334386, 0.941643, -0.038643,
		44.678749, 32.516010, 27.520170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584778, 31.793791, 26.981647>,  <44.912819, 31.856859, 27.547220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584778, 31.793791, 26.981647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614929, 32.189110, 27.034695>,  <44.633022, 32.426300, 27.066523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614929, 32.189110, 27.034695>,  <44.584778, 31.793791, 26.981647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614929, 32.189110, 27.034695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125698, 0.122519, -0.984474,
		-0.989200, 0.090881, -0.114992,
		0.075381, 0.988296, 0.132619,
		44.637543, 32.485600, 27.074480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156822, 32.126698, 26.469807>,  <44.584778, 31.793791, 26.981647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156822, 32.126698, 26.469807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390835, 32.424889, 26.597561>,  <44.531242, 32.603802, 26.674213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390835, 32.424889, 26.597561>,  <44.156822, 32.126698, 26.469807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390835, 32.424889, 26.597561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168262, 0.273674, -0.946990,
		-0.793365, 0.607758, 0.034672,
		0.585029, 0.745475, 0.319386,
		44.566345, 32.648533, 26.693377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838970, 32.744728, 26.134087>,  <44.156822, 32.126698, 26.469807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838970, 32.744728, 26.134087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.214108, 32.837479, 26.237379>,  <44.439190, 32.893127, 26.299355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.214108, 32.837479, 26.237379>,  <43.838970, 32.744728, 26.134087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214108, 32.837479, 26.237379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149086, 0.402747, -0.903088,
		-0.313407, 0.885454, 0.343144,
		0.937843, 0.231877, 0.258233,
		44.495461, 32.907043, 26.314850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805511, 33.464260, 26.029575>,  <43.838970, 32.744728, 26.134087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805511, 33.464260, 26.029575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159424, 33.283005, 25.986063>,  <44.371769, 33.174252, 25.959955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159424, 33.283005, 25.986063>,  <43.805511, 33.464260, 26.029575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159424, 33.283005, 25.986063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145917, 0.491075, -0.858809,
		0.442580, 0.743982, 0.500613,
		0.884777, -0.453140, -0.108780,
		44.424858, 33.147064, 25.953428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273949, 34.007236, 25.671213>,  <43.805511, 33.464260, 26.029575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273949, 34.007236, 25.671213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417927, 33.635254, 25.641224>,  <44.504314, 33.412064, 25.623230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417927, 33.635254, 25.641224>,  <44.273949, 34.007236, 25.671213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417927, 33.635254, 25.641224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176983, 0.146962, -0.973180,
		0.916031, 0.337027, 0.217485,
		0.359950, -0.929954, -0.074974,
		44.525913, 33.356266, 25.618732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733242, 34.623798, 25.422146>,  <44.273949, 34.007236, 25.671213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733242, 34.623798, 25.422146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363941, 34.558636, 25.561327>,  <44.142361, 34.519539, 25.644835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363941, 34.558636, 25.561327>,  <44.733242, 34.623798, 25.422146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363941, 34.558636, 25.561327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206584, 0.553091, 0.807102,
		-0.323933, 0.817038, -0.476987,
		-0.923250, -0.162909, 0.347951,
		44.086967, 34.509762, 25.665712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356842, 35.240505, 25.553528>,  <44.733242, 34.623798, 25.422146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356842, 35.240505, 25.553528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280937, 34.979446, 25.846935>,  <44.235394, 34.822811, 26.022980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280937, 34.979446, 25.846935>,  <44.356842, 35.240505, 25.553528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280937, 34.979446, 25.846935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249603, 0.690479, 0.678924,
		-0.949573, 0.311922, 0.031874,
		-0.189763, -0.652643, 0.733517,
		44.224007, 34.783653, 26.066990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926250, 35.485752, 25.972733>,  <44.356842, 35.240505, 25.553528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926250, 35.485752, 25.972733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166416, 35.230106, 26.164999>,  <44.310516, 35.076717, 26.280359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166416, 35.230106, 26.164999>,  <43.926250, 35.485752, 25.972733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166416, 35.230106, 26.164999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185885, 0.696141, 0.693422,
		-0.777788, -0.326989, 0.536772,
		0.600411, -0.639113, 0.480667,
		44.346539, 35.038372, 26.309198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666256, 35.502331, 26.703394>,  <43.926250, 35.485752, 25.972733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666256, 35.502331, 26.703394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046822, 35.391590, 26.649496>,  <44.275162, 35.325146, 26.617157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046822, 35.391590, 26.649496>,  <43.666256, 35.502331, 26.703394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046822, 35.391590, 26.649496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301891, 0.752725, 0.585035,
		-0.060543, -0.597291, 0.799736,
		0.951418, -0.276853, -0.134745,
		44.332249, 35.308533, 26.609072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892193, 35.333622, 27.380997>,  <43.666256, 35.502331, 26.703394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892193, 35.333622, 27.380997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153881, 35.499477, 27.127993>,  <44.310894, 35.598991, 26.976191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153881, 35.499477, 27.127993>,  <43.892193, 35.333622, 27.380997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153881, 35.499477, 27.127993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317965, 0.608026, 0.727463,
		0.686219, -0.677037, 0.265941,
		0.654219, 0.414639, -0.632513,
		44.350147, 35.623867, 26.938238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649685, 35.195053, 27.678099>,  <43.892193, 35.333622, 27.380997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649685, 35.195053, 27.678099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623234, 35.511204, 27.434483>,  <44.607365, 35.700893, 27.288313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623234, 35.511204, 27.434483>,  <44.649685, 35.195053, 27.678099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623234, 35.511204, 27.434483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454739, 0.567175, 0.686677,
		0.888167, -0.231548, -0.396920,
		-0.066125, 0.790379, -0.609039,
		44.603397, 35.748318, 27.251770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263199, 35.545456, 27.624578>,  <44.649685, 35.195053, 27.678099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263199, 35.545456, 27.624578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971188, 35.803570, 27.534542>,  <44.795982, 35.958439, 27.480520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971188, 35.803570, 27.534542>,  <45.263199, 35.545456, 27.624578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971188, 35.803570, 27.534542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312250, 0.607912, 0.730029,
		0.607912, 0.462658, -0.645283,
		-0.730029, 0.645283, -0.225092,
		44.752178, 35.997154, 27.467014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516411, 36.174915, 27.611830>,  <45.263199, 35.545456, 27.624578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516411, 36.174915, 27.611830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124275, 36.221909, 27.675240>,  <44.888992, 36.250103, 27.713285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124275, 36.221909, 27.675240>,  <45.516411, 36.174915, 27.611830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124275, 36.221909, 27.675240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195407, 0.466723, 0.862546,
		0.027346, 0.876566, -0.480505,
		-0.980341, 0.117481, 0.158524,
		44.830173, 36.257153, 27.722797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361046, 36.862743, 27.978258>,  <45.516411, 36.174915, 27.611830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361046, 36.862743, 27.978258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046410, 36.623947, 28.041344>,  <44.857628, 36.480671, 28.079195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046410, 36.623947, 28.041344>,  <45.361046, 36.862743, 27.978258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046410, 36.623947, 28.041344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048967, 0.314926, 0.947852,
		-0.615527, 0.737851, -0.276951,
		-0.786593, -0.596990, 0.157716,
		44.810432, 36.444851, 28.088659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878632, 37.318195, 28.317152>,  <45.361046, 36.862743, 27.978258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878632, 37.318195, 28.317152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801308, 36.933765, 28.396112>,  <44.754913, 36.703106, 28.443489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801308, 36.933765, 28.396112>,  <44.878632, 37.318195, 28.317152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801308, 36.933765, 28.396112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162215, 0.229732, 0.959640,
		-0.967635, 0.153485, -0.200310,
		-0.193308, -0.961075, 0.197400,
		44.743317, 36.645443, 28.455332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623875, 37.395500, 29.004654>,  <44.878632, 37.318195, 28.317152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623875, 37.395500, 29.004654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661354, 36.999660, 28.961006>,  <44.683842, 36.762157, 28.934818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661354, 36.999660, 28.961006>,  <44.623875, 37.395500, 29.004654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661354, 36.999660, 28.961006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080945, -0.116809, 0.989850,
		-0.992304, -0.083919, -0.091049,
		0.093703, -0.989603, -0.109117,
		44.689465, 36.702778, 28.928270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130833, 37.203606, 29.347263>,  <44.623875, 37.395500, 29.004654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130833, 37.203606, 29.347263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351395, 36.870113, 29.335592>,  <44.483730, 36.670017, 29.328588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351395, 36.870113, 29.335592>,  <44.130833, 37.203606, 29.347263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351395, 36.870113, 29.335592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243154, -0.194076, 0.950374,
		-0.798018, -0.516943, -0.309738,
		0.551402, -0.833729, -0.029179,
		44.516815, 36.619995, 29.326838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718811, 36.749817, 29.687319>,  <44.130833, 37.203606, 29.347263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718811, 36.749817, 29.687319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080475, 36.582382, 29.721441>,  <44.297474, 36.481922, 29.741915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080475, 36.582382, 29.721441>,  <43.718811, 36.749817, 29.687319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080475, 36.582382, 29.721441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233468, -0.316958, 0.919255,
		-0.357753, -0.851070, -0.384309,
		0.904160, -0.418590, 0.085305,
		44.351723, 36.456806, 29.747032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613220, 36.121693, 30.087029>,  <43.718811, 36.749817, 29.687319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613220, 36.121693, 30.087029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996429, 36.234638, 30.106894>,  <44.226353, 36.302406, 30.118813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996429, 36.234638, 30.106894>,  <43.613220, 36.121693, 30.087029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996429, 36.234638, 30.106894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040766, -0.037303, 0.998472,
		0.283789, -0.958581, -0.024226,
		0.958020, 0.282367, 0.049664,
		44.283836, 36.319347, 30.121792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984203, 35.584782, 30.437260>,  <43.613220, 36.121693, 30.087029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984203, 35.584782, 30.437260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225285, 35.903137, 30.460278>,  <44.369934, 36.094151, 30.474089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225285, 35.903137, 30.460278>,  <43.984203, 35.584782, 30.437260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225285, 35.903137, 30.460278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169713, -0.198317, 0.965333,
		0.779706, -0.572047, -0.254599,
		0.602708, 0.795884, 0.057544,
		44.406097, 36.141903, 30.477541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548325, 35.313457, 30.782326>,  <43.984203, 35.584782, 30.437260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548325, 35.313457, 30.782326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589161, 35.707981, 30.834114>,  <44.613663, 35.944695, 30.865187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589161, 35.707981, 30.834114>,  <44.548325, 35.313457, 30.782326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589161, 35.707981, 30.834114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210648, -0.148636, 0.966196,
		0.972216, -0.071370, -0.222940,
		0.102095, 0.986313, 0.129473,
		44.619789, 36.003876, 30.872955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283951, 35.443203, 30.966146>,  <44.548325, 35.313457, 30.782326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283951, 35.443203, 30.966146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092514, 35.763229, 31.110836>,  <44.977654, 35.955246, 31.197649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092514, 35.763229, 31.110836>,  <45.283951, 35.443203, 30.966146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092514, 35.763229, 31.110836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331816, -0.216615, 0.918137,
		0.812925, 0.559439, -0.161804,
		-0.478593, 0.800066, 0.361722,
		44.948936, 36.003250, 31.219353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697788, 35.735722, 31.443237>,  <45.283951, 35.443203, 30.966146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697788, 35.735722, 31.443237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333023, 35.870625, 31.536770>,  <45.114166, 35.951565, 31.592890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333023, 35.870625, 31.536770>,  <45.697788, 35.735722, 31.443237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333023, 35.870625, 31.536770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188608, -0.161621, 0.968662,
		0.364479, 0.927436, 0.083775,
		-0.911911, 0.337256, 0.233830,
		45.059448, 35.971802, 31.606918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855022, 35.965057, 31.982241>,  <45.697788, 35.735722, 31.443237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855022, 35.965057, 31.982241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458935, 35.910015, 31.991467>,  <45.221283, 35.876991, 31.997002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458935, 35.910015, 31.991467>,  <45.855022, 35.965057, 31.982241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458935, 35.910015, 31.991467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083408, -0.451298, 0.888467,
		-0.111845, 0.881701, 0.458361,
		-0.990219, -0.137602, 0.023066,
		45.161869, 35.868736, 31.998386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544811, 36.097477, 32.690235>,  <45.855022, 35.965057, 31.982241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544811, 36.097477, 32.690235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255173, 35.880409, 32.519966>,  <45.081390, 35.750168, 32.417805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255173, 35.880409, 32.519966>,  <45.544811, 36.097477, 32.690235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255173, 35.880409, 32.519966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201566, -0.423730, 0.883076,
		-0.659590, 0.725231, 0.197437,
		-0.724094, -0.542672, -0.425670,
		45.037945, 35.717609, 32.392265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065651, 36.149910, 33.173973>,  <45.544811, 36.097477, 32.690235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065651, 36.149910, 33.173973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970825, 35.840824, 32.938446>,  <44.913929, 35.655373, 32.797131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970825, 35.840824, 32.938446>,  <45.065651, 36.149910, 33.173973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970825, 35.840824, 32.938446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042257, -0.597319, 0.800890,
		-0.970574, 0.214744, 0.108951,
		-0.237065, -0.772719, -0.588817,
		44.899704, 35.609009, 32.761803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480198, 35.729881, 33.546394>,  <45.065651, 36.149910, 33.173973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480198, 35.729881, 33.546394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.642384, 35.482330, 33.277294>,  <44.739697, 35.333801, 33.115833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.642384, 35.482330, 33.277294>,  <44.480198, 35.729881, 33.546394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642384, 35.482330, 33.277294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104304, -0.762476, 0.638553,
		-0.908140, -0.188741, -0.373709,
		0.405465, -0.618875, -0.672749,
		44.764023, 35.296669, 33.075470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098793, 35.016788, 33.633488>,  <44.480198, 35.729881, 33.546394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098793, 35.016788, 33.633488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459290, 34.959049, 33.470062>,  <44.675587, 34.924408, 33.372009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459290, 34.959049, 33.470062>,  <44.098793, 35.016788, 33.633488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459290, 34.959049, 33.470062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154227, -0.774278, 0.613765,
		-0.404934, -0.616164, -0.675552,
		0.901245, -0.144346, -0.408561,
		44.729664, 34.915745, 33.347492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102165, 34.364223, 33.592697>,  <44.098793, 35.016788, 33.633488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102165, 34.364223, 33.592697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.492149, 34.424774, 33.527531>,  <44.726139, 34.461105, 33.488430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.492149, 34.424774, 33.527531>,  <44.102165, 34.364223, 33.592697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492149, 34.424774, 33.527531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216300, -0.815703, 0.536510,
		-0.051680, -0.558314, -0.828019,
		0.974958, 0.151374, -0.162919,
		44.784637, 34.470188, 33.478657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377216, 33.726028, 33.403858>,  <44.102165, 34.364223, 33.592697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377216, 33.726028, 33.403858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675488, 33.947411, 33.552265>,  <44.854450, 34.080238, 33.641308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675488, 33.947411, 33.552265>,  <44.377216, 33.726028, 33.403858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675488, 33.947411, 33.552265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387769, -0.813277, 0.433839,
		0.541850, -0.179634, -0.821054,
		0.745676, 0.553455, 0.371018,
		44.899189, 34.113445, 33.663570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890446, 33.340324, 33.351093>,  <44.377216, 33.726028, 33.403858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890446, 33.340324, 33.351093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068096, 33.612339, 33.584435>,  <45.174686, 33.775547, 33.724442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068096, 33.612339, 33.584435>,  <44.890446, 33.340324, 33.351093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068096, 33.612339, 33.584435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511111, -0.727057, 0.458426,
		0.735879, 0.094561, -0.670478,
		0.444127, 0.680034, 0.583357,
		45.201336, 33.816349, 33.759441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662621, 33.176323, 33.414387>,  <44.890446, 33.340324, 33.351093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662621, 33.176323, 33.414387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553249, 33.383316, 33.738716>,  <45.487625, 33.507511, 33.933315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553249, 33.383316, 33.738716>,  <45.662621, 33.176323, 33.414387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553249, 33.383316, 33.738716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371902, -0.720522, 0.585266,
		0.887087, 0.461579, 0.004560,
		-0.273433, 0.517487, 0.810828,
		45.471218, 33.538563, 33.981964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250069, 33.160347, 33.892559>,  <45.662621, 33.176323, 33.414387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250069, 33.160347, 33.892559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909203, 33.226715, 34.091064>,  <45.704681, 33.266537, 34.210167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909203, 33.226715, 34.091064>,  <46.250069, 33.160347, 33.892559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909203, 33.226715, 34.091064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224041, -0.741382, 0.632580,
		0.472877, 0.650249, 0.594611,
		-0.852170, 0.165916, 0.496266,
		45.653553, 33.276489, 34.239944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.449223, 32.929131, 34.634186>,  <46.250069, 33.160347, 33.892559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.449223, 32.929131, 34.634186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064014, 33.018581, 34.694298>,  <45.832890, 33.072254, 34.730366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064014, 33.018581, 34.694298>,  <46.449223, 32.929131, 34.634186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064014, 33.018581, 34.694298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024821, -0.629023, 0.776990,
		0.268290, 0.744526, 0.611311,
		-0.963018, 0.223632, 0.150280,
		45.775108, 33.085670, 34.739384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257607, 33.265537, 35.358723>,  <46.449223, 32.929131, 34.634186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257607, 33.265537, 35.358723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.006241, 33.011776, 35.178665>,  <45.855423, 32.859520, 35.070629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.006241, 33.011776, 35.178665>,  <46.257607, 33.265537, 35.358723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006241, 33.011776, 35.178665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114765, -0.647963, 0.752976,
		-0.769369, 0.421517, 0.479994,
		-0.628411, -0.634403, -0.450148,
		45.817719, 32.821457, 35.043621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.270454, 33.991508, 35.248940>,  <46.257607, 33.265537, 35.358723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.270454, 33.991508, 35.248940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661812, 33.940594, 35.183765>,  <46.896626, 33.910046, 35.144661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661812, 33.940594, 35.183765>,  <46.270454, 33.991508, 35.248940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661812, 33.940594, 35.183765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001157, 0.784649, -0.619939,
		0.206760, 0.606731, 0.767546,
		0.978391, -0.127290, -0.162936,
		46.955330, 33.902409, 35.134884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629829, 34.652138, 35.413826>,  <46.270454, 33.991508, 35.248940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629829, 34.652138, 35.413826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824730, 34.429478, 35.144688>,  <46.941669, 34.295883, 34.983204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.824730, 34.429478, 35.144688>,  <46.629829, 34.652138, 35.413826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.824730, 34.429478, 35.144688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235524, 0.825719, -0.512559,
		0.840900, 0.091273, 0.533438,
		0.487253, -0.556649, -0.672850,
		46.970905, 34.262482, 34.942833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.317913, 34.885353, 35.334927>,  <46.629829, 34.652138, 35.413826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.317913, 34.885353, 35.334927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161888, 34.739635, 34.996662>,  <47.068272, 34.652206, 34.793705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161888, 34.739635, 34.996662>,  <47.317913, 34.885353, 35.334927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161888, 34.739635, 34.996662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212819, 0.857876, -0.467714,
		0.895857, -0.362410, -0.257096,
		-0.390061, -0.364290, -0.845662,
		47.044868, 34.630348, 34.742962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.895760, 34.748127, 34.871723>,  <47.317913, 34.885353, 35.334927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.895760, 34.748127, 34.871723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537411, 34.851204, 34.726940>,  <47.322403, 34.913048, 34.640072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537411, 34.851204, 34.726940>,  <47.895760, 34.748127, 34.871723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537411, 34.851204, 34.726940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377913, 0.870339, -0.315741,
		0.233659, -0.419650, -0.877096,
		-0.895871, 0.257691, -0.361954,
		47.268650, 34.928513, 34.618355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.362183, 41.274727, 39.055233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993862, 41.131794, 38.992714>,  <36.772869, 41.046032, 38.955200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993862, 41.131794, 38.992714>,  <37.362183, 41.274727, 39.055233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993862, 41.131794, 38.992714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270762, -0.297223, -0.915613,
		0.280723, -0.885421, 0.370437,
		-0.920805, -0.357334, -0.156301,
		36.717621, 41.024593, 38.945824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386040, 40.524685, 38.747723>,  <37.362183, 41.274727, 39.055233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386040, 40.524685, 38.747723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016838, 40.636608, 38.642067>,  <36.795319, 40.703762, 38.578674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016838, 40.636608, 38.642067>,  <37.386040, 40.524685, 38.747723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016838, 40.636608, 38.642067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133452, -0.411063, -0.901786,
		-0.360900, -0.867604, 0.342073,
		-0.923007, 0.279804, -0.264136,
		36.739937, 40.720551, 38.562824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043671, 39.967731, 38.434536>,  <37.386040, 40.524685, 38.747723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043671, 39.967731, 38.434536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806004, 40.262859, 38.306419>,  <36.663403, 40.439938, 38.229549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806004, 40.262859, 38.306419>,  <37.043671, 39.967731, 38.434536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806004, 40.262859, 38.306419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046735, -0.365863, -0.929494,
		-0.802985, -0.567240, 0.182901,
		-0.594163, 0.737822, -0.320293,
		36.627754, 40.484207, 38.210331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428326, 39.681038, 38.085575>,  <37.043671, 39.967731, 38.434536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428326, 39.681038, 38.085575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475788, 40.044941, 37.926445>,  <36.504265, 40.263283, 37.830967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475788, 40.044941, 37.926445>,  <36.428326, 39.681038, 38.085575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475788, 40.044941, 37.926445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000133, -0.400674, -0.916221,
		-0.992936, 0.108661, -0.047663,
		0.118655, 0.909755, -0.397828,
		36.511383, 40.317867, 37.807095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013279, 39.635384, 37.440025>,  <36.428326, 39.681038, 38.085575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013279, 39.635384, 37.440025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257744, 39.949673, 37.401825>,  <36.404423, 40.138245, 37.378906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257744, 39.949673, 37.401825>,  <36.013279, 39.635384, 37.440025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257744, 39.949673, 37.401825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177493, -0.253636, -0.950876,
		-0.771348, 0.564189, -0.294472,
		0.611163, 0.785723, -0.095502,
		36.441093, 40.185390, 37.373173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857677, 39.759750, 36.807064>,  <36.013279, 39.635384, 37.440025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857677, 39.759750, 36.807064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199581, 39.959717, 36.862877>,  <36.404724, 40.079697, 36.896366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199581, 39.959717, 36.862877>,  <35.857677, 39.759750, 36.807064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199581, 39.959717, 36.862877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382695, -0.425440, -0.820089,
		-0.350610, 0.754379, -0.554964,
		0.854761, 0.499914, 0.139534,
		36.456009, 40.109692, 36.904736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983135, 40.075710, 36.132458>,  <35.857677, 39.759750, 36.807064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983135, 40.075710, 36.132458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329819, 40.047863, 36.330032>,  <36.537827, 40.031155, 36.448578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329819, 40.047863, 36.330032>,  <35.983135, 40.075710, 36.132458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329819, 40.047863, 36.330032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430734, -0.394948, -0.811471,
		0.251574, 0.916062, -0.312316,
		0.866706, -0.069620, 0.493937,
		36.589832, 40.026978, 36.478214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515026, 40.392769, 35.628147>,  <35.983135, 40.075710, 36.132458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515026, 40.392769, 35.628147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695992, 40.153172, 35.892426>,  <36.804573, 40.009415, 36.050995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695992, 40.153172, 35.892426>,  <36.515026, 40.392769, 35.628147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695992, 40.153172, 35.892426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384141, -0.537712, -0.750534,
		0.804831, 0.593357, -0.013172,
		0.452418, -0.598993, 0.660701,
		36.831718, 39.973473, 36.090637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104446, 40.137104, 35.324425>,  <36.515026, 40.392769, 35.628147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104446, 40.137104, 35.324425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100304, 39.858498, 35.611412>,  <37.097820, 39.691334, 35.783604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100304, 39.858498, 35.611412>,  <37.104446, 40.137104, 35.324425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100304, 39.858498, 35.611412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368930, -0.669543, -0.644672,
		0.929400, 0.258020, 0.263898,
		-0.010353, -0.696518, 0.717465,
		37.097198, 39.649544, 35.826653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770168, 39.809433, 35.329857>,  <37.104446, 40.137104, 35.324425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770168, 39.809433, 35.329857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522369, 39.554932, 35.513775>,  <37.373688, 39.402233, 35.624126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522369, 39.554932, 35.513775>,  <37.770168, 39.809433, 35.329857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522369, 39.554932, 35.513775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392911, -0.758393, -0.520059,
		0.679590, -0.141519, 0.719813,
		-0.619499, -0.636249, 0.459791,
		37.336521, 39.364056, 35.651711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185238, 39.277245, 35.436623>,  <37.770168, 39.809433, 35.329857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185238, 39.277245, 35.436623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806675, 39.148159, 35.431404>,  <37.579536, 39.070709, 35.428272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806675, 39.148159, 35.431404>,  <38.185238, 39.277245, 35.436623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806675, 39.148159, 35.431404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252446, -0.713931, -0.653126,
		0.201458, -0.621416, 0.757137,
		-0.946407, -0.322714, -0.013047,
		37.522755, 39.051346, 35.427490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046810, 38.558475, 35.663696>,  <38.185238, 39.277245, 35.436623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046810, 38.558475, 35.663696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751404, 38.650990, 35.410366>,  <37.574158, 38.706497, 35.258369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751404, 38.650990, 35.410366>,  <38.046810, 38.558475, 35.663696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751404, 38.650990, 35.410366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219904, -0.805334, -0.550526,
		-0.637365, -0.545843, 0.543894,
		-0.738517, 0.231281, -0.633325,
		37.529850, 38.720375, 35.220367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022861, 37.979851, 35.363148>,  <38.046810, 38.558475, 35.663696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022861, 37.979851, 35.363148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775589, 38.178516, 35.119450>,  <37.627228, 38.297718, 34.973232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775589, 38.178516, 35.119450>,  <38.022861, 37.979851, 35.363148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775589, 38.178516, 35.119450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061956, -0.741883, -0.667661,
		-0.783594, -0.450478, 0.427842,
		-0.618176, 0.496668, -0.609245,
		37.590134, 38.327515, 34.936676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476383, 37.459267, 35.093643>,  <38.022861, 37.979851, 35.363148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476383, 37.459267, 35.093643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498539, 37.768707, 34.841141>,  <37.511833, 37.954372, 34.689640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498539, 37.768707, 34.841141>,  <37.476383, 37.459267, 35.093643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498539, 37.768707, 34.841141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034443, -0.633326, -0.773118,
		-0.997871, 0.021077, -0.061722,
		0.055385, 0.773598, -0.631252,
		37.515156, 38.000786, 34.651764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874855, 37.358032, 34.705700>,  <37.476383, 37.459267, 35.093643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874855, 37.358032, 34.705700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147247, 37.567524, 34.500969>,  <37.310684, 37.693218, 34.378132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147247, 37.567524, 34.500969>,  <36.874855, 37.358032, 34.705700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147247, 37.567524, 34.500969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042958, -0.726300, -0.686035,
		-0.731037, 0.445193, -0.517097,
		0.680985, 0.523730, -0.511827,
		37.351543, 37.724644, 34.347420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655521, 37.299717, 33.977924>,  <36.874855, 37.358032, 34.705700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655521, 37.299717, 33.977924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047668, 37.378437, 33.982861>,  <37.282955, 37.425671, 33.985821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047668, 37.378437, 33.982861>,  <36.655521, 37.299717, 33.977924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047668, 37.378437, 33.982861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176120, -0.845746, -0.503683,
		-0.088689, 0.495967, -0.863801,
		0.980365, 0.196804, 0.012341,
		37.341778, 37.437477, 33.986565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922729, 37.100906, 33.381107>,  <36.655521, 37.299717, 33.977924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922729, 37.100906, 33.381107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252216, 37.109844, 33.607735>,  <37.449909, 37.115208, 33.743710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252216, 37.109844, 33.607735>,  <36.922729, 37.100906, 33.381107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252216, 37.109844, 33.607735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284173, -0.880937, -0.378411,
		0.490653, 0.472705, -0.731990,
		0.823715, 0.022343, 0.566564,
		37.499332, 37.116547, 33.777702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435474, 36.905632, 32.895863>,  <36.922729, 37.100906, 33.381107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435474, 36.905632, 32.895863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591721, 36.843769, 33.258850>,  <37.685471, 36.806652, 33.476643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591721, 36.843769, 33.258850>,  <37.435474, 36.905632, 32.895863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591721, 36.843769, 33.258850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357010, -0.883183, -0.304191,
		0.848505, 0.442798, -0.289773,
		0.390618, -0.154656, 0.907469,
		37.708904, 36.797371, 33.531090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102051, 36.541271, 32.735992>,  <37.435474, 36.905632, 32.895863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102051, 36.541271, 32.735992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971573, 36.464466, 33.106232>,  <37.893288, 36.418385, 33.328377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971573, 36.464466, 33.106232>,  <38.102051, 36.541271, 32.735992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971573, 36.464466, 33.106232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184316, -0.973279, -0.136951,
		0.927161, 0.125930, 0.352866,
		-0.326191, -0.192014, 0.925597,
		37.873714, 36.406860, 33.383911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669296, 36.147072, 32.925720>,  <38.102051, 36.541271, 32.735992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669296, 36.147072, 32.925720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365959, 36.075733, 33.176514>,  <38.183956, 36.032932, 33.326988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365959, 36.075733, 33.176514>,  <38.669296, 36.147072, 32.925720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365959, 36.075733, 33.176514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325169, -0.937125, 0.126737,
		0.564958, 0.299985, 0.768656,
		-0.758345, -0.178342, 0.626982,
		38.138454, 36.022232, 33.364609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000168, 35.815857, 33.404285>,  <38.669296, 36.147072, 32.925720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000168, 35.815857, 33.404285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613266, 35.725933, 33.451397>,  <38.381123, 35.671978, 33.479664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613266, 35.725933, 33.451397>,  <39.000168, 35.815857, 33.404285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613266, 35.725933, 33.451397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232224, -0.971199, 0.053340,
		0.102399, 0.078946, 0.991606,
		-0.967257, -0.224812, 0.117783,
		38.323090, 35.658489, 33.486732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973713, 35.374413, 33.993916>,  <39.000168, 35.815857, 33.404285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973713, 35.374413, 33.993916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648422, 35.310608, 33.770050>,  <38.453247, 35.272324, 33.635731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648422, 35.310608, 33.770050>,  <38.973713, 35.374413, 33.993916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648422, 35.310608, 33.770050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146189, -0.986858, 0.068845,
		-0.563286, -0.025829, 0.825858,
		-0.813226, -0.159511, -0.559660,
		38.404453, 35.262756, 33.602154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677330, 35.061001, 34.006409>,  <38.973713, 35.374413, 33.993916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677330, 35.061001, 34.006409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.942616, 34.803635, 34.159340>,  <40.101788, 34.649216, 34.251099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.942616, 34.803635, 34.159340>,  <39.677330, 35.061001, 34.006409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942616, 34.803635, 34.159340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419489, 0.103490, 0.901842,
		-0.619823, -0.758492, -0.201269,
		0.663211, -0.643412, 0.382325,
		40.141579, 34.610611, 34.274036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316975, 34.537933, 34.335106>,  <39.677330, 35.061001, 34.006409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316975, 34.537933, 34.335106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684967, 34.516003, 34.490353>,  <39.905762, 34.502842, 34.583500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684967, 34.516003, 34.490353>,  <39.316975, 34.537933, 34.335106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684967, 34.516003, 34.490353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381001, 0.107532, 0.918300,
		-0.092087, -0.992688, 0.078037,
		0.919977, -0.054831, 0.388118,
		39.960960, 34.499554, 34.606789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411674, 34.044472, 34.954041>,  <39.316975, 34.537933, 34.335106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411674, 34.044472, 34.954041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.688896, 34.331680, 34.979687>,  <39.855228, 34.504005, 34.995075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.688896, 34.331680, 34.979687>,  <39.411674, 34.044472, 34.954041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688896, 34.331680, 34.979687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157794, 0.064314, 0.985376,
		0.703400, -0.693040, 0.157873,
		0.693058, 0.718025, 0.064119,
		39.896812, 34.547089, 34.998924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652863, 33.934124, 35.625660>,  <39.411674, 34.044472, 34.954041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652863, 33.934124, 35.625660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763535, 34.303070, 35.517818>,  <39.829937, 34.524437, 35.453114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763535, 34.303070, 35.517818>,  <39.652863, 33.934124, 35.625660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763535, 34.303070, 35.517818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299200, 0.349297, 0.887959,
		0.913197, -0.165011, 0.372615,
		0.276676, 0.922368, -0.269606,
		39.846539, 34.579781, 35.436935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924599, 34.332607, 36.301525>,  <39.652863, 33.934124, 35.625660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924599, 34.332607, 36.301525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.867085, 34.633018, 36.043755>,  <39.832577, 34.813263, 35.889091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.867085, 34.633018, 36.043755>,  <39.924599, 34.332607, 36.301525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867085, 34.633018, 36.043755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150251, 0.627077, 0.764329,
		0.978136, 0.206725, 0.022677,
		-0.143786, 0.751025, -0.644427,
		39.823948, 34.858326, 35.850426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253326, 34.850842, 36.590462>,  <39.924599, 34.332607, 36.301525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253326, 34.850842, 36.590462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.999073, 35.034359, 36.342113>,  <39.846523, 35.144470, 36.193104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.999073, 35.034359, 36.342113>,  <40.253326, 34.850842, 36.590462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999073, 35.034359, 36.342113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196201, 0.681830, 0.704708,
		0.746646, 0.569748, -0.343375,
		-0.635629, 0.458797, -0.620871,
		39.808384, 35.171997, 36.155853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518021, 35.544430, 36.541462>,  <40.253326, 34.850842, 36.590462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518021, 35.544430, 36.541462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.133163, 35.563400, 36.434113>,  <39.902248, 35.574783, 36.369705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.133163, 35.563400, 36.434113>,  <40.518021, 35.544430, 36.541462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133163, 35.563400, 36.434113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138785, 0.762231, 0.632252,
		0.234544, 0.645566, -0.726797,
		-0.962148, 0.047422, -0.268371,
		39.844521, 35.577625, 36.353600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417904, 36.265076, 36.529224>,  <40.518021, 35.544430, 36.541462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417904, 36.265076, 36.529224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.055706, 36.095428, 36.523605>,  <39.838387, 35.993641, 36.520233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.055706, 36.095428, 36.523605>,  <40.417904, 36.265076, 36.529224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055706, 36.095428, 36.523605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322581, 0.666438, 0.672162,
		-0.275714, 0.613173, -0.740271,
		-0.905496, -0.424122, -0.014052,
		39.784058, 35.968193, 36.519390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031982, 36.780941, 36.652771>,  <40.417904, 36.265076, 36.529224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031982, 36.780941, 36.652771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.778828, 36.477333, 36.713875>,  <39.626934, 36.295166, 36.750538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.778828, 36.477333, 36.713875>,  <40.031982, 36.780941, 36.652771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778828, 36.477333, 36.713875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426508, 0.506451, 0.749398,
		-0.646174, 0.409135, -0.644258,
		-0.632890, -0.759023, 0.152756,
		39.588959, 36.249626, 36.759701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324627, 37.119972, 36.752354>,  <40.031982, 36.780941, 36.652771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324627, 37.119972, 36.752354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267639, 36.754662, 36.904999>,  <39.233448, 36.535477, 36.996586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267639, 36.754662, 36.904999>,  <39.324627, 37.119972, 36.752354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267639, 36.754662, 36.904999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487447, 0.400290, 0.775992,
		-0.861451, -0.075461, -0.502203,
		-0.142469, -0.913276, 0.381613,
		39.224899, 36.480679, 37.019482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580002, 37.052917, 36.911449>,  <39.324627, 37.119972, 36.752354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580002, 37.052917, 36.911449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773457, 36.794544, 37.147713>,  <38.889530, 36.639523, 37.289471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773457, 36.794544, 37.147713>,  <38.580002, 37.052917, 36.911449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773457, 36.794544, 37.147713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364564, 0.464845, 0.806853,
		-0.795735, -0.605552, -0.010668,
		0.483632, -0.645930, 0.590656,
		38.918545, 36.600765, 37.324909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064442, 36.749821, 37.387764>,  <38.580002, 37.052917, 36.911449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064442, 36.749821, 37.387764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418346, 36.669594, 37.556038>,  <38.630688, 36.621456, 37.657001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418346, 36.669594, 37.556038>,  <38.064442, 36.749821, 37.387764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418346, 36.669594, 37.556038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272999, 0.508545, 0.816611,
		-0.377723, -0.837350, 0.395185,
		0.884758, -0.200568, 0.420684,
		38.683773, 36.609425, 37.682243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878147, 36.467484, 37.988590>,  <38.064442, 36.749821, 37.387764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878147, 36.467484, 37.988590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242783, 36.627289, 38.027367>,  <38.461563, 36.723171, 38.050632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242783, 36.627289, 38.027367>,  <37.878147, 36.467484, 37.988590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242783, 36.627289, 38.027367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286211, 0.447478, 0.847258,
		0.295113, -0.800095, 0.522261,
		0.911587, 0.399514, 0.096940,
		38.516258, 36.747143, 38.056450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055355, 36.347256, 38.591309>,  <37.878147, 36.467484, 37.988590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055355, 36.347256, 38.591309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313156, 36.646900, 38.530052>,  <38.467834, 36.826687, 38.493298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313156, 36.646900, 38.530052>,  <38.055355, 36.347256, 38.591309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313156, 36.646900, 38.530052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336165, 0.457506, 0.823214,
		0.686742, -0.479081, 0.546688,
		0.644499, 0.749113, -0.153138,
		38.506508, 36.871635, 38.484112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365540, 36.528751, 39.313156>,  <38.055355, 36.347256, 38.591309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365540, 36.528751, 39.313156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427967, 36.843197, 39.073933>,  <38.465424, 37.031864, 38.930401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427967, 36.843197, 39.073933>,  <38.365540, 36.528751, 39.313156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427967, 36.843197, 39.073933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480595, 0.589408, 0.649328,
		0.862943, 0.186082, 0.469790,
		0.156069, 0.786112, -0.598056,
		38.474789, 37.079029, 38.894516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803547, 37.015129, 39.632702>,  <38.365540, 36.528751, 39.313156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803547, 37.015129, 39.632702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589691, 37.228935, 39.370876>,  <38.461376, 37.357220, 39.213779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589691, 37.228935, 39.370876>,  <38.803547, 37.015129, 39.632702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589691, 37.228935, 39.370876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250061, 0.639811, 0.726712,
		0.807233, 0.552213, -0.208411,
		-0.534643, 0.534511, -0.654564,
		38.429298, 37.389290, 39.174507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948017, 37.723175, 39.832550>,  <38.803547, 37.015129, 39.632702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948017, 37.723175, 39.832550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622528, 37.735706, 39.600388>,  <38.427235, 37.743225, 39.461090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622528, 37.735706, 39.600388>,  <38.948017, 37.723175, 39.832550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622528, 37.735706, 39.600388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415419, 0.667074, 0.618417,
		0.406548, 0.744333, -0.529800,
		-0.813724, 0.031328, -0.580407,
		38.378410, 37.745106, 39.426266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872925, 38.424976, 39.793255>,  <38.948017, 37.723175, 39.832550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872925, 38.424976, 39.793255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.518517, 38.270092, 39.691254>,  <38.305870, 38.177162, 39.630051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.518517, 38.270092, 39.691254>,  <38.872925, 38.424976, 39.793255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518517, 38.270092, 39.691254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463569, 0.749539, 0.472540,
		0.008162, 0.536895, -0.843610,
		-0.886023, -0.387215, -0.255006,
		38.252708, 38.153927, 39.614754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.491455, 38.957127, 39.284912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.193645, 38.735348, 39.433655>,  <38.014961, 38.602280, 39.522900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.193645, 38.735348, 39.433655>,  <38.491455, 38.957127, 39.284912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193645, 38.735348, 39.433655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251542, 0.748933, 0.613046,
		-0.618395, 0.362890, -0.697064,
		-0.744523, -0.554446, 0.371855,
		37.970287, 38.569016, 39.545212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836296, 39.366226, 39.370956>,  <38.491455, 38.957127, 39.284912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836296, 39.366226, 39.370956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741585, 39.067036, 39.618977>,  <37.684757, 38.887520, 39.767788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741585, 39.067036, 39.618977>,  <37.836296, 39.366226, 39.370956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741585, 39.067036, 39.618977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324740, 0.662425, 0.675083,
		-0.915687, -0.041514, -0.399743,
		-0.236774, -0.747977, 0.620055,
		37.670551, 38.842644, 39.804993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143990, 39.613983, 39.608356>,  <37.836296, 39.366226, 39.370956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143990, 39.613983, 39.608356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267227, 39.336895, 39.869190>,  <37.341171, 39.170643, 40.025692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267227, 39.336895, 39.869190>,  <37.143990, 39.613983, 39.608356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267227, 39.336895, 39.869190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476125, 0.481140, 0.736077,
		-0.823640, -0.537257, -0.181583,
		0.308096, -0.692718, 0.652087,
		37.359657, 39.129078, 40.064816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523197, 39.399227, 39.961872>,  <37.143990, 39.613983, 39.608356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523197, 39.399227, 39.961872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861565, 39.347980, 40.168949>,  <37.064587, 39.317230, 40.293194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861565, 39.347980, 40.168949>,  <36.523197, 39.399227, 39.961872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861565, 39.347980, 40.168949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365626, 0.567354, 0.737853,
		-0.388247, -0.813446, 0.433093,
		0.845921, -0.128119, 0.517691,
		37.115341, 39.309544, 40.324257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336731, 39.580700, 40.681469>,  <36.523197, 39.399227, 39.961872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336731, 39.580700, 40.681469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732517, 39.550396, 40.730801>,  <36.969990, 39.532211, 40.760399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732517, 39.550396, 40.730801>,  <36.336731, 39.580700, 40.681469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732517, 39.550396, 40.730801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068799, 0.503470, 0.861269,
		-0.127343, -0.860685, 0.492956,
		0.989470, -0.075762, 0.123327,
		37.029358, 39.527668, 40.767799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391525, 39.330460, 41.321667>,  <36.336731, 39.580700, 40.681469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391525, 39.330460, 41.321667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731346, 39.517345, 41.223713>,  <36.935238, 39.629478, 41.164940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731346, 39.517345, 41.223713>,  <36.391525, 39.330460, 41.321667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731346, 39.517345, 41.223713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026112, 0.500915, 0.865102,
		0.526860, -0.728554, 0.437753,
		0.849551, 0.467218, -0.244888,
		36.986214, 39.657509, 41.150246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795040, 39.282894, 41.908539>,  <36.391525, 39.330460, 41.321667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795040, 39.282894, 41.908539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.952354, 39.600811, 41.723660>,  <37.046745, 39.791561, 41.612732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.952354, 39.600811, 41.723660>,  <36.795040, 39.282894, 41.908539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952354, 39.600811, 41.723660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108708, 0.458989, 0.881766,
		0.912966, -0.397034, 0.094115,
		0.393289, 0.794792, -0.462202,
		37.070343, 39.839249, 41.584999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304237, 39.496059, 42.321884>,  <36.795040, 39.282894, 41.908539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304237, 39.496059, 42.321884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.233421, 39.809216, 42.083309>,  <37.190933, 39.997108, 41.940163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.233421, 39.809216, 42.083309>,  <37.304237, 39.496059, 42.321884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233421, 39.809216, 42.083309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078217, 0.592905, 0.801464,
		0.981091, 0.188544, -0.043733,
		-0.177040, 0.782889, -0.596441,
		37.180309, 40.044083, 41.904377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716923, 40.111717, 42.636276>,  <37.304237, 39.496059, 42.321884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716923, 40.111717, 42.636276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408730, 40.253708, 42.424488>,  <37.223812, 40.338902, 42.297417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408730, 40.253708, 42.424488>,  <37.716923, 40.111717, 42.636276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408730, 40.253708, 42.424488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145442, 0.710799, 0.688195,
		0.620643, 0.607252, -0.496032,
		-0.770486, 0.354980, -0.529472,
		37.177582, 40.360203, 42.265648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896336, 40.695652, 42.477757>,  <37.716923, 40.111717, 42.636276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896336, 40.695652, 42.477757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497372, 40.702637, 42.449821>,  <37.257996, 40.706829, 42.433060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497372, 40.702637, 42.449821>,  <37.896336, 40.695652, 42.477757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497372, 40.702637, 42.449821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024438, 0.830373, 0.556672,
		0.067709, 0.556935, -0.827792,
		-0.997406, 0.017462, -0.069834,
		37.198151, 40.707874, 42.428871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692505, 41.487457, 42.259869>,  <37.896336, 40.695652, 42.477757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692505, 41.487457, 42.259869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422630, 41.253162, 42.439514>,  <37.260704, 41.112583, 42.547302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422630, 41.253162, 42.439514>,  <37.692505, 41.487457, 42.259869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422630, 41.253162, 42.439514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176347, 0.718772, 0.672509,
		-0.716729, 0.374532, -0.588239,
		-0.674686, -0.585741, 0.449117,
		37.220226, 41.077438, 42.574249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047539, 41.895462, 42.355560>,  <37.692505, 41.487457, 42.259869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047539, 41.895462, 42.355560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046883, 41.601273, 42.626579>,  <37.046490, 41.424759, 42.789192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046883, 41.601273, 42.626579>,  <37.047539, 41.895462, 42.355560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046883, 41.601273, 42.626579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327539, 0.640570, 0.694542,
		-0.944836, -0.220787, -0.241945,
		-0.001637, -0.735475, 0.677550,
		37.046391, 41.380630, 42.829845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481419, 42.157627, 42.779736>,  <37.047539, 41.895462, 42.355560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481419, 42.157627, 42.779736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.680508, 41.894711, 43.006092>,  <36.799961, 41.736961, 43.141907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.680508, 41.894711, 43.006092>,  <36.481419, 42.157627, 42.779736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680508, 41.894711, 43.006092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252859, 0.514139, 0.819588,
		-0.829656, -0.551021, 0.089698,
		0.497727, -0.657295, 0.565889,
		36.829826, 41.697521, 43.175858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983658, 41.974865, 43.428970>,  <36.481419, 42.157627, 42.779736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983658, 41.974865, 43.428970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361122, 41.857307, 43.489803>,  <36.587601, 41.786774, 43.526302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361122, 41.857307, 43.489803>,  <35.983658, 41.974865, 43.428970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361122, 41.857307, 43.489803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006978, 0.441806, 0.897083,
		-0.330840, -0.847604, 0.414864,
		0.943661, -0.293896, 0.152081,
		36.644222, 41.769138, 43.535427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966946, 41.843842, 44.113678>,  <35.983658, 41.974865, 43.428970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966946, 41.843842, 44.113678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357986, 41.851028, 44.029808>,  <36.592613, 41.855343, 43.979488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357986, 41.851028, 44.029808>,  <35.966946, 41.843842, 44.113678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357986, 41.851028, 44.029808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193471, 0.315227, 0.929086,
		0.082789, -0.948846, 0.304691,
		0.977607, 0.017970, -0.209671,
		36.651268, 41.856419, 43.966908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263561, 41.509331, 44.691574>,  <35.966946, 41.843842, 44.113678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263561, 41.509331, 44.691574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575848, 41.698936, 44.528702>,  <36.763218, 41.812702, 44.430981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.575848, 41.698936, 44.528702>,  <36.263561, 41.509331, 44.691574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575848, 41.698936, 44.528702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256578, 0.350973, 0.900547,
		0.569785, -0.807542, 0.152387,
		0.780713, 0.474019, -0.407177,
		36.810062, 41.841141, 44.406548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898933, 41.327072, 44.958206>,  <36.263561, 41.509331, 44.691574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898933, 41.327072, 44.958206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926418, 41.699738, 44.815502>,  <36.942909, 41.923336, 44.729881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926418, 41.699738, 44.815502>,  <36.898933, 41.327072, 44.958206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926418, 41.699738, 44.815502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159702, 0.342722, 0.925763,
		0.984771, -0.120584, -0.125241,
		0.068709, 0.931666, -0.356760,
		36.947033, 41.979237, 44.708473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509613, 41.540512, 45.268978>,  <36.898933, 41.327072, 44.958206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509613, 41.540512, 45.268978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309872, 41.869713, 45.160667>,  <37.190025, 42.067234, 45.095680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309872, 41.869713, 45.160667>,  <37.509613, 41.540512, 45.268978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309872, 41.869713, 45.160667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059912, 0.344582, 0.936843,
		0.864325, 0.451592, -0.221375,
		-0.499352, 0.822999, -0.270775,
		37.160065, 42.116611, 45.079433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783340, 42.127373, 45.665813>,  <37.509613, 41.540512, 45.268978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783340, 42.127373, 45.665813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425632, 42.259609, 45.545151>,  <37.211006, 42.338951, 45.472755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425632, 42.259609, 45.545151>,  <37.783340, 42.127373, 45.665813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425632, 42.259609, 45.545151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224028, 0.252828, 0.941217,
		0.387421, 0.909280, -0.152035,
		-0.894269, 0.330587, -0.301655,
		37.157352, 42.358784, 45.454655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648426, 42.804127, 45.974842>,  <37.783340, 42.127373, 45.665813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648426, 42.804127, 45.974842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283577, 42.680332, 45.867321>,  <37.064667, 42.606056, 45.802807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283577, 42.680332, 45.867321>,  <37.648426, 42.804127, 45.974842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283577, 42.680332, 45.867321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385110, 0.422268, 0.820597,
		-0.140457, 0.852002, -0.504346,
		-0.912119, -0.309488, -0.268804,
		37.009941, 42.587486, 45.786678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185440, 43.436237, 46.060318>,  <37.648426, 42.804127, 45.974842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185440, 43.436237, 46.060318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983250, 43.091450, 46.075836>,  <36.861935, 42.884579, 46.085148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.983250, 43.091450, 46.075836>,  <37.185440, 43.436237, 46.060318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983250, 43.091450, 46.075836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572769, 0.368834, 0.732050,
		-0.645312, 0.347814, -0.680145,
		-0.505478, -0.861967, 0.038796,
		36.831608, 42.832859, 46.087475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466904, 43.493557, 46.136433>,  <37.185440, 43.436237, 46.060318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466904, 43.493557, 46.136433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470135, 43.121689, 46.283749>,  <36.472073, 42.898567, 46.372139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470135, 43.121689, 46.283749>,  <36.466904, 43.493557, 46.136433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470135, 43.121689, 46.283749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623045, 0.283397, 0.729041,
		-0.782144, -0.235354, -0.576939,
		0.008080, -0.929675, 0.368293,
		36.472557, 42.842785, 46.394238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703827, 43.205780, 46.330547>,  <36.466904, 43.493557, 46.136433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703827, 43.205780, 46.330547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993137, 43.048172, 46.557396>,  <36.166721, 42.953609, 46.693504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993137, 43.048172, 46.557396>,  <35.703827, 43.205780, 46.330547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993137, 43.048172, 46.557396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512020, 0.245073, 0.823271,
		-0.463368, -0.885827, -0.024489,
		0.723274, -0.394017, 0.567120,
		36.210121, 42.929966, 46.727531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238438, 43.818508, 46.087963>,  <35.703827, 43.205780, 46.330547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238438, 43.818508, 46.087963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863358, 43.680042, 46.076080>,  <34.638309, 43.596962, 46.068951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863358, 43.680042, 46.076080>,  <35.238438, 43.818508, 46.087963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863358, 43.680042, 46.076080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097409, -0.179859, -0.978858,
		0.333507, -0.920770, 0.202374,
		-0.937702, -0.346168, -0.029707,
		34.582047, 43.576191, 46.067169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236477, 43.234886, 45.571529>,  <35.238438, 43.818508, 46.087963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236477, 43.234886, 45.571529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856644, 43.351791, 45.616920>,  <34.628746, 43.421936, 45.644154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856644, 43.351791, 45.616920>,  <35.236477, 43.234886, 45.571529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856644, 43.351791, 45.616920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219291, -0.360482, -0.906623,
		-0.224068, -0.885796, 0.406398,
		-0.949581, 0.292264, 0.113475,
		34.571770, 43.439472, 45.650963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801586, 42.651047, 45.437096>,  <35.236477, 43.234886, 45.571529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801586, 42.651047, 45.437096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562672, 42.967834, 45.386448>,  <34.419323, 43.157909, 45.356060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562672, 42.967834, 45.386448>,  <34.801586, 42.651047, 45.437096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562672, 42.967834, 45.386448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348904, -0.398729, -0.848104,
		-0.722161, -0.462382, 0.514477,
		-0.597285, 0.791971, -0.126620,
		34.383488, 43.205425, 45.348461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230183, 42.355743, 45.494171>,  <34.801586, 42.651047, 45.437096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230183, 42.355743, 45.494171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248993, 42.692238, 45.278721>,  <34.260277, 42.894135, 45.149452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248993, 42.692238, 45.278721>,  <34.230183, 42.355743, 45.494171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248993, 42.692238, 45.278721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242335, -0.513503, -0.823158,
		-0.969052, 0.169234, 0.179715,
		0.047022, 0.841234, -0.538622,
		34.263100, 42.944607, 45.117134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447754, 42.353832, 45.219452>,  <34.230183, 42.355743, 45.494171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447754, 42.353832, 45.219452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644566, 42.621071, 44.996185>,  <33.762653, 42.781414, 44.862225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644566, 42.621071, 44.996185>,  <33.447754, 42.353832, 45.219452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644566, 42.621071, 44.996185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455617, -0.348721, -0.819028,
		-0.741834, 0.657300, 0.132814,
		0.492032, 0.668095, -0.558170,
		33.792175, 42.821499, 44.828735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026096, 42.537323, 44.560101>,  <33.447754, 42.353832, 45.219452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026096, 42.537323, 44.560101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394413, 42.659870, 44.463535>,  <33.615402, 42.733398, 44.405598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394413, 42.659870, 44.463535>,  <33.026096, 42.537323, 44.560101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394413, 42.659870, 44.463535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102587, -0.406912, -0.907688,
		-0.376323, 0.860558, -0.343251,
		0.920791, 0.306371, -0.241413,
		33.670650, 42.751781, 44.391113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980221, 42.812454, 43.899895>,  <33.026096, 42.537323, 44.560101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980221, 42.812454, 43.899895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371933, 42.736862, 43.928986>,  <33.606960, 42.691505, 43.946438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371933, 42.736862, 43.928986>,  <32.980221, 42.812454, 43.899895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371933, 42.736862, 43.928986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026278, -0.474715, -0.879747,
		0.200777, 0.859612, -0.469847,
		0.979285, -0.188979, 0.072723,
		33.665718, 42.680168, 43.950802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247246, 42.801895, 43.278267>,  <32.980221, 42.812454, 43.899895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247246, 42.801895, 43.278267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570316, 42.642426, 43.452034>,  <33.764156, 42.546741, 43.556293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570316, 42.642426, 43.452034>,  <33.247246, 42.801895, 43.278267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570316, 42.642426, 43.452034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151038, -0.572291, -0.806021,
		0.569955, 0.716616, -0.402010,
		0.807675, -0.398677, 0.434417,
		33.812618, 42.522823, 43.582359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801735, 42.855930, 42.770988>,  <33.247246, 42.801895, 43.278267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801735, 42.855930, 42.770988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894909, 42.581013, 43.046196>,  <33.950813, 42.416061, 43.211323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894909, 42.581013, 43.046196>,  <33.801735, 42.855930, 42.770988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894909, 42.581013, 43.046196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387252, -0.583418, -0.713904,
		0.892064, 0.432728, 0.130259,
		0.232931, -0.687292, 0.688021,
		33.964787, 42.374825, 43.252602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440403, 42.726299, 42.675777>,  <33.801735, 42.855930, 42.770988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440403, 42.726299, 42.675777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322128, 42.397583, 42.870605>,  <34.251163, 42.200356, 42.987503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322128, 42.397583, 42.870605>,  <34.440403, 42.726299, 42.675777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322128, 42.397583, 42.870605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370772, -0.568621, -0.734301,
		0.880396, -0.036532, 0.472830,
		-0.295687, -0.821788, 0.487067,
		34.233421, 42.151047, 43.016724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982399, 42.389687, 42.724724>,  <34.440403, 42.726299, 42.675777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982399, 42.389687, 42.724724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699314, 42.110321, 42.767361>,  <34.529461, 41.942703, 42.792942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.699314, 42.110321, 42.767361>,  <34.982399, 42.389687, 42.724724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699314, 42.110321, 42.767361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436263, -0.550686, -0.711632,
		0.555711, -0.457130, 0.694419,
		-0.707715, -0.698411, 0.106593,
		34.487000, 41.900799, 42.799339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295822, 41.790760, 42.889954>,  <34.982399, 42.389687, 42.724724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295822, 41.790760, 42.889954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949966, 41.726818, 42.699440>,  <34.742455, 41.688454, 42.585133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949966, 41.726818, 42.699440>,  <35.295822, 41.790760, 42.889954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949966, 41.726818, 42.699440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500789, -0.350021, -0.791641,
		-0.040160, -0.923001, 0.382696,
		-0.864637, -0.159857, -0.476286,
		34.690575, 41.678860, 42.556553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326435, 41.103367, 42.700882>,  <35.295822, 41.790760, 42.889954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326435, 41.103367, 42.700882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056713, 41.267612, 42.455376>,  <34.894878, 41.366161, 42.308071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056713, 41.267612, 42.455376>,  <35.326435, 41.103367, 42.700882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056713, 41.267612, 42.455376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459329, -0.417569, -0.783998,
		-0.578209, -0.810575, 0.092963,
		-0.674308, 0.410614, -0.613763,
		34.854420, 41.390797, 42.271248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218529, 40.587059, 42.217369>,  <35.326435, 41.103367, 42.700882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218529, 40.587059, 42.217369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039600, 40.897572, 42.039700>,  <34.932243, 41.083881, 41.933098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039600, 40.897572, 42.039700>,  <35.218529, 40.587059, 42.217369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039600, 40.897572, 42.039700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495750, -0.198142, -0.845560,
		-0.744405, -0.598431, -0.296211,
		-0.447318, 0.776286, -0.444170,
		34.905407, 41.130459, 41.906448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940067, 40.408916, 41.602985>,  <35.218529, 40.587059, 42.217369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940067, 40.408916, 41.602985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991085, 40.803276, 41.559639>,  <35.021698, 41.039890, 41.533630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991085, 40.803276, 41.559639>,  <34.940067, 40.408916, 41.602985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991085, 40.803276, 41.559639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399442, -0.151068, -0.904226,
		-0.907842, 0.072046, -0.413076,
		0.127549, 0.985895, -0.108367,
		35.029350, 41.099045, 41.527130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632454, 40.581036, 40.907230>,  <34.940067, 40.408916, 41.602985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632454, 40.581036, 40.907230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887836, 40.864922, 41.026344>,  <35.041065, 41.035255, 41.097813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887836, 40.864922, 41.026344>,  <34.632454, 40.581036, 40.907230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887836, 40.864922, 41.026344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453487, -0.034271, -0.890603,
		-0.621871, 0.703653, -0.343728,
		0.638456, 0.709717, 0.297786,
		35.079372, 41.077835, 41.115681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580868, 40.995171, 40.337341>,  <34.632454, 40.581036, 40.907230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580868, 40.995171, 40.337341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.908306, 41.094349, 40.544582>,  <35.104767, 41.153854, 40.668926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.908306, 41.094349, 40.544582>,  <34.580868, 40.995171, 40.337341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908306, 41.094349, 40.544582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470886, 0.226809, -0.852540,
		-0.328893, 0.941850, 0.068910,
		0.818593, 0.247946, 0.518100,
		35.153885, 41.168732, 40.700012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845566, 41.593269, 39.902859>,  <34.580868, 40.995171, 40.337341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845566, 41.593269, 39.902859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127975, 41.382481, 40.092102>,  <35.297421, 41.256008, 40.205647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127975, 41.382481, 40.092102>,  <34.845566, 41.593269, 39.902859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127975, 41.382481, 40.092102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609697, 0.112430, -0.784620,
		0.360284, 0.842411, 0.400673,
		0.706021, -0.526975, 0.473109,
		35.339783, 41.224388, 40.234035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395668, 41.961918, 39.802349>,  <34.845566, 41.593269, 39.902859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395668, 41.961918, 39.802349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571613, 41.617847, 39.905586>,  <35.677181, 41.411404, 39.967529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571613, 41.617847, 39.905586>,  <35.395668, 41.961918, 39.802349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571613, 41.617847, 39.905586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600152, 0.067751, -0.797012,
		0.668087, 0.505471, 0.546039,
		0.439861, -0.860180, 0.258096,
		35.703571, 41.359795, 39.983013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144646, 42.060562, 39.666073>,  <35.395668, 41.961918, 39.802349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144646, 42.060562, 39.666073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.124886, 41.662586, 39.701050>,  <36.113029, 41.423801, 39.722034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.124886, 41.662586, 39.701050>,  <36.144646, 42.060562, 39.666073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124886, 41.662586, 39.701050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685528, -0.097448, -0.721495,
		0.726368, 0.024299, 0.686876,
		-0.049403, -0.994944, 0.087441,
		36.110065, 41.364101, 39.727283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844555, 41.772606, 39.564564>,  <36.144646, 42.060562, 39.666073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844555, 41.772606, 39.564564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592514, 41.481457, 39.456356>,  <36.441292, 41.306767, 39.391430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592514, 41.481457, 39.456356>,  <36.844555, 41.772606, 39.564564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592514, 41.481457, 39.456356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543456, -0.164525, -0.823156,
		0.554644, -0.665685, 0.499233,
		-0.630099, -0.727870, -0.270518,
		36.403484, 41.263096, 39.375202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.678379, 32.647636, 26.079256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.342960, 32.863285, 26.047808>,  <45.141708, 32.992676, 26.028938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.342960, 32.863285, 26.047808>,  <45.678379, 32.647636, 26.079256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342960, 32.863285, 26.047808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109676, -0.025690, 0.993635,
		0.533671, 0.841835, 0.080671,
		-0.838550, 0.539122, -0.078619,
		45.091396, 33.025021, 26.024221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710171, 33.205570, 26.602421>,  <45.678379, 32.647636, 26.079256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710171, 33.205570, 26.602421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.327969, 33.125633, 26.515635>,  <45.098648, 33.077671, 26.463564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.327969, 33.125633, 26.515635>,  <45.710171, 33.205570, 26.602421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327969, 33.125633, 26.515635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204737, -0.080196, 0.975526,
		-0.212353, 0.976540, 0.035712,
		-0.955505, -0.199845, -0.216963,
		45.041317, 33.065681, 26.450546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296360, 33.626129, 27.104416>,  <45.710171, 33.205570, 26.602421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296360, 33.626129, 27.104416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.048882, 33.344318, 26.965359>,  <44.900394, 33.175232, 26.881924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.048882, 33.344318, 26.965359>,  <45.296360, 33.626129, 27.104416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048882, 33.344318, 26.965359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472305, -0.020056, 0.881207,
		-0.627804, 0.709396, -0.320341,
		-0.618700, -0.704524, -0.347643,
		44.863270, 33.132961, 26.861067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608692, 33.800625, 27.307577>,  <45.296360, 33.626129, 27.104416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608692, 33.800625, 27.307577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592407, 33.405769, 27.245747>,  <44.582634, 33.168854, 27.208649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592407, 33.405769, 27.245747>,  <44.608692, 33.800625, 27.307577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592407, 33.405769, 27.245747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423654, -0.123056, 0.897427,
		-0.904909, 0.102025, -0.413196,
		-0.040714, -0.987141, -0.154578,
		44.580193, 33.109627, 27.199373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939568, 33.683334, 27.563566>,  <44.608692, 33.800625, 27.307577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939568, 33.683334, 27.563566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158249, 33.350380, 27.527245>,  <44.289459, 33.150608, 27.505451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158249, 33.350380, 27.527245>,  <43.939568, 33.683334, 27.563566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158249, 33.350380, 27.527245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433367, -0.374073, 0.819916,
		-0.716455, -0.408899, -0.565237,
		0.546703, -0.832388, -0.090803,
		44.322262, 33.100662, 27.500004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466156, 33.171047, 27.653996>,  <43.939568, 33.683334, 27.563566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466156, 33.171047, 27.653996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819340, 33.005146, 27.741959>,  <44.031250, 32.905605, 27.794737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819340, 33.005146, 27.741959>,  <43.466156, 33.171047, 27.653996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819340, 33.005146, 27.741959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407883, -0.445892, 0.796751,
		-0.232394, -0.793199, -0.562875,
		0.882963, -0.414748, 0.219910,
		44.084229, 32.880722, 27.807932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255276, 32.587406, 27.993641>,  <43.466156, 33.171047, 27.653996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255276, 32.587406, 27.993641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637222, 32.629986, 28.104561>,  <43.866390, 32.655533, 28.171114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637222, 32.629986, 28.104561>,  <43.255276, 32.587406, 27.993641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637222, 32.629986, 28.104561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230083, -0.325360, 0.917171,
		0.187858, -0.939579, -0.286183,
		0.954867, 0.106452, 0.277302,
		43.923683, 32.661922, 28.187752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457973, 31.982752, 28.310259>,  <43.255276, 32.587406, 27.993641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457973, 31.982752, 28.310259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711086, 32.260674, 28.446983>,  <43.862953, 32.427425, 28.529018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.711086, 32.260674, 28.446983>,  <43.457973, 31.982752, 28.310259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711086, 32.260674, 28.446983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265244, -0.220227, 0.938694,
		0.727483, -0.684653, 0.044937,
		0.632783, 0.694803, 0.341811,
		43.900921, 32.469116, 28.549526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930267, 31.644512, 28.808554>,  <43.457973, 31.982752, 28.310259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930267, 31.644512, 28.808554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.952877, 32.036545, 28.884703>,  <43.966442, 32.271767, 28.930391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.952877, 32.036545, 28.884703>,  <43.930267, 31.644512, 28.808554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952877, 32.036545, 28.884703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273840, -0.168147, 0.946963,
		0.960113, -0.105655, 0.258882,
		0.056521, 0.980083, 0.190373,
		43.969833, 32.330570, 28.941814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278507, 31.674442, 29.482380>,  <43.930267, 31.644512, 28.808554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278507, 31.674442, 29.482380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.157864, 32.054317, 29.448618>,  <44.085476, 32.282242, 29.428360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.157864, 32.054317, 29.448618>,  <44.278507, 31.674442, 29.482380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157864, 32.054317, 29.448618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103128, 0.055512, 0.993118,
		0.947837, 0.308240, 0.081197,
		-0.301611, 0.949688, -0.084404,
		44.067379, 32.339222, 29.423296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734470, 32.098137, 29.862221>,  <44.278507, 31.674442, 29.482380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734470, 32.098137, 29.862221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.388466, 32.297794, 29.841778>,  <44.180862, 32.417587, 29.829512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.388466, 32.297794, 29.841778>,  <44.734470, 32.098137, 29.862221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388466, 32.297794, 29.841778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052244, 0.011705, 0.998566,
		0.499027, 0.866440, 0.015952,
		-0.865010, 0.499145, -0.051107,
		44.128963, 32.447536, 29.826447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823181, 32.690903, 30.377501>,  <44.734470, 32.098137, 29.862221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823181, 32.690903, 30.377501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432896, 32.616367, 30.331430>,  <44.198727, 32.571648, 30.303789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.432896, 32.616367, 30.331430>,  <44.823181, 32.690903, 30.377501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432896, 32.616367, 30.331430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132877, 0.085445, 0.987443,
		-0.174156, 0.978763, -0.108129,
		-0.975712, -0.186337, -0.115174,
		44.140182, 32.560467, 30.296879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458809, 33.140991, 30.745649>,  <44.823181, 32.690903, 30.377501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458809, 33.140991, 30.745649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.186722, 32.852215, 30.694889>,  <44.023468, 32.678951, 30.664433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.186722, 32.852215, 30.694889>,  <44.458809, 33.140991, 30.745649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186722, 32.852215, 30.694889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231032, 0.046857, 0.971817,
		-0.695646, 0.690369, -0.198663,
		-0.680221, -0.721938, -0.126901,
		43.982655, 32.635632, 30.656818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910549, 33.339050, 31.230442>,  <44.458809, 33.140991, 30.745649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910549, 33.339050, 31.230442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.820251, 32.964546, 31.122778>,  <43.766071, 32.739841, 31.058180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.820251, 32.964546, 31.122778>,  <43.910549, 33.339050, 31.230442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820251, 32.964546, 31.122778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074428, -0.258909, 0.963030,
		-0.971339, 0.237433, -0.011236,
		-0.225746, -0.936265, -0.269160,
		43.752529, 32.683666, 31.042030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170944, 33.102688, 31.486139>,  <43.910549, 33.339050, 31.230442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170944, 33.102688, 31.486139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375423, 32.761688, 31.442459>,  <43.498112, 32.557091, 31.416252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375423, 32.761688, 31.442459>,  <43.170944, 33.102688, 31.486139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375423, 32.761688, 31.442459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330115, -0.312067, 0.890864,
		-0.793536, -0.419361, -0.440950,
		0.511199, -0.852497, -0.109199,
		43.528782, 32.505939, 31.409698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691460, 32.638512, 31.865059>,  <43.170944, 33.102688, 31.486139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691460, 32.638512, 31.865059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040924, 32.449200, 31.819952>,  <43.250603, 32.335613, 31.792889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040924, 32.449200, 31.819952>,  <42.691460, 32.638512, 31.865059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040924, 32.449200, 31.819952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043797, -0.307339, 0.950592,
		-0.484558, -0.825557, -0.289239,
		0.873662, -0.473284, -0.112766,
		43.303024, 32.307213, 31.786121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538158, 32.046001, 32.316841>,  <42.691460, 32.638512, 31.865059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538158, 32.046001, 32.316841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934376, 32.038406, 32.262489>,  <43.172108, 32.033852, 32.229877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934376, 32.038406, 32.262489>,  <42.538158, 32.046001, 32.316841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934376, 32.038406, 32.262489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106399, -0.518985, 0.848136,
		-0.086621, -0.854573, -0.512057,
		0.990543, -0.018984, -0.135880,
		43.231541, 32.032711, 32.221725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887894, 31.287262, 32.516533>,  <42.538158, 32.046001, 32.316841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887894, 31.287262, 32.516533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.148418, 31.588802, 32.551174>,  <43.304733, 31.769728, 32.571960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.148418, 31.588802, 32.551174>,  <42.887894, 31.287262, 32.516533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148418, 31.588802, 32.551174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095809, -0.194919, 0.976129,
		0.752738, -0.627466, -0.199178,
		0.651311, 0.753852, 0.086606,
		43.343811, 31.814959, 32.577156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465832, 31.074345, 33.070866>,  <42.887894, 31.287262, 32.516533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465832, 31.074345, 33.070866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.497585, 31.469767, 33.019554>,  <43.516636, 31.707020, 32.988766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.497585, 31.469767, 33.019554>,  <43.465832, 31.074345, 33.070866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497585, 31.469767, 33.019554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252444, 0.104557, 0.961946,
		0.964350, -0.108747, -0.241255,
		0.079384, 0.988556, -0.128282,
		43.521400, 31.766333, 32.981071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017937, 31.204914, 33.547783>,  <43.465832, 31.074345, 33.070866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017937, 31.204914, 33.547783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819130, 31.545240, 33.479568>,  <43.699844, 31.749437, 33.438641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819130, 31.545240, 33.479568>,  <44.017937, 31.204914, 33.547783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819130, 31.545240, 33.479568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100801, 0.251809, 0.962513,
		0.861865, 0.461196, -0.210917,
		-0.497018, 0.850818, -0.170536,
		43.670025, 31.800486, 33.428406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419762, 31.788628, 33.807007>,  <44.017937, 31.204914, 33.547783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419762, 31.788628, 33.807007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.031265, 31.883858, 33.808048>,  <43.798168, 31.940996, 33.808674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.031265, 31.883858, 33.808048>,  <44.419762, 31.788628, 33.807007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031265, 31.883858, 33.808048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037430, 0.141867, 0.989178,
		0.235128, 0.960830, -0.146698,
		-0.971244, 0.238074, 0.002607,
		43.739891, 31.955280, 33.808830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275135, 32.379227, 34.206684>,  <44.419762, 31.788628, 33.807007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275135, 32.379227, 34.206684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949970, 32.146301, 34.210377>,  <43.754871, 32.006546, 34.212593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949970, 32.146301, 34.210377>,  <44.275135, 32.379227, 34.206684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949970, 32.146301, 34.210377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068938, 0.111946, 0.991320,
		-0.578294, 0.805219, -0.131146,
		-0.812911, -0.582315, 0.009228,
		43.706097, 31.971607, 34.213146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591843, 32.844185, 34.830547>,  <44.275135, 32.379227, 34.206684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591843, 32.844185, 34.830547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.969154, 32.961010, 34.767410>,  <45.195541, 33.031105, 34.729527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.969154, 32.961010, 34.767410>,  <44.591843, 32.844185, 34.830547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969154, 32.961010, 34.767410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331254, 0.859627, -0.388989,
		0.022074, 0.419212, 0.907620,
		0.943283, 0.292066, -0.157841,
		45.252140, 33.048630, 34.720058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620487, 33.574314, 34.960907>,  <44.591843, 32.844185, 34.830547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620487, 33.574314, 34.960907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.941994, 33.492443, 34.737453>,  <45.134899, 33.443321, 34.603382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.941994, 33.492443, 34.737453>,  <44.620487, 33.574314, 34.960907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941994, 33.492443, 34.737453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075830, 0.896060, -0.437408,
		0.590092, 0.393935, 0.704704,
		0.803767, -0.204673, -0.558630,
		45.183125, 33.431042, 34.569866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993553, 34.185188, 34.967670>,  <44.620487, 33.574314, 34.960907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993553, 34.185188, 34.967670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169044, 33.990417, 34.665565>,  <45.274338, 33.873554, 34.484303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169044, 33.990417, 34.665565>,  <44.993553, 34.185188, 34.967670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169044, 33.990417, 34.665565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150613, 0.788732, -0.596001,
		0.885908, 0.375234, 0.272701,
		0.438728, -0.486930, -0.755259,
		45.300663, 33.844337, 34.438988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545261, 34.603504, 34.770477>,  <44.993553, 34.185188, 34.967670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545261, 34.603504, 34.770477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440754, 34.373299, 34.460503>,  <45.378048, 34.235176, 34.274517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440754, 34.373299, 34.460503>,  <45.545261, 34.603504, 34.770477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440754, 34.373299, 34.460503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033626, 0.807758, -0.588554,
		0.964680, -0.127712, -0.230394,
		-0.261269, -0.575514, -0.774934,
		45.362373, 34.200645, 34.228024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814865, 34.928471, 34.151367>,  <45.545261, 34.603504, 34.770477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814865, 34.928471, 34.151367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545616, 34.673264, 34.001789>,  <45.384068, 34.520138, 33.912041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545616, 34.673264, 34.001789>,  <45.814865, 34.928471, 34.151367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545616, 34.673264, 34.001789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229962, 0.661170, -0.714123,
		0.702867, -0.394699, -0.591769,
		-0.673124, -0.638018, -0.373949,
		45.343678, 34.481857, 33.889606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014042, 34.846355, 33.472782>,  <45.814865, 34.928471, 34.151367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014042, 34.846355, 33.472782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.637432, 34.711586, 33.471455>,  <45.411465, 34.630722, 33.470657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.637432, 34.711586, 33.471455>,  <46.014042, 34.846355, 33.472782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637432, 34.711586, 33.471455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171902, 0.488787, -0.855300,
		0.289792, -0.804717, -0.518123,
		-0.941526, -0.336925, -0.003314,
		45.354973, 34.610508, 33.470459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791740, 34.580498, 32.692249>,  <46.014042, 34.846355, 33.472782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791740, 34.580498, 32.692249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474739, 34.701546, 32.904045>,  <45.284538, 34.774174, 33.031124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474739, 34.701546, 32.904045>,  <45.791740, 34.580498, 32.692249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474739, 34.701546, 32.904045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290299, 0.576353, -0.763900,
		-0.536341, -0.759105, -0.368914,
		-0.792506, 0.302615, 0.529489,
		45.236988, 34.792332, 33.062893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337963, 34.609539, 32.128677>,  <45.791740, 34.580498, 32.692249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337963, 34.609539, 32.128677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.158863, 34.808502, 32.425892>,  <45.051403, 34.927879, 32.604221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.158863, 34.808502, 32.425892>,  <45.337963, 34.609539, 32.128677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158863, 34.808502, 32.425892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372381, 0.651768, -0.660704,
		-0.812927, -0.572525, -0.106606,
		-0.447752, 0.497406, 0.743038,
		45.024536, 34.957726, 32.648804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725185, 34.728561, 31.809093>,  <45.337963, 34.609539, 32.128677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725185, 34.728561, 31.809093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778065, 34.988171, 32.108772>,  <44.809792, 35.143936, 32.288578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778065, 34.988171, 32.108772>,  <44.725185, 34.728561, 31.809093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778065, 34.988171, 32.108772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339988, 0.739670, -0.580773,
		-0.931091, -0.177940, 0.318443,
		0.132200, 0.649020, 0.749198,
		44.817726, 35.182877, 32.333530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060631, 35.157093, 31.815325>,  <44.725185, 34.728561, 31.809093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060631, 35.157093, 31.815325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366890, 35.332413, 32.003658>,  <44.550644, 35.437603, 32.116657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366890, 35.332413, 32.003658>,  <44.060631, 35.157093, 31.815325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366890, 35.332413, 32.003658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152812, 0.834920, -0.528732,
		-0.624849, 0.332871, 0.706230,
		0.765645, 0.438298, 0.470832,
		44.596584, 35.463902, 32.144909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777813, 35.770412, 32.090191>,  <44.060631, 35.157093, 31.815325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777813, 35.770412, 32.090191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175564, 35.783791, 32.050007>,  <44.414215, 35.791817, 32.025898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175564, 35.783791, 32.050007>,  <43.777813, 35.770412, 32.090191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175564, 35.783791, 32.050007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088629, 0.782047, -0.616886,
		0.057932, 0.622322, 0.780615,
		0.994379, 0.033447, -0.100461,
		44.473877, 35.793823, 32.019867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936062, 36.449543, 32.021481>,  <43.777813, 35.770412, 32.090191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936062, 36.449543, 32.021481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275055, 36.289600, 31.881832>,  <44.478451, 36.193634, 31.798042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275055, 36.289600, 31.881832>,  <43.936062, 36.449543, 32.021481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275055, 36.289600, 31.881832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124693, 0.489340, -0.863133,
		0.515972, 0.775022, 0.364847,
		0.847481, -0.399859, -0.349126,
		44.529301, 36.169643, 31.777094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160744, 37.017792, 31.591808>,  <43.936062, 36.449543, 32.021481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160744, 37.017792, 31.591808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366959, 36.697231, 31.470499>,  <44.490688, 36.504894, 31.397713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366959, 36.697231, 31.470499>,  <44.160744, 37.017792, 31.591808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366959, 36.697231, 31.470499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036426, 0.333117, -0.942181,
		0.856093, 0.496776, 0.142542,
		0.515537, -0.801403, -0.303275,
		44.521618, 36.456810, 31.379517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652840, 37.261528, 31.059614>,  <44.160744, 37.017792, 31.591808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652840, 37.261528, 31.059614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642326, 36.865189, 31.006645>,  <44.636017, 36.627384, 30.974863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642326, 36.865189, 31.006645>,  <44.652840, 37.261528, 31.059614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642326, 36.865189, 31.006645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009498, 0.132215, -0.991176,
		0.999609, -0.027310, 0.005936,
		-0.026284, -0.990845, -0.132422,
		44.634441, 36.567936, 30.966919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195133, 37.162052, 30.684898>,  <44.652840, 37.261528, 31.059614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195133, 37.162052, 30.684898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927841, 36.871250, 30.621731>,  <44.767467, 36.696770, 30.583830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.927841, 36.871250, 30.621731>,  <45.195133, 37.162052, 30.684898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927841, 36.871250, 30.621731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094184, 0.127891, -0.987306,
		0.737971, -0.674618, -0.016988,
		-0.668227, -0.727003, -0.157918,
		44.727371, 36.653149, 30.574356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532654, 36.661446, 30.323051>,  <45.195133, 37.162052, 30.684898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532654, 36.661446, 30.323051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151527, 36.560936, 30.254944>,  <44.922852, 36.500629, 30.214079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151527, 36.560936, 30.254944>,  <45.532654, 36.661446, 30.323051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151527, 36.560936, 30.254944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195630, -0.079468, -0.977453,
		0.232082, -0.964647, 0.124877,
		-0.952821, -0.251279, -0.170270,
		44.865681, 36.485554, 30.203863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570824, 36.129009, 29.868244>,  <45.532654, 36.661446, 30.323051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570824, 36.129009, 29.868244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181324, 36.212208, 29.831251>,  <44.947624, 36.262127, 29.809055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181324, 36.212208, 29.831251>,  <45.570824, 36.129009, 29.868244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181324, 36.212208, 29.831251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103545, 0.042906, -0.993699,
		-0.202717, -0.977188, -0.063317,
		-0.973747, 0.207996, -0.092485,
		44.889198, 36.274605, 29.803505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335243, 35.545319, 29.423943>,  <45.570824, 36.129009, 29.868244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335243, 35.545319, 29.423943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106529, 35.872284, 29.395927>,  <44.969303, 36.068462, 29.379118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106529, 35.872284, 29.395927>,  <45.335243, 35.545319, 29.423943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106529, 35.872284, 29.395927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005987, -0.081210, -0.996679,
		-0.820383, -0.570304, 0.041541,
		-0.571783, 0.817410, -0.070038,
		44.934994, 36.117508, 29.374916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846577, 35.369953, 28.933140>,  <45.335243, 35.545319, 29.423943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846577, 35.369953, 28.933140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780666, 35.763748, 28.957237>,  <44.741119, 36.000027, 28.971695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780666, 35.763748, 28.957237>,  <44.846577, 35.369953, 28.933140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780666, 35.763748, 28.957237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234183, 0.020280, -0.971981,
		-0.958127, -0.174268, 0.227209,
		-0.164778, 0.984489, 0.060242,
		44.731232, 36.059093, 28.975309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194454, 35.446220, 28.657915>,  <44.846577, 35.369953, 28.933140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194454, 35.446220, 28.657915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.400349, 35.783314, 28.594868>,  <44.523884, 35.985569, 28.557039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.400349, 35.783314, 28.594868>,  <44.194454, 35.446220, 28.657915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400349, 35.783314, 28.594868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220709, -0.047400, -0.974187,
		-0.828455, 0.536235, 0.161601,
		0.514733, 0.842737, -0.157621,
		44.554768, 36.036137, 28.547581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.791161, 36.374844, 38.324451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464569, 36.462910, 38.110954>,  <39.268612, 36.515747, 37.982857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464569, 36.462910, 38.110954>,  <39.791161, 36.374844, 38.324451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464569, 36.462910, 38.110954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327035, -0.585501, -0.741779,
		-0.475820, -0.780204, 0.406050,
		-0.816482, 0.220161, -0.533747,
		39.219624, 36.528957, 37.950829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806816, 35.892315, 37.973343>,  <39.791161, 36.374844, 38.324451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806816, 35.892315, 37.973343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527229, 36.102543, 37.779346>,  <39.359478, 36.228680, 37.662949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527229, 36.102543, 37.779346>,  <39.806816, 35.892315, 37.973343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527229, 36.102543, 37.779346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163554, -0.542717, -0.823837,
		-0.696201, -0.655158, 0.293382,
		-0.698967, 0.525573, -0.484994,
		39.317539, 36.260216, 37.633850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288723, 35.409111, 37.758404>,  <39.806816, 35.892315, 37.973343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288723, 35.409111, 37.758404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289200, 35.739399, 37.532772>,  <39.289486, 35.937572, 37.397392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289200, 35.739399, 37.532772>,  <39.288723, 35.409111, 37.758404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289200, 35.739399, 37.532772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203594, -0.552470, -0.808286,
		-0.979055, -0.113878, -0.168771,
		0.001195, 0.825717, -0.564083,
		39.289558, 35.987114, 37.363548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900764, 35.187874, 37.146130>,  <39.288723, 35.409111, 37.758404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900764, 35.187874, 37.146130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104916, 35.514668, 37.038761>,  <39.227406, 35.710743, 36.974342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104916, 35.514668, 37.038761>,  <38.900764, 35.187874, 37.146130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104916, 35.514668, 37.038761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225023, -0.428138, -0.875250,
		-0.829985, 0.386312, -0.402354,
		0.510382, 0.816983, -0.268419,
		39.258030, 35.759762, 36.958237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609329, 35.350697, 36.527882>,  <38.900764, 35.187874, 37.146130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609329, 35.350697, 36.527882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973835, 35.514065, 36.549019>,  <39.192539, 35.612083, 36.561703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973835, 35.514065, 36.549019>,  <38.609329, 35.350697, 36.527882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973835, 35.514065, 36.549019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174330, -0.266312, -0.947991,
		-0.373104, 0.873082, -0.313880,
		0.911264, 0.408418, 0.052842,
		39.247215, 35.636589, 36.564873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661903, 35.613213, 35.833332>,  <38.609329, 35.350697, 36.527882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661903, 35.613213, 35.833332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024902, 35.624023, 36.001007>,  <39.242702, 35.630508, 36.101612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024902, 35.624023, 36.001007>,  <38.661903, 35.613213, 35.833332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024902, 35.624023, 36.001007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386827, -0.442789, -0.808890,
		0.163750, 0.896218, -0.412284,
		0.907497, 0.027027, 0.419189,
		39.297150, 35.632130, 36.126762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053776, 35.698910, 35.263779>,  <38.661903, 35.613213, 35.833332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053776, 35.698910, 35.263779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308399, 35.560505, 35.539482>,  <39.461174, 35.477463, 35.704903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308399, 35.560505, 35.539482>,  <39.053776, 35.698910, 35.263779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308399, 35.560505, 35.539482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381189, -0.635755, -0.671201,
		0.670443, 0.689992, -0.272795,
		0.636554, -0.346016, 0.689255,
		39.499367, 35.456699, 35.746258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702072, 35.797626, 35.025581>,  <39.053776, 35.698910, 35.263779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702072, 35.797626, 35.025581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714535, 35.492683, 35.284145>,  <39.722012, 35.309719, 35.439285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714535, 35.492683, 35.284145>,  <39.702072, 35.797626, 35.025581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714535, 35.492683, 35.284145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401302, -0.582767, -0.706639,
		0.915416, 0.281420, 0.287779,
		0.031154, -0.762355, 0.646409,
		39.723881, 35.263977, 35.478069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366661, 35.705837, 35.095222>,  <39.702072, 35.797626, 35.025581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366661, 35.705837, 35.095222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232479, 35.351807, 35.224285>,  <40.151970, 35.139389, 35.301723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232479, 35.351807, 35.224285>,  <40.366661, 35.705837, 35.095222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232479, 35.351807, 35.224285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606425, -0.464982, -0.645012,
		0.720916, -0.020703, 0.692713,
		-0.335453, -0.885078, 0.322658,
		40.131844, 35.086285, 35.321083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964043, 35.189041, 35.301338>,  <40.366661, 35.705837, 35.095222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964043, 35.189041, 35.301338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628639, 35.001881, 35.189640>,  <40.427399, 34.889584, 35.122623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628639, 35.001881, 35.189640>,  <40.964043, 35.189041, 35.301338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628639, 35.001881, 35.189640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478560, -0.387324, -0.788010,
		0.260554, -0.794385, 0.548692,
		-0.838506, -0.467902, -0.279242,
		40.377087, 34.861511, 35.105869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202152, 34.551132, 35.043285>,  <40.964043, 35.189041, 35.301338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202152, 34.551132, 35.043285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821198, 34.524780, 34.924213>,  <40.592625, 34.508968, 34.852772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821198, 34.524780, 34.924213>,  <41.202152, 34.551132, 35.043285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821198, 34.524780, 34.924213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287520, -0.518858, -0.805058,
		-0.101420, -0.852318, 0.513096,
		-0.952390, -0.065876, -0.297681,
		40.535480, 34.505016, 34.834908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054234, 33.887486, 34.801872>,  <41.202152, 34.551132, 35.043285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054234, 33.887486, 34.801872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752155, 34.088749, 34.633820>,  <40.570908, 34.209507, 34.532990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752155, 34.088749, 34.633820>,  <41.054234, 33.887486, 34.801872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752155, 34.088749, 34.633820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306459, -0.295557, -0.904836,
		-0.579450, -0.812081, 0.069006,
		-0.755195, 0.503160, -0.420130,
		40.525597, 34.239697, 34.507782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570919, 33.383167, 34.445423>,  <41.054234, 33.887486, 34.801872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570919, 33.383167, 34.445423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610950, 33.753948, 34.300789>,  <40.634972, 33.976418, 34.214008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610950, 33.753948, 34.300789>,  <40.570919, 33.383167, 34.445423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610950, 33.753948, 34.300789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251804, -0.375179, -0.892096,
		-0.962589, -0.001767, -0.270959,
		0.100082, 0.926951, -0.361589,
		40.640976, 34.032032, 34.192314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435104, 32.975945, 35.033314>,  <40.570919, 33.383167, 34.445423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435104, 32.975945, 35.033314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473907, 32.597710, 35.157539>,  <40.497189, 32.370770, 35.232075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473907, 32.597710, 35.157539>,  <40.435104, 32.975945, 35.033314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473907, 32.597710, 35.157539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690152, 0.160928, 0.705544,
		-0.717133, -0.282779, -0.636990,
		0.097003, -0.945589, 0.310567,
		40.503010, 32.314034, 35.250710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834778, 32.634899, 34.949135>,  <40.435104, 32.975945, 35.033314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834778, 32.634899, 34.949135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030380, 32.433010, 35.233707>,  <40.147739, 32.311878, 35.404449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030380, 32.433010, 35.233707>,  <39.834778, 32.634899, 34.949135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030380, 32.433010, 35.233707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810867, 0.037594, 0.584021,
		-0.321512, -0.862465, -0.390877,
		0.489003, -0.504719, 0.711431,
		40.177082, 32.281593, 35.447136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405888, 32.076550, 35.192657>,  <39.834778, 32.634899, 34.949135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405888, 32.076550, 35.192657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643318, 32.127850, 35.510456>,  <39.785774, 32.158630, 35.701134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643318, 32.127850, 35.510456>,  <39.405888, 32.076550, 35.192657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643318, 32.127850, 35.510456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804778, 0.095897, 0.585777,
		-0.001064, -0.987095, 0.160134,
		0.593574, 0.128249, 0.794494,
		39.821392, 32.166325, 35.748806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074970, 31.786392, 35.715240>,  <39.405888, 32.076550, 35.192657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074970, 31.786392, 35.715240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333073, 32.029419, 35.900501>,  <39.487934, 32.175236, 36.011658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333073, 32.029419, 35.900501>,  <39.074970, 31.786392, 35.715240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333073, 32.029419, 35.900501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680224, 0.180929, 0.710323,
		0.347772, -0.773386, 0.530027,
		0.645252, 0.607568, 0.463154,
		39.526649, 32.211689, 36.039448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008022, 31.668396, 36.434917>,  <39.074970, 31.786392, 35.715240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008022, 31.668396, 36.434917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193417, 32.022339, 36.416130>,  <39.304653, 32.234703, 36.404858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193417, 32.022339, 36.416130>,  <39.008022, 31.668396, 36.434917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193417, 32.022339, 36.416130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583985, 0.344895, 0.734853,
		0.666440, -0.313166, 0.676598,
		0.463486, 0.884859, -0.046968,
		39.332462, 32.287796, 36.402039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166691, 31.809227, 37.061478>,  <39.008022, 31.668396, 36.434917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166691, 31.809227, 37.061478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161922, 32.159790, 36.868908>,  <39.159061, 32.370129, 36.753368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161922, 32.159790, 36.868908>,  <39.166691, 31.809227, 37.061478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161922, 32.159790, 36.868908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517456, 0.406569, 0.752955,
		0.855627, 0.258088, 0.448657,
		-0.011919, 0.876409, -0.481421,
		39.158348, 32.422714, 36.724483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399052, 32.305271, 37.580517>,  <39.166691, 31.809227, 37.061478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399052, 32.305271, 37.580517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194881, 32.487148, 37.288563>,  <39.072380, 32.596275, 37.113392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194881, 32.487148, 37.288563>,  <39.399052, 32.305271, 37.580517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194881, 32.487148, 37.288563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634227, 0.374130, 0.676597,
		0.580711, 0.808260, 0.097412,
		-0.510422, 0.454689, -0.729882,
		39.041756, 32.623554, 37.069599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208504, 33.023830, 37.833595>,  <39.399052, 32.305271, 37.580517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208504, 33.023830, 37.833595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968678, 32.972401, 37.517624>,  <38.824780, 32.941544, 37.328041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968678, 32.972401, 37.517624>,  <39.208504, 33.023830, 37.833595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968678, 32.972401, 37.517624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717932, 0.522590, 0.459863,
		0.353683, 0.842834, -0.405634,
		-0.599568, -0.128572, -0.789929,
		38.788807, 32.933830, 37.280643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962765, 33.602539, 37.815079>,  <39.208504, 33.023830, 37.833595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962765, 33.602539, 37.815079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698273, 33.413448, 37.582081>,  <38.539577, 33.299992, 37.442284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698273, 33.413448, 37.582081>,  <38.962765, 33.602539, 37.815079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698273, 33.413448, 37.582081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747882, 0.476127, 0.462575,
		0.058668, 0.741505, -0.668377,
		-0.661234, -0.472729, -0.582492,
		38.499901, 33.271629, 37.407333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565292, 34.060802, 37.494926>,  <38.962765, 33.602539, 37.815079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565292, 34.060802, 37.494926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332390, 33.735710, 37.486465>,  <38.192650, 33.540653, 37.481388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332390, 33.735710, 37.486465>,  <38.565292, 34.060802, 37.494926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332390, 33.735710, 37.486465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720464, 0.503753, 0.476618,
		-0.376707, 0.292752, -0.878856,
		-0.582258, -0.812729, -0.021150,
		38.157711, 33.491890, 37.480122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920361, 34.302052, 37.332066>,  <38.565292, 34.060802, 37.494926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920361, 34.302052, 37.332066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861908, 33.942287, 37.496849>,  <37.826836, 33.726429, 37.595718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861908, 33.942287, 37.496849>,  <37.920361, 34.302052, 37.332066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861908, 33.942287, 37.496849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720750, 0.382041, 0.578414,
		-0.677616, -0.212395, -0.704077,
		-0.146134, -0.899407, 0.411961,
		37.818069, 33.672466, 37.620438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169968, 34.194317, 37.293625>,  <37.920361, 34.302052, 37.332066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169968, 34.194317, 37.293625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306011, 33.966869, 37.593224>,  <37.387638, 33.830402, 37.772984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306011, 33.966869, 37.593224>,  <37.169968, 34.194317, 37.293625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306011, 33.966869, 37.593224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668235, 0.414272, 0.617933,
		-0.661658, -0.710671, -0.239074,
		0.340105, -0.568617, 0.749001,
		37.408043, 33.796284, 37.817924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615479, 33.878613, 37.624790>,  <37.169968, 34.194317, 37.293625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615479, 33.878613, 37.624790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899044, 33.858105, 37.906162>,  <37.069183, 33.845802, 38.074986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899044, 33.858105, 37.906162>,  <36.615479, 33.878613, 37.624790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899044, 33.858105, 37.906162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667673, 0.272603, 0.692748,
		-0.227271, -0.960760, 0.159024,
		0.708915, -0.051266, 0.703428,
		37.111717, 33.842724, 38.117191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309860, 33.624241, 38.218674>,  <36.615479, 33.878613, 37.624790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309860, 33.624241, 38.218674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636497, 33.784214, 38.385159>,  <36.832481, 33.880196, 38.485050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636497, 33.784214, 38.385159>,  <36.309860, 33.624241, 38.218674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636497, 33.784214, 38.385159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557191, 0.357876, 0.749308,
		0.150718, -0.843789, 0.515077,
		0.816592, 0.399930, 0.416214,
		36.881474, 33.904194, 38.510021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222393, 33.518799, 38.870895>,  <36.309860, 33.624241, 38.218674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222393, 33.518799, 38.870895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487881, 33.817986, 38.869488>,  <36.647175, 33.997498, 38.868645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487881, 33.817986, 38.869488>,  <36.222393, 33.518799, 38.870895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487881, 33.817986, 38.869488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465135, 0.416419, 0.781182,
		0.585765, -0.516852, 0.624294,
		0.663723, 0.747970, -0.003518,
		36.686996, 34.042377, 38.868431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694771, 32.970474, 38.906780>,  <36.222393, 33.518799, 38.870895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694771, 32.970474, 38.906780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300686, 33.029518, 38.871994>,  <35.064236, 33.064945, 38.851124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300686, 33.029518, 38.871994>,  <35.694771, 32.970474, 38.906780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300686, 33.029518, 38.871994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048564, -0.246146, -0.968015,
		-0.164293, -0.957927, 0.235338,
		-0.985216, 0.147609, -0.086961,
		35.005123, 33.073803, 38.845905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560226, 32.595093, 38.369831>,  <35.694771, 32.970474, 38.906780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560226, 32.595093, 38.369831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217842, 32.800449, 38.394341>,  <35.012413, 32.923664, 38.409046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217842, 32.800449, 38.394341>,  <35.560226, 32.595093, 38.369831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217842, 32.800449, 38.394341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146418, -0.127035, -0.981032,
		-0.495873, -0.848698, 0.183907,
		-0.855963, 0.513395, 0.061271,
		34.961052, 32.954468, 38.412724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087055, 32.250641, 37.968475>,  <35.560226, 32.595093, 38.369831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087055, 32.250641, 37.968475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907978, 32.607880, 37.986141>,  <34.800533, 32.822224, 37.996742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907978, 32.607880, 37.986141>,  <35.087055, 32.250641, 37.968475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907978, 32.607880, 37.986141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035226, 0.031736, -0.998875,
		-0.893493, -0.448745, 0.017252,
		-0.447692, 0.893096, 0.044163,
		34.773670, 32.875809, 37.999390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634235, 32.193996, 37.401104>,  <35.087055, 32.250641, 37.968475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634235, 32.193996, 37.401104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682640, 32.578506, 37.500153>,  <34.711681, 32.809212, 37.559582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682640, 32.578506, 37.500153>,  <34.634235, 32.193996, 37.401104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682640, 32.578506, 37.500153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195169, 0.221543, -0.955420,
		-0.973276, 0.163941, -0.160802,
		0.121008, 0.961271, 0.247618,
		34.718941, 32.866886, 37.574436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196873, 32.470272, 37.049156>,  <34.634235, 32.193996, 37.401104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196873, 32.470272, 37.049156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455215, 32.765404, 37.127613>,  <34.610222, 32.942482, 37.174686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455215, 32.765404, 37.127613>,  <34.196873, 32.470272, 37.049156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455215, 32.765404, 37.127613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033528, 0.284073, -0.958216,
		-0.762721, 0.612295, 0.208209,
		0.645858, 0.737832, 0.196140,
		34.648972, 32.986755, 37.186455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960121, 33.092739, 36.636501>,  <34.196873, 32.470272, 37.049156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960121, 33.092739, 36.636501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342659, 33.174641, 36.719913>,  <34.572182, 33.223782, 36.769958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342659, 33.174641, 36.719913>,  <33.960121, 33.092739, 36.636501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342659, 33.174641, 36.719913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157659, 0.239326, -0.958053,
		-0.246074, 0.949103, 0.196596,
		0.956342, 0.204757, 0.208527,
		34.629562, 33.236069, 36.782471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997707, 33.773422, 36.372196>,  <33.960121, 33.092739, 36.636501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997707, 33.773422, 36.372196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364822, 33.618237, 36.406002>,  <34.585091, 33.525124, 36.426285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364822, 33.618237, 36.406002>,  <33.997707, 33.773422, 36.372196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364822, 33.618237, 36.406002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181980, 0.221812, -0.957958,
		0.352906, 0.894585, 0.274179,
		0.917791, -0.387964, 0.084518,
		34.640160, 33.501846, 36.431358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413097, 34.324646, 36.167976>,  <33.997707, 33.773422, 36.372196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413097, 34.324646, 36.167976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601837, 33.975166, 36.120613>,  <34.715080, 33.765480, 36.092194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601837, 33.975166, 36.120613>,  <34.413097, 34.324646, 36.167976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601837, 33.975166, 36.120613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156018, 0.214916, -0.964090,
		0.867768, 0.436428, 0.237719,
		0.471845, -0.873694, -0.118407,
		34.743389, 33.713058, 36.085091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023712, 34.484070, 35.780243>,  <34.413097, 34.324646, 36.167976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023712, 34.484070, 35.780243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985004, 34.089260, 35.728977>,  <34.961781, 33.852375, 35.698219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985004, 34.089260, 35.728977>,  <35.023712, 34.484070, 35.780243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985004, 34.089260, 35.728977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336171, 0.088785, -0.937606,
		0.936816, -0.133818, 0.323216,
		-0.096772, -0.987021, -0.128161,
		34.955975, 33.793156, 35.690529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590546, 34.302025, 35.444229>,  <35.023712, 34.484070, 35.780243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590546, 34.302025, 35.444229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372299, 33.981869, 35.344894>,  <35.241352, 33.789776, 35.285294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372299, 33.981869, 35.344894>,  <35.590546, 34.302025, 35.444229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372299, 33.981869, 35.344894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406762, 0.006149, -0.913514,
		0.732697, -0.599444, 0.322214,
		-0.545619, -0.800393, -0.248336,
		35.208614, 33.741753, 35.270393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049545, 33.894695, 35.119934>,  <35.590546, 34.302025, 35.444229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049545, 33.894695, 35.119934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687550, 33.772675, 35.001320>,  <35.470352, 33.699463, 34.930153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687550, 33.772675, 35.001320>,  <36.049545, 33.894695, 35.119934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687550, 33.772675, 35.001320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304583, 0.022039, -0.952231,
		0.297012, -0.952082, 0.072968,
		-0.904993, -0.305049, -0.296534,
		35.416050, 33.681160, 34.912361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135281, 33.352200, 34.576996>,  <36.049545, 33.894695, 35.119934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135281, 33.352200, 34.576996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764355, 33.491554, 34.522282>,  <35.541798, 33.575169, 34.489452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764355, 33.491554, 34.522282>,  <36.135281, 33.352200, 34.576996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764355, 33.491554, 34.522282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205560, 0.168663, -0.964001,
		-0.312775, -0.922052, -0.228018,
		-0.927317, 0.348387, -0.136783,
		35.486160, 33.596069, 34.481247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.538311, 33.197929, 42.450405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324486, 33.528217, 42.378376>,  <35.196190, 33.726391, 42.335159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324486, 33.528217, 42.378376>,  <35.538311, 33.197929, 42.450405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324486, 33.528217, 42.378376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347311, -0.408887, -0.843911,
		-0.770465, -0.388582, 0.505358,
		-0.534563, 0.825721, -0.180075,
		35.164116, 33.775932, 42.324352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815243, 32.990402, 42.306667>,  <35.538311, 33.197929, 42.450405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815243, 32.990402, 42.306667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855404, 33.352291, 42.141064>,  <34.879501, 33.569424, 42.041702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.855404, 33.352291, 42.141064>,  <34.815243, 32.990402, 42.306667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855404, 33.352291, 42.141064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386766, -0.347898, -0.854037,
		-0.916696, 0.245872, 0.314985,
		0.100401, 0.904717, -0.414012,
		34.885525, 33.623707, 42.016861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247391, 33.066273, 41.980114>,  <34.815243, 32.990402, 42.306667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247391, 33.066273, 41.980114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491032, 33.338348, 41.816978>,  <34.637215, 33.501595, 41.719097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491032, 33.338348, 41.816978>,  <34.247391, 33.066273, 41.980114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491032, 33.338348, 41.816978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408553, -0.171658, -0.896447,
		-0.679766, 0.712651, 0.173338,
		0.609099, 0.680193, -0.407843,
		34.673763, 33.542408, 41.694626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826664, 33.406906, 41.453220>,  <34.247391, 33.066273, 41.980114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826664, 33.406906, 41.453220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.209545, 33.463570, 41.352268>,  <34.439274, 33.497570, 41.291698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.209545, 33.463570, 41.352268>,  <33.826664, 33.406906, 41.453220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209545, 33.463570, 41.352268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248513, -0.044630, -0.967600,
		-0.148335, 0.988909, -0.007515,
		0.957203, 0.141661, -0.252377,
		34.496708, 33.506069, 41.276554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770351, 33.672615, 40.824471>,  <33.826664, 33.406906, 41.453220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770351, 33.672615, 40.824471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161850, 33.592854, 40.805344>,  <34.396751, 33.544998, 40.793865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161850, 33.592854, 40.805344>,  <33.770351, 33.672615, 40.824471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161850, 33.592854, 40.805344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076741, -0.139938, -0.987182,
		0.190152, 0.969875, -0.152267,
		0.978751, -0.199400, -0.047820,
		34.455475, 33.533035, 40.790997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976738, 34.103432, 40.258827>,  <33.770351, 33.672615, 40.824471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976738, 34.103432, 40.258827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.242565, 33.810295, 40.317196>,  <34.402061, 33.634415, 40.352219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.242565, 33.810295, 40.317196>,  <33.976738, 34.103432, 40.258827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242565, 33.810295, 40.317196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005669, -0.190332, -0.981703,
		0.747206, 0.653236, -0.122334,
		0.664568, -0.732841, 0.145921,
		34.441936, 33.590443, 40.360973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514252, 34.288494, 39.750931>,  <33.976738, 34.103432, 40.258827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514252, 34.288494, 39.750931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565460, 33.906490, 39.857941>,  <34.596184, 33.677288, 39.922146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565460, 33.906490, 39.857941>,  <34.514252, 34.288494, 39.750931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565460, 33.906490, 39.857941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022104, -0.266928, -0.963463,
		0.991525, 0.129254, -0.013062,
		0.128018, -0.955009, 0.267523,
		34.603867, 33.619987, 39.938198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073391, 34.128757, 39.452423>,  <34.514252, 34.288494, 39.750931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073391, 34.128757, 39.452423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924782, 33.765564, 39.529922>,  <34.835617, 33.547649, 39.576420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924782, 33.765564, 39.529922>,  <35.073391, 34.128757, 39.452423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924782, 33.765564, 39.529922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191999, -0.279312, -0.940809,
		0.908355, -0.312330, 0.278102,
		-0.371520, -0.907984, 0.193747,
		34.813324, 33.493168, 39.588047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570419, 33.616287, 39.217293>,  <35.073391, 34.128757, 39.452423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570419, 33.616287, 39.217293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205658, 33.452175, 39.221230>,  <34.986801, 33.353706, 39.223591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205658, 33.452175, 39.221230>,  <35.570419, 33.616287, 39.217293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205658, 33.452175, 39.221230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133294, -0.318769, -0.938413,
		0.388152, -0.854432, 0.345375,
		-0.911905, -0.410283, 0.009840,
		34.932087, 33.329090, 39.224182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332378, 33.665329, 39.563099>,  <35.570419, 33.616287, 39.217293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332378, 33.665329, 39.563099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488548, 33.998283, 39.405773>,  <36.582253, 34.198055, 39.311378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488548, 33.998283, 39.405773>,  <36.332378, 33.665329, 39.563099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488548, 33.998283, 39.405773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079417, 0.456078, 0.886389,
		0.917202, -0.314834, 0.244171,
		0.390426, 0.832390, -0.393312,
		36.605675, 34.248001, 39.287781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858429, 33.919094, 40.073879>,  <36.332378, 33.665329, 39.563099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858429, 33.919094, 40.073879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759956, 34.229439, 39.841522>,  <36.700874, 34.415646, 39.702106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759956, 34.229439, 39.841522>,  <36.858429, 33.919094, 40.073879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759956, 34.229439, 39.841522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179366, 0.552514, 0.813975,
		0.952482, 0.304578, 0.003145,
		-0.246181, 0.775861, -0.580891,
		36.686104, 34.462196, 39.667255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226109, 34.464432, 40.356022>,  <36.858429, 33.919094, 40.073879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226109, 34.464432, 40.356022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975971, 34.677223, 40.127651>,  <36.825890, 34.804897, 39.990631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975971, 34.677223, 40.127651>,  <37.226109, 34.464432, 40.356022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975971, 34.677223, 40.127651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001942, 0.730559, 0.682847,
		0.780351, 0.428120, -0.455814,
		-0.625339, 0.531975, -0.570924,
		36.788368, 34.836815, 39.956375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466053, 35.168186, 40.418262>,  <37.226109, 34.464432, 40.356022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466053, 35.168186, 40.418262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081192, 35.180473, 40.309959>,  <36.850273, 35.187847, 40.244976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081192, 35.180473, 40.309959>,  <37.466053, 35.168186, 40.418262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081192, 35.180473, 40.309959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160466, 0.739196, 0.654095,
		0.220240, 0.672790, -0.706292,
		-0.962156, 0.030722, -0.270761,
		36.792545, 35.189690, 40.228733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390614, 35.783806, 40.165543>,  <37.466053, 35.168186, 40.418262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390614, 35.783806, 40.165543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021912, 35.669720, 40.270634>,  <36.800690, 35.601269, 40.333691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021912, 35.669720, 40.270634>,  <37.390614, 35.783806, 40.165543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021912, 35.669720, 40.270634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046850, 0.754468, 0.654663,
		-0.384940, 0.591128, -0.708794,
		-0.921752, -0.285213, 0.262730,
		36.745384, 35.584156, 40.349453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919544, 36.305996, 40.260143>,  <37.390614, 35.783806, 40.165543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919544, 36.305996, 40.260143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723484, 36.038307, 40.483532>,  <36.605846, 35.877693, 40.617565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723484, 36.038307, 40.483532>,  <36.919544, 36.305996, 40.260143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723484, 36.038307, 40.483532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028572, 0.652706, 0.757072,
		-0.871167, 0.355125, -0.339047,
		-0.490154, -0.669224, 0.558470,
		36.576439, 35.837540, 40.651073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294804, 36.681248, 40.505619>,  <36.919544, 36.305996, 40.260143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294804, 36.681248, 40.505619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.327019, 36.369377, 40.754013>,  <36.346348, 36.182255, 40.903049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.327019, 36.369377, 40.754013>,  <36.294804, 36.681248, 40.505619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327019, 36.369377, 40.754013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078169, 0.616148, 0.783742,
		-0.993681, -0.111665, -0.011321,
		0.080541, -0.779674, 0.620984,
		36.351181, 36.135475, 40.940308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684765, 36.667889, 40.937153>,  <36.294804, 36.681248, 40.505619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684765, 36.667889, 40.937153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955982, 36.451214, 41.135880>,  <36.118713, 36.321209, 41.255116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955982, 36.451214, 41.135880>,  <35.684765, 36.667889, 40.937153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955982, 36.451214, 41.135880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114050, 0.590204, 0.799157,
		-0.726119, -0.598526, 0.338405,
		0.678045, -0.541688, 0.496820,
		36.159397, 36.288708, 41.284924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458466, 36.573780, 41.560173>,  <35.684765, 36.667889, 40.937153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458466, 36.573780, 41.560173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851921, 36.529293, 41.616856>,  <36.087994, 36.502602, 41.650864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851921, 36.529293, 41.616856>,  <35.458466, 36.573780, 41.560173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851921, 36.529293, 41.616856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066558, 0.506604, 0.859606,
		-0.167392, -0.854976, 0.490914,
		0.983641, -0.111217, 0.141707,
		36.147015, 36.495930, 41.659367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559837, 36.330971, 42.263046>,  <35.458466, 36.573780, 41.560173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559837, 36.330971, 42.263046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924538, 36.466789, 42.170593>,  <36.143356, 36.548279, 42.115120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924538, 36.466789, 42.170593>,  <35.559837, 36.330971, 42.263046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924538, 36.466789, 42.170593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123501, 0.310063, 0.942660,
		0.391742, -0.888014, 0.240766,
		0.911749, 0.339545, -0.231135,
		36.198063, 36.568653, 42.101254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030426, 36.235058, 42.856266>,  <35.559837, 36.330971, 42.263046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030426, 36.235058, 42.856266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238640, 36.511093, 42.655140>,  <36.363567, 36.676712, 42.534466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238640, 36.511093, 42.655140>,  <36.030426, 36.235058, 42.856266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238640, 36.511093, 42.655140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283468, 0.415817, 0.864142,
		0.805411, -0.592350, 0.020831,
		0.520536, 0.690085, -0.502817,
		36.394802, 36.718117, 42.504295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773293, 36.254585, 43.011913>,  <36.030426, 36.235058, 42.856266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773293, 36.254585, 43.011913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675793, 36.613552, 42.864822>,  <36.617294, 36.828934, 42.776566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675793, 36.613552, 42.864822>,  <36.773293, 36.254585, 43.011913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675793, 36.613552, 42.864822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410754, 0.439007, 0.799096,
		0.878560, 0.043734, -0.475626,
		-0.243751, 0.897418, -0.367730,
		36.602669, 36.882778, 42.754505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325417, 36.704514, 43.159859>,  <36.773293, 36.254585, 43.011913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325417, 36.704514, 43.159859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055637, 36.988003, 43.077072>,  <36.893768, 37.158096, 43.027401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055637, 36.988003, 43.077072>,  <37.325417, 36.704514, 43.159859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055637, 36.988003, 43.077072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482505, 0.635268, 0.603013,
		0.558846, 0.306839, -0.770416,
		-0.674448, 0.708721, -0.206965,
		36.853302, 37.200619, 43.014984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671146, 37.358192, 43.071564>,  <37.325417, 36.704514, 43.159859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671146, 37.358192, 43.071564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.305344, 37.513386, 43.117416>,  <37.085861, 37.606503, 43.144928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.305344, 37.513386, 43.117416>,  <37.671146, 37.358192, 43.071564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305344, 37.513386, 43.117416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366780, 0.675567, 0.639595,
		0.170712, 0.626960, -0.760117,
		-0.914511, 0.387983, 0.114630,
		37.030991, 37.629780, 43.151806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.028221, 39.075401, 40.535149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331684, 38.926025, 40.748684>,  <33.513763, 38.836399, 40.876804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331684, 38.926025, 40.748684>,  <33.028221, 39.075401, 40.535149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331684, 38.926025, 40.748684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477527, -0.238651, -0.845585,
		0.443176, 0.896430, -0.002727,
		0.758659, -0.373441, 0.533834,
		33.559280, 38.813992, 40.908833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591026, 39.360279, 40.132107>,  <33.028221, 39.075401, 40.535149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591026, 39.360279, 40.132107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739281, 39.066105, 40.359005>,  <33.828232, 38.889599, 40.495144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739281, 39.066105, 40.359005>,  <33.591026, 39.360279, 40.132107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739281, 39.066105, 40.359005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681397, -0.199708, -0.704141,
		0.631134, 0.647495, 0.427106,
		0.370631, -0.735437, 0.567244,
		33.850471, 38.845474, 40.529179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251690, 39.386551, 40.008778>,  <33.591026, 39.360279, 40.132107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251690, 39.386551, 40.008778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202671, 39.015678, 40.150379>,  <34.173260, 38.793156, 40.235340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202671, 39.015678, 40.150379>,  <34.251690, 39.386551, 40.008778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202671, 39.015678, 40.150379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666927, -0.341081, -0.662475,
		0.734978, 0.154912, 0.660159,
		-0.122543, -0.927182, 0.354002,
		34.165909, 38.737522, 40.256580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977970, 39.191002, 40.056335>,  <34.251690, 39.386551, 40.008778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977970, 39.191002, 40.056335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.742966, 38.868984, 40.023510>,  <34.601963, 38.675774, 40.003815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.742966, 38.868984, 40.023510>,  <34.977970, 39.191002, 40.056335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742966, 38.868984, 40.023510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469487, -0.256497, -0.844862,
		0.659104, -0.534891, 0.528653,
		-0.587507, -0.805047, -0.082067,
		34.566715, 38.627472, 39.998890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465523, 38.755272, 39.798843>,  <34.977970, 39.191002, 40.056335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465523, 38.755272, 39.798843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124233, 38.551861, 39.752529>,  <34.919460, 38.429813, 39.724739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124233, 38.551861, 39.752529>,  <35.465523, 38.755272, 39.798843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124233, 38.551861, 39.752529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316158, -0.327753, -0.890293,
		0.414786, -0.796230, 0.440422,
		-0.853227, -0.508524, -0.115787,
		34.868263, 38.399303, 39.717793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651463, 38.031044, 39.679901>,  <35.465523, 38.755272, 39.798843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651463, 38.031044, 39.679901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.286911, 38.091064, 39.526608>,  <35.068180, 38.127079, 39.434631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.286911, 38.091064, 39.526608>,  <35.651463, 38.031044, 39.679901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286911, 38.091064, 39.526608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309247, -0.364768, -0.878243,
		-0.271575, -0.918928, 0.286038,
		-0.911379, 0.150052, -0.383238,
		35.013496, 38.136082, 39.411636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395504, 37.385509, 39.432545>,  <35.651463, 38.031044, 39.679901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395504, 37.385509, 39.432545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217159, 37.697906, 39.257614>,  <35.110153, 37.885345, 39.152657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217159, 37.697906, 39.257614>,  <35.395504, 37.385509, 39.432545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217159, 37.697906, 39.257614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041407, -0.470061, -0.881662,
		-0.894143, -0.411209, 0.177244,
		-0.445862, 0.780993, -0.437329,
		35.083401, 37.932205, 39.126415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088032, 37.042229, 38.764114>,  <35.395504, 37.385509, 39.432545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088032, 37.042229, 38.764114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.092899, 37.437283, 38.701599>,  <35.095821, 37.674316, 38.664089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.092899, 37.437283, 38.701599>,  <35.088032, 37.042229, 38.764114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092899, 37.437283, 38.701599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020148, -0.156514, -0.987470,
		-0.999723, 0.008870, -0.021804,
		0.012171, 0.987636, -0.156292,
		35.096550, 37.733574, 38.654713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723366, 37.185501, 38.199375>,  <35.088032, 37.042229, 38.764114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723366, 37.185501, 38.199375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915348, 37.536419, 38.199203>,  <35.030537, 37.746971, 38.199100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915348, 37.536419, 38.199203>,  <34.723366, 37.185501, 38.199375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915348, 37.536419, 38.199203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001356, -0.001231, -0.999998,
		-0.877292, 0.479953, -0.001780,
		0.479955, 0.877293, -0.000429,
		35.059334, 37.799606, 38.199074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384232, 37.653175, 37.725304>,  <34.723366, 37.185501, 38.199375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384232, 37.653175, 37.725304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.752754, 37.797436, 37.783436>,  <34.973869, 37.883991, 37.818314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.752754, 37.797436, 37.783436>,  <34.384232, 37.653175, 37.725304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752754, 37.797436, 37.783436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052542, 0.254858, -0.965550,
		-0.385268, 0.897205, 0.215853,
		0.921308, 0.360654, 0.145330,
		35.029148, 37.905632, 37.827034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388874, 38.339096, 37.374504>,  <34.384232, 37.653175, 37.725304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388874, 38.339096, 37.374504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775242, 38.236080, 37.384834>,  <35.007065, 38.174271, 37.391033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775242, 38.236080, 37.384834>,  <34.388874, 38.339096, 37.374504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775242, 38.236080, 37.384834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063958, 0.140829, -0.987966,
		0.250803, 0.955950, 0.152501,
		0.965923, -0.257539, 0.025821,
		35.065018, 38.158817, 37.392582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778961, 38.834335, 36.968147>,  <34.388874, 38.339096, 37.374504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778961, 38.834335, 36.968147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045490, 38.536278, 36.979286>,  <35.205410, 38.357445, 36.985970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045490, 38.536278, 36.979286>,  <34.778961, 38.834335, 36.968147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045490, 38.536278, 36.979286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054981, 0.011855, -0.998417,
		0.743631, 0.666801, 0.048868,
		0.666325, -0.745141, 0.027846,
		35.245388, 38.312737, 36.987640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140739, 38.979012, 36.414856>,  <34.778961, 38.834335, 36.968147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140739, 38.979012, 36.414856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227215, 38.595951, 36.490921>,  <35.279099, 38.366116, 36.536560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227215, 38.595951, 36.490921>,  <35.140739, 38.979012, 36.414856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227215, 38.595951, 36.490921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177507, -0.230072, -0.956848,
		0.960081, 0.173103, -0.219729,
		0.216187, -0.957655, 0.190161,
		35.292072, 38.308655, 36.547970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798077, 38.837849, 35.948997>,  <35.140739, 38.979012, 36.414856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798077, 38.837849, 35.948997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.585709, 38.514828, 36.051746>,  <35.458286, 38.321014, 36.113396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.585709, 38.514828, 36.051746>,  <35.798077, 38.837849, 35.948997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585709, 38.514828, 36.051746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022984, -0.289288, -0.956966,
		0.847109, -0.513979, 0.135029,
		-0.530923, -0.807550, 0.256872,
		35.426434, 38.272564, 36.128807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502983, 38.550385, 36.189316>,  <35.798077, 38.837849, 35.948997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502983, 38.550385, 36.189316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760551, 38.790600, 35.999699>,  <36.915092, 38.934731, 35.885929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760551, 38.790600, 35.999699>,  <36.502983, 38.550385, 36.189316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760551, 38.790600, 35.999699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119903, 0.691143, 0.712703,
		0.755639, -0.402085, 0.517047,
		0.643920, 0.600542, -0.474043,
		36.953728, 38.970760, 35.857487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846485, 38.777279, 36.709957>,  <36.502983, 38.550385, 36.189316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846485, 38.777279, 36.709957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.929909, 39.046329, 36.425964>,  <36.979965, 39.207760, 36.255569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.929909, 39.046329, 36.425964>,  <36.846485, 38.777279, 36.709957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929909, 39.046329, 36.425964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081336, 0.711507, 0.697956,
		0.974621, -0.203314, 0.093684,
		0.208561, 0.672622, -0.709987,
		36.992477, 39.248116, 36.212967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379772, 39.156494, 36.958889>,  <36.846485, 38.777279, 36.709957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379772, 39.156494, 36.958889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183025, 39.373432, 36.686440>,  <37.064980, 39.503593, 36.522968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183025, 39.373432, 36.686440>,  <37.379772, 39.156494, 36.958889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183025, 39.373432, 36.686440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195377, 0.693596, 0.693363,
		0.848467, 0.474117, -0.235194,
		-0.491865, 0.542344, -0.681125,
		37.035465, 39.536137, 36.482101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644375, 39.799091, 37.161102>,  <37.379772, 39.156494, 36.958889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644375, 39.799091, 37.161102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309570, 39.853569, 36.949116>,  <37.108688, 39.886257, 36.821922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309570, 39.853569, 36.949116>,  <37.644375, 39.799091, 37.161102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309570, 39.853569, 36.949116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318005, 0.667108, 0.673677,
		0.445298, 0.732406, -0.515064,
		-0.837008, 0.136194, -0.529971,
		37.058468, 39.894428, 36.790123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661686, 40.508427, 37.044018>,  <37.644375, 39.799091, 37.161102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661686, 40.508427, 37.044018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278446, 40.399010, 37.010036>,  <37.048500, 40.333359, 36.989647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278446, 40.399010, 37.010036>,  <37.661686, 40.508427, 37.044018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278446, 40.399010, 37.010036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266824, 0.744521, 0.611959,
		-0.104142, 0.608987, -0.786314,
		-0.958102, -0.273538, -0.084956,
		36.991016, 40.316948, 36.984550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268764, 41.125782, 37.116302>,  <37.661686, 40.508427, 37.044018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268764, 41.125782, 37.116302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031200, 40.818943, 37.213329>,  <36.888660, 40.634842, 37.271545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031200, 40.818943, 37.213329>,  <37.268764, 41.125782, 37.116302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031200, 40.818943, 37.213329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334438, 0.509608, 0.792749,
		-0.731726, 0.389699, -0.559206,
		-0.593910, -0.767095, 0.242563,
		36.853027, 40.588814, 37.286098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783459, 41.533897, 37.430149>,  <37.268764, 41.125782, 37.116302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783459, 41.533897, 37.430149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692196, 41.160824, 37.541889>,  <36.637436, 40.936977, 37.608932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692196, 41.160824, 37.541889>,  <36.783459, 41.533897, 37.430149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692196, 41.160824, 37.541889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400668, 0.351439, 0.846142,
		-0.887360, 0.081132, -0.453883,
		-0.228162, -0.932688, 0.279346,
		36.623749, 40.881016, 37.625694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032059, 41.535511, 37.729977>,  <36.783459, 41.533897, 37.430149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032059, 41.535511, 37.729977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.214787, 41.213593, 37.881569>,  <36.324421, 41.020443, 37.972523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.214787, 41.213593, 37.881569>,  <36.032059, 41.535511, 37.729977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214787, 41.213593, 37.881569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329890, 0.242387, 0.912371,
		-0.826131, -0.541807, -0.154768,
		0.456815, -0.804794, 0.378980,
		36.351830, 40.972153, 37.995262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589500, 41.212490, 38.213112>,  <36.032059, 41.535511, 37.729977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589500, 41.212490, 38.213112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.953999, 41.088383, 38.321465>,  <36.172695, 41.013920, 38.386475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.953999, 41.088383, 38.321465>,  <35.589500, 41.212490, 38.213112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953999, 41.088383, 38.321465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258660, 0.080715, 0.962590,
		-0.320523, -0.947217, -0.006703,
		0.911241, -0.310266, 0.270878,
		36.227371, 40.995304, 38.402729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593140, 40.482521, 38.591618>,  <35.589500, 41.212490, 38.213112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593140, 40.482521, 38.591618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930691, 40.660240, 38.711933>,  <36.133221, 40.766872, 38.784122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930691, 40.660240, 38.711933>,  <35.593140, 40.482521, 38.591618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930691, 40.660240, 38.711933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312888, -0.047907, 0.948581,
		0.435863, -0.894597, 0.098588,
		0.843874, 0.444298, 0.300789,
		36.183853, 40.793530, 38.802170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684563, 40.206108, 39.214676>,  <35.593140, 40.482521, 38.591618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684563, 40.206108, 39.214676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918873, 40.526886, 39.261585>,  <36.059460, 40.719353, 39.289730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918873, 40.526886, 39.261585>,  <35.684563, 40.206108, 39.214676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918873, 40.526886, 39.261585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291596, 0.073534, 0.953711,
		0.756197, -0.592860, 0.276917,
		0.585780, 0.801942, 0.117269,
		36.094608, 40.767467, 39.296764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905239, 40.049717, 39.809311>,  <35.684563, 40.206108, 39.214676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905239, 40.049717, 39.809311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.947414, 40.446331, 39.778980>,  <35.972717, 40.684299, 39.760780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.947414, 40.446331, 39.778980>,  <35.905239, 40.049717, 39.809311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947414, 40.446331, 39.778980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353340, 0.108629, 0.929167,
		0.929534, -0.071175, 0.361801,
		0.105436, 0.991531, -0.075826,
		35.979046, 40.743790, 39.756233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217342, 40.227867, 40.388824>,  <35.905239, 40.049717, 39.809311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217342, 40.227867, 40.388824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063789, 40.574928, 40.262455>,  <35.971657, 40.783165, 40.186634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063789, 40.574928, 40.262455>,  <36.217342, 40.227867, 40.388824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063789, 40.574928, 40.262455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303248, 0.204703, 0.930665,
		0.872167, 0.453069, 0.184533,
		-0.383881, 0.867655, -0.315927,
		35.948624, 40.835224, 40.167675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259392, 40.639961, 40.955254>,  <36.217342, 40.227867, 40.388824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259392, 40.639961, 40.955254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.983841, 40.825954, 40.732815>,  <35.818512, 40.937550, 40.599350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.983841, 40.825954, 40.732815>,  <36.259392, 40.639961, 40.955254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983841, 40.825954, 40.732815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536705, 0.188485, 0.822448,
		0.487238, 0.865025, 0.119714,
		-0.688874, 0.464979, -0.556100,
		35.777180, 40.965446, 40.565983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943172, 41.046078, 41.065529>,  <36.259392, 40.639961, 40.955254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943172, 41.046078, 41.065529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998619, 40.747925, 41.326355>,  <37.031887, 40.569031, 41.482849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998619, 40.747925, 41.326355>,  <36.943172, 41.046078, 41.065529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998619, 40.747925, 41.326355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468965, -0.530517, -0.706133,
		0.872272, 0.403676, 0.276022,
		0.138615, -0.745385, 0.652064,
		37.040203, 40.524311, 41.521973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716728, 40.791271, 40.934193>,  <36.943172, 41.046078, 41.065529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716728, 40.791271, 40.934193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.520565, 40.502174, 41.128979>,  <37.402866, 40.328716, 41.245850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.520565, 40.502174, 41.128979>,  <37.716728, 40.791271, 40.934193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520565, 40.502174, 41.128979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368445, -0.678329, -0.635702,
		0.789775, -0.132334, 0.598952,
		-0.490412, -0.722743, 0.486970,
		37.373440, 40.285351, 41.275070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190617, 40.136486, 40.944004>,  <37.716728, 40.791271, 40.934193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190617, 40.136486, 40.944004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.813042, 40.014042, 40.993439>,  <37.586494, 39.940575, 41.023098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.813042, 40.014042, 40.993439>,  <38.190617, 40.136486, 40.944004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813042, 40.014042, 40.993439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160017, -0.751732, -0.639761,
		0.288743, -0.584119, 0.758572,
		-0.943940, -0.306111, 0.123588,
		37.529861, 39.922207, 41.030514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321232, 39.472633, 40.911442>,  <38.190617, 40.136486, 40.944004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321232, 39.472633, 40.911442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923096, 39.479073, 40.873428>,  <37.684212, 39.482937, 40.850620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923096, 39.479073, 40.873428>,  <38.321232, 39.472633, 40.911442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923096, 39.479073, 40.873428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046539, -0.783125, -0.620120,
		-0.084404, -0.621656, 0.778730,
		-0.995344, 0.016099, -0.095030,
		37.624493, 39.483902, 40.844921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079975, 38.831379, 41.125702>,  <38.321232, 39.472633, 40.911442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079975, 38.831379, 41.125702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.815357, 38.987640, 40.869656>,  <37.656586, 39.081398, 40.716030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.815357, 38.987640, 40.869656>,  <38.079975, 38.831379, 41.125702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815357, 38.987640, 40.869656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000162, -0.853667, -0.520818,
		-0.749904, -0.344442, 0.564805,
		-0.661547, 0.390655, -0.640112,
		37.616894, 39.104836, 40.677620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815266, 38.235989, 40.903160>,  <38.079975, 38.831379, 41.125702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815266, 38.235989, 40.903160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672699, 38.503662, 40.642345>,  <37.587158, 38.664268, 40.485855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672699, 38.503662, 40.642345>,  <37.815266, 38.235989, 40.903160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672699, 38.503662, 40.642345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009719, -0.700488, -0.713598,
		-0.934276, -0.248003, 0.256171,
		-0.356418, 0.669187, -0.652039,
		37.565773, 38.704418, 40.446735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362293, 37.851673, 40.588943>,  <37.815266, 38.235989, 40.903160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362293, 37.851673, 40.588943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457474, 38.154667, 40.345768>,  <37.514584, 38.336464, 40.199863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457474, 38.154667, 40.345768>,  <37.362293, 37.851673, 40.588943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457474, 38.154667, 40.345768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096388, -0.604414, -0.790817,
		-0.966482, 0.246775, -0.070810,
		0.237953, 0.757486, -0.607942,
		37.528858, 38.381912, 40.163383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964607, 37.833054, 39.986816>,  <37.362293, 37.851673, 40.588943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964607, 37.833054, 39.986816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.277573, 38.051243, 39.866619>,  <37.465351, 38.182156, 39.794502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.277573, 38.051243, 39.866619>,  <36.964607, 37.833054, 39.986816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277573, 38.051243, 39.866619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166931, -0.648550, -0.742642,
		-0.599973, 0.530889, -0.598489,
		0.782411, 0.545471, -0.300491,
		37.512295, 38.214886, 39.776470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135666, 37.627113, 39.246632>,  <36.964607, 37.833054, 39.986816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135666, 37.627113, 39.246632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.478718, 37.800060, 39.358009>,  <37.684547, 37.903828, 39.424835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.478718, 37.800060, 39.358009>,  <37.135666, 37.627113, 39.246632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478718, 37.800060, 39.358009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496262, -0.553783, -0.668617,
		-0.134891, 0.711606, -0.689508,
		0.857629, 0.432367, 0.278443,
		37.736008, 37.929771, 39.441544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451992, 37.886711, 38.603230>,  <37.135666, 37.627113, 39.246632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451992, 37.886711, 38.603230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728882, 37.818729, 38.883785>,  <37.895016, 37.777939, 39.052120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728882, 37.818729, 38.883785>,  <37.451992, 37.886711, 38.603230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728882, 37.818729, 38.883785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544140, -0.515507, -0.661940,
		0.474070, 0.839862, -0.264365,
		0.692221, -0.169954, 0.701389,
		37.936546, 37.767742, 39.094200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053802, 38.290798, 38.368374>,  <37.451992, 37.886711, 38.603230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053802, 38.290798, 38.368374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175922, 37.999329, 38.613594>,  <38.249195, 37.824448, 38.760727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175922, 37.999329, 38.613594>,  <38.053802, 38.290798, 38.368374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175922, 37.999329, 38.613594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573820, -0.373001, -0.729110,
		0.759949, 0.574379, 0.304248,
		0.305301, -0.728670, 0.613051,
		38.267513, 37.780727, 38.797508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699894, 38.119183, 38.102570>,  <38.053802, 38.290798, 38.368374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699894, 38.119183, 38.102570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623104, 37.804489, 38.337242>,  <38.577030, 37.615673, 38.478046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623104, 37.804489, 38.337242>,  <38.699894, 38.119183, 38.102570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623104, 37.804489, 38.337242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527010, -0.586936, -0.614627,
		0.827892, 0.191190, 0.527297,
		-0.191979, -0.786735, 0.586679,
		38.565510, 37.568470, 38.513245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310322, 37.824043, 38.299198>,  <38.699894, 38.119183, 38.102570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310322, 37.824043, 38.299198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.062115, 37.514469, 38.349751>,  <38.913189, 37.328724, 38.380081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.062115, 37.514469, 38.349751>,  <39.310322, 37.824043, 38.299198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062115, 37.514469, 38.349751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598959, -0.571780, -0.560639,
		0.506164, -0.272190, 0.818359,
		-0.620521, -0.773938, 0.126384,
		38.875957, 37.282288, 38.387665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679810, 37.251137, 38.278202>,  <39.310322, 37.824043, 38.299198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679810, 37.251137, 38.278202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.323978, 37.101624, 38.173187>,  <39.110477, 37.011913, 38.110176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.323978, 37.101624, 38.173187>,  <39.679810, 37.251137, 38.278202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323978, 37.101624, 38.173187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449958, -0.618172, -0.644516,
		0.078617, -0.691482, 0.718103,
		-0.889583, -0.373786, -0.262539,
		39.057102, 36.989487, 38.094425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.855700, 37.719860, 26.513149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903652, 37.325512, 26.466358>,  <27.932425, 37.088902, 26.438284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903652, 37.325512, 26.466358>,  <27.855700, 37.719860, 26.513149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903652, 37.325512, 26.466358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422782, -0.157307, 0.892473,
		-0.898267, -0.057534, -0.435668,
		0.119882, -0.985872, -0.116980,
		27.939617, 37.029751, 26.431265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187420, 37.353794, 26.586502>,  <27.855700, 37.719860, 26.513149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187420, 37.353794, 26.586502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.469046, 37.088474, 26.687952>,  <27.638021, 36.929283, 26.748821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.469046, 37.088474, 26.687952>,  <27.187420, 37.353794, 26.586502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469046, 37.088474, 26.687952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487911, -0.192337, 0.851439,
		-0.515979, -0.723215, -0.459049,
		0.704066, -0.663300, 0.253623,
		27.680265, 36.889484, 26.764040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817764, 36.632366, 26.701334>,  <27.187420, 37.353794, 26.586502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817764, 36.632366, 26.701334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.172466, 36.649914, 26.885395>,  <27.385288, 36.660442, 26.995832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.172466, 36.649914, 26.885395>,  <26.817764, 36.632366, 26.701334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172466, 36.649914, 26.885395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434312, -0.261718, 0.861903,
		0.158241, -0.964147, -0.213027,
		0.886754, 0.043869, 0.460155,
		27.438492, 36.663074, 27.023441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820383, 36.005325, 27.116886>,  <26.817764, 36.632366, 26.701334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820383, 36.005325, 27.116886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.126080, 36.192638, 27.294268>,  <27.309498, 36.305027, 27.400696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.126080, 36.192638, 27.294268>,  <26.820383, 36.005325, 27.116886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126080, 36.192638, 27.294268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423097, -0.154914, 0.892743,
		0.486750, -0.869895, 0.079736,
		0.764240, 0.468278, 0.443454,
		27.355352, 36.333122, 27.427303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987656, 35.646049, 27.685423>,  <26.820383, 36.005325, 27.116886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987656, 35.646049, 27.685423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.158424, 35.989662, 27.798422>,  <27.260885, 36.195831, 27.866220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.158424, 35.989662, 27.798422>,  <26.987656, 35.646049, 27.685423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158424, 35.989662, 27.798422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203352, -0.213196, 0.955613,
		0.881128, -0.465418, 0.083668,
		0.426922, 0.859031, 0.282497,
		27.286501, 36.247372, 27.883171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335533, 35.502766, 28.288227>,  <26.987656, 35.646049, 27.685423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335533, 35.502766, 28.288227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.314301, 35.902172, 28.283213>,  <27.301561, 36.141815, 28.280205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.314301, 35.902172, 28.283213>,  <27.335533, 35.502766, 28.288227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314301, 35.902172, 28.283213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219167, 0.000598, 0.975687,
		0.974242, 0.054539, 0.218809,
		-0.053082, 0.998511, -0.012535,
		27.298376, 36.201725, 28.279451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744251, 35.685394, 28.847219>,  <27.335533, 35.502766, 28.288227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744251, 35.685394, 28.847219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.476852, 35.974617, 28.777599>,  <27.316412, 36.148151, 28.735826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.476852, 35.974617, 28.777599>,  <27.744251, 35.685394, 28.847219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476852, 35.974617, 28.777599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190607, 0.059643, 0.979853,
		0.718873, 0.688206, 0.097949,
		-0.668499, 0.723059, -0.174053,
		27.276302, 36.191536, 28.725384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980206, 36.225689, 29.204870>,  <27.744251, 35.685394, 28.847219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980206, 36.225689, 29.204870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.586761, 36.281120, 29.158724>,  <27.350695, 36.314381, 29.131035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.586761, 36.281120, 29.158724>,  <27.980206, 36.225689, 29.204870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586761, 36.281120, 29.158724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097893, 0.126913, 0.987072,
		0.151433, 0.982185, -0.111266,
		-0.983608, 0.138583, -0.115368,
		27.291679, 36.322697, 29.124113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881586, 36.825562, 29.548531>,  <27.980206, 36.225689, 29.204870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881586, 36.825562, 29.548531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.521723, 36.652245, 29.527088>,  <27.305805, 36.548256, 29.514223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.521723, 36.652245, 29.527088>,  <27.881586, 36.825562, 29.548531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521723, 36.652245, 29.527088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101134, 0.087384, 0.991028,
		-0.424720, 0.897007, -0.122436,
		-0.899658, -0.433292, -0.053604,
		27.251825, 36.522259, 29.511007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464499, 37.188335, 30.110857>,  <27.881586, 36.825562, 29.548531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464499, 37.188335, 30.110857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246883, 36.865543, 30.018944>,  <27.116314, 36.671867, 29.963795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246883, 36.865543, 30.018944>,  <27.464499, 37.188335, 30.110857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246883, 36.865543, 30.018944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287924, -0.077680, 0.954497,
		-0.788113, 0.585443, -0.190089,
		-0.544038, -0.806983, -0.229784,
		27.083672, 36.623447, 29.950008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735266, 37.224174, 30.375257>,  <27.464499, 37.188335, 30.110857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735266, 37.224174, 30.375257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.805111, 36.834320, 30.319252>,  <26.847017, 36.600407, 30.285648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.805111, 36.834320, 30.319252>,  <26.735266, 37.224174, 30.375257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805111, 36.834320, 30.319252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298378, -0.187888, 0.935771,
		-0.938339, -0.121620, -0.323616,
		0.174612, -0.974631, -0.140013,
		26.857494, 36.541931, 30.277248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175596, 36.918003, 30.672754>,  <26.735266, 37.224174, 30.375257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175596, 36.918003, 30.672754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.454081, 36.631245, 30.658043>,  <26.621170, 36.459190, 30.649216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.454081, 36.631245, 30.658043>,  <26.175596, 36.918003, 30.672754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454081, 36.631245, 30.658043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249776, -0.289965, 0.923868,
		-0.672982, -0.634019, -0.380939,
		0.696210, -0.716896, -0.036778,
		26.662943, 36.416176, 30.647009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885406, 36.199059, 30.848776>,  <26.175596, 36.918003, 30.672754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885406, 36.199059, 30.848776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.275227, 36.186863, 30.937611>,  <26.509119, 36.179546, 30.990911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.275227, 36.186863, 30.937611>,  <25.885406, 36.199059, 30.848776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275227, 36.186863, 30.937611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214827, -0.410061, 0.886397,
		0.064045, -0.911548, -0.406175,
		0.974550, -0.030488, 0.222087,
		26.567591, 36.177715, 31.004236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997572, 35.521904, 31.174685>,  <25.885406, 36.199059, 30.848776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997572, 35.521904, 31.174685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312473, 35.748672, 31.271706>,  <26.501413, 35.884735, 31.329918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312473, 35.748672, 31.271706>,  <25.997572, 35.521904, 31.174685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312473, 35.748672, 31.271706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064540, -0.466947, 0.881927,
		0.613244, -0.678645, -0.404194,
		0.787252, 0.566923, 0.242553,
		26.548649, 35.918751, 31.344471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368095, 35.122395, 31.643875>,  <25.997572, 35.521904, 31.174685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368095, 35.122395, 31.643875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549303, 35.475704, 31.692209>,  <26.658028, 35.687691, 31.721209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549303, 35.475704, 31.692209>,  <26.368095, 35.122395, 31.643875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549303, 35.475704, 31.692209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157877, -0.212882, 0.964238,
		0.877411, -0.417741, -0.235888,
		0.453018, 0.883275, 0.120833,
		26.685209, 35.740688, 31.728458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046110, 34.989464, 31.828905>,  <26.368095, 35.122395, 31.643875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046110, 34.989464, 31.828905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.929413, 35.349476, 31.958416>,  <26.859394, 35.565483, 32.036121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.929413, 35.349476, 31.958416>,  <27.046110, 34.989464, 31.828905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929413, 35.349476, 31.958416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455563, -0.166892, 0.874419,
		0.841040, 0.402604, -0.361332,
		-0.291741, 0.900032, 0.323775,
		26.841890, 35.619484, 32.055550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609001, 35.241745, 32.151634>,  <27.046110, 34.989464, 31.828905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609001, 35.241745, 32.151634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309633, 35.449966, 32.316021>,  <27.130013, 35.574898, 32.414654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309633, 35.449966, 32.316021>,  <27.609001, 35.241745, 32.151634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309633, 35.449966, 32.316021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396713, -0.145200, 0.906386,
		0.531492, 0.841394, -0.097839,
		-0.748421, 0.520551, 0.410964,
		27.085106, 35.606133, 32.439312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933975, 35.707436, 32.610146>,  <27.609001, 35.241745, 32.151634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933975, 35.707436, 32.610146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.553644, 35.674240, 32.729504>,  <27.325445, 35.654324, 32.801121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.553644, 35.674240, 32.729504>,  <27.933975, 35.707436, 32.610146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553644, 35.674240, 32.729504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290841, 0.092029, 0.952335,
		-0.106490, 0.992292, -0.063368,
		-0.950827, -0.082984, 0.298399,
		27.268396, 35.649345, 32.819023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547211, 35.306774, 32.749992>,  <27.933975, 35.707436, 32.610146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547211, 35.306774, 32.749992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867519, 35.466198, 32.928841>,  <29.059706, 35.561852, 33.036148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867519, 35.466198, 32.928841>,  <28.547211, 35.306774, 32.749992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867519, 35.466198, 32.928841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108637, 0.637459, -0.762787,
		-0.589034, 0.659393, 0.467162,
		0.800773, 0.398556, 0.447120,
		29.107752, 35.585766, 33.062977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550163, 36.034504, 32.736702>,  <28.547211, 35.306774, 32.749992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550163, 36.034504, 32.736702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939775, 35.956108, 32.782055>,  <29.173542, 35.909073, 32.809265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939775, 35.956108, 32.782055>,  <28.550163, 36.034504, 32.736702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939775, 35.956108, 32.782055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219966, 0.700354, -0.679057,
		0.053677, 0.686363, 0.725276,
		0.974030, -0.195986, 0.113384,
		29.231985, 35.897312, 32.816071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911575, 36.695045, 32.850323>,  <28.550163, 36.034504, 32.736702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911575, 36.695045, 32.850323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.163465, 36.411018, 32.724304>,  <29.314600, 36.240601, 32.648693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.163465, 36.411018, 32.724304>,  <28.911575, 36.695045, 32.850323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163465, 36.411018, 32.724304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397105, 0.642811, -0.655058,
		0.667649, 0.287400, 0.686765,
		0.629724, -0.710067, -0.315044,
		29.352383, 36.197998, 32.629791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494698, 37.018967, 32.776104>,  <28.911575, 36.695045, 32.850323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494698, 37.018967, 32.776104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565775, 36.686283, 32.565701>,  <29.608421, 36.486671, 32.439457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565775, 36.686283, 32.565701>,  <29.494698, 37.018967, 32.776104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565775, 36.686283, 32.565701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255206, 0.555176, -0.791612,
		0.950418, 0.006422, 0.310907,
		0.177692, -0.831708, -0.526011,
		29.619081, 36.436771, 32.407898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202835, 37.109295, 32.450787>,  <29.494698, 37.018967, 32.776104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202835, 37.109295, 32.450787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.979061, 36.845932, 32.249374>,  <29.844797, 36.687916, 32.128529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.979061, 36.845932, 32.249374>,  <30.202835, 37.109295, 32.450787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979061, 36.845932, 32.249374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198309, 0.483523, -0.852572,
		0.804803, -0.576811, -0.139932,
		-0.559433, -0.658402, -0.503528,
		29.811232, 36.648411, 32.098316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572363, 36.943943, 31.945877>,  <30.202835, 37.109295, 32.450787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572363, 36.943943, 31.945877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.199068, 36.915524, 31.805010>,  <29.975092, 36.898472, 31.720490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.199068, 36.915524, 31.805010>,  <30.572363, 36.943943, 31.945877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199068, 36.915524, 31.805010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286221, 0.445417, -0.848340,
		0.217131, -0.892500, -0.395346,
		-0.933237, -0.071045, -0.352166,
		29.919098, 36.894211, 31.699360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697723, 36.846718, 31.246092>,  <30.572363, 36.943943, 31.945877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697723, 36.846718, 31.246092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307793, 36.933655, 31.266003>,  <30.073833, 36.985817, 31.277950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307793, 36.933655, 31.266003>,  <30.697723, 36.846718, 31.246092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307793, 36.933655, 31.266003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042576, 0.400594, -0.915266,
		-0.218864, -0.890106, -0.399762,
		-0.974826, 0.217339, 0.049779,
		30.015345, 36.998856, 31.280935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439222, 36.663063, 30.562656>,  <30.697723, 36.846718, 31.246092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439222, 36.663063, 30.562656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184317, 36.915756, 30.739206>,  <30.031374, 37.067371, 30.845137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184317, 36.915756, 30.739206>,  <30.439222, 36.663063, 30.562656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184317, 36.915756, 30.739206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213432, 0.405652, -0.888760,
		-0.740501, -0.660577, -0.123675,
		-0.637263, 0.631731, 0.441374,
		29.993137, 37.105274, 30.871618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780100, 36.584766, 30.135107>,  <30.439222, 36.663063, 30.562656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780100, 36.584766, 30.135107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768871, 36.932133, 30.333126>,  <29.762135, 37.140553, 30.451937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768871, 36.932133, 30.333126>,  <29.780100, 36.584766, 30.135107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768871, 36.932133, 30.333126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193045, 0.481209, -0.855086,
		-0.980788, -0.119570, 0.154134,
		-0.028072, 0.868413, 0.495047,
		29.760450, 37.192657, 30.481640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156179, 37.023392, 29.922989>,  <29.780100, 36.584766, 30.135107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156179, 37.023392, 29.922989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.433666, 37.276070, 30.061388>,  <29.600159, 37.427677, 30.144428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.433666, 37.276070, 30.061388>,  <29.156179, 37.023392, 29.922989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433666, 37.276070, 30.061388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141325, 0.590433, -0.794617,
		-0.706247, 0.502341, 0.498868,
		0.693716, 0.631698, 0.345998,
		29.641781, 37.465580, 30.165188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929466, 37.660786, 29.640539>,  <29.156179, 37.023392, 29.922989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929466, 37.660786, 29.640539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304071, 37.740536, 29.755911>,  <29.528835, 37.788383, 29.825134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304071, 37.740536, 29.755911>,  <28.929466, 37.660786, 29.640539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304071, 37.740536, 29.755911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078065, 0.683397, -0.725862,
		-0.341826, 0.702296, 0.624448,
		0.936515, 0.199371, 0.288427,
		29.585026, 37.800346, 29.842440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944159, 38.464703, 29.707958>,  <28.929466, 37.660786, 29.640539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944159, 38.464703, 29.707958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318670, 38.326038, 29.685299>,  <29.543377, 38.242840, 29.671703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318670, 38.326038, 29.685299>,  <28.944159, 38.464703, 29.707958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318670, 38.326038, 29.685299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134938, 0.503862, -0.853179,
		0.324307, 0.791169, 0.518533,
		0.936278, -0.346662, -0.056647,
		29.599554, 38.222038, 29.668304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426123, 38.988018, 29.762802>,  <28.944159, 38.464703, 29.707958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426123, 38.988018, 29.762802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600107, 38.691895, 29.557764>,  <29.704498, 38.514221, 29.434742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600107, 38.691895, 29.557764>,  <29.426123, 38.988018, 29.762802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600107, 38.691895, 29.557764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089803, 0.602092, -0.793361,
		0.895961, 0.299047, 0.328368,
		0.434960, -0.740308, -0.512595,
		29.730595, 38.469803, 29.403986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679398, 39.376228, 29.129425>,  <29.426123, 38.988018, 29.762802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679398, 39.376228, 29.129425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.799236, 39.002552, 29.051933>,  <29.871140, 38.778347, 29.005438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.799236, 39.002552, 29.051933>,  <29.679398, 39.376228, 29.129425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799236, 39.002552, 29.051933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149549, 0.246529, -0.957527,
		0.942273, 0.257898, 0.213566,
		0.299595, -0.934190, -0.193729,
		29.889114, 38.722294, 28.993814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430363, 39.398567, 28.808529>,  <29.679398, 39.376228, 29.129425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430363, 39.398567, 28.808529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197903, 39.093292, 28.695528>,  <30.058428, 38.910126, 28.627728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197903, 39.093292, 28.695528>,  <30.430363, 39.398567, 28.808529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197903, 39.093292, 28.695528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063339, 0.303671, -0.950669,
		0.811329, -0.570373, -0.128139,
		-0.581148, -0.763189, -0.282504,
		30.023558, 38.864334, 28.610777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859968, 39.052551, 28.324825>,  <30.430363, 39.398567, 28.808529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859968, 39.052551, 28.324825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493433, 38.908104, 28.255638>,  <30.273512, 38.821434, 28.214125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493433, 38.908104, 28.255638>,  <30.859968, 39.052551, 28.324825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493433, 38.908104, 28.255638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152388, 0.084952, -0.984663,
		0.370274, -0.928642, -0.022815,
		-0.916338, -0.361118, -0.172970,
		30.218531, 38.799770, 28.203747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900450, 38.421883, 27.873129>,  <30.859968, 39.052551, 28.324825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900450, 38.421883, 27.873129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.540356, 38.588642, 27.822889>,  <30.324299, 38.688698, 27.792746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.540356, 38.588642, 27.822889>,  <30.900450, 38.421883, 27.873129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540356, 38.588642, 27.822889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141527, 0.007377, -0.989907,
		-0.411762, -0.908924, -0.065643,
		-0.900235, 0.416896, -0.125600,
		30.270285, 38.713711, 27.785210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671560, 38.152924, 27.318197>,  <30.900450, 38.421883, 27.873129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671560, 38.152924, 27.318197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.388048, 38.433933, 27.343775>,  <30.217941, 38.602539, 27.359121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.388048, 38.433933, 27.343775>,  <30.671560, 38.152924, 27.318197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388048, 38.433933, 27.343775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041872, 0.048585, -0.997941,
		-0.704187, -0.709996, -0.005020,
		-0.708778, 0.702527, 0.063942,
		30.175415, 38.644691, 27.362957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061895, 37.843182, 26.941309>,  <30.671560, 38.152924, 27.318197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061895, 37.843182, 26.941309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071478, 38.242466, 26.963226>,  <30.077227, 38.482037, 26.976377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071478, 38.242466, 26.963226>,  <30.061895, 37.843182, 26.941309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071478, 38.242466, 26.963226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074611, 0.056443, -0.995614,
		-0.996925, 0.019763, 0.075830,
		0.023957, 0.998210, 0.054795,
		30.078665, 38.541927, 26.979664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560818, 38.095238, 26.514492>,  <30.061895, 37.843182, 26.941309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560818, 38.095238, 26.514492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.802027, 38.412746, 26.546227>,  <29.946753, 38.603252, 26.565268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.802027, 38.412746, 26.546227>,  <29.560818, 38.095238, 26.514492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802027, 38.412746, 26.546227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107014, 0.179051, -0.978002,
		-0.790512, 0.581269, 0.192916,
		0.603025, 0.793767, 0.079338,
		29.982935, 38.650875, 26.570028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349033, 38.550999, 25.931252>,  <29.560818, 38.095238, 26.514492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349033, 38.550999, 25.931252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.718727, 38.665478, 26.032349>,  <29.940544, 38.734165, 26.093006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.718727, 38.665478, 26.032349>,  <29.349033, 38.550999, 25.931252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718727, 38.665478, 26.032349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166363, 0.293956, -0.941230,
		-0.343677, 0.911964, 0.224071,
		0.924234, 0.286202, 0.252743,
		29.995998, 38.751339, 26.108171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269522, 39.218323, 25.576960>,  <29.349033, 38.550999, 25.931252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269522, 39.218323, 25.576960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653641, 39.151180, 25.666094>,  <29.884111, 39.110897, 25.719574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653641, 39.151180, 25.666094>,  <29.269522, 39.218323, 25.576960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653641, 39.151180, 25.666094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276582, 0.468287, -0.839172,
		0.036505, 0.867487, 0.496119,
		0.960297, -0.167852, 0.222837,
		29.941730, 39.100826, 25.732944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539278, 39.720108, 25.277973>,  <29.269522, 39.218323, 25.576960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539278, 39.720108, 25.277973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.856663, 39.493149, 25.366049>,  <30.047094, 39.356976, 25.418894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.856663, 39.493149, 25.366049>,  <29.539278, 39.720108, 25.277973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856663, 39.493149, 25.366049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518158, 0.439983, -0.733435,
		0.319267, 0.696045, 0.643109,
		0.793461, -0.567394, 0.220189,
		30.094702, 39.322929, 25.432106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051346, 40.171364, 25.271545>,  <29.539278, 39.720108, 25.277973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051346, 40.171364, 25.271545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198309, 39.802509, 25.223099>,  <30.286486, 39.581196, 25.194031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198309, 39.802509, 25.223099>,  <30.051346, 40.171364, 25.271545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198309, 39.802509, 25.223099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456676, 0.292310, -0.840240,
		0.810222, 0.253399, 0.528516,
		0.367406, -0.922141, -0.121115,
		30.308531, 39.525867, 25.186764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.395813, 38.501190, 42.656609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131554, 38.392536, 42.936539>,  <36.973000, 38.327343, 43.104496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131554, 38.392536, 42.936539>,  <37.395813, 38.501190, 42.656609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131554, 38.392536, 42.936539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403866, 0.657225, 0.636354,
		-0.632803, 0.703042, -0.324488,
		-0.660645, -0.271638, 0.699829,
		36.933361, 38.311047, 43.146488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080124, 39.115303, 42.993725>,  <37.395813, 38.501190, 42.656609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080124, 39.115303, 42.993725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030685, 38.825146, 43.264584>,  <37.001022, 38.651051, 43.427097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030685, 38.825146, 43.264584>,  <37.080124, 39.115303, 42.993725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030685, 38.825146, 43.264584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020852, 0.680328, 0.732611,
		-0.992113, 0.104670, -0.068961,
		-0.123598, -0.725395, 0.677145,
		36.993607, 38.607529, 43.467728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615158, 39.274776, 43.493057>,  <37.080124, 39.115303, 42.993725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615158, 39.274776, 43.493057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816784, 39.002605, 43.705826>,  <36.937759, 38.839302, 43.833488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816784, 39.002605, 43.705826>,  <36.615158, 39.274776, 43.493057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816784, 39.002605, 43.705826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091149, 0.570538, 0.816197,
		-0.858845, -0.459897, 0.225565,
		0.504060, -0.680427, 0.531923,
		36.968002, 38.798477, 43.865402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217896, 39.255577, 44.139599>,  <36.615158, 39.274776, 43.493057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217896, 39.255577, 44.139599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559250, 39.065361, 44.225006>,  <36.764061, 38.951229, 44.276253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559250, 39.065361, 44.225006>,  <36.217896, 39.255577, 44.139599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559250, 39.065361, 44.225006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074581, 0.516780, 0.852864,
		-0.515918, -0.711897, 0.476478,
		0.853385, -0.475544, 0.213522,
		36.815266, 38.922699, 44.289062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089336, 38.905663, 44.754356>,  <36.217896, 39.255577, 44.139599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089336, 38.905663, 44.754356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487103, 38.935467, 44.724472>,  <36.725761, 38.953350, 44.706543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.487103, 38.935467, 44.724472>,  <36.089336, 38.905663, 44.754356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487103, 38.935467, 44.724472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058501, 0.199956, 0.978057,
		0.087811, -0.976968, 0.194482,
		0.994418, 0.074507, -0.074712,
		36.785427, 38.957817, 44.702057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160206, 38.905029, 45.417717>,  <36.089336, 38.905663, 44.754356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160206, 38.905029, 45.417717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522743, 38.987347, 45.270103>,  <36.740265, 39.036736, 45.181534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522743, 38.987347, 45.270103>,  <36.160206, 38.905029, 45.417717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522743, 38.987347, 45.270103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320636, 0.233839, 0.917884,
		0.275193, -0.950245, 0.145953,
		0.906345, 0.205798, -0.369034,
		36.794647, 39.049084, 45.159393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702633, 38.581882, 45.813248>,  <36.160206, 38.905029, 45.417717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702633, 38.581882, 45.813248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896038, 38.892982, 45.652584>,  <37.012081, 39.079643, 45.556187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896038, 38.892982, 45.652584>,  <36.702633, 38.581882, 45.813248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896038, 38.892982, 45.652584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354333, 0.245688, 0.902267,
		0.800417, -0.578575, -0.156789,
		0.483508, 0.777745, -0.401661,
		37.041092, 39.126305, 45.532085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519360, 38.648792, 46.029362>,  <36.702633, 38.581882, 45.813248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519360, 38.648792, 46.029362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372757, 39.007248, 45.929283>,  <37.284794, 39.222321, 45.869236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372757, 39.007248, 45.929283>,  <37.519360, 38.648792, 46.029362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372757, 39.007248, 45.929283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221896, 0.345338, 0.911868,
		0.903567, 0.278690, -0.325421,
		-0.366509, 0.896143, -0.250196,
		37.262806, 39.276093, 45.854225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808052, 39.033718, 46.551281>,  <37.519360, 38.648792, 46.029362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808052, 39.033718, 46.551281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587440, 39.314785, 46.371471>,  <37.455074, 39.483425, 46.263584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587440, 39.314785, 46.371471>,  <37.808052, 39.033718, 46.551281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587440, 39.314785, 46.371471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137924, 0.608302, 0.781630,
		0.822672, 0.369094, -0.432413,
		-0.551532, 0.702665, -0.449526,
		37.421982, 39.525585, 46.236614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163895, 39.681580, 46.609760>,  <37.808052, 39.033718, 46.551281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163895, 39.681580, 46.609760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775814, 39.766228, 46.562557>,  <37.542965, 39.817017, 46.534237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775814, 39.766228, 46.562557>,  <38.163895, 39.681580, 46.609760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775814, 39.766228, 46.562557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011101, 0.447691, 0.894120,
		0.242044, 0.868786, -0.432001,
		-0.970202, 0.211621, -0.118005,
		37.484753, 39.829716, 46.527157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042923, 40.383926, 46.971161>,  <38.163895, 39.681580, 46.609760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042923, 40.383926, 46.971161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.674213, 40.238205, 46.918056>,  <37.452988, 40.150772, 46.886192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.674213, 40.238205, 46.918056>,  <38.042923, 40.383926, 46.971161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674213, 40.238205, 46.918056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283671, 0.400191, 0.871423,
		-0.264331, 0.840911, -0.472225,
		-0.921770, -0.364301, -0.132760,
		37.397682, 40.128914, 46.878227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594578, 40.954826, 47.008461>,  <38.042923, 40.383926, 46.971161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594578, 40.954826, 47.008461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363262, 40.638035, 47.086792>,  <37.224472, 40.447960, 47.133793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363262, 40.638035, 47.086792>,  <37.594578, 40.954826, 47.008461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363262, 40.638035, 47.086792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170305, 0.351935, 0.920401,
		-0.797861, 0.498905, -0.338397,
		-0.578286, -0.791982, 0.195829,
		37.189777, 40.400440, 47.145542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931656, 41.176609, 47.305943>,  <37.594578, 40.954826, 47.008461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931656, 41.176609, 47.305943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935379, 40.800472, 47.441978>,  <36.937614, 40.574791, 47.523602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935379, 40.800472, 47.441978>,  <36.931656, 41.176609, 47.305943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935379, 40.800472, 47.441978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118001, 0.336699, 0.934189,
		-0.992970, -0.048825, -0.107828,
		0.009306, -0.940345, 0.340094,
		36.938171, 40.518368, 47.544006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043758, 41.900860, 47.000011>,  <36.931656, 41.176609, 47.305943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043758, 41.900860, 47.000011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697525, 42.081154, 46.912735>,  <36.489784, 42.189331, 46.860371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697525, 42.081154, 46.912735>,  <37.043758, 41.900860, 47.000011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697525, 42.081154, 46.912735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313416, 0.147790, -0.938045,
		-0.390564, -0.880338, -0.269192,
		-0.865581, 0.450735, -0.218190,
		36.437851, 42.216373, 46.847279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634914, 41.616055, 46.409256>,  <37.043758, 41.900860, 47.000011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634914, 41.616055, 46.409256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.530403, 42.001923, 46.422810>,  <36.467697, 42.233444, 46.430943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.530403, 42.001923, 46.422810>,  <36.634914, 41.616055, 46.409256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530403, 42.001923, 46.422810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245143, 0.100268, -0.964288,
		-0.933615, -0.243645, -0.262680,
		-0.261282, 0.964667, 0.033884,
		36.452019, 42.291325, 46.432976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175728, 41.701424, 45.899036>,  <36.634914, 41.616055, 46.409256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175728, 41.701424, 45.899036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.331078, 42.062870, 45.971306>,  <36.424286, 42.279739, 46.014668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.331078, 42.062870, 45.971306>,  <36.175728, 41.701424, 45.899036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331078, 42.062870, 45.971306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293770, 0.064429, -0.953702,
		-0.873422, 0.423469, -0.240433,
		0.388372, 0.903617, 0.180676,
		36.447590, 42.333954, 46.025509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781738, 42.256813, 45.470661>,  <36.175728, 41.701424, 45.899036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781738, 42.256813, 45.470661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156857, 42.337601, 45.583626>,  <36.381927, 42.386074, 45.651405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156857, 42.337601, 45.583626>,  <35.781738, 42.256813, 45.470661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156857, 42.337601, 45.583626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322112, -0.202532, -0.924784,
		-0.129578, 0.958222, -0.254989,
		0.937792, 0.201966, 0.282411,
		36.438194, 42.398190, 45.668350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974854, 42.749252, 45.112984>,  <35.781738, 42.256813, 45.470661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974854, 42.749252, 45.112984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332008, 42.602043, 45.216766>,  <36.546303, 42.513718, 45.279034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332008, 42.602043, 45.216766>,  <35.974854, 42.749252, 45.112984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332008, 42.602043, 45.216766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261530, -0.045196, -0.964137,
		0.366546, 0.928720, 0.055893,
		0.892886, -0.368018, 0.259454,
		36.599873, 42.491638, 45.294601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482529, 43.127552, 44.677715>,  <35.974854, 42.749252, 45.112984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482529, 43.127552, 44.677715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672489, 42.802864, 44.813705>,  <36.786465, 42.608051, 44.895302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672489, 42.802864, 44.813705>,  <36.482529, 43.127552, 44.677715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672489, 42.802864, 44.813705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276584, -0.229080, -0.933287,
		0.835449, 0.537247, 0.115719,
		0.474897, -0.811719, 0.339978,
		36.814957, 42.559349, 44.915699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088448, 43.148800, 44.323849>,  <36.482529, 43.127552, 44.677715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088448, 43.148800, 44.323849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049339, 42.769062, 44.443302>,  <37.025875, 42.541218, 44.514973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049339, 42.769062, 44.443302>,  <37.088448, 43.148800, 44.323849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049339, 42.769062, 44.443302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264090, -0.314065, -0.911932,
		0.959529, -0.010298, 0.281421,
		-0.097775, -0.949346, 0.298635,
		37.020008, 42.484257, 44.532894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619732, 42.727406, 43.963745>,  <37.088448, 43.148800, 44.323849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619732, 42.727406, 43.963745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364643, 42.446640, 44.090633>,  <37.211590, 42.278183, 44.166767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364643, 42.446640, 44.090633>,  <37.619732, 42.727406, 43.963745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364643, 42.446640, 44.090633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184353, -0.538953, -0.821915,
		0.747879, -0.465674, 0.473102,
		-0.637724, -0.701910, 0.317223,
		37.173325, 42.236069, 44.185799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919247, 42.047165, 43.864639>,  <37.619732, 42.727406, 43.963745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919247, 42.047165, 43.864639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.522472, 41.996811, 43.870575>,  <37.284409, 41.966599, 43.874134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.522472, 41.996811, 43.870575>,  <37.919247, 42.047165, 43.864639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522472, 41.996811, 43.870575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068595, -0.631539, -0.772304,
		0.106588, -0.765057, 0.635080,
		-0.991935, -0.125882, 0.014835,
		37.224892, 41.959045, 43.875027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831406, 41.287468, 43.731022>,  <37.919247, 42.047165, 43.864639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831406, 41.287468, 43.731022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.470978, 41.449184, 43.668251>,  <37.254723, 41.546215, 43.630589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.470978, 41.449184, 43.668251>,  <37.831406, 41.287468, 43.731022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470978, 41.449184, 43.668251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199691, -0.708004, -0.677387,
		-0.384967, -0.579034, 0.718693,
		-0.901068, 0.404288, -0.156931,
		37.200657, 41.570473, 43.621170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387157, 40.736477, 43.851463>,  <37.831406, 41.287468, 43.731022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387157, 40.736477, 43.851463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209965, 41.016720, 43.627705>,  <37.103649, 41.184864, 43.493450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209965, 41.016720, 43.627705>,  <37.387157, 40.736477, 43.851463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209965, 41.016720, 43.627705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054164, -0.643728, -0.763335,
		-0.894893, -0.307844, 0.323107,
		-0.442981, 0.700604, -0.559394,
		37.077072, 41.226902, 43.459885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711323, 40.378754, 43.571712>,  <37.387157, 40.736477, 43.851463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711323, 40.378754, 43.571712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841373, 40.689831, 43.356495>,  <36.919403, 40.876476, 43.227364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841373, 40.689831, 43.356495>,  <36.711323, 40.378754, 43.571712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841373, 40.689831, 43.356495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012297, -0.565432, -0.824703,
		-0.945592, 0.274747, -0.174272,
		0.325124, 0.777689, -0.538046,
		36.938911, 40.923138, 43.195080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170044, 40.490547, 43.057556>,  <36.711323, 40.378754, 43.571712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170044, 40.490547, 43.057556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498821, 40.667953, 42.914616>,  <36.696087, 40.774399, 42.828850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498821, 40.667953, 42.914616>,  <36.170044, 40.490547, 43.057556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498821, 40.667953, 42.914616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218701, -0.333555, -0.917012,
		-0.525906, 0.831886, -0.177166,
		0.821944, 0.443516, -0.357353,
		36.745403, 40.801010, 42.807411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968613, 40.883892, 42.389858>,  <36.170044, 40.490547, 43.057556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968613, 40.883892, 42.389858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.361591, 40.814674, 42.417744>,  <36.597378, 40.773144, 42.434475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.361591, 40.814674, 42.417744>,  <35.968613, 40.883892, 42.389858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361591, 40.814674, 42.417744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005381, -0.399826, -0.916575,
		0.186481, 0.900109, -0.393738,
		0.982444, -0.173042, 0.069717,
		36.656326, 40.762760, 42.438660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189083, 40.977325, 41.754959>,  <35.968613, 40.883892, 42.389858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189083, 40.977325, 41.754959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.524090, 40.797909, 41.879776>,  <36.725094, 40.690258, 41.954666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.524090, 40.797909, 41.879776>,  <36.189083, 40.977325, 41.754959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524090, 40.797909, 41.879776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119076, -0.407522, -0.905398,
		0.533274, 0.795446, -0.287897,
		0.837520, -0.448544, 0.312040,
		36.775345, 40.663345, 41.973389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126793, 41.529224, 41.366798>,  <36.189083, 40.977325, 41.754959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126793, 41.529224, 41.366798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824287, 41.426968, 41.125896>,  <35.642784, 41.365612, 40.981354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824287, 41.426968, 41.125896>,  <36.126793, 41.529224, 41.366798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824287, 41.426968, 41.125896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654124, 0.276029, 0.704222,
		-0.013787, 0.926529, -0.375971,
		-0.756261, -0.255642, -0.602259,
		35.597408, 41.350277, 40.945217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726971, 42.189087, 41.384274>,  <36.126793, 41.529224, 41.366798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726971, 42.189087, 41.384274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525524, 41.857056, 41.288486>,  <35.404655, 41.657837, 41.231014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525524, 41.857056, 41.288486>,  <35.726971, 42.189087, 41.384274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525524, 41.857056, 41.288486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738989, 0.270323, 0.617107,
		-0.447513, 0.487747, -0.749557,
		-0.503614, -0.830078, -0.239466,
		35.374439, 41.608032, 41.216648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081642, 42.393375, 41.306168>,  <35.726971, 42.189087, 41.384274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081642, 42.393375, 41.306168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061581, 42.001209, 41.382339>,  <35.049541, 41.765907, 41.428043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061581, 42.001209, 41.382339>,  <35.081642, 42.393375, 41.306168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061581, 42.001209, 41.382339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655356, 0.176187, 0.734484,
		-0.753653, -0.087959, -0.651360,
		-0.050157, -0.980419, 0.190428,
		35.046532, 41.707085, 41.439468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399330, 42.221088, 41.348660>,  <35.081642, 42.393375, 41.306168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399330, 42.221088, 41.348660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558784, 41.892262, 41.511288>,  <34.654457, 41.694965, 41.608864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558784, 41.892262, 41.511288>,  <34.399330, 42.221088, 41.348660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558784, 41.892262, 41.511288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688980, 0.024156, 0.724378,
		-0.605309, -0.568877, -0.556758,
		0.398633, -0.822067, 0.406567,
		34.678375, 41.645641, 41.633259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837013, 41.927418, 41.587479>,  <34.399330, 42.221088, 41.348660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837013, 41.927418, 41.587479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137325, 41.762619, 41.794006>,  <34.317513, 41.663742, 41.917923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137325, 41.762619, 41.794006>,  <33.837013, 41.927418, 41.587479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137325, 41.762619, 41.794006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564819, 0.004877, 0.825200,
		-0.342495, -0.911174, -0.229041,
		0.750784, -0.411994, 0.516319,
		34.362560, 41.639019, 41.948902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475475, 41.445751, 42.072041>,  <33.837013, 41.927418, 41.587479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475475, 41.445751, 42.072041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846710, 41.500111, 42.210709>,  <34.069450, 41.532726, 42.293911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846710, 41.500111, 42.210709>,  <33.475475, 41.445751, 42.072041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846710, 41.500111, 42.210709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371553, 0.276771, 0.886197,
		0.024486, -0.951277, 0.307363,
		0.928088, 0.135901, 0.346673,
		34.125137, 41.540882, 42.314713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437119, 41.191795, 42.728485>,  <33.475475, 41.445751, 42.072041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437119, 41.191795, 42.728485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772938, 41.408516, 42.744518>,  <33.974430, 41.538548, 42.754139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772938, 41.408516, 42.744518>,  <33.437119, 41.191795, 42.728485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772938, 41.408516, 42.744518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151556, 0.162724, 0.974962,
		0.521713, -0.824605, 0.218728,
		0.839551, 0.541800, 0.040079,
		34.024803, 41.571056, 42.756542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647266, 40.516327, 43.078739>,  <33.437119, 41.191795, 42.728485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647266, 40.516327, 43.078739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342884, 40.287449, 43.201077>,  <33.160255, 40.150120, 43.274479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342884, 40.287449, 43.201077>,  <33.647266, 40.516327, 43.078739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342884, 40.287449, 43.201077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236583, -0.683654, -0.690396,
		0.604137, -0.453000, 0.655599,
		-0.760952, -0.572197, 0.305848,
		33.114597, 40.115791, 43.292831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982735, 39.894283, 43.190517>,  <33.647266, 40.516327, 43.078739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982735, 39.894283, 43.190517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592598, 39.830994, 43.128971>,  <33.358517, 39.793018, 43.092045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592598, 39.830994, 43.128971>,  <33.982735, 39.894283, 43.190517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592598, 39.830994, 43.128971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220663, -0.712427, -0.666150,
		-0.004216, -0.683676, 0.729774,
		-0.975341, -0.158226, -0.153866,
		33.299995, 39.783527, 43.082813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844433, 39.182381, 43.244667>,  <33.982735, 39.894283, 43.190517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844433, 39.182381, 43.244667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544914, 39.323803, 43.020412>,  <33.365204, 39.408657, 42.885860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544914, 39.323803, 43.020412>,  <33.844433, 39.182381, 43.244667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544914, 39.323803, 43.020412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212179, -0.673476, -0.708103,
		-0.627921, -0.649179, 0.429280,
		-0.748795, 0.353548, -0.560633,
		33.320278, 39.429867, 42.852222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477116, 38.533134, 42.868252>,  <33.844433, 39.182381, 43.244667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477116, 38.533134, 42.868252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341137, 38.841496, 42.652794>,  <33.259548, 39.026512, 42.523518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341137, 38.841496, 42.652794>,  <33.477116, 38.533134, 42.868252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341137, 38.841496, 42.652794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194437, -0.502771, -0.842268,
		-0.920124, -0.391062, 0.021025,
		-0.339950, 0.770903, -0.538648,
		33.239151, 39.072765, 42.491199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945950, 38.269043, 42.455742>,  <33.477116, 38.533134, 42.868252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945950, 38.269043, 42.455742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092991, 38.590286, 42.268169>,  <33.181213, 38.783031, 42.155628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092991, 38.590286, 42.268169>,  <32.945950, 38.269043, 42.455742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092991, 38.590286, 42.268169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128139, -0.543163, -0.829792,
		-0.921113, 0.244944, -0.302576,
		0.367601, 0.803104, -0.468928,
		33.203270, 38.831219, 42.127491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627728, 38.308838, 41.850967>,  <32.945950, 38.269043, 42.455742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627728, 38.308838, 41.850967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948700, 38.540710, 41.794300>,  <33.141285, 38.679836, 41.760300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948700, 38.540710, 41.794300>,  <32.627728, 38.308838, 41.850967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948700, 38.540710, 41.794300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187250, -0.469998, -0.862577,
		-0.566604, 0.665633, -0.485687,
		0.802432, 0.579685, -0.141664,
		33.189430, 38.714615, 41.751801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693943, 38.393852, 41.059624>,  <32.627728, 38.308838, 41.850967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693943, 38.393852, 41.059624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.043930, 38.539143, 41.187687>,  <33.253922, 38.626316, 41.264526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.043930, 38.539143, 41.187687>,  <32.693943, 38.393852, 41.059624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043930, 38.539143, 41.187687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406004, -0.190110, -0.893879,
		-0.263816, 0.912098, -0.313811,
		0.874964, 0.363228, 0.320161,
		33.306419, 38.648109, 41.283737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.920811, 38.687317, 47.197624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.277802, 38.787159, 47.047329>,  <35.491997, 38.847065, 46.957150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.277802, 38.787159, 47.047329>,  <34.920811, 38.687317, 47.197624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277802, 38.787159, 47.047329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108700, -0.927415, -0.357892,
		-0.437800, 0.278568, -0.854828,
		0.892477, 0.249605, -0.375742,
		35.545544, 38.862041, 46.934605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928608, 38.635082, 46.387787>,  <34.920811, 38.687317, 47.197624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928608, 38.635082, 46.387787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.282825, 38.545151, 46.550400>,  <35.495354, 38.491192, 46.647968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.282825, 38.545151, 46.550400>,  <34.928608, 38.635082, 46.387787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282825, 38.545151, 46.550400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005510, -0.869946, -0.493116,
		0.464526, 0.438914, -0.769135,
		0.885542, -0.224827, 0.406531,
		35.548489, 38.477703, 46.672359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405807, 38.588837, 45.842979>,  <34.928608, 38.635082, 46.387787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405807, 38.588837, 45.842979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.562843, 38.381489, 46.146866>,  <35.657063, 38.257080, 46.329197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.562843, 38.381489, 46.146866>,  <35.405807, 38.588837, 45.842979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562843, 38.381489, 46.146866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115300, -0.791777, -0.599829,
		0.912460, 0.323079, -0.251072,
		0.392585, -0.518371, 0.759715,
		35.680618, 38.225979, 46.374779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885502, 38.138790, 45.489174>,  <35.405807, 38.588837, 45.842979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885502, 38.138790, 45.489174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.846985, 37.963963, 45.846878>,  <35.823875, 37.859066, 46.061501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.846985, 37.963963, 45.846878>,  <35.885502, 38.138790, 45.489174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846985, 37.963963, 45.846878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230977, -0.883721, -0.407047,
		0.968183, 0.167360, 0.186044,
		-0.096288, -0.437068, 0.894260,
		35.818100, 37.832844, 46.115154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518505, 37.743881, 45.644783>,  <35.885502, 38.138790, 45.489174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518505, 37.743881, 45.644783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205185, 37.598686, 45.846649>,  <36.017193, 37.511570, 45.967770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205185, 37.598686, 45.846649>,  <36.518505, 37.743881, 45.644783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205185, 37.598686, 45.846649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046747, -0.843916, -0.534435,
		0.619887, -0.395030, 0.678006,
		-0.783298, -0.362984, 0.504666,
		35.970196, 37.489792, 45.998051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633236, 36.996712, 45.747818>,  <36.518505, 37.743881, 45.644783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633236, 36.996712, 45.747818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.238708, 37.025421, 45.807190>,  <36.001991, 37.042648, 45.842812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.238708, 37.025421, 45.807190>,  <36.633236, 36.996712, 45.747818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238708, 37.025421, 45.807190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141904, -0.827917, -0.542602,
		0.083943, -0.556239, 0.826772,
		-0.986315, 0.071775, 0.148430,
		35.942814, 37.046955, 45.851719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351616, 36.290104, 45.966408>,  <36.633236, 36.996712, 45.747818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351616, 36.290104, 45.966408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.058365, 36.511444, 45.808254>,  <35.882416, 36.644249, 45.713364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.058365, 36.511444, 45.808254>,  <36.351616, 36.290104, 45.966408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058365, 36.511444, 45.808254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320541, -0.793887, -0.516717,
		-0.599814, -0.252084, 0.759392,
		-0.733128, 0.553350, -0.395382,
		35.838428, 36.677448, 45.689640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785343, 35.809177, 46.016350>,  <36.351616, 36.290104, 45.966408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785343, 35.809177, 46.016350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.710434, 36.079605, 45.731293>,  <35.665489, 36.241863, 45.560257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.710434, 36.079605, 45.731293>,  <35.785343, 35.809177, 46.016350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710434, 36.079605, 45.731293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407723, -0.713532, -0.569766,
		-0.893695, 0.183858, 0.409276,
		-0.187275, 0.676068, -0.712643,
		35.654251, 36.282425, 45.517498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140705, 35.585930, 45.749329>,  <35.785343, 35.809177, 46.016350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140705, 35.585930, 45.749329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.274944, 35.826550, 45.459358>,  <35.355488, 35.970921, 45.285378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.274944, 35.826550, 45.459358>,  <35.140705, 35.585930, 45.749329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274944, 35.826550, 45.459358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325891, -0.647898, -0.688494,
		-0.883838, 0.467304, -0.021395,
		0.335598, 0.601544, -0.724926,
		35.375622, 36.007011, 45.241879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599735, 35.571629, 45.247013>,  <35.140705, 35.585930, 45.749329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599735, 35.571629, 45.247013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.914127, 35.726162, 45.053940>,  <35.102764, 35.818882, 44.938095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.914127, 35.726162, 45.053940>,  <34.599735, 35.571629, 45.247013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914127, 35.726162, 45.053940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220034, -0.554803, -0.802359,
		-0.577773, 0.736843, -0.351056,
		0.785979, 0.386337, -0.482680,
		35.149921, 35.842064, 44.909134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366764, 35.515148, 44.606213>,  <34.599735, 35.571629, 45.247013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366764, 35.515148, 44.606213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.757698, 35.575474, 44.546783>,  <34.992256, 35.611671, 44.511124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.757698, 35.575474, 44.546783>,  <34.366764, 35.515148, 44.606213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757698, 35.575474, 44.546783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049116, -0.521124, -0.852067,
		-0.205935, 0.840050, -0.501904,
		0.977332, 0.150819, -0.148577,
		35.050900, 35.620720, 44.502209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532211, 35.862282, 43.935093>,  <34.366764, 35.515148, 44.606213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532211, 35.862282, 43.935093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.855637, 35.649956, 44.036648>,  <35.049690, 35.522560, 44.097580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.855637, 35.649956, 44.036648>,  <34.532211, 35.862282, 43.935093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855637, 35.649956, 44.036648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102144, -0.298314, -0.948986,
		0.579476, 0.793248, -0.186986,
		0.808563, -0.530816, 0.253892,
		35.098206, 35.490711, 44.112816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437920, 36.427048, 43.440464>,  <34.532211, 35.862282, 43.935093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437920, 36.427048, 43.440464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064594, 36.563511, 43.395660>,  <33.840599, 36.645390, 43.368778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064594, 36.563511, 43.395660>,  <34.437920, 36.427048, 43.440464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064594, 36.563511, 43.395660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134529, 0.621437, 0.771828,
		0.332917, 0.705287, -0.625889,
		-0.933310, 0.341155, -0.112005,
		33.784599, 36.665859, 43.362061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478325, 37.146896, 43.619293>,  <34.437920, 36.427048, 43.440464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478325, 37.146896, 43.619293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.083714, 37.086643, 43.644794>,  <33.846947, 37.050491, 43.660095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.083714, 37.086643, 43.644794>,  <34.478325, 37.146896, 43.619293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083714, 37.086643, 43.644794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039440, 0.597310, 0.801040,
		-0.158741, 0.787737, -0.595207,
		-0.986532, -0.150633, 0.063750,
		33.787754, 37.041454, 43.663918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132732, 37.806637, 43.676552>,  <34.478325, 37.146896, 43.619293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132732, 37.806637, 43.676552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.873871, 37.545750, 43.834438>,  <33.718552, 37.389217, 43.929173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.873871, 37.545750, 43.834438>,  <34.132732, 37.806637, 43.676552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873871, 37.545750, 43.834438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199074, 0.644373, 0.738345,
		-0.735907, 0.399246, -0.546849,
		-0.647156, -0.652217, 0.394719,
		33.679726, 37.350086, 43.952854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529694, 38.232460, 43.789806>,  <34.132732, 37.806637, 43.676552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529694, 38.232460, 43.789806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.483356, 37.918591, 44.033401>,  <33.455555, 37.730270, 44.179558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.483356, 37.918591, 44.033401>,  <33.529694, 38.232460, 43.789806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483356, 37.918591, 44.033401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262309, 0.615520, 0.743188,
		-0.958005, -0.073648, -0.277132,
		-0.115846, -0.784673, 0.608990,
		33.448605, 37.683189, 44.216099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857338, 38.257301, 44.040482>,  <33.529694, 38.232460, 43.789806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857338, 38.257301, 44.040482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058361, 38.030155, 44.301235>,  <33.178974, 37.893867, 44.457687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058361, 38.030155, 44.301235>,  <32.857338, 38.257301, 44.040482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058361, 38.030155, 44.301235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388572, 0.525208, 0.757079,
		-0.772298, -0.633784, 0.043291,
		0.502561, -0.567869, 0.651887,
		33.209129, 37.859795, 44.496803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395039, 38.013680, 44.594547>,  <32.857338, 38.257301, 44.040482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395039, 38.013680, 44.594547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.758461, 37.973145, 44.756660>,  <32.976517, 37.948826, 44.853928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.758461, 37.973145, 44.756660>,  <32.395039, 38.013680, 44.594547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758461, 37.973145, 44.756660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339023, 0.388013, 0.857035,
		-0.244102, -0.916066, 0.318177,
		0.908558, -0.101334, 0.405283,
		33.031029, 37.942745, 44.878246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212387, 37.729855, 45.186302>,  <32.395039, 38.013680, 44.594547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212387, 37.729855, 45.186302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.582203, 37.875732, 45.230518>,  <32.804092, 37.963257, 45.257046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.582203, 37.875732, 45.230518>,  <32.212387, 37.729855, 45.186302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582203, 37.875732, 45.230518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247116, 0.352953, 0.902418,
		0.290089, -0.861641, 0.416441,
		0.924545, 0.364691, 0.110538,
		32.859566, 37.985142, 45.263680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385513, 37.672058, 45.829868>,  <32.212387, 37.729855, 45.186302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385513, 37.672058, 45.829868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.662094, 37.944477, 45.733471>,  <32.828041, 38.107929, 45.675632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.662094, 37.944477, 45.733471>,  <32.385513, 37.672058, 45.829868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662094, 37.944477, 45.733471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002216, 0.335587, 0.942007,
		0.722421, -0.650816, 0.233551,
		0.691450, 0.681044, -0.240993,
		32.869530, 38.148788, 45.661175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823330, 37.715454, 46.348446>,  <32.385513, 37.672058, 45.829868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823330, 37.715454, 46.348446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.903011, 38.062717, 46.166626>,  <32.950821, 38.271076, 46.057533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.903011, 38.062717, 46.166626>,  <32.823330, 37.715454, 46.348446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903011, 38.062717, 46.166626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053426, 0.453538, 0.889634,
		0.978501, -0.201500, 0.043962,
		0.199199, 0.868160, -0.454553,
		32.962772, 38.323166, 46.030262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390598, 38.064159, 46.750183>,  <32.823330, 37.715454, 46.348446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390598, 38.064159, 46.750183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219135, 38.355259, 46.536030>,  <33.116257, 38.529919, 46.407539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219135, 38.355259, 46.536030>,  <33.390598, 38.064159, 46.750183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219135, 38.355259, 46.536030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102404, 0.549631, 0.829108,
		0.897645, 0.410228, -0.161078,
		-0.428656, 0.727750, -0.535383,
		33.090538, 38.573586, 46.375416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803932, 38.764748, 46.729115>,  <33.390598, 38.064159, 46.750183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803932, 38.764748, 46.729115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.412704, 38.819908, 46.666676>,  <33.177967, 38.853004, 46.629211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.412704, 38.819908, 46.666676>,  <33.803932, 38.764748, 46.729115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412704, 38.819908, 46.666676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079855, 0.443890, 0.892516,
		0.192364, 0.885407, -0.423143,
		-0.978069, 0.137898, -0.156093,
		33.119286, 38.861279, 46.619846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666733, 39.434185, 46.825027>,  <33.803932, 38.764748, 46.729115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666733, 39.434185, 46.825027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.315929, 39.244686, 46.857090>,  <33.105450, 39.130985, 46.876328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.315929, 39.244686, 46.857090>,  <33.666733, 39.434185, 46.825027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315929, 39.244686, 46.857090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199060, 0.510077, 0.836777,
		-0.437309, 0.717901, -0.541645,
		-0.877004, -0.473750, 0.080156,
		33.052830, 39.102562, 46.881138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293766, 39.961086, 47.023647>,  <33.666733, 39.434185, 46.825027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293766, 39.961086, 47.023647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.067429, 39.639294, 47.095898>,  <32.931625, 39.446217, 47.139248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.067429, 39.639294, 47.095898>,  <33.293766, 39.961086, 47.023647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067429, 39.639294, 47.095898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381283, 0.449547, 0.807794,
		-0.731058, 0.388214, -0.561109,
		-0.565842, -0.804486, 0.180625,
		32.897675, 39.397949, 47.150085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496475, 40.115627, 47.018890>,  <33.293766, 39.961086, 47.023647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496475, 40.115627, 47.018890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610844, 39.813999, 47.255409>,  <32.679462, 39.633022, 47.397320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.610844, 39.813999, 47.255409>,  <32.496475, 40.115627, 47.018890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610844, 39.813999, 47.255409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470331, 0.427185, 0.772205,
		-0.834889, -0.498894, -0.232521,
		0.285919, -0.754068, 0.591298,
		32.696621, 39.587780, 47.432800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267654, 40.289368, 46.300873>,  <32.496475, 40.115627, 47.018890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267654, 40.289368, 46.300873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.061745, 40.554676, 46.083591>,  <31.938198, 40.713863, 45.953220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.061745, 40.554676, 46.083591>,  <32.267654, 40.289368, 46.300873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061745, 40.554676, 46.083591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334188, -0.428244, -0.839598,
		-0.789508, -0.613738, -0.001208,
		-0.514776, 0.663273, -0.543207,
		31.907312, 40.753658, 45.920628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728876, 39.922417, 45.892117>,  <32.267654, 40.289368, 46.300873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728876, 39.922417, 45.892117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.831997, 40.263958, 45.711243>,  <31.893869, 40.468884, 45.602718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.831997, 40.263958, 45.711243>,  <31.728876, 39.922417, 45.892117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831997, 40.263958, 45.711243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124301, -0.493425, -0.860860,
		-0.958169, 0.165726, -0.233342,
		0.257803, 0.853854, -0.452185,
		31.909338, 40.520115, 45.575588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486559, 39.922913, 45.255875>,  <31.728876, 39.922417, 45.892117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486559, 39.922913, 45.255875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.754581, 40.216072, 45.208752>,  <31.915396, 40.391968, 45.180477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.754581, 40.216072, 45.208752>,  <31.486559, 39.922913, 45.255875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754581, 40.216072, 45.208752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197428, -0.328941, -0.923482,
		-0.715574, 0.595527, -0.365105,
		0.670057, 0.732902, -0.117808,
		31.955599, 40.435944, 45.173409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396286, 40.225155, 44.563446>,  <31.486559, 39.922913, 45.255875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396286, 40.225155, 44.563446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.766085, 40.327351, 44.676609>,  <31.987963, 40.388668, 44.744507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.766085, 40.327351, 44.676609>,  <31.396286, 40.225155, 44.563446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766085, 40.327351, 44.676609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333784, -0.184114, -0.924495,
		-0.184114, 0.949119, -0.255491,
		0.924495, 0.255491, 0.282903,
		32.043434, 40.403999, 44.761478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587517, 40.682053, 43.994438>,  <31.396286, 40.225155, 44.563446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587517, 40.682053, 43.994438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.914030, 40.563122, 44.192539>,  <32.109940, 40.491764, 44.311401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.914030, 40.563122, 44.192539>,  <31.587517, 40.682053, 43.994438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914030, 40.563122, 44.192539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428703, -0.262815, -0.864374,
		0.387162, 0.917892, -0.087067,
		0.816284, -0.297327, 0.495255,
		32.158916, 40.473923, 44.341114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235432, 41.056160, 43.687382>,  <31.587517, 40.682053, 43.994438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235432, 41.056160, 43.687382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.336372, 40.702507, 43.844669>,  <32.396938, 40.490314, 43.939041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.336372, 40.702507, 43.844669>,  <32.235432, 41.056160, 43.687382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336372, 40.702507, 43.844669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321785, -0.306565, -0.895808,
		0.912563, 0.352593, 0.207139,
		0.252355, -0.884136, 0.393219,
		32.412079, 40.437267, 43.962635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961788, 40.965572, 43.540329>,  <32.235432, 41.056160, 43.687382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961788, 40.965572, 43.540329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.855381, 40.591717, 43.634720>,  <32.791534, 40.367405, 43.691353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.855381, 40.591717, 43.634720>,  <32.961788, 40.965572, 43.540329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855381, 40.591717, 43.634720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496139, -0.342637, -0.797776,
		0.826485, -0.095148, 0.554859,
		-0.266022, -0.934637, 0.235978,
		32.775574, 40.311325, 43.705513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691868, 41.137779, 43.543724>,  <32.961788, 40.965572, 43.540329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691868, 41.137779, 43.543724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.886909, 41.448429, 43.384178>,  <34.003937, 41.634819, 43.288452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.886909, 41.448429, 43.384178>,  <33.691868, 41.137779, 43.543724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886909, 41.448429, 43.384178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026346, 0.469738, 0.882413,
		0.872666, -0.419762, 0.249509,
		0.487607, 0.776625, -0.398865,
		34.033192, 41.681416, 43.264519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301304, 41.342270, 43.909184>,  <33.691868, 41.137779, 43.543724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301304, 41.342270, 43.909184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.201756, 41.684265, 43.727169>,  <34.142029, 41.889462, 43.617962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.201756, 41.684265, 43.727169>,  <34.301304, 41.342270, 43.909184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201756, 41.684265, 43.727169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139677, 0.496588, 0.856674,
		0.958412, 0.149642, -0.243008,
		-0.248869, 0.854990, -0.455034,
		34.127094, 41.940762, 43.590660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723957, 41.821236, 44.165390>,  <34.301304, 41.342270, 43.909184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723957, 41.821236, 44.165390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453079, 42.050331, 43.980618>,  <34.290554, 42.187786, 43.869755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453079, 42.050331, 43.980618>,  <34.723957, 41.821236, 44.165390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453079, 42.050331, 43.980618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230102, 0.761146, 0.606391,
		0.698902, 0.304351, -0.647230,
		-0.677193, 0.572736, -0.461935,
		34.249920, 42.222153, 43.842037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966831, 42.509262, 44.155342>,  <34.723957, 41.821236, 44.165390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966831, 42.509262, 44.155342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.571796, 42.539486, 44.100262>,  <34.334774, 42.557621, 44.067215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.571796, 42.539486, 44.100262>,  <34.966831, 42.509262, 44.155342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571796, 42.539486, 44.100262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032781, 0.758216, 0.651179,
		0.153609, 0.647610, -0.746328,
		-0.987588, 0.075561, -0.137698,
		34.275520, 42.562153, 44.058952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887531, 43.193333, 44.186405>,  <34.966831, 42.509262, 44.155342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887531, 43.193333, 44.186405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526588, 43.041203, 44.267509>,  <34.310024, 42.949924, 44.316170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526588, 43.041203, 44.267509>,  <34.887531, 43.193333, 44.186405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526588, 43.041203, 44.267509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130936, 0.690114, 0.711757,
		-0.410623, 0.615710, -0.672526,
		-0.902355, -0.380321, 0.202758,
		34.255882, 42.927105, 44.328339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419273, 43.792984, 44.058208>,  <34.887531, 43.193333, 44.186405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419273, 43.792984, 44.058208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.244614, 43.514259, 44.285820>,  <34.139816, 43.347023, 44.422386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.244614, 43.514259, 44.285820>,  <34.419273, 43.792984, 44.058208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244614, 43.514259, 44.285820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010385, 0.628564, 0.777688,
		-0.899571, 0.345488, -0.267227,
		-0.436652, -0.696810, 0.569026,
		34.113617, 43.305218, 44.456528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073463, 44.130726, 44.493294>,  <34.419273, 43.792984, 44.058208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073463, 44.130726, 44.493294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.061722, 43.772526, 44.670933>,  <34.054676, 43.557606, 44.777515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.061722, 43.772526, 44.670933>,  <34.073463, 44.130726, 44.493294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061722, 43.772526, 44.670933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010509, 0.443991, 0.895970,
		-0.999514, 0.030970, -0.003624,
		-0.029357, -0.895496, 0.444100,
		34.052914, 43.503876, 44.804161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564785, 44.130745, 45.065319>,  <34.073463, 44.130726, 44.493294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564785, 44.130745, 45.065319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.823643, 43.840137, 45.157726>,  <33.978958, 43.665771, 45.213169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.823643, 43.840137, 45.157726>,  <33.564785, 44.130745, 45.065319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823643, 43.840137, 45.157726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041028, 0.335774, 0.941049,
		-0.761260, -0.599519, 0.247103,
		0.647147, -0.726521, 0.231014,
		34.017788, 43.622181, 45.227032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340446, 43.849316, 45.632061>,  <33.564785, 44.130745, 45.065319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340446, 43.849316, 45.632061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.726246, 43.743874, 45.638458>,  <33.957726, 43.680607, 45.642296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.726246, 43.743874, 45.638458>,  <33.340446, 43.849316, 45.632061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726246, 43.743874, 45.638458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064115, 0.292459, 0.954126,
		-0.256190, -0.919228, 0.298977,
		0.964498, -0.263606, 0.015988,
		34.015594, 43.664791, 45.643253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.245667, 35.075283, 32.987934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582104, 35.124195, 33.198689>,  <37.783966, 35.153542, 33.325142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582104, 35.124195, 33.198689>,  <37.245667, 35.075283, 32.987934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582104, 35.124195, 33.198689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233611, 0.960695, 0.149969,
		-0.487841, -0.249225, 0.836599,
		0.841093, 0.122278, 0.526888,
		37.834431, 35.160877, 33.356754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061958, 35.402817, 33.555065>,  <37.245667, 35.075283, 32.987934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061958, 35.402817, 33.555065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454300, 35.479893, 33.543846>,  <37.689705, 35.526138, 33.537117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454300, 35.479893, 33.543846>,  <37.061958, 35.402817, 33.555065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454300, 35.479893, 33.543846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172064, 0.925114, 0.338464,
		0.091162, -0.327160, 0.940561,
		0.980858, 0.192692, -0.028043,
		37.748558, 35.537701, 33.535435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186752, 35.794403, 34.209553>,  <37.061958, 35.402817, 33.555065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186752, 35.794403, 34.209553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484219, 35.869343, 33.952847>,  <37.662697, 35.914307, 33.798824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484219, 35.869343, 33.952847>,  <37.186752, 35.794403, 34.209553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484219, 35.869343, 33.952847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072557, 0.976880, 0.201100,
		0.664603, -0.102986, 0.740065,
		0.743665, 0.187348, -0.641765,
		37.707317, 35.925549, 33.760319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652687, 36.179497, 34.650185>,  <37.186752, 35.794403, 34.209553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652687, 36.179497, 34.650185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709751, 36.248734, 34.260376>,  <37.743992, 36.290276, 34.026493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709751, 36.248734, 34.260376>,  <37.652687, 36.179497, 34.650185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709751, 36.248734, 34.260376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038575, 0.982870, 0.180220,
		0.989019, -0.063303, 0.133542,
		0.142663, 0.173089, -0.974519,
		37.752548, 36.300659, 33.968021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263489, 36.601830, 34.670841>,  <37.652687, 36.179497, 34.650185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263489, 36.601830, 34.670841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091419, 36.665642, 34.315426>,  <37.988178, 36.703930, 34.102177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091419, 36.665642, 34.315426>,  <38.263489, 36.601830, 34.670841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091419, 36.665642, 34.315426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117141, 0.985805, 0.120280,
		0.895116, -0.052343, -0.442751,
		-0.430170, 0.159528, -0.888541,
		37.962368, 36.713501, 34.048862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713882, 37.091351, 34.271023>,  <38.263489, 36.601830, 34.670841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713882, 37.091351, 34.271023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341446, 37.105167, 34.125763>,  <38.117985, 37.113457, 34.038605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341446, 37.105167, 34.125763>,  <38.713882, 37.091351, 34.271023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341446, 37.105167, 34.125763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061387, 0.966473, 0.249321,
		0.359589, 0.254433, -0.897752,
		-0.931089, 0.034543, -0.363153,
		38.062119, 37.115532, 34.016819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632481, 37.741882, 33.919697>,  <38.713882, 37.091351, 34.271023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632481, 37.741882, 33.919697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243851, 37.662251, 33.970943>,  <38.010674, 37.614471, 34.001690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243851, 37.662251, 33.970943>,  <38.632481, 37.741882, 33.919697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243851, 37.662251, 33.970943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143610, 0.925833, 0.349584,
		-0.188207, 0.321248, -0.928104,
		-0.971573, -0.199079, 0.128114,
		37.952377, 37.602528, 34.009377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296196, 38.323902, 33.674969>,  <38.632481, 37.741882, 33.919697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296196, 38.323902, 33.674969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017822, 38.147232, 33.901455>,  <37.850800, 38.041229, 34.037346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017822, 38.147232, 33.901455>,  <38.296196, 38.323902, 33.674969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017822, 38.147232, 33.901455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233008, 0.884712, 0.403723,
		-0.679255, 0.149029, -0.718612,
		-0.695931, -0.441673, 0.566220,
		37.809044, 38.014729, 34.071320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757919, 38.901203, 33.765419>,  <38.296196, 38.323902, 33.674969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757919, 38.901203, 33.765419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655148, 38.628330, 34.039238>,  <37.593483, 38.464607, 34.203529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655148, 38.628330, 34.039238>,  <37.757919, 38.901203, 33.765419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655148, 38.628330, 34.039238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315778, 0.728710, 0.607673,
		-0.913385, -0.060037, -0.402646,
		-0.256929, -0.682186, 0.684551,
		37.578068, 38.423676, 34.244602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085876, 39.103268, 34.073742>,  <37.757919, 38.901203, 33.765419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085876, 39.103268, 34.073742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253082, 38.864239, 34.347435>,  <37.353405, 38.720821, 34.511650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253082, 38.864239, 34.347435>,  <37.085876, 39.103268, 34.073742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253082, 38.864239, 34.347435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305444, 0.616891, 0.725362,
		-0.855550, -0.512208, 0.075347,
		0.418018, -0.597569, 0.684232,
		37.378487, 38.684967, 34.552704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524132, 38.999489, 34.520931>,  <37.085876, 39.103268, 34.073742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524132, 38.999489, 34.520931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857197, 38.912964, 34.724846>,  <37.057034, 38.861050, 34.847195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857197, 38.912964, 34.724846>,  <36.524132, 38.999489, 34.520931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857197, 38.912964, 34.724846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365285, 0.477349, 0.799190,
		-0.416225, -0.851672, 0.318452,
		0.832660, -0.216317, 0.509787,
		37.106995, 38.848068, 34.877781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277744, 38.827812, 35.075550>,  <36.524132, 38.999489, 34.520931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277744, 38.827812, 35.075550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657562, 38.903458, 35.175625>,  <36.885452, 38.948845, 35.235668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657562, 38.903458, 35.175625>,  <36.277744, 38.827812, 35.075550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657562, 38.903458, 35.175625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310936, 0.463522, 0.829739,
		0.040949, -0.865669, 0.498939,
		0.949549, 0.189115, 0.250187,
		36.942429, 38.960194, 35.250683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827549, 38.360794, 35.353958>,  <36.277744, 38.827812, 35.075550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827549, 38.360794, 35.353958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571861, 38.120289, 35.545746>,  <35.418449, 37.975986, 35.660816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571861, 38.120289, 35.545746>,  <35.827549, 38.360794, 35.353958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571861, 38.120289, 35.545746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384303, -0.290293, -0.876380,
		0.666119, -0.744456, -0.045507,
		-0.639215, -0.601262, 0.479466,
		35.380096, 37.939911, 35.689587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801193, 37.769356, 34.968468>,  <35.827549, 38.360794, 35.353958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801193, 37.769356, 34.968468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469124, 37.755844, 35.191059>,  <35.269882, 37.747738, 35.324612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469124, 37.755844, 35.191059>,  <35.801193, 37.769356, 34.968468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469124, 37.755844, 35.191059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487162, -0.441380, -0.753563,
		0.271073, -0.896684, 0.349967,
		-0.830176, -0.033779, 0.556476,
		35.220070, 37.745712, 35.358002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581959, 37.023163, 35.048588>,  <35.801193, 37.769356, 34.968468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581959, 37.023163, 35.048588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270321, 37.271786, 35.081249>,  <35.083336, 37.420959, 35.100845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270321, 37.271786, 35.081249>,  <35.581959, 37.023163, 35.048588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270321, 37.271786, 35.081249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503487, -0.542790, -0.672220,
		-0.373504, -0.564837, 0.735835,
		-0.779099, 0.621560, 0.081654,
		35.036591, 37.458256, 35.105743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065422, 36.556717, 35.024395>,  <35.581959, 37.023163, 35.048588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065422, 36.556717, 35.024395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876747, 36.902252, 34.953636>,  <34.763542, 37.109573, 34.911182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876747, 36.902252, 34.953636>,  <35.065422, 36.556717, 35.024395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876747, 36.902252, 34.953636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601620, -0.461955, -0.651653,
		-0.644641, -0.200953, 0.737602,
		-0.471690, 0.863837, -0.176898,
		34.735241, 37.161404, 34.900566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345070, 36.377476, 35.092896>,  <35.065422, 36.556717, 35.024395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345070, 36.377476, 35.092896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356457, 36.724327, 34.893986>,  <34.363289, 36.932438, 34.774639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356457, 36.724327, 34.893986>,  <34.345070, 36.377476, 35.092896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356457, 36.724327, 34.893986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701945, -0.336838, -0.627546,
		-0.711662, 0.366927, 0.599084,
		0.028469, 0.867124, -0.497277,
		34.364998, 36.984463, 34.744804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619843, 36.510052, 34.962135>,  <34.345070, 36.377476, 35.092896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619843, 36.510052, 34.962135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822338, 36.741943, 34.706749>,  <33.943836, 36.881077, 34.553516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822338, 36.741943, 34.706749>,  <33.619843, 36.510052, 34.962135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822338, 36.741943, 34.706749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735862, -0.095679, -0.670338,
		-0.449701, 0.809174, 0.378161,
		0.506238, 0.579726, -0.638468,
		33.974209, 36.915863, 34.515209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050449, 36.867523, 34.722160>,  <33.619843, 36.510052, 34.962135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050449, 36.867523, 34.722160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345657, 36.920601, 34.457520>,  <33.522781, 36.952446, 34.298733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345657, 36.920601, 34.457520>,  <33.050449, 36.867523, 34.722160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345657, 36.920601, 34.457520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674081, 0.100308, -0.731815,
		-0.030742, 0.986069, 0.163474,
		0.738017, 0.132692, -0.661607,
		33.567062, 36.960407, 34.259037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852303, 37.406212, 34.273392>,  <33.050449, 36.867523, 34.722160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852303, 37.406212, 34.273392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133488, 37.191494, 34.086761>,  <33.302200, 37.062664, 33.974785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133488, 37.191494, 34.086761>,  <32.852303, 37.406212, 34.273392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133488, 37.191494, 34.086761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659331, -0.245865, -0.710516,
		0.266690, 0.807092, -0.526763,
		0.702964, -0.536799, -0.466571,
		33.344376, 37.030453, 33.946789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986942, 37.587849, 33.567604>,  <32.852303, 37.406212, 34.273392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986942, 37.587849, 33.567604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147339, 37.221859, 33.549557>,  <33.243576, 37.002266, 33.538727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147339, 37.221859, 33.549557>,  <32.986942, 37.587849, 33.567604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147339, 37.221859, 33.549557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583951, -0.217350, -0.782151,
		0.705838, 0.339983, -0.621453,
		0.400990, -0.914970, -0.045119,
		33.267635, 36.947369, 33.536022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006275, 37.437843, 32.818714>,  <32.986942, 37.587849, 33.567604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006275, 37.437843, 32.818714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045403, 37.085621, 33.004204>,  <33.068878, 36.874287, 33.115498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045403, 37.085621, 33.004204>,  <33.006275, 37.437843, 32.818714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045403, 37.085621, 33.004204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559156, -0.434093, -0.706335,
		0.823272, -0.190202, -0.534834,
		0.097821, -0.880561, 0.463729,
		33.074749, 36.821453, 33.143322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404140, 37.067013, 32.360607>,  <33.006275, 37.437843, 32.818714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404140, 37.067013, 32.360607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193253, 36.817375, 32.591274>,  <33.066719, 36.667591, 32.729675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193253, 36.817375, 32.591274>,  <33.404140, 37.067013, 32.360607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193253, 36.817375, 32.591274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437587, -0.382332, -0.813843,
		0.728391, -0.681418, -0.071521,
		-0.527223, -0.624093, 0.576667,
		33.035084, 36.630146, 32.764275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141956, 36.644836, 31.834352>,  <33.404140, 37.067013, 32.360607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141956, 36.644836, 31.834352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938797, 36.549129, 32.165359>,  <32.816902, 36.491707, 32.363964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938797, 36.549129, 32.165359>,  <33.141956, 36.644836, 31.834352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938797, 36.549129, 32.165359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679191, -0.479651, -0.555548,
		0.529844, -0.844208, 0.081108,
		-0.507902, -0.239267, 0.827519,
		32.786427, 36.477348, 32.413616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163738, 35.955418, 32.000469>,  <33.141956, 36.644836, 31.834352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163738, 35.955418, 32.000469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829815, 36.094635, 32.171097>,  <32.629459, 36.178165, 32.273472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829815, 36.094635, 32.171097>,  <33.163738, 35.955418, 32.000469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829815, 36.094635, 32.171097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550390, -0.509643, -0.661313,
		-0.012769, -0.786849, 0.617014,
		-0.834810, 0.348043, 0.426566,
		32.579372, 36.199047, 32.299068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671150, 35.389832, 32.178268>,  <33.163738, 35.955418, 32.000469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671150, 35.389832, 32.178268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486263, 35.732613, 32.087063>,  <32.375332, 35.938282, 32.032337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486263, 35.732613, 32.087063>,  <32.671150, 35.389832, 32.178268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486263, 35.732613, 32.087063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489406, -0.460944, -0.740279,
		-0.739487, -0.230573, 0.632452,
		-0.462213, 0.856952, -0.228018,
		32.347599, 35.989697, 32.018658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465191, 34.778179, 32.690578>,  <32.671150, 35.389832, 32.178268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465191, 34.778179, 32.690578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437569, 34.389633, 32.781521>,  <32.420998, 34.156506, 32.836086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437569, 34.389633, 32.781521>,  <32.465191, 34.778179, 32.690578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437569, 34.389633, 32.781521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161618, 0.235781, 0.958273,
		-0.984435, 0.029427, -0.173271,
		-0.069053, -0.971361, 0.227355,
		32.416851, 34.098225, 32.849728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790939, 34.694630, 32.976074>,  <32.465191, 34.778179, 32.690578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790939, 34.694630, 32.976074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015015, 34.376369, 33.068272>,  <32.149460, 34.185413, 33.123592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015015, 34.376369, 33.068272>,  <31.790939, 34.694630, 32.976074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015015, 34.376369, 33.068272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430914, -0.042259, 0.901403,
		-0.707461, -0.604280, -0.366529,
		0.560189, -0.795650, 0.230496,
		32.183071, 34.137676, 33.137421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602047, 34.467255, 33.541321>,  <31.790939, 34.694630, 32.976074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602047, 34.467255, 33.541321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920465, 34.225967, 33.561050>,  <32.111519, 34.081196, 33.572887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920465, 34.225967, 33.561050>,  <31.602047, 34.467255, 33.541321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920465, 34.225967, 33.561050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240062, -0.239883, 0.940652,
		-0.555588, -0.760646, -0.335768,
		0.796048, -0.603220, 0.049326,
		32.159279, 34.045002, 33.575848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276880, 33.813931, 33.771122>,  <31.602047, 34.467255, 33.541321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276880, 33.813931, 33.771122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662090, 33.844166, 33.874557>,  <31.893217, 33.862309, 33.936619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662090, 33.844166, 33.874557>,  <31.276880, 33.813931, 33.771122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662090, 33.844166, 33.874557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254870, -0.055400, 0.965387,
		0.087300, -0.995599, -0.034086,
		0.963027, 0.075591, 0.258585,
		31.950998, 33.866840, 33.952133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433010, 33.232933, 34.267128>,  <31.276880, 33.813931, 33.771122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433010, 33.232933, 34.267128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718132, 33.503654, 34.340714>,  <31.889206, 33.666088, 34.384865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718132, 33.503654, 34.340714>,  <31.433010, 33.232933, 34.267128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718132, 33.503654, 34.340714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075124, -0.187106, 0.979463,
		0.697326, -0.711988, -0.082526,
		0.712807, 0.676805, 0.183961,
		31.931974, 33.706696, 34.395901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810581, 32.983307, 34.972164>,  <31.433010, 33.232933, 34.267128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810581, 32.983307, 34.972164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906712, 33.365635, 34.904457>,  <31.964390, 33.595032, 34.863834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906712, 33.365635, 34.904457>,  <31.810581, 32.983307, 34.972164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906712, 33.365635, 34.904457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090342, 0.151596, 0.984305,
		0.966480, -0.251844, -0.049918,
		0.240324, 0.955821, -0.169267,
		31.978809, 33.652382, 34.853676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399357, 33.010567, 35.312378>,  <31.810581, 32.983307, 34.972164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399357, 33.010567, 35.312378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279945, 33.392185, 35.301933>,  <32.208298, 33.621155, 35.295666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279945, 33.392185, 35.301933>,  <32.399357, 33.010567, 35.312378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279945, 33.392185, 35.301933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362321, 0.138605, 0.921690,
		0.882951, 0.265692, -0.387047,
		-0.298532, 0.954042, -0.026116,
		32.190384, 33.678398, 35.294098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960907, 33.489494, 35.680027>,  <32.399357, 33.010567, 35.312378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960907, 33.489494, 35.680027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626484, 33.708950, 35.680855>,  <32.425831, 33.840622, 35.681351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626484, 33.708950, 35.680855>,  <32.960907, 33.489494, 35.680027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626484, 33.708950, 35.680855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229987, 0.347047, 0.909211,
		0.498110, 0.760628, -0.416331,
		-0.836058, 0.548637, 0.002067,
		32.375668, 33.873543, 35.681477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157475, 34.166424, 35.934563>,  <32.960907, 33.489494, 35.680027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157475, 34.166424, 35.934563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765308, 34.122597, 36.000031>,  <32.530010, 34.096298, 36.039310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765308, 34.122597, 36.000031>,  <33.157475, 34.166424, 35.934563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765308, 34.122597, 36.000031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132430, 0.248376, 0.959569,
		-0.145793, 0.962447, -0.229000,
		-0.980412, -0.109571, 0.163668,
		32.471184, 34.089725, 36.049129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947083, 34.676491, 36.454094>,  <33.157475, 34.166424, 35.934563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947083, 34.676491, 36.454094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654667, 34.403603, 36.448982>,  <32.479218, 34.239872, 36.445915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654667, 34.403603, 36.448982>,  <32.947083, 34.676491, 36.454094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654667, 34.403603, 36.448982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171114, 0.165166, 0.971308,
		-0.660532, 0.712250, -0.237480,
		-0.731038, -0.682217, -0.012779,
		32.435356, 34.198936, 36.445148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558716, 35.043949, 36.919315>,  <32.947083, 34.676491, 36.454094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558716, 35.043949, 36.919315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388210, 34.682518, 36.902153>,  <32.285908, 34.465660, 36.891857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388210, 34.682518, 36.902153>,  <32.558716, 35.043949, 36.919315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388210, 34.682518, 36.902153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238612, 0.066563, 0.968831,
		-0.872561, 0.423216, -0.243979,
		-0.426265, -0.903580, -0.042904,
		32.260330, 34.411446, 36.889282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930298, 35.098457, 37.267895>,  <32.558716, 35.043949, 36.919315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930298, 35.098457, 37.267895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035568, 34.713097, 37.288307>,  <32.098732, 34.481880, 37.300556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035568, 34.713097, 37.288307>,  <31.930298, 35.098457, 37.267895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035568, 34.713097, 37.288307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140719, 0.013995, 0.989951,
		-0.954430, -0.267711, -0.131885,
		0.263175, -0.963398, 0.051030,
		32.114521, 34.424076, 37.303616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343950, 34.744858, 37.722225>,  <31.930298, 35.098457, 37.267895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343950, 34.744858, 37.722225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692944, 34.549843, 37.709095>,  <31.902340, 34.432835, 37.701218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692944, 34.549843, 37.709095>,  <31.343950, 34.744858, 37.722225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692944, 34.549843, 37.709095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038821, 0.002200, 0.999244,
		-0.487098, -0.873099, 0.020846,
		0.872484, -0.487539, -0.032823,
		31.954689, 34.403580, 37.699249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350430, 34.219376, 38.231205>,  <31.343950, 34.744858, 37.722225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350430, 34.219376, 38.231205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738398, 34.271015, 38.148655>,  <31.971178, 34.301998, 38.099125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738398, 34.271015, 38.148655>,  <31.350430, 34.219376, 38.231205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738398, 34.271015, 38.148655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187585, 0.143928, 0.971646,
		0.155146, -0.981130, 0.115380,
		0.969918, 0.129104, -0.206375,
		32.029373, 34.309746, 38.086742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793056, 33.809723, 38.682602>,  <31.350430, 34.219376, 38.231205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793056, 33.809723, 38.682602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016209, 34.123318, 38.573692>,  <32.150101, 34.311474, 38.508347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016209, 34.123318, 38.573692>,  <31.793056, 33.809723, 38.682602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016209, 34.123318, 38.573692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231948, 0.167711, 0.958161,
		0.796850, -0.597693, -0.088282,
		0.557880, 0.783988, -0.272274,
		32.183571, 34.358513, 38.492012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235268, 33.814537, 39.168957>,  <31.793056, 33.809723, 38.682602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235268, 33.814537, 39.168957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321079, 34.170223, 39.007328>,  <32.372566, 34.383636, 38.910351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321079, 34.170223, 39.007328>,  <32.235268, 33.814537, 39.168957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321079, 34.170223, 39.007328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386229, 0.302748, 0.871304,
		0.897109, -0.342983, -0.278493,
		0.214530, 0.889216, -0.404068,
		32.385437, 34.436989, 38.886108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835472, 33.948147, 39.427155>,  <32.235268, 33.814537, 39.168957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835472, 33.948147, 39.427155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718971, 34.309288, 39.300648>,  <32.649071, 34.525974, 39.224743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718971, 34.309288, 39.300648>,  <32.835472, 33.948147, 39.427155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718971, 34.309288, 39.300648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281322, 0.396812, 0.873727,
		0.914348, 0.165501, -0.369565,
		-0.291250, 0.902857, -0.316265,
		32.631596, 34.580147, 39.205769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391518, 34.395794, 39.419392>,  <32.835472, 33.948147, 39.427155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391518, 34.395794, 39.419392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069595, 34.632454, 39.438339>,  <32.876442, 34.774448, 39.449707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069595, 34.632454, 39.438339>,  <33.391518, 34.395794, 39.419392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069595, 34.632454, 39.438339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302768, 0.340585, 0.890131,
		0.510515, 0.730720, -0.453236,
		-0.804802, 0.591650, 0.047365,
		32.828156, 34.809948, 39.452549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605892, 35.092384, 39.511868>,  <33.391518, 34.395794, 39.419392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605892, 35.092384, 39.511868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223808, 35.092499, 39.630238>,  <32.994556, 35.092567, 39.701260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223808, 35.092499, 39.630238>,  <33.605892, 35.092384, 39.511868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223808, 35.092499, 39.630238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255005, 0.508195, 0.822624,
		-0.150155, 0.861242, -0.485506,
		-0.955210, 0.000285, 0.295929,
		32.937244, 35.092583, 39.719017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598816, 35.646648, 39.821671>,  <33.605892, 35.092384, 39.511868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598816, 35.646648, 39.821671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275906, 35.464237, 39.971523>,  <33.082161, 35.354790, 40.061436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275906, 35.464237, 39.971523>,  <33.598816, 35.646648, 39.821671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275906, 35.464237, 39.971523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188076, 0.402896, 0.895713,
		-0.559408, 0.793544, -0.239479,
		-0.807273, -0.456029, 0.374630,
		33.033722, 35.327427, 40.083912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258614, 36.163734, 40.106171>,  <33.598816, 35.646648, 39.821671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258614, 36.163734, 40.106171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084976, 35.852890, 40.288448>,  <32.980793, 35.666382, 40.397816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084976, 35.852890, 40.288448>,  <33.258614, 36.163734, 40.106171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084976, 35.852890, 40.288448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045653, 0.524166, 0.850392,
		-0.899711, 0.348345, -0.263014,
		-0.434092, -0.777114, 0.455694,
		32.954750, 35.619755, 40.425156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680744, 36.462635, 40.511826>,  <33.258614, 36.163734, 40.106171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680744, 36.462635, 40.511826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755287, 36.109440, 40.684151>,  <32.800014, 35.897522, 40.787544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755287, 36.109440, 40.684151>,  <32.680744, 36.462635, 40.511826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755287, 36.109440, 40.684151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012434, 0.436336, 0.899698,
		-0.982403, -0.173023, 0.070335,
		0.186358, -0.882991, 0.430810,
		32.811195, 35.844543, 40.813393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251892, 36.471474, 41.140385>,  <32.680744, 36.462635, 40.511826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251892, 36.471474, 41.140385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526043, 36.182606, 41.177773>,  <32.690533, 36.009285, 41.200207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526043, 36.182606, 41.177773>,  <32.251892, 36.471474, 41.140385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526043, 36.182606, 41.177773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072929, 0.195791, 0.977930,
		-0.724530, -0.663431, 0.186857,
		0.685374, -0.722167, 0.093473,
		32.731655, 35.965954, 41.205814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145546, 36.151134, 41.670048>,  <32.251892, 36.471474, 41.140385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145546, 36.151134, 41.670048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533546, 36.060341, 41.635239>,  <32.766346, 36.005863, 41.614353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533546, 36.060341, 41.635239>,  <32.145546, 36.151134, 41.670048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533546, 36.060341, 41.635239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169362, 0.374194, 0.911754,
		-0.174391, -0.899142, 0.401412,
		0.970002, -0.226985, -0.087024,
		32.824547, 35.992245, 41.609131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340508, 35.797131, 42.276321>,  <32.145546, 36.151134, 41.670048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340508, 35.797131, 42.276321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700459, 35.924541, 42.157146>,  <32.916428, 36.000988, 42.085640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700459, 35.924541, 42.157146>,  <32.340508, 35.797131, 42.276321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700459, 35.924541, 42.157146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238622, 0.212245, 0.947635,
		0.365083, -0.923847, 0.114986,
		0.899874, 0.318527, -0.297937,
		32.970421, 36.020100, 42.067764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798267, 35.528980, 42.802258>,  <32.340508, 35.797131, 42.276321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798267, 35.528980, 42.802258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988201, 35.814461, 42.596279>,  <33.102161, 35.985748, 42.472691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988201, 35.814461, 42.596279>,  <32.798267, 35.528980, 42.802258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988201, 35.814461, 42.596279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239865, 0.458013, 0.855973,
		0.846759, -0.529959, 0.046286,
		0.474830, 0.713700, -0.514945,
		33.130650, 36.028572, 42.441795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459888, 35.522713, 43.083035>,  <32.798267, 35.528980, 42.802258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459888, 35.522713, 43.083035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391254, 35.871651, 42.899918>,  <33.350075, 36.081013, 42.790047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391254, 35.871651, 42.899918>,  <33.459888, 35.522713, 43.083035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391254, 35.871651, 42.899918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246597, 0.487921, 0.837331,
		0.953807, 0.030786, -0.298839,
		-0.171588, 0.872345, -0.457791,
		33.339779, 36.133354, 42.762581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010586, 35.856022, 43.452747>,  <33.459888, 35.522713, 43.083035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010586, 35.856022, 43.452747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808014, 36.137547, 43.253475>,  <33.686470, 36.306461, 43.133911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808014, 36.137547, 43.253475>,  <34.010586, 35.856022, 43.452747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808014, 36.137547, 43.253475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040914, 0.596707, 0.801415,
		0.861308, 0.385481, -0.330989,
		-0.506434, 0.703807, -0.498177,
		33.656082, 36.348690, 43.104023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661587, 35.526112, 43.205002>,  <34.010586, 35.856022, 43.452747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661587, 35.526112, 43.205002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926056, 35.382481, 43.468491>,  <35.084736, 35.296303, 43.626583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926056, 35.382481, 43.468491>,  <34.661587, 35.526112, 43.205002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926056, 35.382481, 43.468491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408608, -0.564019, -0.717581,
		0.629201, 0.743603, -0.226190,
		0.661170, -0.359079, 0.658723,
		35.124409, 35.274757, 43.666107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364227, 35.543842, 42.999470>,  <34.661587, 35.526112, 43.205002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364227, 35.543842, 42.999470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340534, 35.238113, 43.256313>,  <35.326317, 35.054676, 43.410419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340534, 35.238113, 43.256313>,  <35.364227, 35.543842, 42.999470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340534, 35.238113, 43.256313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169661, -0.641585, -0.748053,
		0.983721, 0.064631, 0.167678,
		-0.059232, -0.764324, 0.642106,
		35.322765, 35.008816, 43.448944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933876, 35.106606, 42.832516>,  <35.364227, 35.543842, 42.999470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933876, 35.106606, 42.832516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657890, 34.871548, 43.001575>,  <35.492298, 34.730515, 43.103012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657890, 34.871548, 43.001575>,  <35.933876, 35.106606, 42.832516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657890, 34.871548, 43.001575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181257, -0.705549, -0.685089,
		0.700784, -0.396078, 0.593316,
		-0.689962, -0.587642, 0.422645,
		35.450901, 34.695255, 43.128368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216873, 34.498703, 42.650059>,  <35.933876, 35.106606, 42.832516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216873, 34.498703, 42.650059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830696, 34.465435, 42.748856>,  <35.598991, 34.445473, 42.808136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830696, 34.465435, 42.748856>,  <36.216873, 34.498703, 42.650059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830696, 34.465435, 42.748856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128809, -0.671596, -0.729635,
		0.226567, -0.736234, 0.637673,
		-0.965441, -0.083173, 0.246995,
		35.541065, 34.440483, 42.822952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065884, 33.820377, 42.553070>,  <36.216873, 34.498703, 42.650059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065884, 33.820377, 42.553070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697788, 33.976402, 42.565826>,  <35.476933, 34.070019, 42.573483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697788, 33.976402, 42.565826>,  <36.065884, 33.820377, 42.553070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697788, 33.976402, 42.565826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299913, -0.650496, -0.697787,
		-0.251434, -0.651694, 0.715595,
		-0.920235, 0.390064, 0.031895,
		35.421719, 34.093422, 42.575394>
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
