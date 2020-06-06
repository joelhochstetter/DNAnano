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
	<24.205246, 35.284283, 34.831722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334057, 34.928764, 34.962162>,  <24.411345, 34.715454, 35.040424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334057, 34.928764, 34.962162>,  <24.205246, 35.284283, 34.831722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334057, 34.928764, 34.962162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808285, 0.437451, 0.394097,
		-0.492923, 0.136667, 0.859272,
		0.322029, -0.888796, 0.326096,
		24.430666, 34.662125, 35.059990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.306213, 35.308357, 35.590706>,  <24.205246, 35.284283, 34.831722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.306213, 35.308357, 35.590706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565706, 35.092125, 35.376446>,  <24.721401, 34.962387, 35.247890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565706, 35.092125, 35.376446>,  <24.306213, 35.308357, 35.590706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.565706, 35.092125, 35.376446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758814, 0.513002, 0.401286,
		0.057860, -0.666784, 0.743002,
		0.648733, -0.540582, -0.535647,
		24.760326, 34.929951, 35.215752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.744783, 35.056141, 36.084648>,  <24.306213, 35.308357, 35.590706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.744783, 35.056141, 36.084648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925268, 35.083549, 35.728733>,  <25.033558, 35.099995, 35.515186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.925268, 35.083549, 35.728733>,  <24.744783, 35.056141, 36.084648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.925268, 35.083549, 35.728733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724854, 0.553466, 0.410197,
		0.520573, -0.830049, 0.200060,
		0.451210, 0.068523, -0.889783,
		25.060631, 35.104107, 35.461800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475132, 34.654320, 35.890675>,  <24.744783, 35.056141, 36.084648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475132, 34.654320, 35.890675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396852, 35.009590, 35.724373>,  <25.349884, 35.222752, 35.624592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396852, 35.009590, 35.724373>,  <25.475132, 34.654320, 35.890675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396852, 35.009590, 35.724373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715575, 0.419222, 0.558753,
		0.670562, -0.188154, -0.717596,
		-0.195700, 0.888173, -0.415753,
		25.338142, 35.276043, 35.599648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097361, 34.936344, 35.680672>,  <25.475132, 34.654320, 35.890675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097361, 34.936344, 35.680672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844807, 35.231525, 35.775982>,  <25.693274, 35.408634, 35.833168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844807, 35.231525, 35.775982>,  <26.097361, 34.936344, 35.680672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844807, 35.231525, 35.775982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614274, 0.288401, 0.734501,
		0.473308, 0.610122, -0.635398,
		-0.631385, 0.737954, 0.238280,
		25.655392, 35.452911, 35.847466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866285, 34.935390, 35.772362>,  <26.097361, 34.936344, 35.680672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866285, 34.935390, 35.772362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101143, 34.613312, 35.739101>,  <27.242058, 34.420063, 35.719147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101143, 34.613312, 35.739101>,  <26.866285, 34.935390, 35.772362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101143, 34.613312, 35.739101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800098, -0.592863, 0.091416,
		-0.122904, 0.012853, -0.992335,
		0.587144, -0.805201, -0.083149,
		27.277287, 34.371750, 35.714157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616955, 34.469128, 35.200363>,  <26.866285, 34.935390, 35.772362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616955, 34.469128, 35.200363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811806, 34.272076, 35.488815>,  <26.928717, 34.153847, 35.661888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811806, 34.272076, 35.488815>,  <26.616955, 34.469128, 35.200363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811806, 34.272076, 35.488815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741419, -0.669639, 0.043377,
		0.461527, -0.555789, -0.691442,
		0.487125, -0.492628, 0.721129,
		26.957943, 34.124287, 35.705154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732508, 33.708771, 35.046394>,  <26.616955, 34.469128, 35.200363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732508, 33.708771, 35.046394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678074, 33.802097, 35.431526>,  <26.645412, 33.858093, 35.662605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678074, 33.802097, 35.431526>,  <26.732508, 33.708771, 35.046394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678074, 33.802097, 35.431526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567776, -0.814798, 0.117196,
		0.811856, -0.530723, 0.243356,
		-0.136087, 0.233318, 0.962831,
		26.637247, 33.872093, 35.720375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608191, 33.062134, 35.295029>,  <26.732508, 33.708771, 35.046394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608191, 33.062134, 35.295029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549063, 33.253475, 35.641281>,  <26.513586, 33.368282, 35.849033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549063, 33.253475, 35.641281>,  <26.608191, 33.062134, 35.295029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549063, 33.253475, 35.641281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448067, -0.812666, 0.372572,
		0.881694, -0.332789, 0.334465,
		-0.147820, 0.478357, 0.865635,
		26.504717, 33.396984, 35.900970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854126, 32.557125, 35.925549>,  <26.608191, 33.062134, 35.295029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854126, 32.557125, 35.925549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591099, 32.832565, 36.047813>,  <26.433283, 32.997829, 36.121174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591099, 32.832565, 36.047813>,  <26.854126, 32.557125, 35.925549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591099, 32.832565, 36.047813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583708, -0.722164, 0.371167,
		0.476327, 0.065648, 0.876814,
		-0.657569, 0.688600, 0.305666,
		26.393827, 33.039146, 36.139515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851086, 32.519165, 36.578625>,  <26.854126, 32.557125, 35.925549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851086, 32.519165, 36.578625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499533, 32.675606, 36.469368>,  <26.288601, 32.769470, 36.403812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499533, 32.675606, 36.469368>,  <26.851086, 32.519165, 36.578625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499533, 32.675606, 36.469368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467184, -0.821454, 0.327037,
		-0.096473, 0.415036, 0.904676,
		-0.878881, 0.391099, -0.273146,
		26.235868, 32.792934, 36.387424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510262, 32.478344, 37.122982>,  <26.851086, 32.519165, 36.578625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510262, 32.478344, 37.122982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264156, 32.498524, 36.808300>,  <26.116493, 32.510632, 36.619492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264156, 32.498524, 36.808300>,  <26.510262, 32.478344, 37.122982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264156, 32.498524, 36.808300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377754, -0.894782, 0.238049,
		-0.691920, 0.443644, 0.569585,
		-0.615263, 0.050452, -0.786706,
		26.079576, 32.513660, 36.572289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890839, 32.102543, 37.286896>,  <26.510262, 32.478344, 37.122982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890839, 32.102543, 37.286896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943182, 32.139225, 36.892036>,  <25.974588, 32.161236, 36.655121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943182, 32.139225, 36.892036>,  <25.890839, 32.102543, 37.286896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943182, 32.139225, 36.892036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509649, -0.847848, -0.146325,
		-0.850373, 0.522248, -0.064209,
		0.130858, 0.091706, -0.987151,
		25.982439, 32.166737, 36.595890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289955, 32.154106, 36.758530>,  <25.890839, 32.102543, 37.286896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289955, 32.154106, 36.758530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596779, 31.951336, 36.601227>,  <25.780872, 31.829674, 36.506844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596779, 31.951336, 36.601227>,  <25.289955, 32.154106, 36.758530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596779, 31.951336, 36.601227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573265, -0.816761, -0.065334,
		-0.288076, 0.275555, -0.917105,
		0.767058, -0.506923, -0.393255,
		25.826897, 31.799259, 36.483250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207966, 31.873215, 36.074276>,  <25.289955, 32.154106, 36.758530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207966, 31.873215, 36.074276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437201, 31.646149, 36.310692>,  <25.574741, 31.509909, 36.452541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437201, 31.646149, 36.310692>,  <25.207966, 31.873215, 36.074276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437201, 31.646149, 36.310692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674335, -0.736485, -0.053508,
		0.465667, -0.367895, -0.804865,
		0.573086, -0.567665, 0.591040,
		25.609127, 31.475849, 36.488003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128717, 32.664349, 35.824802>,  <25.207966, 31.873215, 36.074276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128717, 32.664349, 35.824802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397154, 32.673325, 36.121216>,  <25.558216, 32.678711, 36.299065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397154, 32.673325, 36.121216>,  <25.128717, 32.664349, 35.824802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397154, 32.673325, 36.121216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401430, 0.829336, -0.388659,
		-0.623291, 0.558299, 0.547549,
		0.671090, 0.022445, 0.741036,
		25.598480, 32.680058, 36.343525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075121, 33.303589, 36.139801>,  <25.128717, 32.664349, 35.824802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075121, 33.303589, 36.139801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444006, 33.163300, 36.204937>,  <25.665337, 33.079128, 36.244019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444006, 33.163300, 36.204937>,  <25.075121, 33.303589, 36.139801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444006, 33.163300, 36.204937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370024, 0.922689, -0.108294,
		-0.112274, 0.160127, 0.980691,
		0.922213, -0.350721, 0.162844,
		25.720671, 33.058083, 36.253792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493444, 33.932919, 36.339458>,  <25.075121, 33.303589, 36.139801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493444, 33.932919, 36.339458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766602, 33.645428, 36.287178>,  <25.930496, 33.472931, 36.255810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766602, 33.645428, 36.287178>,  <25.493444, 33.932919, 36.339458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766602, 33.645428, 36.287178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729089, 0.681748, 0.060412,
		0.045686, -0.136549, 0.989579,
		0.682893, -0.718731, -0.130703,
		25.971470, 33.429810, 36.247967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065269, 34.137604, 36.845577>,  <25.493444, 33.932919, 36.339458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065269, 34.137604, 36.845577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204065, 33.907681, 36.549145>,  <26.287342, 33.769726, 36.371284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204065, 33.907681, 36.549145>,  <26.065269, 34.137604, 36.845577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204065, 33.907681, 36.549145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657642, 0.712480, -0.244700,
		0.668659, -0.402456, 0.625239,
		0.346989, -0.574805, -0.741079,
		26.308163, 33.735241, 36.326820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732201, 34.001648, 36.989307>,  <26.065269, 34.137604, 36.845577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732201, 34.001648, 36.989307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685127, 33.973274, 36.593102>,  <26.656883, 33.956249, 36.355377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685127, 33.973274, 36.593102>,  <26.732201, 34.001648, 36.989307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685127, 33.973274, 36.593102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796280, 0.589256, -0.136805,
		0.593371, -0.804827, -0.012862,
		-0.117683, -0.070934, -0.990515,
		26.649822, 33.951996, 36.295948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370310, 33.800568, 36.727932>,  <26.732201, 34.001648, 36.989307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370310, 33.800568, 36.727932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141796, 34.024155, 36.487534>,  <27.004688, 34.158306, 36.343296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141796, 34.024155, 36.487534>,  <27.370310, 33.800568, 36.727932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141796, 34.024155, 36.487534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758567, 0.639180, -0.126591,
		0.313382, -0.528211, -0.789167,
		-0.571287, 0.558964, -0.600991,
		26.970409, 34.191845, 36.307236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648417, 34.453922, 36.305798>,  <27.370310, 33.800568, 36.727932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648417, 34.453922, 36.305798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550560, 34.816422, 36.443710>,  <27.491846, 35.033920, 36.526459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550560, 34.816422, 36.443710>,  <27.648417, 34.453922, 36.305798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550560, 34.816422, 36.443710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248911, 0.284970, -0.925654,
		-0.937121, -0.312270, 0.155859,
		-0.244639, 0.906245, 0.344778,
		27.477169, 35.088295, 36.547142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136547, 34.637859, 36.857925>,  <27.648417, 34.453922, 36.305798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136547, 34.637859, 36.857925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308834, 34.508846, 37.195080>,  <28.412207, 34.431438, 37.397373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308834, 34.508846, 37.195080>,  <28.136547, 34.637859, 36.857925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308834, 34.508846, 37.195080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900233, -0.087582, 0.426510,
		-0.063729, -0.942507, -0.328052,
		0.430720, -0.322504, 0.842894,
		28.438049, 34.412086, 37.447945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588566, 35.331123, 36.654537>,  <28.136547, 34.637859, 36.857925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588566, 35.331123, 36.654537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896488, 35.285011, 36.905651>,  <29.081242, 35.257343, 37.056320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896488, 35.285011, 36.905651>,  <28.588566, 35.331123, 36.654537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896488, 35.285011, 36.905651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635478, 0.046353, -0.770726,
		0.059747, 0.992251, 0.108939,
		0.769804, -0.115277, 0.627785,
		29.127430, 35.250427, 37.093987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104588, 35.854958, 36.787643>,  <28.588566, 35.331123, 36.654537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104588, 35.854958, 36.787643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287664, 35.499645, 36.803028>,  <29.397511, 35.286457, 36.812260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287664, 35.499645, 36.803028>,  <29.104588, 35.854958, 36.787643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287664, 35.499645, 36.803028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518669, 0.231616, -0.823005,
		0.722149, 0.396632, 0.566731,
		0.457694, -0.888278, 0.038460,
		29.424973, 35.233162, 36.814568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871155, 35.981007, 36.754749>,  <29.104588, 35.854958, 36.787643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871155, 35.981007, 36.754749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767784, 35.619312, 36.618767>,  <29.705763, 35.402294, 36.537178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767784, 35.619312, 36.618767>,  <29.871155, 35.981007, 36.754749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767784, 35.619312, 36.618767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563453, 0.144758, -0.813367,
		0.784689, -0.401742, 0.472087,
		-0.258426, -0.904239, -0.339952,
		29.690256, 35.348042, 36.516781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490004, 35.747467, 36.402016>,  <29.871155, 35.981007, 36.754749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490004, 35.747467, 36.402016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177465, 35.539410, 36.264061>,  <29.989943, 35.414574, 36.181290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177465, 35.539410, 36.264061>,  <30.490004, 35.747467, 36.402016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177465, 35.539410, 36.264061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384147, 0.034697, -0.922620,
		0.491865, -0.853371, 0.172703,
		-0.781345, -0.520148, -0.344886,
		29.943062, 35.383366, 36.160595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083941, 35.439587, 36.279419>,  <30.490004, 35.747467, 36.402016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083941, 35.439587, 36.279419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466505, 35.556133, 36.287251>,  <31.696043, 35.626060, 36.291950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466505, 35.556133, 36.287251>,  <31.083941, 35.439587, 36.279419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466505, 35.556133, 36.287251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267302, -0.900462, 0.343100,
		0.117595, -0.322913, -0.939095,
		0.956411, 0.291369, 0.019575,
		31.753428, 35.643543, 36.293121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731119, 34.742054, 36.332115>,  <31.083941, 35.439587, 36.279419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731119, 34.742054, 36.332115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380180, 34.724499, 36.140976>,  <30.169617, 34.713966, 36.026295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380180, 34.724499, 36.140976>,  <30.731119, 34.742054, 36.332115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380180, 34.724499, 36.140976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394173, 0.501992, -0.769826,
		0.273658, -0.863758, -0.423123,
		-0.877348, -0.043885, -0.477844,
		30.116976, 34.711334, 35.997623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876585, 34.536053, 35.684025>,  <30.731119, 34.742054, 36.332115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876585, 34.536053, 35.684025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519379, 34.714165, 35.657959>,  <30.305054, 34.821033, 35.642319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519379, 34.714165, 35.657959>,  <30.876585, 34.536053, 35.684025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519379, 34.714165, 35.657959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225343, 0.317116, -0.921226,
		-0.389538, -0.837355, -0.383531,
		-0.893018, 0.445279, -0.065163,
		30.251472, 34.847748, 35.638409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680437, 34.267769, 35.078545>,  <30.876585, 34.536053, 35.684025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680437, 34.267769, 35.078545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474768, 34.605278, 35.140099>,  <30.351366, 34.807781, 35.177032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474768, 34.605278, 35.140099>,  <30.680437, 34.267769, 35.078545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474768, 34.605278, 35.140099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347839, 0.369146, -0.861823,
		-0.783987, -0.389596, -0.483300,
		-0.514171, 0.843769, 0.153889,
		30.320517, 34.858410, 35.186264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158009, 34.420910, 34.606678>,  <30.680437, 34.267769, 35.078545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158009, 34.420910, 34.606678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254885, 34.785004, 34.741028>,  <30.313011, 35.003460, 34.821636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254885, 34.785004, 34.741028>,  <30.158009, 34.420910, 34.606678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254885, 34.785004, 34.741028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122440, 0.314739, -0.941248,
		-0.962472, 0.269087, -0.035223,
		0.242192, 0.910237, 0.335874,
		30.327541, 35.058075, 34.841789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757385, 34.965397, 34.277966>,  <30.158009, 34.420910, 34.606678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757385, 34.965397, 34.277966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125452, 35.068768, 34.395618>,  <30.346292, 35.130791, 34.466209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125452, 35.068768, 34.395618>,  <29.757385, 34.965397, 34.277966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125452, 35.068768, 34.395618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118777, 0.531579, -0.838639,
		-0.373076, 0.806623, 0.458447,
		0.920166, 0.258423, 0.294128,
		30.401503, 35.146294, 34.483856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689091, 35.694942, 34.349007>,  <29.757385, 34.965397, 34.277966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689091, 35.694942, 34.349007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049500, 35.528248, 34.300861>,  <30.265745, 35.428230, 34.271973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049500, 35.528248, 34.300861>,  <29.689091, 35.694942, 34.349007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049500, 35.528248, 34.300861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220079, 0.678308, -0.701044,
		0.373796, 0.605167, 0.702886,
		0.901023, -0.416738, -0.120365,
		30.319807, 35.403225, 34.264751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298710, 36.185791, 34.483006>,  <29.689091, 35.694942, 34.349007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298710, 36.185791, 34.483006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394539, 35.913216, 34.206387>,  <30.452036, 35.749668, 34.040413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394539, 35.913216, 34.206387>,  <30.298710, 36.185791, 34.483006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394539, 35.913216, 34.206387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272695, 0.730849, -0.625698,
		0.931796, -0.038682, 0.360917,
		0.239572, -0.681442, -0.691550,
		30.466410, 35.708782, 33.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340876, 36.112267, 35.227051>,  <30.298710, 36.185791, 34.483006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340876, 36.112267, 35.227051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227768, 35.769348, 35.054966>,  <30.159904, 35.563595, 34.951714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227768, 35.769348, 35.054966>,  <30.340876, 36.112267, 35.227051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227768, 35.769348, 35.054966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328401, -0.334880, 0.883181,
		-0.901219, 0.391017, -0.186844,
		-0.282768, -0.857299, -0.430211,
		30.142937, 35.512157, 34.925903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654467, 35.984596, 35.371586>,  <30.340876, 36.112267, 35.227051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654467, 35.984596, 35.371586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820047, 35.625774, 35.309692>,  <29.919395, 35.410480, 35.272556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820047, 35.625774, 35.309692>,  <29.654467, 35.984596, 35.371586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820047, 35.625774, 35.309692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301211, -0.295386, 0.906653,
		-0.859021, -0.328703, -0.392477,
		0.413951, -0.897051, -0.154734,
		29.944233, 35.356659, 35.263271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120092, 35.442032, 35.513138>,  <29.654467, 35.984596, 35.371586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120092, 35.442032, 35.513138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477594, 35.264416, 35.538544>,  <29.692095, 35.157845, 35.553787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477594, 35.264416, 35.538544>,  <29.120092, 35.442032, 35.513138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477594, 35.264416, 35.538544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220707, -0.312053, 0.924074,
		-0.390507, -0.839911, -0.376900,
		0.893752, -0.444041, 0.063515,
		29.745720, 35.131203, 35.557598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187292, 34.618088, 35.595749>,  <29.120092, 35.442032, 35.513138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187292, 34.618088, 35.595749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454287, 34.831348, 35.803677>,  <29.614483, 34.959305, 35.928432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454287, 34.831348, 35.803677>,  <29.187292, 34.618088, 35.595749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454287, 34.831348, 35.803677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306550, -0.439445, 0.844343,
		0.678592, -0.722940, -0.129888,
		0.667488, 0.533147, 0.519821,
		29.654533, 34.991291, 35.959621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479683, 34.150352, 36.053177>,  <29.187292, 34.618088, 35.595749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479683, 34.150352, 36.053177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525181, 34.523129, 36.190903>,  <29.552479, 34.746796, 36.273537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525181, 34.523129, 36.190903>,  <29.479683, 34.150352, 36.053177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525181, 34.523129, 36.190903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324343, -0.292739, 0.899503,
		0.939076, -0.213989, 0.268970,
		0.113745, 0.931940, 0.344310,
		29.559305, 34.802711, 36.294197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617449, 33.979103, 36.672268>,  <29.479683, 34.150352, 36.053177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617449, 33.979103, 36.672268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539124, 34.370373, 36.700062>,  <29.492128, 34.605137, 36.716740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539124, 34.370373, 36.700062>,  <29.617449, 33.979103, 36.672268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539124, 34.370373, 36.700062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255481, -0.119295, 0.959426,
		0.946777, 0.170118, 0.273265,
		-0.195815, 0.978176, 0.069484,
		29.480379, 34.663826, 36.720905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033815, 34.453209, 37.229023>,  <29.617449, 33.979103, 36.672268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033815, 34.453209, 37.229023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655409, 34.563484, 37.160851>,  <29.428366, 34.629650, 37.119946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655409, 34.563484, 37.160851>,  <30.033815, 34.453209, 37.229023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655409, 34.563484, 37.160851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205308, -0.102821, 0.973281,
		0.250800, 0.955732, 0.153871,
		-0.946017, 0.275690, -0.170432,
		29.371603, 34.646191, 37.109722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823996, 34.455887, 37.861965>,  <30.033815, 34.453209, 37.229023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823996, 34.455887, 37.861965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465750, 34.479767, 37.685642>,  <29.250803, 34.494095, 37.579849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465750, 34.479767, 37.685642>,  <29.823996, 34.455887, 37.861965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465750, 34.479767, 37.685642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437033, -0.302803, 0.846943,
		-0.082917, 0.951182, 0.297285,
		-0.895615, 0.059698, -0.440806,
		29.197065, 34.497677, 37.553402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319124, 34.676266, 38.284309>,  <29.823996, 34.455887, 37.861965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319124, 34.676266, 38.284309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128061, 34.446697, 38.018238>,  <29.013424, 34.308956, 37.858597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128061, 34.446697, 38.018238>,  <29.319124, 34.676266, 38.284309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128061, 34.446697, 38.018238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535252, -0.410282, 0.738359,
		-0.696670, 0.708718, -0.111218,
		-0.477657, -0.573922, -0.665174,
		28.984764, 34.274521, 37.818687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633432, 35.247433, 37.889416>,  <29.319124, 34.676266, 38.284309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633432, 35.247433, 37.889416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373474, 35.228542, 38.192837>,  <29.217499, 35.217209, 38.374889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373474, 35.228542, 38.192837>,  <29.633432, 35.247433, 37.889416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373474, 35.228542, 38.192837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558488, 0.647267, 0.518784,
		-0.515486, 0.760799, -0.394283,
		-0.649897, -0.047224, 0.758554,
		29.178505, 35.214375, 38.420403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312832, 35.929855, 38.094048>,  <29.633432, 35.247433, 37.889416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312832, 35.929855, 38.094048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334408, 35.687531, 38.411556>,  <29.347353, 35.542133, 38.602062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334408, 35.687531, 38.411556>,  <29.312832, 35.929855, 38.094048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334408, 35.687531, 38.411556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368840, 0.750801, 0.547956,
		-0.927927, 0.263219, 0.263946,
		0.053939, -0.605817, 0.793774,
		29.350590, 35.505787, 38.649689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815668, 36.248898, 38.602787>,  <29.312832, 35.929855, 38.094048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815668, 36.248898, 38.602787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134594, 36.054443, 38.745872>,  <29.325949, 35.937771, 38.831726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134594, 36.054443, 38.745872>,  <28.815668, 36.248898, 38.602787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134594, 36.054443, 38.745872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171711, 0.750882, 0.637724,
		-0.578625, -0.447041, 0.682163,
		0.797313, -0.486138, 0.357717,
		29.373789, 35.908604, 38.853188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699890, 36.252163, 39.309986>,  <28.815668, 36.248898, 38.602787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699890, 36.252163, 39.309986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098492, 36.232601, 39.282898>,  <29.337652, 36.220863, 39.266644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098492, 36.232601, 39.282898>,  <28.699890, 36.252163, 39.309986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098492, 36.232601, 39.282898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082315, 0.712828, 0.696491,
		0.014213, -0.699632, 0.714362,
		0.996505, -0.048904, -0.067722,
		29.397444, 36.217930, 39.262581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988937, 36.229515, 39.956490>,  <28.699890, 36.252163, 39.309986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988937, 36.229515, 39.956490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319792, 36.342949, 39.762405>,  <29.518305, 36.411011, 39.645954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319792, 36.342949, 39.762405>,  <28.988937, 36.229515, 39.956490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319792, 36.342949, 39.762405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151213, 0.719219, 0.678129,
		0.541274, -0.634276, 0.552011,
		0.827138, 0.283583, -0.485205,
		29.567932, 36.428024, 39.616844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523378, 36.627750, 40.296837>,  <28.988937, 36.229515, 39.956490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523378, 36.627750, 40.296837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908003, 36.562187, 40.208717>,  <30.138777, 36.522850, 40.155846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908003, 36.562187, 40.208717>,  <29.523378, 36.627750, 40.296837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908003, 36.562187, 40.208717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201992, 0.965707, 0.163125,
		0.186008, -0.201354, 0.961695,
		0.961561, -0.163912, -0.220302,
		30.196472, 36.513012, 40.142628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356951, 37.255424, 40.674088>,  <29.523378, 36.627750, 40.296837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356951, 37.255424, 40.674088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370396, 37.643929, 40.579830>,  <29.378464, 37.877029, 40.523273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370396, 37.643929, 40.579830>,  <29.356951, 37.255424, 40.674088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370396, 37.643929, 40.579830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379218, 0.230543, 0.896127,
		0.924696, 0.059240, 0.376068,
		0.033613, 0.971257, -0.235647,
		29.380480, 37.935307, 40.509136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762825, 37.692997, 41.107471>,  <29.356951, 37.255424, 40.674088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762825, 37.692997, 41.107471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445795, 37.872257, 40.942070>,  <29.255577, 37.979813, 40.842827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445795, 37.872257, 40.942070>,  <29.762825, 37.692997, 41.107471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445795, 37.872257, 40.942070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369009, 0.187362, 0.910345,
		0.485450, 0.874102, 0.016875,
		-0.792572, 0.448153, -0.413506,
		29.208023, 38.006702, 40.818020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707405, 38.419273, 41.072552>,  <29.762825, 37.692997, 41.107471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707405, 38.419273, 41.072552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348944, 38.245785, 41.110062>,  <29.133865, 38.141693, 41.132568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348944, 38.245785, 41.110062>,  <29.707405, 38.419273, 41.072552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348944, 38.245785, 41.110062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224807, 0.625959, 0.746751,
		-0.382579, 0.648124, -0.658459,
		-0.896156, -0.433717, 0.093776,
		29.080097, 38.115669, 41.138195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421881, 38.562130, 40.807323>,  <29.707405, 38.419273, 41.072552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421881, 38.562130, 40.807323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527733, 38.440929, 41.173527>,  <30.591244, 38.368210, 41.393250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527733, 38.440929, 41.173527>,  <30.421881, 38.562130, 40.807323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527733, 38.440929, 41.173527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952911, -0.063630, -0.296500,
		0.148093, 0.950864, 0.271894,
		0.264630, -0.303001, 0.915511,
		30.607122, 38.350029, 41.448181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895372, 38.989307, 41.235813>,  <30.421881, 38.562130, 40.807323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895372, 38.989307, 41.235813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952873, 38.624866, 41.390335>,  <30.987373, 38.406204, 41.483047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952873, 38.624866, 41.390335>,  <30.895372, 38.989307, 41.235813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952873, 38.624866, 41.390335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956063, 0.027076, -0.291909,
		0.255498, 0.411297, 0.874960,
		0.143752, -0.911099, 0.386307,
		30.995998, 38.351536, 41.506226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576706, 38.861149, 41.632858>,  <30.895372, 38.989307, 41.235813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576706, 38.861149, 41.632858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430571, 38.533993, 41.455055>,  <31.342890, 38.337700, 41.348373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430571, 38.533993, 41.455055>,  <31.576706, 38.861149, 41.632858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430571, 38.533993, 41.455055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818113, -0.054301, -0.572488,
		0.444095, -0.572808, 0.688964,
		-0.365337, -0.817889, -0.444507,
		31.320969, 38.288628, 41.321705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017490, 38.218178, 41.618885>,  <31.576706, 38.861149, 41.632858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017490, 38.218178, 41.618885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776564, 38.252026, 41.301380>,  <31.632008, 38.272335, 41.110878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776564, 38.252026, 41.301380>,  <32.017490, 38.218178, 41.618885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776564, 38.252026, 41.301380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798105, 0.044561, -0.600868,
		-0.015475, -0.995416, -0.094376,
		-0.602319, 0.084620, -0.793758,
		31.595867, 38.277412, 41.063251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985987, 37.687954, 41.128780>,  <32.017490, 38.218178, 41.618885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985987, 37.687954, 41.128780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918335, 38.034760, 40.941299>,  <31.877745, 38.242844, 40.828812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918335, 38.034760, 40.941299>,  <31.985987, 37.687954, 41.128780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918335, 38.034760, 40.941299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729771, -0.209472, -0.650812,
		-0.662443, -0.452118, -0.597293,
		-0.169128, 0.867013, -0.468705,
		31.867596, 38.294865, 40.800686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793392, 37.653885, 40.372211>,  <31.985987, 37.687954, 41.128780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793392, 37.653885, 40.372211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040337, 37.948666, 40.482315>,  <32.188503, 38.125534, 40.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040337, 37.948666, 40.482315>,  <31.793392, 37.653885, 40.372211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040337, 37.948666, 40.482315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597876, -0.212125, -0.773012,
		-0.511284, 0.641797, -0.571564,
		0.617359, 0.736953, 0.275258,
		32.225544, 38.169750, 40.564892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946243, 38.082336, 39.858429>,  <31.793392, 37.653885, 40.372211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946243, 38.082336, 39.858429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270351, 38.044724, 40.089813>,  <32.464817, 38.022156, 40.228645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270351, 38.044724, 40.089813>,  <31.946243, 38.082336, 39.858429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270351, 38.044724, 40.089813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566037, -0.130219, -0.814030,
		0.151871, 0.987016, -0.052288,
		0.810270, -0.094030, 0.578464,
		32.513432, 38.016514, 40.263351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502731, 38.521114, 39.763584>,  <31.946243, 38.082336, 39.858429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502731, 38.521114, 39.763584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688332, 38.194424, 39.900791>,  <32.799694, 37.998409, 39.983116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688332, 38.194424, 39.900791>,  <32.502731, 38.521114, 39.763584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688332, 38.194424, 39.900791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577908, -0.014374, -0.815976,
		0.671359, 0.576846, 0.465323,
		0.464004, -0.816727, 0.343014,
		32.827534, 37.949406, 40.003696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233147, 38.590679, 39.831581>,  <32.502731, 38.521114, 39.763584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233147, 38.590679, 39.831581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119892, 38.223396, 39.720787>,  <33.051941, 38.003025, 39.654308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119892, 38.223396, 39.720787>,  <33.233147, 38.590679, 39.831581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119892, 38.223396, 39.720787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329048, 0.178276, -0.927332,
		0.900867, -0.353703, 0.251660,
		-0.283135, -0.918211, -0.276988,
		33.034950, 37.947933, 39.637691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710983, 38.514393, 39.329025>,  <33.233147, 38.590679, 39.831581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710983, 38.514393, 39.329025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431423, 38.238411, 39.253654>,  <33.263687, 38.072823, 39.208431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431423, 38.238411, 39.253654>,  <33.710983, 38.514393, 39.329025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431423, 38.238411, 39.253654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176749, 0.088663, -0.980254,
		0.693034, -0.718405, 0.059982,
		-0.698902, -0.689951, -0.188424,
		33.221752, 38.031425, 39.197128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869835, 37.999203, 38.929039>,  <33.710983, 38.514393, 39.329025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869835, 37.999203, 38.929039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476501, 38.020287, 38.859444>,  <33.240501, 38.032936, 38.817688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476501, 38.020287, 38.859444>,  <33.869835, 37.999203, 38.929039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476501, 38.020287, 38.859444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177047, 0.060276, -0.982355,
		-0.041292, -0.996789, -0.068604,
		-0.983336, 0.052710, -0.173989,
		33.181499, 38.036098, 38.807247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539581, 37.350517, 38.419865>,  <33.869835, 37.999203, 38.929039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539581, 37.350517, 38.419865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350731, 37.702831, 38.405380>,  <33.237423, 37.914219, 38.396690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350731, 37.702831, 38.405380>,  <33.539581, 37.350517, 38.419865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350731, 37.702831, 38.405380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189284, 0.061168, -0.980016,
		-0.860972, -0.469541, -0.195598,
		-0.472122, 0.880789, -0.036213,
		33.209095, 37.967068, 38.394516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355282, 37.284340, 38.540703>,  <33.539581, 37.350517, 38.419865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355282, 37.284340, 38.540703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125820, 37.078823, 38.795872>,  <33.988144, 36.955513, 38.948975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125820, 37.078823, 38.795872>,  <34.355282, 37.284340, 38.540703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125820, 37.078823, 38.795872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715912, -0.692909, 0.085710,
		0.397985, 0.505864, 0.765317,
		-0.573653, -0.513789, 0.637922,
		33.953724, 36.924686, 38.987247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763275, 37.072201, 39.215996>,  <34.355282, 37.284340, 38.540703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763275, 37.072201, 39.215996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465843, 36.811066, 39.158195>,  <34.287384, 36.654385, 39.123516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465843, 36.811066, 39.158195>,  <34.763275, 37.072201, 39.215996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465843, 36.811066, 39.158195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642188, -0.757475, 0.117588,
		-0.186220, -0.005359, 0.982493,
		-0.743584, -0.652842, -0.144499,
		34.242767, 36.615211, 39.114845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880810, 36.541519, 39.572285>,  <34.763275, 37.072201, 39.215996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880810, 36.541519, 39.572285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619637, 36.405167, 39.301735>,  <34.462933, 36.323353, 39.139404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619637, 36.405167, 39.301735>,  <34.880810, 36.541519, 39.572285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619637, 36.405167, 39.301735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512294, -0.856506, -0.062871,
		-0.557884, -0.387551, 0.733874,
		-0.652933, -0.340884, -0.676370,
		34.423756, 36.302902, 39.098824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824150, 35.731606, 39.604408>,  <34.880810, 36.541519, 39.572285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824150, 35.731606, 39.604408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724861, 35.805698, 39.224075>,  <34.665287, 35.850155, 38.995876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724861, 35.805698, 39.224075>,  <34.824150, 35.731606, 39.604408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724861, 35.805698, 39.224075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454788, -0.844366, -0.283221,
		-0.855309, -0.502727, 0.125348,
		-0.248222, 0.185235, -0.950828,
		34.650394, 35.861267, 38.938828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592289, 35.067131, 39.391079>,  <34.824150, 35.731606, 39.604408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592289, 35.067131, 39.391079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695847, 35.266827, 39.060326>,  <34.757980, 35.386642, 38.861874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695847, 35.266827, 39.060326>,  <34.592289, 35.067131, 39.391079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695847, 35.266827, 39.060326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414353, -0.830703, -0.371812,
		-0.872517, -0.246363, -0.421923,
		0.258892, 0.499238, -0.826884,
		34.773514, 35.416599, 38.812260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389034, 34.676140, 38.783756>,  <34.592289, 35.067131, 39.391079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389034, 34.676140, 38.783756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681667, 34.914799, 38.651821>,  <34.857246, 35.057995, 38.572659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681667, 34.914799, 38.651821>,  <34.389034, 34.676140, 38.783756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681667, 34.914799, 38.651821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449914, -0.786029, -0.423952,
		-0.512212, 0.161759, -0.843488,
		0.731584, 0.596651, -0.329836,
		34.901142, 35.093796, 38.552872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528656, 34.375862, 38.160999>,  <34.389034, 34.676140, 38.783756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528656, 34.375862, 38.160999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840683, 34.623653, 38.196182>,  <35.027901, 34.772327, 38.217293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840683, 34.623653, 38.196182>,  <34.528656, 34.375862, 38.160999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840683, 34.623653, 38.196182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601210, -0.703157, -0.379627,
		-0.173326, 0.349014, -0.920949,
		0.780067, 0.619483, 0.087955,
		35.074703, 34.809498, 38.222569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855713, 34.500633, 37.471592>,  <34.528656, 34.375862, 38.160999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855713, 34.500633, 37.471592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133755, 34.538483, 37.756653>,  <35.300579, 34.561192, 37.927689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133755, 34.538483, 37.756653>,  <34.855713, 34.500633, 37.471592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133755, 34.538483, 37.756653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596141, -0.629910, -0.497826,
		0.401801, 0.770883, -0.494263,
		0.695106, 0.094623, 0.712653,
		35.342285, 34.566868, 37.970448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457073, 34.659782, 37.111397>,  <34.855713, 34.500633, 37.471592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457073, 34.659782, 37.111397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581341, 34.517128, 37.463829>,  <35.655899, 34.431534, 37.675289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581341, 34.517128, 37.463829>,  <35.457073, 34.659782, 37.111397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581341, 34.517128, 37.463829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542143, -0.694900, -0.472435,
		0.780749, 0.624438, -0.022533,
		0.310665, -0.356638, 0.881077,
		35.674541, 34.410137, 37.728153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183357, 34.528793, 36.945305>,  <35.457073, 34.659782, 37.111397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183357, 34.528793, 36.945305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100136, 34.351368, 37.294010>,  <36.050205, 34.244911, 37.503231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100136, 34.351368, 37.294010>,  <36.183357, 34.528793, 36.945305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100136, 34.351368, 37.294010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493119, -0.817275, -0.298154,
		0.844718, 0.367851, 0.388764,
		-0.208051, -0.443563, 0.871761,
		36.037720, 34.218300, 37.555538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750744, 34.212051, 37.173473>,  <36.183357, 34.528793, 36.945305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750744, 34.212051, 37.173473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457027, 34.013641, 37.358849>,  <36.280800, 33.894596, 37.470074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457027, 34.013641, 37.358849>,  <36.750744, 34.212051, 37.173473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457027, 34.013641, 37.358849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401492, -0.867825, -0.292718,
		0.547381, -0.028872, 0.836385,
		-0.734288, -0.496030, 0.463439,
		36.236740, 33.864834, 37.497879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097115, 33.707188, 37.427296>,  <36.750744, 34.212051, 37.173473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097115, 33.707188, 37.427296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716042, 33.594482, 37.381680>,  <36.487396, 33.526859, 37.354309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716042, 33.594482, 37.381680>,  <37.097115, 33.707188, 37.427296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716042, 33.594482, 37.381680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301429, -0.924122, -0.234817,
		-0.039220, -0.258080, 0.965327,
		-0.952682, -0.281768, -0.114037,
		36.430237, 33.509953, 37.347469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064655, 33.047913, 37.879505>,  <37.097115, 33.707188, 37.427296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064655, 33.047913, 37.879505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771656, 33.056778, 37.607342>,  <36.595856, 33.062096, 37.444042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771656, 33.056778, 37.607342>,  <37.064655, 33.047913, 37.879505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771656, 33.056778, 37.607342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265916, -0.910755, -0.315935,
		-0.626691, -0.412353, 0.661229,
		-0.732494, 0.022162, -0.680412,
		36.551907, 33.063427, 37.403217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931728, 32.392315, 37.815758>,  <37.064655, 33.047913, 37.879505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931728, 32.392315, 37.815758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759117, 32.561123, 37.496841>,  <36.655552, 32.662407, 37.305492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759117, 32.561123, 37.496841>,  <36.931728, 32.392315, 37.815758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759117, 32.561123, 37.496841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246206, -0.795170, -0.554155,
		-0.867851, -0.435433, 0.239233,
		-0.431528, 0.422024, -0.797295,
		36.629658, 32.687729, 37.257652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561081, 31.863699, 37.478088>,  <36.931728, 32.392315, 37.815758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561081, 31.863699, 37.478088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668804, 32.127098, 37.196991>,  <36.733440, 32.285137, 37.028332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668804, 32.127098, 37.196991>,  <36.561081, 31.863699, 37.478088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668804, 32.127098, 37.196991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237906, -0.752580, -0.614023,
		-0.933205, -0.001823, -0.359340,
		0.269312, 0.658499, -0.702745,
		36.749599, 32.324646, 36.986168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395679, 31.536940, 36.845390>,  <36.561081, 31.863699, 37.478088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395679, 31.536940, 36.845390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637756, 31.833467, 36.729332>,  <36.783005, 32.011383, 36.659698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637756, 31.833467, 36.729332>,  <36.395679, 31.536940, 36.845390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637756, 31.833467, 36.729332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456658, -0.621823, -0.636239,
		-0.652074, 0.252553, -0.714854,
		0.605197, 0.741319, -0.290144,
		36.819317, 32.055862, 36.642288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121258, 31.723568, 36.142704>,  <36.395679, 31.536940, 36.845390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121258, 31.723568, 36.142704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502522, 31.838232, 36.181297>,  <36.731281, 31.907030, 36.204453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502522, 31.838232, 36.181297>,  <36.121258, 31.723568, 36.142704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502522, 31.838232, 36.181297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244115, -0.540768, -0.804971,
		-0.178581, 0.790819, -0.585418,
		0.953162, 0.286661, 0.096480,
		36.788471, 31.924231, 36.210243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331047, 31.813824, 35.464764>,  <36.121258, 31.723568, 36.142704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331047, 31.813824, 35.464764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674885, 31.780165, 35.666367>,  <36.881187, 31.759970, 35.787327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674885, 31.780165, 35.666367>,  <36.331047, 31.813824, 35.464764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674885, 31.780165, 35.666367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317246, -0.685340, -0.655488,
		0.400574, 0.723345, -0.562416,
		0.859590, -0.084147, 0.504008,
		36.932762, 31.754921, 35.817570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827763, 31.806133, 34.958443>,  <36.331047, 31.813824, 35.464764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827763, 31.806133, 34.958443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047970, 31.680929, 35.268009>,  <37.180096, 31.605806, 35.453751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047970, 31.680929, 35.268009>,  <36.827763, 31.806133, 34.958443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047970, 31.680929, 35.268009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499724, -0.619051, -0.605848,
		0.668734, 0.720277, -0.184380,
		0.550519, -0.313012, 0.773920,
		37.213127, 31.587027, 35.500187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554436, 31.726534, 34.754246>,  <36.827763, 31.806133, 34.958443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554436, 31.726534, 34.754246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556904, 31.484758, 35.072895>,  <37.558384, 31.339693, 35.264084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556904, 31.484758, 35.072895>,  <37.554436, 31.726534, 34.754246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556904, 31.484758, 35.072895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354546, -0.743567, -0.566925,
		0.935018, 0.285938, 0.209716,
		0.006167, -0.604440, 0.796627,
		37.558754, 31.303427, 35.311882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229477, 31.481064, 34.824039>,  <37.554436, 31.726534, 34.754246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229477, 31.481064, 34.824039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989159, 31.224096, 35.014339>,  <37.844967, 31.069916, 35.128521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989159, 31.224096, 35.014339>,  <38.229477, 31.481064, 34.824039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989159, 31.224096, 35.014339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415009, -0.759306, -0.501221,
		0.683233, -0.103694, 0.722801,
		-0.600800, -0.642419, 0.475749,
		37.808918, 31.031370, 35.157063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665112, 30.921164, 34.959141>,  <38.229477, 31.481064, 34.824039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665112, 30.921164, 34.959141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295971, 30.767397, 34.968678>,  <38.074486, 30.675137, 34.974400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295971, 30.767397, 34.968678>,  <38.665112, 30.921164, 34.959141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295971, 30.767397, 34.968678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336717, -0.835298, -0.434625,
		0.186995, -0.393066, 0.900296,
		-0.922851, -0.384418, 0.023845,
		38.019115, 30.652071, 34.975830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702442, 30.171415, 35.130714>,  <38.665112, 30.921164, 34.959141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702442, 30.171415, 35.130714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351231, 30.220852, 34.945766>,  <38.140503, 30.250515, 34.834797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351231, 30.220852, 34.945766>,  <38.702442, 30.171415, 35.130714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351231, 30.220852, 34.945766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245615, -0.712808, -0.656947,
		-0.410779, -0.690384, 0.595509,
		-0.878029, 0.123594, -0.462375,
		38.087822, 30.257931, 34.807053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413376, 29.527740, 35.111172>,  <38.702442, 30.171415, 35.130714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413376, 29.527740, 35.111172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208591, 29.715796, 34.823601>,  <38.085720, 29.828629, 34.651058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208591, 29.715796, 34.823601>,  <38.413376, 29.527740, 35.111172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208591, 29.715796, 34.823601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315869, -0.675264, -0.666517,
		-0.798823, -0.568322, 0.197210,
		-0.511965, 0.470137, -0.718932,
		38.055000, 29.856836, 34.607922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989422, 28.978664, 34.717812>,  <38.413376, 29.527740, 35.111172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989422, 28.978664, 34.717812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019402, 29.314577, 34.502720>,  <38.037392, 29.516125, 34.373665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019402, 29.314577, 34.502720>,  <37.989422, 28.978664, 34.717812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019402, 29.314577, 34.502720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364324, -0.525026, -0.769166,
		-0.928251, -0.138254, -0.345305,
		0.074954, 0.839782, -0.537725,
		38.041889, 29.566511, 34.341404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893085, 28.738850, 34.006836>,  <37.989422, 28.978664, 34.717812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893085, 28.738850, 34.006836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069393, 29.096355, 33.973595>,  <38.175179, 29.310860, 33.953651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069393, 29.096355, 33.973595>,  <37.893085, 28.738850, 34.006836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069393, 29.096355, 33.973595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536885, -0.336696, -0.773557,
		-0.719359, 0.296342, -0.628254,
		0.440768, 0.893766, -0.083104,
		38.201622, 29.364485, 33.948662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762844, 28.930122, 33.267803>,  <37.893085, 28.738850, 34.006836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762844, 28.930122, 33.267803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091400, 29.093414, 33.427135>,  <38.288532, 29.191389, 33.522736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091400, 29.093414, 33.427135>,  <37.762844, 28.930122, 33.267803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091400, 29.093414, 33.427135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523423, -0.262052, -0.810776,
		-0.226599, 0.874458, -0.428923,
		0.821390, 0.408230, 0.398331,
		38.337818, 29.215883, 33.546635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039028, 29.345472, 32.651657>,  <37.762844, 28.930122, 33.267803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039028, 29.345472, 32.651657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346809, 29.306606, 32.904163>,  <38.531479, 29.283287, 33.055668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346809, 29.306606, 32.904163>,  <38.039028, 29.345472, 32.651657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346809, 29.306606, 32.904163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598981, -0.233329, -0.766015,
		0.221723, 0.967531, -0.121335,
		0.769455, -0.097166, 0.631267,
		38.577644, 29.277456, 33.093544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569599, 29.703552, 32.326283>,  <38.039028, 29.345472, 32.651657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569599, 29.703552, 32.326283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741261, 29.458963, 32.592194>,  <38.844257, 29.312210, 32.751740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741261, 29.458963, 32.592194>,  <38.569599, 29.703552, 32.326283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741261, 29.458963, 32.592194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820959, -0.042841, -0.569377,
		0.376638, 0.790106, 0.483608,
		0.429150, -0.611472, 0.664780,
		38.870007, 29.275522, 32.791626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197025, 29.963070, 32.564919>,  <38.569599, 29.703552, 32.326283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197025, 29.963070, 32.564919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228226, 29.565224, 32.592209>,  <39.246944, 29.326515, 32.608582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228226, 29.565224, 32.592209>,  <39.197025, 29.963070, 32.564919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228226, 29.565224, 32.592209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762249, 0.015389, -0.647101,
		0.642567, 0.102476, 0.759346,
		0.077998, -0.994617, 0.068224,
		39.251625, 29.266838, 32.612675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910194, 29.896946, 32.575516>,  <39.197025, 29.963070, 32.564919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910194, 29.896946, 32.575516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743122, 29.545633, 32.482418>,  <39.642879, 29.334846, 32.426559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743122, 29.545633, 32.482418>,  <39.910194, 29.896946, 32.575516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743122, 29.545633, 32.482418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682926, -0.134503, -0.717998,
		0.599298, -0.458839, 0.655979,
		-0.417677, -0.878280, -0.232746,
		39.617821, 29.282150, 32.412594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413368, 29.426901, 32.758358>,  <39.910194, 29.896946, 32.575516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413368, 29.426901, 32.758358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169617, 29.230801, 32.509098>,  <40.023365, 29.113140, 32.359543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169617, 29.230801, 32.509098>,  <40.413368, 29.426901, 32.758358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169617, 29.230801, 32.509098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785199, -0.264017, -0.560141,
		0.110088, -0.830632, 0.545830,
		-0.609380, -0.490250, -0.623146,
		39.986801, 29.083725, 32.322155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858356, 28.813631, 32.545692>,  <40.413368, 29.426901, 32.758358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858356, 28.813631, 32.545692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559677, 28.827778, 32.280003>,  <40.380470, 28.836266, 32.120590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559677, 28.827778, 32.280003>,  <40.858356, 28.813631, 32.545692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559677, 28.827778, 32.280003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584822, -0.440837, -0.680916,
		-0.316895, -0.896890, 0.308489,
		-0.746700, 0.035368, -0.664220,
		40.335667, 28.838388, 32.080738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821716, 28.135075, 32.114689>,  <40.858356, 28.813631, 32.545692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821716, 28.135075, 32.114689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635193, 28.415276, 31.898594>,  <40.523277, 28.583397, 31.768938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635193, 28.415276, 31.898594>,  <40.821716, 28.135075, 32.114689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635193, 28.415276, 31.898594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490285, -0.303666, -0.816950,
		-0.736326, -0.645820, -0.201843,
		-0.466310, 0.700502, -0.540233,
		40.495300, 28.625425, 31.736525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672321, 27.777323, 31.544926>,  <40.821716, 28.135075, 32.114689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672321, 27.777323, 31.544926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633472, 28.156580, 31.423866>,  <40.610165, 28.384134, 31.351231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.633472, 28.156580, 31.423866>,  <40.672321, 27.777323, 31.544926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633472, 28.156580, 31.423866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480711, -0.221577, -0.848422,
		-0.871484, -0.227885, -0.434263,
		-0.097120, 0.948141, -0.302648,
		40.604336, 28.441023, 31.333073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424782, 27.709549, 30.884045>,  <40.672321, 27.777323, 31.544926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424782, 27.709549, 30.884045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587063, 28.074896, 30.897692>,  <40.684433, 28.294104, 30.905880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587063, 28.074896, 30.897692>,  <40.424782, 27.709549, 30.884045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587063, 28.074896, 30.897692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410178, -0.148583, -0.899820,
		-0.816797, 0.379055, -0.434925,
		0.405704, 0.913368, 0.034118,
		40.708775, 28.348906, 30.907927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395191, 27.903214, 30.175911>,  <40.424782, 27.709549, 30.884045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395191, 27.903214, 30.175911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654949, 28.151545, 30.351574>,  <40.810802, 28.300543, 30.456972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654949, 28.151545, 30.351574>,  <40.395191, 27.903214, 30.175911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654949, 28.151545, 30.351574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462670, 0.135750, -0.876075,
		-0.603508, 0.772104, -0.199083,
		0.649396, 0.620828, 0.439156,
		40.849770, 28.337793, 30.483320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410473, 28.499147, 29.824709>,  <40.395191, 27.903214, 30.175911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410473, 28.499147, 29.824709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768036, 28.457376, 29.999079>,  <40.982574, 28.432314, 30.103701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768036, 28.457376, 29.999079>,  <40.410473, 28.499147, 29.824709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768036, 28.457376, 29.999079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410781, -0.198443, -0.889876,
		0.179432, 0.974534, -0.134493,
		0.893903, -0.104425, 0.435927,
		41.036205, 28.426048, 30.129856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803738, 28.911747, 29.432655>,  <40.410473, 28.499147, 29.824709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803738, 28.911747, 29.432655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012508, 28.616537, 29.603727>,  <41.137772, 28.439411, 29.706371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012508, 28.616537, 29.603727>,  <40.803738, 28.911747, 29.432655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012508, 28.616537, 29.603727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312179, -0.301333, -0.900968,
		0.793808, 0.603756, 0.073121,
		0.521931, -0.738022, 0.427681,
		41.169086, 28.395130, 29.732031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293240, 28.809807, 28.973370>,  <40.803738, 28.911747, 29.432655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293240, 28.809807, 28.973370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364079, 28.480362, 29.188887>,  <41.406582, 28.282696, 29.318197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364079, 28.480362, 29.188887>,  <41.293240, 28.809807, 28.973370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364079, 28.480362, 29.188887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473335, -0.408699, -0.780332,
		0.862896, 0.393226, 0.317465,
		0.177099, -0.823613, 0.538793,
		41.417210, 28.233278, 29.350525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946964, 28.602234, 28.831793>,  <41.293240, 28.809807, 28.973370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946964, 28.602234, 28.831793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735615, 28.290262, 28.965979>,  <41.608807, 28.103079, 29.046490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735615, 28.290262, 28.965979>,  <41.946964, 28.602234, 28.831793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735615, 28.290262, 28.965979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377687, -0.569794, -0.729854,
		0.760381, -0.258932, 0.595630,
		-0.528369, -0.779929, 0.335465,
		41.577103, 28.056284, 29.066618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302242, 28.005541, 28.556541>,  <41.946964, 28.602234, 28.831793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302242, 28.005541, 28.556541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942722, 27.853703, 28.644245>,  <41.727013, 27.762600, 28.696867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942722, 27.853703, 28.644245>,  <42.302242, 28.005541, 28.556541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942722, 27.853703, 28.644245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038243, -0.566162, -0.823406,
		0.436698, -0.731688, 0.523381,
		-0.898795, -0.379595, 0.219260,
		41.673084, 27.739824, 28.710024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402245, 27.284445, 28.351624>,  <42.302242, 28.005541, 28.556541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402245, 27.284445, 28.351624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008385, 27.354048, 28.357109>,  <41.772068, 27.395809, 28.360399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008385, 27.354048, 28.357109>,  <42.402245, 27.284445, 28.351624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008385, 27.354048, 28.357109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114281, -0.583297, -0.804180,
		-0.131935, -0.793402, 0.594228,
		-0.984649, 0.174009, 0.013713,
		41.712990, 27.406250, 28.361223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088531, 26.732405, 28.192318>,  <42.402245, 27.284445, 28.351624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088531, 26.732405, 28.192318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798252, 27.000648, 28.130802>,  <41.624084, 27.161594, 28.093893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798252, 27.000648, 28.130802>,  <42.088531, 26.732405, 28.192318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798252, 27.000648, 28.130802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428182, -0.615167, -0.661989,
		-0.538538, -0.414555, 0.733567,
		-0.725697, 0.670607, -0.153786,
		41.580544, 27.201830, 28.084665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434689, 26.404604, 28.125710>,  <42.088531, 26.732405, 28.192318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434689, 26.404604, 28.125710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364281, 26.755833, 27.947720>,  <41.322037, 26.966570, 27.840925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364281, 26.755833, 27.947720>,  <41.434689, 26.404604, 28.125710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364281, 26.755833, 27.947720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493236, -0.469867, -0.732081,
		-0.851901, 0.090618, 0.515803,
		-0.176019, 0.878074, -0.444977,
		41.311474, 27.019255, 27.814226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714130, 26.539513, 28.080387>,  <41.434689, 26.404604, 28.125710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714130, 26.539513, 28.080387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895466, 26.748806, 27.791746>,  <41.004269, 26.874382, 27.618561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895466, 26.748806, 27.791746>,  <40.714130, 26.539513, 28.080387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895466, 26.748806, 27.791746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486640, -0.532973, -0.692185,
		-0.746770, 0.664955, 0.013009,
		0.453339, 0.523234, -0.721602,
		41.031467, 26.905777, 27.575266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224434, 27.034496, 27.779537>,  <40.714130, 26.539513, 28.080387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224434, 27.034496, 27.779537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527435, 26.853876, 27.590942>,  <40.709236, 26.745504, 27.477785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527435, 26.853876, 27.590942>,  <40.224434, 27.034496, 27.779537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527435, 26.853876, 27.590942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635916, -0.346995, -0.689352,
		0.147672, 0.822009, -0.549995,
		0.757499, -0.451548, -0.471487,
		40.754684, 26.718412, 27.449497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205627, 27.127937, 27.034096>,  <40.224434, 27.034496, 27.779537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205627, 27.127937, 27.034096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354557, 26.760094, 27.084202>,  <40.443916, 26.539387, 27.114265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354557, 26.760094, 27.084202>,  <40.205627, 27.127937, 27.034096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354557, 26.760094, 27.084202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686792, -0.363779, -0.629271,
		0.624254, 0.148259, -0.767025,
		0.372322, -0.919611, 0.125267,
		40.466255, 26.484211, 27.121782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330864, 26.738346, 26.452499>,  <40.205627, 27.127937, 27.034096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330864, 26.738346, 26.452499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262703, 26.463463, 26.734976>,  <40.221806, 26.298532, 26.904461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262703, 26.463463, 26.734976>,  <40.330864, 26.738346, 26.452499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262703, 26.463463, 26.734976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793596, -0.329108, -0.511755,
		0.584096, -0.647636, -0.489285,
		-0.170403, -0.687209, 0.706192,
		40.211582, 26.257299, 26.946833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083130, 26.159246, 26.083876>,  <40.330864, 26.738346, 26.452499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083130, 26.159246, 26.083876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952515, 26.110460, 26.458788>,  <39.874146, 26.081188, 26.683735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952515, 26.110460, 26.458788>,  <40.083130, 26.159246, 26.083876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952515, 26.110460, 26.458788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867667, -0.354612, -0.348430,
		0.374867, -0.927025, 0.009971,
		-0.326539, -0.121963, 0.937282,
		39.854553, 26.073872, 26.739973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332058, 26.096521, 25.414742>,  <40.083130, 26.159246, 26.083876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332058, 26.096521, 25.414742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135811, 26.372662, 25.202059>,  <40.018063, 26.538345, 25.074450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135811, 26.372662, 25.202059>,  <40.332058, 26.096521, 25.414742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135811, 26.372662, 25.202059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503610, 0.722606, 0.473515,
		0.711105, -0.035458, -0.702191,
		-0.490618, 0.690350, -0.531706,
		39.988625, 26.579767, 25.042547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741467, 26.683884, 25.181513>,  <40.332058, 26.096521, 25.414742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741467, 26.683884, 25.181513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365990, 26.820736, 25.198484>,  <40.140705, 26.902847, 25.208668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365990, 26.820736, 25.198484>,  <40.741467, 26.683884, 25.181513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365990, 26.820736, 25.198484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318064, 0.811964, 0.489438,
		0.133002, 0.472927, -0.871005,
		-0.938694, 0.342132, 0.042429,
		40.084381, 26.923376, 25.211212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747803, 27.425882, 25.078552>,  <40.741467, 26.683884, 25.181513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747803, 27.425882, 25.078552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409126, 27.373247, 25.284777>,  <40.205921, 27.341665, 25.408512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409126, 27.373247, 25.284777>,  <40.747803, 27.425882, 25.078552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409126, 27.373247, 25.284777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188669, 0.831734, 0.522133,
		-0.497516, 0.539355, -0.679393,
		-0.846689, -0.131589, 0.515560,
		40.155121, 27.333771, 25.439445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630196, 28.029833, 25.467997>,  <40.747803, 27.425882, 25.078552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630196, 28.029833, 25.467997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360207, 27.807020, 25.661541>,  <40.198212, 27.673332, 25.777668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360207, 27.807020, 25.661541>,  <40.630196, 28.029833, 25.467997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360207, 27.807020, 25.661541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237107, 0.784751, 0.572666,
		-0.698706, 0.271807, -0.661763,
		-0.674974, -0.557034, 0.483863,
		40.157715, 27.639910, 25.806700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981998, 28.362091, 25.466530>,  <40.630196, 28.029833, 25.467997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981998, 28.362091, 25.466530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011044, 28.108404, 25.774426>,  <40.028473, 27.956192, 25.959162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011044, 28.108404, 25.774426>,  <39.981998, 28.362091, 25.466530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011044, 28.108404, 25.774426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232170, 0.739824, 0.631473,
		-0.969961, -0.224565, -0.093523,
		0.072616, -0.634217, 0.769737,
		40.032829, 27.918139, 26.005346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387966, 28.100449, 25.821613>,  <39.981998, 28.362091, 25.466530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387966, 28.100449, 25.821613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706482, 28.137640, 26.060707>,  <39.897591, 28.159954, 26.204163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706482, 28.137640, 26.060707>,  <39.387966, 28.100449, 25.821613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706482, 28.137640, 26.060707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494608, 0.668959, 0.554848,
		-0.348271, -0.737462, 0.578669,
		0.796285, 0.092977, 0.597734,
		39.945366, 28.165533, 26.240026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084614, 28.025841, 26.512377>,  <39.387966, 28.100449, 25.821613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084614, 28.025841, 26.512377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432106, 28.223450, 26.526524>,  <39.640602, 28.342014, 26.535011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432106, 28.223450, 26.526524>,  <39.084614, 28.025841, 26.512377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432106, 28.223450, 26.526524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391665, 0.641522, 0.659582,
		0.303158, -0.586851, 0.750800,
		0.868731, 0.494020, 0.035366,
		39.692726, 28.371656, 26.537134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232327, 28.166609, 27.207012>,  <39.084614, 28.025841, 26.512377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232327, 28.166609, 27.207012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458195, 28.442610, 27.025887>,  <39.593716, 28.608212, 26.917212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458195, 28.442610, 27.025887>,  <39.232327, 28.166609, 27.207012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458195, 28.442610, 27.025887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309618, 0.685691, 0.658760,
		0.765039, -0.231780, 0.600826,
		0.564669, 0.690004, -0.452817,
		39.627594, 28.649611, 26.890041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576321, 28.613279, 27.841871>,  <39.232327, 28.166609, 27.207012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576321, 28.613279, 27.841871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583309, 28.845425, 27.516203>,  <39.587502, 28.984713, 27.320803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583309, 28.845425, 27.516203>,  <39.576321, 28.613279, 27.841871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583309, 28.845425, 27.516203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242523, 0.792436, 0.559667,
		0.969988, 0.187680, 0.154592,
		0.017466, 0.580363, -0.814171,
		39.588551, 29.019533, 27.271952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934135, 29.184477, 27.981787>,  <39.576321, 28.613279, 27.841871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934135, 29.184477, 27.981787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742992, 29.318476, 27.656965>,  <39.628307, 29.398874, 27.462072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742992, 29.318476, 27.656965>,  <39.934135, 29.184477, 27.981787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742992, 29.318476, 27.656965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308111, 0.801781, 0.512070,
		0.822629, 0.494899, -0.279922,
		-0.477859, 0.334996, -0.812052,
		39.599636, 29.418974, 27.413349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176476, 29.811703, 27.926027>,  <39.934135, 29.184477, 27.981787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176476, 29.811703, 27.926027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836769, 29.794701, 27.715527>,  <39.632946, 29.784500, 27.589226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836769, 29.794701, 27.715527>,  <40.176476, 29.811703, 27.926027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836769, 29.794701, 27.715527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377361, 0.745985, 0.548730,
		0.369253, 0.664605, -0.649579,
		-0.849265, -0.042505, -0.526253,
		39.581989, 29.781948, 27.557652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186520, 30.403528, 27.542677>,  <40.176476, 29.811703, 27.926027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186520, 30.403528, 27.542677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808067, 30.283428, 27.591160>,  <39.580997, 30.211369, 27.620249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808067, 30.283428, 27.591160>,  <40.186520, 30.403528, 27.542677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808067, 30.283428, 27.591160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225867, 0.880222, 0.417365,
		-0.232001, 0.367504, -0.900620,
		-0.946129, -0.300249, 0.121206,
		39.524227, 30.193354, 27.627522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848610, 30.967825, 27.313700>,  <40.186520, 30.403528, 27.542677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848610, 30.967825, 27.313700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543259, 30.778963, 27.490026>,  <39.360046, 30.665646, 27.595821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543259, 30.778963, 27.490026>,  <39.848610, 30.967825, 27.313700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543259, 30.778963, 27.490026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360235, 0.877638, 0.316199,
		-0.536171, 0.082583, -0.840060,
		-0.763381, -0.472156, 0.440815,
		39.314243, 30.637316, 27.622271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260036, 31.222038, 27.029583>,  <39.848610, 30.967825, 27.313700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260036, 31.222038, 27.029583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154957, 31.070843, 27.384686>,  <39.091908, 30.980125, 27.597748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154957, 31.070843, 27.384686>,  <39.260036, 31.222038, 27.029583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154957, 31.070843, 27.384686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258250, 0.914050, 0.312762,
		-0.929675, -0.147102, -0.337735,
		-0.262699, -0.377987, 0.887758,
		39.076149, 30.957447, 27.651012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605198, 31.610090, 27.251938>,  <39.260036, 31.222038, 27.029583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605198, 31.610090, 27.251938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735455, 31.432323, 27.585752>,  <38.813610, 31.325665, 27.786041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735455, 31.432323, 27.585752>,  <38.605198, 31.610090, 27.251938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735455, 31.432323, 27.585752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228303, 0.819570, 0.525531,
		-0.917515, -0.361663, 0.165427,
		0.325644, -0.444415, 0.834537,
		38.833149, 31.299000, 27.836113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981449, 31.606131, 27.729034>,  <38.605198, 31.610090, 27.251938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981449, 31.606131, 27.729034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307610, 31.564266, 27.956776>,  <38.503307, 31.539148, 28.093420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307610, 31.564266, 27.956776>,  <37.981449, 31.606131, 27.729034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307610, 31.564266, 27.956776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367997, 0.665513, 0.649362,
		-0.446875, -0.739012, 0.504147,
		0.815402, -0.104659, 0.569356,
		38.552231, 31.532869, 28.127583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649109, 31.681177, 28.270695>,  <37.981449, 31.606131, 27.729034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649109, 31.681177, 28.270695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038040, 31.729414, 28.350733>,  <38.271400, 31.758356, 28.398756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038040, 31.729414, 28.350733>,  <37.649109, 31.681177, 28.270695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038040, 31.729414, 28.350733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227274, 0.686596, 0.690603,
		-0.054103, -0.716968, 0.695004,
		0.972327, 0.120592, 0.200095,
		38.329739, 31.765591, 28.410761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754562, 31.574560, 29.076078>,  <37.649109, 31.681177, 28.270695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754562, 31.574560, 29.076078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055820, 31.781223, 28.913185>,  <38.236576, 31.905220, 28.815449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055820, 31.781223, 28.913185>,  <37.754562, 31.574560, 29.076078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055820, 31.781223, 28.913185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043084, 0.656442, 0.753145,
		0.656442, -0.549682, 0.516656,
		-0.753145, -0.516656, 0.407234,
		38.281765, 31.936220, 28.791016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193409, 31.677526, 29.585596>,  <37.754562, 31.574560, 29.076078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193409, 31.677526, 29.585596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280403, 31.960468, 29.316568>,  <38.332600, 32.130234, 29.155151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280403, 31.960468, 29.316568>,  <38.193409, 31.677526, 29.585596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280403, 31.960468, 29.316568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002276, 0.689427, 0.724352,
		0.976061, -0.156005, 0.151550,
		0.217485, 0.707356, -0.672568,
		38.345650, 32.172676, 29.114798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597393, 32.079803, 29.975031>,  <38.193409, 31.677526, 29.585596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597393, 32.079803, 29.975031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453701, 32.278423, 29.658957>,  <38.367485, 32.397594, 29.469313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453701, 32.278423, 29.658957>,  <38.597393, 32.079803, 29.975031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453701, 32.278423, 29.658957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286570, 0.747108, 0.599756,
		0.888160, 0.441897, -0.126092,
		-0.359234, 0.496545, -0.790186,
		38.345932, 32.427387, 29.421900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902794, 32.655422, 30.023634>,  <38.597393, 32.079803, 29.975031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902794, 32.655422, 30.023634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580349, 32.722092, 29.796511>,  <38.386883, 32.762093, 29.660236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580349, 32.722092, 29.796511>,  <38.902794, 32.655422, 30.023634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580349, 32.722092, 29.796511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268232, 0.752373, 0.601654,
		0.527480, 0.637304, -0.561790,
		-0.806112, 0.166670, -0.567807,
		38.338516, 32.772091, 29.626169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705894, 33.344223, 30.329763>,  <38.902794, 32.655422, 30.023634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705894, 33.344223, 30.329763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402267, 33.224571, 30.098478>,  <38.220089, 33.152779, 29.959707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402267, 33.224571, 30.098478>,  <38.705894, 33.344223, 30.329763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402267, 33.224571, 30.098478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639137, 0.511273, 0.574548,
		0.123760, 0.805680, -0.579278,
		-0.759071, -0.299131, -0.578215,
		38.174545, 33.134830, 29.925014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373032, 33.991058, 30.079964>,  <38.705894, 33.344223, 30.329763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373032, 33.991058, 30.079964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112320, 33.688881, 30.053152>,  <37.955894, 33.507576, 30.037066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112320, 33.688881, 30.053152>,  <38.373032, 33.991058, 30.079964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112320, 33.688881, 30.053152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589139, 0.448669, 0.672020,
		-0.477597, 0.477499, -0.737493,
		-0.651779, -0.755440, -0.067031,
		37.916786, 33.462250, 30.033043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706726, 34.333591, 30.122198>,  <38.373032, 33.991058, 30.079964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706726, 34.333591, 30.122198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609455, 33.952919, 30.197206>,  <37.551090, 33.724514, 30.242212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609455, 33.952919, 30.197206>,  <37.706726, 34.333591, 30.122198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609455, 33.952919, 30.197206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587734, 0.298364, 0.752029,
		-0.771643, 0.072664, -0.631892,
		-0.243180, -0.951682, 0.187523,
		37.536503, 33.667416, 30.253464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004963, 34.218792, 30.151894>,  <37.706726, 34.333591, 30.122198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004963, 34.218792, 30.151894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119312, 33.901615, 30.367121>,  <37.187920, 33.711308, 30.496258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119312, 33.901615, 30.367121>,  <37.004963, 34.218792, 30.151894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119312, 33.901615, 30.367121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813373, 0.096095, 0.573750,
		-0.506658, -0.601668, -0.617489,
		0.285870, -0.792945, 0.538068,
		37.205074, 33.663731, 30.528542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418655, 33.670876, 30.250292>,  <37.004963, 34.218792, 30.151894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418655, 33.670876, 30.250292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671253, 33.628471, 30.557533>,  <36.822811, 33.603027, 30.741879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671253, 33.628471, 30.557533>,  <36.418655, 33.670876, 30.250292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671253, 33.628471, 30.557533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740597, 0.210925, 0.637987,
		-0.229644, -0.971737, 0.054687,
		0.631490, -0.106009, 0.768103,
		36.860699, 33.596668, 30.787964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969223, 33.374043, 30.719786>,  <36.418655, 33.670876, 30.250292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969223, 33.374043, 30.719786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280102, 33.531067, 30.916504>,  <36.466629, 33.625282, 31.034534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280102, 33.531067, 30.916504>,  <35.969223, 33.374043, 30.719786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280102, 33.531067, 30.916504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618296, 0.331169, 0.712767,
		0.116936, -0.858035, 0.500102,
		0.777198, 0.392559, 0.491794,
		36.513260, 33.648834, 31.064041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782204, 33.266804, 31.451584>,  <35.969223, 33.374043, 30.719786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782204, 33.266804, 31.451584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064590, 33.537434, 31.535357>,  <36.234020, 33.699810, 31.585621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064590, 33.537434, 31.535357>,  <35.782204, 33.266804, 31.451584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064590, 33.537434, 31.535357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470769, 0.227339, 0.852463,
		0.529143, -0.700402, 0.479003,
		0.705963, 0.676575, 0.209433,
		36.276379, 33.740406, 31.598186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830929, 33.286655, 32.267868>,  <35.782204, 33.266804, 31.451584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830929, 33.286655, 32.267868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993881, 33.626534, 32.133965>,  <36.091652, 33.830460, 32.053623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993881, 33.626534, 32.133965>,  <35.830929, 33.286655, 32.267868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993881, 33.626534, 32.133965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271773, 0.462744, 0.843805,
		0.871883, -0.252771, 0.419436,
		0.407381, 0.849691, -0.334762,
		36.116096, 33.881439, 32.033535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300472, 33.605671, 32.809322>,  <35.830929, 33.286655, 32.267868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300472, 33.605671, 32.809322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232246, 33.928116, 32.582664>,  <36.191311, 34.121582, 32.446671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232246, 33.928116, 32.582664>,  <36.300472, 33.605671, 32.809322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232246, 33.928116, 32.582664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327909, 0.495853, 0.804117,
		0.929184, 0.322963, 0.179756,
		-0.170568, 0.806117, -0.566641,
		36.181076, 34.169952, 32.412674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485970, 34.168102, 33.237896>,  <36.300472, 33.605671, 32.809322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485970, 34.168102, 33.237896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255806, 34.310707, 32.943466>,  <36.117710, 34.396271, 32.766808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255806, 34.310707, 32.943466>,  <36.485970, 34.168102, 33.237896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255806, 34.310707, 32.943466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488581, 0.571919, 0.658936,
		0.655894, 0.738788, -0.154902,
		-0.575406, 0.356511, -0.736076,
		36.083183, 34.417660, 32.722645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478516, 34.900551, 33.315781>,  <36.485970, 34.168102, 33.237896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478516, 34.900551, 33.315781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169647, 34.862976, 33.064407>,  <35.984325, 34.840431, 32.913582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169647, 34.862976, 33.064407>,  <36.478516, 34.900551, 33.315781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169647, 34.862976, 33.064407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507040, 0.687180, 0.520283,
		0.382973, 0.720388, -0.578250,
		-0.772167, -0.093941, -0.628437,
		35.937996, 34.834793, 32.875877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371273, 35.477528, 33.079369>,  <36.478516, 34.900551, 33.315781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371273, 35.477528, 33.079369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019638, 35.288086, 33.057800>,  <35.808659, 35.174423, 33.044861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019638, 35.288086, 33.057800>,  <36.371273, 35.477528, 33.079369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019638, 35.288086, 33.057800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412280, 0.698697, 0.584677,
		-0.239230, 0.536213, -0.809472,
		-0.879087, -0.473601, -0.053920,
		35.755913, 35.146004, 33.041626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939774, 35.983051, 33.024288>,  <36.371273, 35.477528, 33.079369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939774, 35.983051, 33.024288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677422, 35.695171, 33.115368>,  <35.520012, 35.522442, 33.170017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677422, 35.695171, 33.115368>,  <35.939774, 35.983051, 33.024288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677422, 35.695171, 33.115368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406750, 0.591060, 0.696565,
		-0.635906, 0.364245, -0.680404,
		-0.655879, -0.719704, 0.227702,
		35.480659, 35.479259, 33.183678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361843, 36.347164, 33.146736>,  <35.939774, 35.983051, 33.024288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361843, 36.347164, 33.146736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289352, 36.009411, 33.348396>,  <35.245857, 35.806759, 33.469395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289352, 36.009411, 33.348396>,  <35.361843, 36.347164, 33.146736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289352, 36.009411, 33.348396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521160, 0.517198, 0.678895,
		-0.833996, -0.139714, -0.533788,
		-0.181223, -0.844385, 0.504154,
		35.234985, 35.756096, 33.499641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644611, 36.371498, 33.282143>,  <35.361843, 36.347164, 33.146736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644611, 36.371498, 33.282143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807777, 36.097820, 33.523964>,  <34.905678, 35.933613, 33.669056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807777, 36.097820, 33.523964>,  <34.644611, 36.371498, 33.282143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807777, 36.097820, 33.523964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340353, 0.500474, 0.796044,
		-0.847210, -0.530481, -0.028716,
		0.407914, -0.684190, 0.604557,
		34.930153, 35.892563, 33.705330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153557, 36.275520, 33.817390>,  <34.644611, 36.371498, 33.282143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153557, 36.275520, 33.817390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506023, 36.147911, 33.956970>,  <34.717503, 36.071346, 34.040718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506023, 36.147911, 33.956970>,  <34.153557, 36.275520, 33.817390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506023, 36.147911, 33.956970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166106, 0.482114, 0.860218,
		-0.442668, -0.815958, 0.371830,
		0.881167, -0.319028, 0.348952,
		34.770374, 36.052204, 34.061657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025505, 36.011414, 34.504253>,  <34.153557, 36.275520, 33.817390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025505, 36.011414, 34.504253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422089, 36.059288, 34.524944>,  <34.660038, 36.088013, 34.537357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422089, 36.059288, 34.524944>,  <34.025505, 36.011414, 34.504253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422089, 36.059288, 34.524944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107008, 0.520235, 0.847293,
		0.074501, -0.845595, 0.528601,
		0.991463, 0.119689, 0.051727,
		34.719528, 36.095196, 34.540462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183201, 35.855549, 35.233307>,  <34.025505, 36.011414, 34.504253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183201, 35.855549, 35.233307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461361, 36.105881, 35.092022>,  <34.628258, 36.256081, 35.007252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461361, 36.105881, 35.092022>,  <34.183201, 35.855549, 35.233307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461361, 36.105881, 35.092022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113822, 0.581230, 0.805739,
		0.709551, -0.520108, 0.475421,
		0.695400, 0.625827, -0.353213,
		34.669983, 36.293629, 34.986057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762005, 35.914433, 35.739285>,  <34.183201, 35.855549, 35.233307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762005, 35.914433, 35.739285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816113, 36.241192, 35.515003>,  <34.848576, 36.437248, 35.380436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816113, 36.241192, 35.515003>,  <34.762005, 35.914433, 35.739285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816113, 36.241192, 35.515003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132122, 0.545977, 0.827317,
		0.981961, -0.185988, -0.034078,
		0.135265, 0.816895, -0.560701,
		34.856693, 36.486259, 35.346794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303864, 36.306309, 36.074982>,  <34.762005, 35.914433, 35.739285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303864, 36.306309, 36.074982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117577, 36.560085, 35.828213>,  <35.005802, 36.712353, 35.680153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117577, 36.560085, 35.828213>,  <35.303864, 36.306309, 36.074982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117577, 36.560085, 35.828213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123782, 0.736986, 0.664477,
		0.876232, 0.233098, -0.421762,
		-0.465721, 0.634442, -0.616918,
		34.977859, 36.750420, 35.643139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657562, 36.931602, 36.082390>,  <35.303864, 36.306309, 36.074982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657562, 36.931602, 36.082390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289627, 37.035934, 35.965179>,  <35.068867, 37.098534, 35.894852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289627, 37.035934, 35.965179>,  <35.657562, 36.931602, 36.082390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289627, 37.035934, 35.965179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006425, 0.756874, 0.653530,
		0.392243, 0.599259, -0.697878,
		-0.919839, 0.260826, -0.293028,
		35.013676, 37.114182, 35.877270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703754, 37.634602, 36.037453>,  <35.657562, 36.931602, 36.082390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703754, 37.634602, 36.037453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310898, 37.561859, 36.056732>,  <35.075184, 37.518215, 36.068298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310898, 37.561859, 36.056732>,  <35.703754, 37.634602, 36.037453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310898, 37.561859, 36.056732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083220, 0.649713, 0.755611,
		-0.168725, 0.738107, -0.653245,
		-0.982144, -0.181853, 0.048198,
		35.016254, 37.507301, 36.071190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154037, 37.914062, 35.607563>,  <35.703754, 37.634602, 36.037453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154037, 37.914062, 35.607563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164093, 38.313911, 35.603275>,  <35.170128, 38.553822, 35.600704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164093, 38.313911, 35.603275>,  <35.154037, 37.914062, 35.607563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164093, 38.313911, 35.603275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461195, -0.021110, -0.887048,
		-0.886943, 0.017355, -0.461553,
		0.025138, 0.999627, -0.010719,
		35.171635, 38.613800, 35.600060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782139, 38.138100, 34.970242>,  <35.154037, 37.914062, 35.607563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782139, 38.138100, 34.970242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038326, 38.429756, 35.066692>,  <35.192039, 38.604752, 35.124565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038326, 38.429756, 35.066692>,  <34.782139, 38.138100, 34.970242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038326, 38.429756, 35.066692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247866, 0.100915, -0.963524,
		-0.726882, 0.676878, -0.116097,
		0.640472, 0.729145, 0.241129,
		35.230469, 38.648499, 35.139030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686768, 38.709724, 34.488560>,  <34.782139, 38.138100, 34.970242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686768, 38.709724, 34.488560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061146, 38.736446, 34.626858>,  <35.285774, 38.752480, 34.709835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061146, 38.736446, 34.626858>,  <34.686768, 38.709724, 34.488560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061146, 38.736446, 34.626858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331959, 0.160187, -0.929593,
		-0.117486, 0.984823, 0.127750,
		0.935949, 0.066806, 0.345741,
		35.341930, 38.756489, 34.730579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943382, 39.252041, 34.066811>,  <34.686768, 38.709724, 34.488560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943382, 39.252041, 34.066811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276859, 39.093327, 34.220444>,  <35.476944, 38.998096, 34.312622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276859, 39.093327, 34.220444>,  <34.943382, 39.252041, 34.066811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276859, 39.093327, 34.220444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421855, 0.008775, -0.906621,
		0.356363, 0.917870, 0.174702,
		0.833693, -0.396785, 0.384080,
		35.526966, 38.974293, 34.335667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591812, 39.773838, 33.952888>,  <34.943382, 39.252041, 34.066811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591812, 39.773838, 33.952888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705059, 39.390476, 33.967308>,  <35.773006, 39.160458, 33.975960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705059, 39.390476, 33.967308>,  <35.591812, 39.773838, 33.952888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705059, 39.390476, 33.967308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351776, 0.068803, -0.933552,
		0.892244, 0.276982, 0.356624,
		0.283114, -0.958409, 0.036046,
		35.789993, 39.102955, 33.978123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110138, 39.666771, 33.373371>,  <35.591812, 39.773838, 33.952888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110138, 39.666771, 33.373371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077835, 39.291771, 33.508770>,  <36.058453, 39.066772, 33.590008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077835, 39.291771, 33.508770>,  <36.110138, 39.666771, 33.373371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077835, 39.291771, 33.508770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507125, -0.331011, -0.795774,
		0.858081, 0.107394, 0.502160,
		-0.080759, -0.937496, 0.338496,
		36.053608, 39.010521, 33.610317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853024, 39.346134, 33.292896>,  <36.110138, 39.666771, 33.373371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853024, 39.346134, 33.292896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592842, 39.044540, 33.329578>,  <36.436733, 38.863583, 33.351589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592842, 39.044540, 33.329578>,  <36.853024, 39.346134, 33.292896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592842, 39.044540, 33.329578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427818, -0.463458, -0.776002,
		0.627599, -0.465520, 0.624028,
		-0.650455, -0.753988, 0.091708,
		36.397705, 38.818344, 33.357090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273380, 38.657455, 33.370502>,  <36.853024, 39.346134, 33.292896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273380, 38.657455, 33.370502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912334, 38.575653, 33.218994>,  <36.695709, 38.526573, 33.128090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912334, 38.575653, 33.218994>,  <37.273380, 38.657455, 33.370502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912334, 38.575653, 33.218994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430084, -0.391983, -0.813251,
		0.017842, -0.896954, 0.441763,
		-0.902612, -0.204505, -0.378772,
		36.641552, 38.514301, 33.105362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329762, 37.834763, 33.095337>,  <37.273380, 38.657455, 33.370502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329762, 37.834763, 33.095337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011665, 37.982651, 32.903130>,  <36.820808, 38.071384, 32.787804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011665, 37.982651, 32.903130>,  <37.329762, 37.834763, 33.095337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011665, 37.982651, 32.903130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211752, -0.573270, -0.791532,
		-0.568132, -0.731200, 0.377587,
		-0.795228, 0.369740, -0.480526,
		36.773094, 38.093567, 32.758972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084682, 37.317600, 32.653595>,  <37.329762, 37.834763, 33.095337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084682, 37.317600, 32.653595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868900, 37.604439, 32.477066>,  <36.739433, 37.776543, 32.371147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868900, 37.604439, 32.477066>,  <37.084682, 37.317600, 32.653595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868900, 37.604439, 32.477066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255395, -0.360086, -0.897280,
		-0.802351, -0.596750, 0.011106,
		-0.539451, 0.717097, -0.441322,
		36.707066, 37.819569, 32.344669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560863, 37.010487, 32.112518>,  <37.084682, 37.317600, 32.653595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560863, 37.010487, 32.112518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649406, 37.391949, 32.030991>,  <36.702534, 37.620827, 31.982075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649406, 37.391949, 32.030991>,  <36.560863, 37.010487, 32.112518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649406, 37.391949, 32.030991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107901, -0.231669, -0.966792,
		-0.969205, 0.192016, -0.154183,
		0.221359, 0.953656, -0.203816,
		36.715813, 37.678047, 31.969845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065319, 37.165550, 31.666256>,  <36.560863, 37.010487, 32.112518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065319, 37.165550, 31.666256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373341, 37.415291, 31.613794>,  <36.558155, 37.565136, 31.582317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373341, 37.415291, 31.613794>,  <36.065319, 37.165550, 31.666256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373341, 37.415291, 31.613794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093737, -0.314073, -0.944760,
		-0.631054, 0.715223, -0.300378,
		0.770055, 0.624351, -0.131155,
		36.604359, 37.602596, 31.574448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005280, 37.224194, 30.990530>,  <36.065319, 37.165550, 31.666256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005280, 37.224194, 30.990530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366077, 37.383881, 31.056286>,  <36.582558, 37.479694, 31.095739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366077, 37.383881, 31.056286>,  <36.005280, 37.224194, 30.990530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366077, 37.383881, 31.056286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292765, -0.285733, -0.912494,
		-0.317314, 0.871195, -0.374607,
		0.901998, 0.399219, 0.164388,
		36.636677, 37.503647, 31.105602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245331, 37.683086, 30.383787>,  <36.005280, 37.224194, 30.990530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245331, 37.683086, 30.383787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565510, 37.570953, 30.595711>,  <36.757618, 37.503674, 30.722864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565510, 37.570953, 30.595711>,  <36.245331, 37.683086, 30.383787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565510, 37.570953, 30.595711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454766, -0.291781, -0.841458,
		0.390479, 0.914481, -0.106068,
		0.800446, -0.280335, 0.529809,
		36.805645, 37.486855, 30.754654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819107, 37.884415, 29.991871>,  <36.245331, 37.683086, 30.383787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819107, 37.884415, 29.991871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996407, 37.614384, 30.227772>,  <37.102787, 37.452366, 30.369312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996407, 37.614384, 30.227772>,  <36.819107, 37.884415, 29.991871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996407, 37.614384, 30.227772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437710, -0.411148, -0.799604,
		0.782269, 0.612561, 0.113249,
		0.443244, -0.675076, 0.589752,
		37.129379, 37.411861, 30.404697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508064, 37.851273, 29.719309>,  <36.819107, 37.884415, 29.991871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508064, 37.851273, 29.719309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443424, 37.520264, 29.934378>,  <37.404640, 37.321659, 30.063419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443424, 37.520264, 29.934378>,  <37.508064, 37.851273, 29.719309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443424, 37.520264, 29.934378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611754, -0.511521, -0.603409,
		0.774366, 0.231413, 0.588902,
		-0.161599, -0.827523, 0.537673,
		37.394943, 37.272007, 30.095680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187916, 37.574436, 29.933683>,  <37.508064, 37.851273, 29.719309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187916, 37.574436, 29.933683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932701, 37.266464, 29.937849>,  <37.779572, 37.081680, 29.940350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932701, 37.266464, 29.937849>,  <38.187916, 37.574436, 29.933683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932701, 37.266464, 29.937849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680206, -0.569918, -0.460992,
		0.360870, -0.287046, 0.887343,
		-0.638038, -0.769934, 0.010416,
		37.741291, 37.035484, 29.940973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604740, 36.939507, 30.211708>,  <38.187916, 37.574436, 29.933683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604740, 36.939507, 30.211708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279034, 36.766987, 30.056299>,  <38.083611, 36.663475, 29.963055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279034, 36.766987, 30.056299>,  <38.604740, 36.939507, 30.211708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279034, 36.766987, 30.056299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552963, -0.779964, -0.293067,
		-0.176634, -0.453474, 0.873591,
		-0.814268, -0.431298, -0.388523,
		38.034752, 36.637596, 29.939743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500904, 36.137287, 30.388580>,  <38.604740, 36.939507, 30.211708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500904, 36.137287, 30.388580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311848, 36.191265, 30.040236>,  <38.198414, 36.223652, 29.831228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311848, 36.191265, 30.040236>,  <38.500904, 36.137287, 30.388580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311848, 36.191265, 30.040236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399892, -0.847766, -0.348396,
		-0.785300, -0.512917, 0.346727,
		-0.472641, 0.134942, -0.870862,
		38.170055, 36.231747, 29.778976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167080, 35.551556, 30.218578>,  <38.500904, 36.137287, 30.388580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167080, 35.551556, 30.218578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208447, 35.740883, 29.868660>,  <38.233269, 35.854481, 29.658709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208447, 35.740883, 29.868660>,  <38.167080, 35.551556, 30.218578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208447, 35.740883, 29.868660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357561, -0.838410, -0.411363,
		-0.928146, -0.270250, -0.255949,
		0.103420, 0.473322, -0.874798,
		38.239471, 35.882881, 29.606220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037083, 34.967445, 29.672548>,  <38.167080, 35.551556, 30.218578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037083, 34.967445, 29.672548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160770, 35.282970, 29.460075>,  <38.234982, 35.472286, 29.332592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160770, 35.282970, 29.460075>,  <38.037083, 34.967445, 29.672548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160770, 35.282970, 29.460075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491882, -0.610701, -0.620561,
		-0.813902, -0.069393, -0.576842,
		0.309216, 0.788815, -0.531184,
		38.253536, 35.519615, 29.300720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822746, 34.846634, 29.010706>,  <38.037083, 34.967445, 29.672548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822746, 34.846634, 29.010706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126709, 35.103378, 28.969620>,  <38.309086, 35.257423, 28.944967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126709, 35.103378, 28.969620>,  <37.822746, 34.846634, 29.010706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126709, 35.103378, 28.969620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465672, -0.647799, -0.602914,
		-0.453528, 0.410328, -0.791166,
		0.759909, 0.641862, -0.102717,
		38.354683, 35.295937, 28.938805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096218, 34.706959, 28.408474>,  <37.822746, 34.846634, 29.010706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096218, 34.706959, 28.408474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397041, 34.925045, 28.556608>,  <38.577534, 35.055897, 28.645489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397041, 34.925045, 28.556608>,  <38.096218, 34.706959, 28.408474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397041, 34.925045, 28.556608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658696, -0.602167, -0.451125,
		-0.022958, 0.583210, -0.811997,
		0.752059, 0.545216, 0.370334,
		38.622658, 35.088612, 28.667709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619896, 34.925438, 27.848925>,  <38.096218, 34.706959, 28.408474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619896, 34.925438, 27.848925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823643, 34.921505, 28.193121>,  <38.945892, 34.919144, 28.399639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823643, 34.921505, 28.193121>,  <38.619896, 34.925438, 27.848925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823643, 34.921505, 28.193121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608470, -0.702979, -0.368218,
		0.608529, 0.711143, -0.352092,
		0.509369, -0.009834, 0.860492,
		38.976452, 34.918556, 28.451269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218990, 34.851479, 27.491529>,  <38.619896, 34.925438, 27.848925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218990, 34.851479, 27.491529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287811, 34.765167, 27.875996>,  <39.329105, 34.713379, 28.106676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287811, 34.765167, 27.875996>,  <39.218990, 34.851479, 27.491529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287811, 34.765167, 27.875996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855614, -0.450804, -0.254362,
		0.488182, 0.866150, 0.107062,
		0.172052, -0.215779, 0.961165,
		39.339428, 34.700432, 28.164345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897491, 34.921627, 27.610468>,  <39.218990, 34.851479, 27.491529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897491, 34.921627, 27.610468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808678, 34.710972, 27.938700>,  <39.755390, 34.584579, 28.135639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808678, 34.710972, 27.938700>,  <39.897491, 34.921627, 27.610468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808678, 34.710972, 27.938700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886619, -0.459240, -0.054829,
		0.405718, 0.715367, 0.568896,
		-0.222037, -0.526639, 0.820580,
		39.742065, 34.552979, 28.184874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525414, 34.893921, 28.004103>,  <39.897491, 34.921627, 27.610468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525414, 34.893921, 28.004103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297081, 34.578999, 28.097311>,  <40.160080, 34.390045, 28.153236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297081, 34.578999, 28.097311>,  <40.525414, 34.893921, 28.004103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297081, 34.578999, 28.097311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807062, -0.590219, -0.017100,
		0.150997, 0.178302, 0.972321,
		-0.570833, -0.787306, 0.233022,
		40.125832, 34.342808, 28.167217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765400, 34.490089, 28.688017>,  <40.525414, 34.893921, 28.004103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765400, 34.490089, 28.688017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560829, 34.228012, 28.465609>,  <40.438087, 34.070766, 28.332163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560829, 34.228012, 28.465609>,  <40.765400, 34.490089, 28.688017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560829, 34.228012, 28.465609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797420, -0.602990, -0.022918,
		-0.320260, -0.455104, 0.830851,
		-0.511425, -0.655197, -0.556023,
		40.407402, 34.031452, 28.298801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992062, 33.932823, 28.947746>,  <40.765400, 34.490089, 28.688017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992062, 33.932823, 28.947746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823715, 33.770569, 28.623196>,  <40.722710, 33.673214, 28.428465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823715, 33.770569, 28.623196>,  <40.992062, 33.932823, 28.947746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823715, 33.770569, 28.623196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789690, -0.603986, -0.107659,
		-0.446389, -0.686046, 0.574524,
		-0.420864, -0.405638, -0.811376,
		40.697456, 33.648876, 28.379784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014812, 33.179302, 28.997322>,  <40.992062, 33.932823, 28.947746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014812, 33.179302, 28.997322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970936, 33.255596, 28.607124>,  <40.944611, 33.301373, 28.373007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970936, 33.255596, 28.607124>,  <41.014812, 33.179302, 28.997322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970936, 33.255596, 28.607124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566119, -0.794688, -0.219045,
		-0.816992, -0.576273, -0.020806,
		-0.109695, 0.190736, -0.975493,
		40.938026, 33.312817, 28.314476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014107, 32.497433, 28.769903>,  <41.014812, 33.179302, 28.997322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014107, 32.497433, 28.769903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081799, 32.716522, 28.442158>,  <41.122414, 32.847977, 28.245510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081799, 32.716522, 28.442158>,  <41.014107, 32.497433, 28.769903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081799, 32.716522, 28.442158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534423, -0.749519, -0.390656,
		-0.828102, -0.371777, -0.419558,
		0.169230, 0.547725, -0.819365,
		41.132568, 32.880840, 28.196348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824154, 32.082054, 28.242956>,  <41.014107, 32.497433, 28.769903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824154, 32.082054, 28.242956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077549, 32.357861, 28.102518>,  <41.229584, 32.523346, 28.018255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077549, 32.357861, 28.102518>,  <40.824154, 32.082054, 28.242956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077549, 32.357861, 28.102518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560113, -0.721696, -0.406729,
		-0.533829, 0.061004, -0.843389,
		0.633483, 0.689516, -0.351093,
		41.267593, 32.564716, 27.997190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980431, 31.929199, 27.579739>,  <40.824154, 32.082054, 28.242956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980431, 31.929199, 27.579739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277435, 32.182518, 27.667017>,  <41.455639, 32.334511, 27.719383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277435, 32.182518, 27.667017>,  <40.980431, 31.929199, 27.579739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277435, 32.182518, 27.667017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663689, -0.651566, -0.367394,
		-0.090502, 0.417609, -0.904109,
		0.742514, 0.633297, 0.218194,
		41.500191, 32.372505, 27.732475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459740, 31.812168, 26.957319>,  <40.980431, 31.929199, 27.579739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459740, 31.812168, 26.957319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661713, 31.997854, 27.248400>,  <41.782894, 32.109264, 27.423048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661713, 31.997854, 27.248400>,  <41.459740, 31.812168, 26.957319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661713, 31.997854, 27.248400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831300, -0.488473, -0.265207,
		0.232350, 0.738849, -0.632547,
		0.504930, 0.464215, 0.727702,
		41.813190, 32.137119, 27.466711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035782, 31.989990, 26.670528>,  <41.459740, 31.812168, 26.957319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035782, 31.989990, 26.670528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102829, 31.952553, 27.063087>,  <42.143055, 31.930090, 27.298624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102829, 31.952553, 27.063087>,  <42.035782, 31.989990, 26.670528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102829, 31.952553, 27.063087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727771, -0.659771, -0.187219,
		0.665022, 0.745615, -0.042472,
		0.167615, -0.093595, 0.981400,
		42.153114, 31.924475, 27.357508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796337, 32.129650, 26.767645>,  <42.035782, 31.989990, 26.670528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796337, 32.129650, 26.767645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639648, 31.917944, 27.068693>,  <42.545635, 31.790920, 27.249321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639648, 31.917944, 27.068693>,  <42.796337, 32.129650, 26.767645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639648, 31.917944, 27.068693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660644, -0.731127, -0.170301,
		0.640395, 0.430504, 0.636051,
		-0.391719, -0.529263, 0.752620,
		42.522133, 31.759165, 27.294479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376873, 31.871119, 27.063257>,  <42.796337, 32.129650, 26.767645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376873, 31.871119, 27.063257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117134, 31.644808, 27.266525>,  <42.961288, 31.509022, 27.388487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117134, 31.644808, 27.266525>,  <43.376873, 31.871119, 27.063257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117134, 31.644808, 27.266525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590250, -0.796299, -0.132335,
		0.479529, 0.214016, 0.851028,
		-0.649351, -0.565778, 0.508171,
		42.922329, 31.475075, 27.418976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788921, 31.531618, 27.481258>,  <43.376873, 31.871119, 27.063257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788921, 31.531618, 27.481258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458473, 31.306225, 27.480284>,  <43.260204, 31.170990, 27.479698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458473, 31.306225, 27.480284>,  <43.788921, 31.531618, 27.481258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458473, 31.306225, 27.480284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562920, -0.825480, 0.041266,
		-0.025265, 0.032719, 0.999145,
		-0.826125, -0.563482, -0.002438,
		43.210636, 31.137180, 27.479553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848255, 30.956337, 27.991787>,  <43.788921, 31.531618, 27.481258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848255, 30.956337, 27.991787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560078, 30.819489, 27.750486>,  <43.387169, 30.737379, 27.605705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560078, 30.819489, 27.750486>,  <43.848255, 30.956337, 27.991787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560078, 30.819489, 27.750486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437143, -0.899311, -0.012042,
		-0.538391, -0.272382, 0.797460,
		-0.720445, -0.342121, -0.603251,
		43.343945, 30.716852, 27.569511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668427, 30.789230, 27.923225>,  <43.848255, 30.956337, 27.991787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668427, 30.789230, 27.923225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003002, 31.005577, 27.958632>,  <45.203747, 31.135386, 27.979876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003002, 31.005577, 27.958632>,  <44.668427, 30.789230, 27.923225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003002, 31.005577, 27.958632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374589, 0.446288, 0.812718,
		0.400065, -0.712947, 0.575894,
		0.836440, 0.540863, 0.088518,
		45.253933, 31.167837, 27.985186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870987, 30.949419, 28.600718>,  <44.668427, 30.789230, 27.923225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870987, 30.949419, 28.600718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043125, 31.268208, 28.431181>,  <45.146408, 31.459480, 28.329460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.043125, 31.268208, 28.431181>,  <44.870987, 30.949419, 28.600718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043125, 31.268208, 28.431181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321380, 0.574051, 0.753114,
		0.843517, -0.187882, 0.503169,
		0.430341, 0.796973, -0.423840,
		45.172226, 31.507299, 28.304029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176510, 31.345577, 29.239367>,  <44.870987, 30.949419, 28.600718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176510, 31.345577, 29.239367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188282, 31.591722, 28.924290>,  <45.195347, 31.739410, 28.735243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188282, 31.591722, 28.924290>,  <45.176510, 31.345577, 29.239367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188282, 31.591722, 28.924290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291934, 0.758967, 0.582016,
		0.955985, 0.212826, 0.201983,
		0.029430, 0.615365, -0.787693,
		45.197113, 31.776333, 28.687983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508694, 31.990292, 29.427214>,  <45.176510, 31.345577, 29.239367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508694, 31.990292, 29.427214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303814, 32.105606, 29.103600>,  <45.180885, 32.174793, 28.909431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303814, 32.105606, 29.103600>,  <45.508694, 31.990292, 29.427214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303814, 32.105606, 29.103600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228441, 0.862323, 0.451900,
		0.827927, 0.416281, -0.375828,
		-0.512203, 0.288286, -0.809036,
		45.150154, 32.192093, 28.860889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705677, 32.699841, 29.309690>,  <45.508694, 31.990292, 29.427214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705677, 32.699841, 29.309690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358013, 32.632488, 29.123695>,  <45.149414, 32.592079, 29.012098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358013, 32.632488, 29.123695>,  <45.705677, 32.699841, 29.309690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358013, 32.632488, 29.123695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342837, 0.882791, 0.321160,
		0.356412, 0.438554, -0.825009,
		-0.869157, -0.168378, -0.464990,
		45.097267, 32.581974, 28.984198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475555, 33.418453, 29.233164>,  <45.705677, 32.699841, 29.309690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475555, 33.418453, 29.233164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161160, 33.185280, 29.150785>,  <44.972523, 33.045376, 29.101358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161160, 33.185280, 29.150785>,  <45.475555, 33.418453, 29.233164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161160, 33.185280, 29.150785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616224, 0.765585, 0.184792,
		0.049945, 0.272151, -0.960957,
		-0.785986, -0.582935, -0.205944,
		44.925365, 33.010399, 29.089003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005322, 33.829350, 28.769323>,  <45.475555, 33.418453, 29.233164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005322, 33.829350, 28.769323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799675, 33.541973, 28.956738>,  <44.676285, 33.369549, 29.069187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799675, 33.541973, 28.956738>,  <45.005322, 33.829350, 28.769323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799675, 33.541973, 28.956738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747438, 0.643221, 0.166139,
		-0.420734, -0.264787, -0.867681,
		-0.514120, -0.718439, 0.468537,
		44.645439, 33.326443, 29.097298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432495, 33.803646, 28.492390>,  <45.005322, 33.829350, 28.769323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432495, 33.803646, 28.492390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357353, 33.645275, 28.851934>,  <44.312267, 33.550251, 29.067661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357353, 33.645275, 28.851934>,  <44.432495, 33.803646, 28.492390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357353, 33.645275, 28.851934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649292, 0.736728, 0.188817,
		-0.736975, -0.548154, -0.395467,
		-0.187851, -0.395927, 0.898862,
		44.300999, 33.526497, 29.121593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764030, 33.724678, 28.520588>,  <44.432495, 33.803646, 28.492390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764030, 33.724678, 28.520588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850502, 33.709423, 28.910831>,  <43.902386, 33.700272, 29.144978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850502, 33.709423, 28.910831>,  <43.764030, 33.724678, 28.520588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850502, 33.709423, 28.910831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762394, 0.617637, 0.193080,
		-0.609936, -0.785538, 0.104444,
		0.216180, -0.038139, 0.975609,
		43.915356, 33.697983, 29.203514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178272, 33.475826, 28.791098>,  <43.764030, 33.724678, 28.520588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178272, 33.475826, 28.791098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363281, 33.659866, 29.094250>,  <43.474285, 33.770290, 29.276140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363281, 33.659866, 29.094250>,  <43.178272, 33.475826, 28.791098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363281, 33.659866, 29.094250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861281, 0.436021, 0.260923,
		-0.210400, -0.773429, 0.597947,
		0.462523, 0.460102, 0.757878,
		43.502037, 33.797897, 29.321613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764091, 33.446938, 29.360928>,  <43.178272, 33.475826, 28.791098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764091, 33.446938, 29.360928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006622, 33.747204, 29.465899>,  <43.152142, 33.927364, 29.528881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006622, 33.747204, 29.465899>,  <42.764091, 33.446938, 29.360928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006622, 33.747204, 29.465899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781968, 0.502844, 0.368341,
		0.144540, -0.428545, 0.891884,
		0.606329, 0.750665, 0.262427,
		43.188522, 33.972404, 29.544626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474895, 33.678112, 29.903511>,  <42.764091, 33.446938, 29.360928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474895, 33.678112, 29.903511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710197, 33.983654, 29.797314>,  <42.851379, 34.166981, 29.733595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710197, 33.983654, 29.797314>,  <42.474895, 33.678112, 29.903511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710197, 33.983654, 29.797314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719837, 0.644206, 0.258522,
		0.368505, 0.039036, 0.928806,
		0.588250, 0.763855, -0.265493,
		42.886673, 34.212811, 29.717665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425270, 34.119568, 30.403996>,  <42.474895, 33.678112, 29.903511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425270, 34.119568, 30.403996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565521, 34.346966, 30.106306>,  <42.649673, 34.483406, 29.927692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565521, 34.346966, 30.106306>,  <42.425270, 34.119568, 30.403996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565521, 34.346966, 30.106306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644414, 0.723089, 0.248742,
		0.679549, 0.392371, 0.619885,
		0.350633, 0.568495, -0.744224,
		42.670712, 34.517513, 29.883039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425251, 34.819313, 30.721148>,  <42.425270, 34.119568, 30.403996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425251, 34.819313, 30.721148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417015, 34.858006, 30.323109>,  <42.412071, 34.881222, 30.084286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417015, 34.858006, 30.323109>,  <42.425251, 34.819313, 30.721148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417015, 34.858006, 30.323109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590539, 0.801955, 0.090177,
		0.806747, 0.589501, 0.040610,
		-0.020592, 0.096732, -0.995098,
		42.410839, 34.887024, 30.024580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607349, 35.484226, 30.552969>,  <42.425251, 34.819313, 30.721148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607349, 35.484226, 30.552969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395649, 35.384464, 30.228575>,  <42.268631, 35.324608, 30.033939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395649, 35.384464, 30.228575>,  <42.607349, 35.484226, 30.552969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395649, 35.384464, 30.228575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642212, 0.742403, 0.190792,
		0.554492, 0.621799, -0.553086,
		-0.529247, -0.249406, -0.810984,
		42.236874, 35.309643, 29.985279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429111, 36.081455, 30.054525>,  <42.607349, 35.484226, 30.552969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429111, 36.081455, 30.054525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146454, 35.822216, 29.940954>,  <41.976860, 35.666672, 29.872812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146454, 35.822216, 29.940954>,  <42.429111, 36.081455, 30.054525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146454, 35.822216, 29.940954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686903, 0.724623, 0.055542,
		0.169742, 0.234278, -0.957236,
		-0.706648, -0.648101, -0.283926,
		41.934460, 35.627785, 29.855776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152603, 36.395535, 29.467539>,  <42.429111, 36.081455, 30.054525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152603, 36.395535, 29.467539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886597, 36.135006, 29.613708>,  <41.726994, 35.978687, 29.701410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886597, 36.135006, 29.613708>,  <42.152603, 36.395535, 29.467539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886597, 36.135006, 29.613708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717219, 0.693389, -0.069341,
		-0.208216, -0.308201, -0.928255,
		-0.665013, -0.651325, 0.365423,
		41.687092, 35.939610, 29.723335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499798, 36.603836, 29.167215>,  <42.152603, 36.395535, 29.467539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499798, 36.603836, 29.167215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362232, 36.341469, 29.435987>,  <41.279694, 36.184048, 29.597250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362232, 36.341469, 29.435987>,  <41.499798, 36.603836, 29.167215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362232, 36.341469, 29.435987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810407, 0.568786, 0.140438,
		-0.474300, -0.496237, -0.727179,
		-0.343918, -0.655920, 0.671929,
		41.259056, 36.144691, 29.637566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716324, 36.426308, 28.967680>,  <41.499798, 36.603836, 29.167215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716324, 36.426308, 28.967680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763866, 36.324696, 29.351625>,  <40.792393, 36.263729, 29.581993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763866, 36.324696, 29.351625>,  <40.716324, 36.426308, 28.967680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763866, 36.324696, 29.351625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849414, 0.474590, 0.230783,
		-0.514169, -0.842752, -0.159373,
		0.118856, -0.254036, 0.959864,
		40.799522, 36.248486, 29.639585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993000, 36.440098, 29.238699>,  <40.716324, 36.426308, 28.967680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993000, 36.440098, 29.238699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226822, 36.442371, 29.563234>,  <40.367115, 36.443733, 29.757956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226822, 36.442371, 29.563234>,  <39.993000, 36.440098, 29.238699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226822, 36.442371, 29.563234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710032, 0.487482, 0.508149,
		-0.392626, -0.873114, 0.288991,
		0.584550, 0.005681, 0.811338,
		40.402187, 36.444077, 29.806635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563480, 36.157635, 29.825531>,  <39.993000, 36.440098, 29.238699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563480, 36.157635, 29.825531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850094, 36.380825, 29.992975>,  <40.022064, 36.514740, 30.093441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850094, 36.380825, 29.992975>,  <39.563480, 36.157635, 29.825531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850094, 36.380825, 29.992975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680496, 0.427274, 0.595284,
		0.153292, -0.711407, 0.685858,
		0.716538, 0.557976, 0.418612,
		40.065056, 36.548218, 30.118559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407059, 36.280750, 30.541960>,  <39.563480, 36.157635, 29.825531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407059, 36.280750, 30.541960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679955, 36.564949, 30.472971>,  <39.843693, 36.735466, 30.431578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679955, 36.564949, 30.472971>,  <39.407059, 36.280750, 30.541960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679955, 36.564949, 30.472971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659653, 0.699902, 0.273853,
		0.315283, -0.073064, 0.946181,
		0.682242, 0.710492, -0.172470,
		39.884628, 36.778095, 30.421230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515404, 36.607147, 31.157253>,  <39.407059, 36.280750, 30.541960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515404, 36.607147, 31.157253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671032, 36.877136, 30.906481>,  <39.764408, 37.039127, 30.756018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671032, 36.877136, 30.906481>,  <39.515404, 36.607147, 31.157253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671032, 36.877136, 30.906481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305943, 0.736600, 0.603175,
		0.868921, -0.042872, 0.493090,
		0.389069, 0.674969, -0.626930,
		39.787754, 37.079628, 30.718401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962219, 37.032616, 31.542564>,  <39.515404, 36.607147, 31.157253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962219, 37.032616, 31.542564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864620, 37.234264, 31.211185>,  <39.806061, 37.355255, 31.012358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864620, 37.234264, 31.211185>,  <39.962219, 37.032616, 31.542564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864620, 37.234264, 31.211185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203825, 0.808527, 0.552033,
		0.948114, 0.303553, -0.094525,
		-0.243997, 0.504123, -0.828447,
		39.791420, 37.385502, 30.962650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122047, 37.673386, 31.831423>,  <39.962219, 37.032616, 31.542564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122047, 37.673386, 31.831423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873299, 37.716167, 31.521109>,  <39.724049, 37.741837, 31.334921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873299, 37.716167, 31.521109>,  <40.122047, 37.673386, 31.831423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873299, 37.716167, 31.521109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435546, 0.776048, 0.456124,
		0.650830, 0.621538, -0.436016,
		-0.621868, 0.106954, -0.775784,
		39.686737, 37.748253, 31.288374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060860, 38.345440, 31.740818>,  <40.122047, 37.673386, 31.831423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060860, 38.345440, 31.740818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734169, 38.203285, 31.558977>,  <39.538155, 38.117992, 31.449873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734169, 38.203285, 31.558977>,  <40.060860, 38.345440, 31.740818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734169, 38.203285, 31.558977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531248, 0.770648, 0.351961,
		0.225254, 0.528960, -0.818207,
		-0.816723, -0.355390, -0.454601,
		39.489151, 38.096668, 31.422596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814285, 38.938377, 31.302710>,  <40.060860, 38.345440, 31.740818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814285, 38.938377, 31.302710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509895, 38.698498, 31.401728>,  <39.327263, 38.554569, 31.461140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509895, 38.698498, 31.401728>,  <39.814285, 38.938377, 31.302710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509895, 38.698498, 31.401728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388185, 0.726587, 0.566908,
		-0.519840, 0.335307, -0.785707,
		-0.760973, -0.599701, 0.247547,
		39.281605, 38.518589, 31.475992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305359, 39.239716, 31.048731>,  <39.814285, 38.938377, 31.302710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305359, 39.239716, 31.048731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163353, 39.017487, 31.349478>,  <39.078148, 38.884151, 31.529926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163353, 39.017487, 31.349478>,  <39.305359, 39.239716, 31.048731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163353, 39.017487, 31.349478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368371, 0.822322, 0.433693,
		-0.859224, -0.122997, -0.496594,
		-0.355017, -0.555570, 0.751868,
		39.056847, 38.850815, 31.575039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815125, 39.662270, 31.330021>,  <39.305359, 39.239716, 31.048731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815125, 39.662270, 31.330021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813095, 39.403248, 31.634821>,  <38.811878, 39.247833, 31.817701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813095, 39.403248, 31.634821>,  <38.815125, 39.662270, 31.330021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813095, 39.403248, 31.634821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203702, 0.746703, 0.633198,
		-0.979020, -0.152010, -0.135696,
		-0.005072, -0.647555, 0.762002,
		38.811573, 39.208981, 31.863422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221600, 39.853916, 31.835707>,  <38.815125, 39.662270, 31.330021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221600, 39.853916, 31.835707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496349, 39.644691, 32.037540>,  <38.661201, 39.519157, 32.158642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496349, 39.644691, 32.037540>,  <38.221600, 39.853916, 31.835707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496349, 39.644691, 32.037540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034765, 0.669840, 0.741691,
		-0.725940, -0.526994, 0.441914,
		0.686879, -0.523061, 0.504585,
		38.702412, 39.487774, 32.188915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930500, 39.841908, 32.562614>,  <38.221600, 39.853916, 31.835707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930500, 39.841908, 32.562614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321003, 39.760273, 32.591667>,  <38.555305, 39.711292, 32.609100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321003, 39.760273, 32.591667>,  <37.930500, 39.841908, 32.562614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321003, 39.760273, 32.591667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079459, 0.649303, 0.756368,
		-0.201525, -0.732636, 0.650102,
		0.976255, -0.204083, 0.072636,
		38.613880, 39.699047, 32.613457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150291, 39.797634, 33.310276>,  <37.930500, 39.841908, 32.562614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150291, 39.797634, 33.310276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486210, 39.892620, 33.114990>,  <38.687763, 39.949612, 32.997818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486210, 39.892620, 33.114990>,  <38.150291, 39.797634, 33.310276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486210, 39.892620, 33.114990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197222, 0.704392, 0.681862,
		0.505806, -0.668913, 0.544716,
		0.839800, 0.237460, -0.488210,
		38.738152, 39.963860, 32.968529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479164, 39.970646, 33.804504>,  <38.150291, 39.797634, 33.310276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479164, 39.970646, 33.804504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731750, 40.112267, 33.528564>,  <38.883305, 40.197239, 33.362999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731750, 40.112267, 33.528564>,  <38.479164, 39.970646, 33.804504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731750, 40.112267, 33.528564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398335, 0.615179, 0.680356,
		0.665265, -0.704414, 0.247432,
		0.631468, 0.354056, -0.689850,
		38.921192, 40.218483, 33.321609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295143, 39.964314, 34.036434>,  <38.479164, 39.970646, 33.804504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295143, 39.964314, 34.036434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281551, 40.230652, 33.738308>,  <39.273396, 40.390453, 33.559433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281551, 40.230652, 33.738308>,  <39.295143, 39.964314, 34.036434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281551, 40.230652, 33.738308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368035, 0.701680, 0.610078,
		0.929191, -0.253573, -0.268897,
		-0.033981, 0.665842, -0.745318,
		39.271358, 40.430405, 33.514713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005074, 40.193481, 33.894947>,  <39.295143, 39.964314, 34.036434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005074, 40.193481, 33.894947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723377, 40.464054, 33.808697>,  <39.554359, 40.626396, 33.756947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723377, 40.464054, 33.808697>,  <40.005074, 40.193481, 33.894947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723377, 40.464054, 33.808697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361150, 0.602799, 0.711480,
		0.611246, 0.423176, -0.668805,
		-0.704236, 0.676429, -0.215629,
		39.512108, 40.666985, 33.744007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329334, 40.733135, 33.783936>,  <40.005074, 40.193481, 33.894947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329334, 40.733135, 33.783936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961308, 40.878502, 33.842453>,  <39.740490, 40.965721, 33.877563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961308, 40.878502, 33.842453>,  <40.329334, 40.733135, 33.783936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961308, 40.878502, 33.842453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365802, 0.663298, 0.652858,
		0.140224, 0.654189, -0.743219,
		-0.920068, 0.363418, 0.146293,
		39.685287, 40.987526, 33.886341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370502, 41.467960, 33.717575>,  <40.329334, 40.733135, 33.783936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370502, 41.467960, 33.717575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025097, 41.429302, 33.915569>,  <39.817856, 41.406109, 34.034367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025097, 41.429302, 33.915569>,  <40.370502, 41.467960, 33.717575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025097, 41.429302, 33.915569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312219, 0.668337, 0.675163,
		-0.396068, 0.737553, -0.546941,
		-0.863510, -0.096645, 0.494985,
		39.766045, 41.400311, 34.064064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199860, 42.202030, 33.976372>,  <40.370502, 41.467960, 33.717575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199860, 42.202030, 33.976372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959152, 41.971092, 34.197117>,  <39.814728, 41.832531, 34.329563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959152, 41.971092, 34.197117>,  <40.199860, 42.202030, 33.976372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959152, 41.971092, 34.197117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249339, 0.520635, 0.816559,
		-0.758754, 0.628978, -0.169346,
		-0.601766, -0.577343, 0.551863,
		39.778622, 41.797890, 34.362675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607044, 42.517616, 34.236877>,  <40.199860, 42.202030, 33.976372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607044, 42.517616, 34.236877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761135, 42.237179, 34.476898>,  <39.853592, 42.068916, 34.620911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761135, 42.237179, 34.476898>,  <39.607044, 42.517616, 34.236877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761135, 42.237179, 34.476898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241076, 0.704112, 0.667914,
		-0.890775, -0.112642, 0.440263,
		0.385230, -0.701098, 0.600050,
		39.876705, 42.026848, 34.656914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865936, 42.935375, 34.739803>,  <39.607044, 42.517616, 34.236877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865936, 42.935375, 34.739803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913555, 42.610790, 34.968666>,  <39.942127, 42.416039, 35.105984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913555, 42.610790, 34.968666>,  <39.865936, 42.935375, 34.739803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913555, 42.610790, 34.968666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398048, 0.566925, 0.721217,
		-0.909607, 0.141888, 0.390490,
		0.119046, -0.811458, 0.572157,
		39.949268, 42.367352, 35.140312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506676, 43.050182, 35.293327>,  <39.865936, 42.935375, 34.739803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506676, 43.050182, 35.293327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797897, 42.790684, 35.381931>,  <39.972630, 42.634983, 35.435093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797897, 42.790684, 35.381931>,  <39.506676, 43.050182, 35.293327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797897, 42.790684, 35.381931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250520, 0.552567, 0.794927,
		-0.638103, -0.523259, 0.564822,
		0.728055, -0.648745, 0.221508,
		40.016315, 42.596062, 35.448383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395359, 42.745609, 35.928020>,  <39.506676, 43.050182, 35.293327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395359, 42.745609, 35.928020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788288, 42.715633, 35.859402>,  <40.024044, 42.697647, 35.818230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788288, 42.715633, 35.859402>,  <39.395359, 42.745609, 35.928020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788288, 42.715633, 35.859402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185290, 0.519866, 0.833911,
		0.026688, -0.850954, 0.524562,
		0.982321, -0.074940, -0.171547,
		40.082985, 42.693150, 35.807938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624683, 42.781803, 36.601608>,  <39.395359, 42.745609, 35.928020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624683, 42.781803, 36.601608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944355, 42.839886, 36.368294>,  <40.136158, 42.874737, 36.228306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944355, 42.839886, 36.368294>,  <39.624683, 42.781803, 36.601608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944355, 42.839886, 36.368294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522354, 0.312363, 0.793458,
		0.297404, -0.938801, 0.173792,
		0.799186, 0.145197, -0.583284,
		40.184109, 42.883450, 36.193310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213120, 42.531075, 36.950714>,  <39.624683, 42.781803, 36.601608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213120, 42.531075, 36.950714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346207, 42.823761, 36.712757>,  <40.426060, 42.999371, 36.569984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346207, 42.823761, 36.712757>,  <40.213120, 42.531075, 36.950714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346207, 42.823761, 36.712757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650354, 0.278771, 0.706630,
		0.682889, -0.621998, -0.383121,
		0.332719, 0.731714, -0.594888,
		40.446022, 43.043274, 36.534290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898579, 42.656662, 37.185135>,  <40.213120, 42.531075, 36.950714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898579, 42.656662, 37.185135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785931, 42.962288, 36.952965>,  <40.718342, 43.145664, 36.813663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785931, 42.962288, 36.952965>,  <40.898579, 42.656662, 37.185135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785931, 42.962288, 36.952965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340355, 0.645119, 0.684091,
		0.897135, -0.004899, -0.441730,
		-0.281617, 0.764067, -0.580426,
		40.701447, 43.191509, 36.778835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389057, 43.186718, 37.315472>,  <40.898579, 42.656662, 37.185135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389057, 43.186718, 37.315472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087654, 43.382465, 37.139858>,  <40.906815, 43.499912, 37.034492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087654, 43.382465, 37.139858>,  <41.389057, 43.186718, 37.315472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087654, 43.382465, 37.139858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133583, 0.767819, 0.626586,
		0.643727, 0.413489, -0.643927,
		-0.753506, 0.489368, -0.439031,
		40.861603, 43.529274, 37.008148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716068, 43.865002, 37.172646>,  <41.389057, 43.186718, 37.315472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716068, 43.865002, 37.172646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320343, 43.923069, 37.167309>,  <41.082909, 43.957909, 37.164108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320343, 43.923069, 37.167309>,  <41.716068, 43.865002, 37.172646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320343, 43.923069, 37.167309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122732, 0.878776, 0.461182,
		0.078673, 0.454618, -0.887205,
		-0.989317, 0.145171, -0.013339,
		41.023548, 43.966621, 37.163307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616360, 44.579281, 36.896320>,  <41.716068, 43.865002, 37.172646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616360, 44.579281, 36.896320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308788, 44.468578, 37.126854>,  <41.124245, 44.402157, 37.265175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308788, 44.468578, 37.126854>,  <41.616360, 44.579281, 36.896320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308788, 44.468578, 37.126854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042267, 0.877475, 0.477757,
		-0.637939, 0.391719, -0.663015,
		-0.768926, -0.276756, 0.576332,
		41.078110, 44.385551, 37.299755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311504, 45.211548, 37.005672>,  <41.616360, 44.579281, 36.896320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311504, 45.211548, 37.005672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118828, 44.991879, 37.278843>,  <41.003223, 44.860077, 37.442745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118828, 44.991879, 37.278843>,  <41.311504, 45.211548, 37.005672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118828, 44.991879, 37.278843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156259, 0.712979, 0.683552,
		-0.862300, 0.435972, -0.257620,
		-0.481687, -0.549171, 0.682926,
		40.974323, 44.827126, 37.483723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011986, 45.650063, 37.399002>,  <41.311504, 45.211548, 37.005672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011986, 45.650063, 37.399002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974560, 45.331005, 37.637337>,  <40.952103, 45.139572, 37.780338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974560, 45.331005, 37.637337>,  <41.011986, 45.650063, 37.399002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974560, 45.331005, 37.637337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272296, 0.555139, 0.785923,
		-0.957654, 0.235778, 0.165252,
		-0.093565, -0.797640, 0.595833,
		40.946491, 45.091713, 37.816086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699368, 45.840103, 38.080318>,  <41.011986, 45.650063, 37.399002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699368, 45.840103, 38.080318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911793, 45.507137, 38.143646>,  <41.039246, 45.307358, 38.181644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911793, 45.507137, 38.143646>,  <40.699368, 45.840103, 38.080318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911793, 45.507137, 38.143646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390857, 0.406433, 0.825859,
		-0.751801, -0.376701, 0.541194,
		0.531061, -0.832411, 0.158321,
		41.071110, 45.257416, 38.191143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612167, 45.713196, 38.756290>,  <40.699368, 45.840103, 38.080318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612167, 45.713196, 38.756290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950684, 45.533924, 38.641106>,  <41.153793, 45.426361, 38.571995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950684, 45.533924, 38.641106>,  <40.612167, 45.713196, 38.756290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950684, 45.533924, 38.641106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437618, 0.276645, 0.855545,
		-0.303773, -0.850061, 0.430254,
		0.846293, -0.448178, -0.287965,
		41.204571, 45.399471, 38.554714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797421, 45.232246, 39.401844>,  <40.612167, 45.713196, 38.756290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797421, 45.232246, 39.401844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122623, 45.345352, 39.198254>,  <41.317745, 45.413216, 39.076099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122623, 45.345352, 39.198254>,  <40.797421, 45.232246, 39.401844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122623, 45.345352, 39.198254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385281, 0.394134, 0.834396,
		0.436546, -0.874471, 0.211490,
		0.813011, 0.282769, -0.508975,
		41.366528, 45.430183, 39.045563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360569, 45.025642, 39.791340>,  <40.797421, 45.232246, 39.401844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360569, 45.025642, 39.791340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531952, 45.303596, 39.560318>,  <41.634781, 45.470367, 39.421707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531952, 45.303596, 39.560318>,  <41.360569, 45.025642, 39.791340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531952, 45.303596, 39.560318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585381, 0.273442, 0.763255,
		0.688300, -0.665106, -0.289614,
		0.428453, 0.694883, -0.577551,
		41.660488, 45.512062, 39.387054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139874, 44.999378, 39.831673>,  <41.360569, 45.025642, 39.791340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139874, 44.999378, 39.831673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013424, 45.363396, 39.724426>,  <41.937553, 45.581806, 39.660080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013424, 45.363396, 39.724426>,  <42.139874, 44.999378, 39.831673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013424, 45.363396, 39.724426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643743, 0.413354, 0.643998,
		0.696892, 0.030989, -0.716506,
		-0.316128, 0.910043, -0.268114,
		41.918587, 45.636410, 39.643993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748466, 45.438992, 39.848488>,  <42.139874, 44.999378, 39.831673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748466, 45.438992, 39.848488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433582, 45.685268, 39.862480>,  <42.244652, 45.833035, 39.870876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433582, 45.685268, 39.862480>,  <42.748466, 45.438992, 39.848488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433582, 45.685268, 39.862480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485641, 0.583977, 0.650480,
		0.380069, 0.529051, -0.758718,
		-0.787210, 0.615692, 0.034977,
		42.197418, 45.869976, 39.872974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058708, 46.038147, 39.801903>,  <42.748466, 45.438992, 39.848488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058708, 46.038147, 39.801903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691647, 46.117046, 39.939892>,  <42.471409, 46.164387, 40.022686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691647, 46.117046, 39.939892>,  <43.058708, 46.038147, 39.801903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691647, 46.117046, 39.939892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394865, 0.550220, 0.735758,
		-0.044684, 0.811388, -0.582797,
		-0.917652, 0.197250, 0.344975,
		42.416351, 46.176220, 40.043385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860958, 46.720692, 39.738167>,  <43.058708, 46.038147, 39.801903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860958, 46.720692, 39.738167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645187, 46.583858, 40.045933>,  <42.515724, 46.501759, 40.230591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645187, 46.583858, 40.045933>,  <42.860958, 46.720692, 39.738167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645187, 46.583858, 40.045933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604673, 0.478541, 0.636686,
		-0.585995, 0.808690, -0.051291,
		-0.539426, -0.342081, 0.769415,
		42.483360, 46.481236, 40.276756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705803, 47.303146, 40.153118>,  <42.860958, 46.720692, 39.738167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705803, 47.303146, 40.153118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642632, 46.997986, 40.403889>,  <42.604729, 46.814888, 40.554352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642632, 46.997986, 40.403889>,  <42.705803, 47.303146, 40.153118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642632, 46.997986, 40.403889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406753, 0.528269, 0.745308,
		-0.899784, 0.372707, 0.226887,
		-0.157924, -0.762903, 0.626928,
		42.595253, 46.769115, 40.591969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345375, 47.590359, 40.690266>,  <42.705803, 47.303146, 40.153118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345375, 47.590359, 40.690266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494888, 47.252628, 40.843834>,  <42.584599, 47.049988, 40.935974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494888, 47.252628, 40.843834>,  <42.345375, 47.590359, 40.690266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494888, 47.252628, 40.843834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340666, 0.509965, 0.789862,
		-0.862689, -0.164450, 0.478251,
		0.373785, -0.844329, 0.383918,
		42.607025, 46.999329, 40.959011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175339, 47.369244, 41.372398>,  <42.345375, 47.590359, 40.690266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175339, 47.369244, 41.372398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550018, 47.239601, 41.319408>,  <42.774826, 47.161816, 41.287613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550018, 47.239601, 41.319408>,  <42.175339, 47.369244, 41.372398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550018, 47.239601, 41.319408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274166, 0.443593, 0.853263,
		-0.217786, -0.835570, 0.504373,
		0.936697, -0.324110, -0.132477,
		42.831028, 47.142368, 41.279667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429417, 46.985455, 41.904690>,  <42.175339, 47.369244, 41.372398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429417, 46.985455, 41.904690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697014, 47.219971, 41.721947>,  <42.857571, 47.360680, 41.612301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697014, 47.219971, 41.721947>,  <42.429417, 46.985455, 41.904690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697014, 47.219971, 41.721947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051368, 0.576719, 0.815326,
		0.741494, -0.568913, 0.355703,
		0.668991, 0.586288, -0.456857,
		42.897713, 47.395855, 41.584888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159805, 47.103909, 42.225693>,  <42.429417, 46.985455, 41.904690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159805, 47.103909, 42.225693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955864, 47.399231, 42.049076>,  <42.833500, 47.576424, 41.943108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955864, 47.399231, 42.049076>,  <43.159805, 47.103909, 42.225693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955864, 47.399231, 42.049076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175336, 0.413303, 0.893554,
		0.842203, 0.533000, -0.081273,
		-0.509854, 0.738304, -0.441539,
		42.802906, 47.620724, 41.916615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054012, 46.510254, 42.659214>,  <43.159805, 47.103909, 42.225693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054012, 46.510254, 42.659214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212532, 46.175072, 42.809296>,  <43.307644, 45.973961, 42.899345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212532, 46.175072, 42.809296>,  <43.054012, 46.510254, 42.659214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212532, 46.175072, 42.809296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503844, -0.540120, -0.674101,
		0.767520, 0.078106, -0.636249,
		0.396302, -0.837956, 0.375199,
		43.331421, 45.923683, 42.921856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159042, 46.198662, 42.040886>,  <43.054012, 46.510254, 42.659214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159042, 46.198662, 42.040886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154205, 45.910004, 42.317749>,  <43.151302, 45.736809, 42.483868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154205, 45.910004, 42.317749>,  <43.159042, 46.198662, 42.040886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154205, 45.910004, 42.317749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351688, -0.644916, -0.678527,
		0.936039, -0.251628, -0.245996,
		-0.012089, -0.721642, 0.692161,
		43.150578, 45.693512, 42.525398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971245, 45.856071, 41.382816>,  <43.159042, 46.198662, 42.040886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971245, 45.856071, 41.382816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806595, 46.207897, 41.287369>,  <42.707806, 46.418991, 41.230103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806595, 46.207897, 41.287369>,  <42.971245, 45.856071, 41.382816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806595, 46.207897, 41.287369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596036, -0.457881, -0.659611,
		-0.689426, -0.129287, 0.712725,
		-0.411622, 0.879562, -0.238616,
		42.683109, 46.471767, 41.215786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232925, 45.766850, 41.333851>,  <42.971245, 45.856071, 41.382816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232925, 45.766850, 41.333851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335007, 46.080990, 41.108253>,  <42.396255, 46.269474, 40.972897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335007, 46.080990, 41.108253>,  <42.232925, 45.766850, 41.333851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335007, 46.080990, 41.108253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460152, -0.414363, -0.785216,
		-0.850371, 0.459914, 0.255635,
		0.255206, 0.785355, -0.563992,
		42.411568, 46.316597, 40.939056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700798, 46.008953, 41.158882>,  <42.232925, 45.766850, 41.333851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700798, 46.008953, 41.158882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959267, 46.148216, 40.887222>,  <42.114349, 46.231773, 40.724224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959267, 46.148216, 40.887222>,  <41.700798, 46.008953, 41.158882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959267, 46.148216, 40.887222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505856, -0.470947, -0.722716,
		-0.571466, 0.810551, -0.128192,
		0.646170, 0.348161, -0.679152,
		42.153118, 46.252666, 40.683475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275417, 46.370514, 40.734016>,  <41.700798, 46.008953, 41.158882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275417, 46.370514, 40.734016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607594, 46.316936, 40.517708>,  <41.806900, 46.284790, 40.387920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607594, 46.316936, 40.517708>,  <41.275417, 46.370514, 40.734016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607594, 46.316936, 40.517708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556562, -0.242643, -0.794583,
		-0.024786, 0.960825, -0.276047,
		0.830436, -0.133942, -0.540773,
		41.856724, 46.276752, 40.355476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312252, 46.851078, 40.114693>,  <41.275417, 46.370514, 40.734016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312252, 46.851078, 40.114693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557446, 46.547363, 40.027302>,  <41.704563, 46.365135, 39.974869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557446, 46.547363, 40.027302>,  <41.312252, 46.851078, 40.114693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557446, 46.547363, 40.027302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573992, -0.237944, -0.783528,
		0.542939, 0.605693, -0.581682,
		0.612985, -0.759288, -0.218474,
		41.741341, 46.319576, 39.961761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262299, 46.853172, 39.444889>,  <41.312252, 46.851078, 40.114693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262299, 46.853172, 39.444889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443817, 46.500473, 39.496418>,  <41.552727, 46.288853, 39.527336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443817, 46.500473, 39.496418>,  <41.262299, 46.853172, 39.444889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443817, 46.500473, 39.496418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414750, -0.336947, -0.845250,
		0.788702, 0.330141, -0.518609,
		0.453796, -0.881744, 0.128825,
		41.579956, 46.235950, 39.535065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893585, 46.680351, 39.087044>,  <41.262299, 46.853172, 39.444889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893585, 46.680351, 39.087044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021614, 46.333725, 39.240204>,  <42.098431, 46.125748, 39.332100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021614, 46.333725, 39.240204>,  <41.893585, 46.680351, 39.087044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021614, 46.333725, 39.240204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495606, -0.497600, -0.711877,
		0.807421, 0.038086, -0.588745,
		0.320072, -0.866570, 0.382897,
		42.117634, 46.073753, 39.355072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249428, 46.321011, 38.586044>,  <41.893585, 46.680351, 39.087044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249428, 46.321011, 38.586044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077610, 46.070789, 38.846561>,  <41.974518, 45.920658, 39.002872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077610, 46.070789, 38.846561>,  <42.249428, 46.321011, 38.586044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077610, 46.070789, 38.846561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408113, -0.508891, -0.757941,
		0.805565, -0.591369, -0.036703,
		-0.429545, -0.625549, 0.651290,
		41.948746, 45.883125, 39.041950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381767, 45.649097, 38.262486>,  <42.249428, 46.321011, 38.586044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381767, 45.649097, 38.262486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069328, 45.583378, 38.503448>,  <41.881863, 45.543945, 38.648026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069328, 45.583378, 38.503448>,  <42.381767, 45.649097, 38.262486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069328, 45.583378, 38.503448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388883, -0.626805, -0.675193,
		0.488523, -0.761657, 0.425703,
		-0.781099, -0.164299, 0.602404,
		41.834999, 45.534088, 38.684170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264004, 44.861019, 38.275276>,  <42.381767, 45.649097, 38.262486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264004, 44.861019, 38.275276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934753, 45.039936, 38.415215>,  <41.737202, 45.147285, 38.499176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934753, 45.039936, 38.415215>,  <42.264004, 44.861019, 38.275276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934753, 45.039936, 38.415215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557752, -0.521116, -0.646026,
		-0.106653, -0.726888, 0.678424,
		-0.823126, 0.447293, 0.349845,
		41.687817, 45.174126, 38.520168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814098, 44.268089, 38.420849>,  <42.264004, 44.861019, 38.275276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814098, 44.268089, 38.420849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575603, 44.586349, 38.378048>,  <41.432507, 44.777306, 38.352367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575603, 44.586349, 38.378048>,  <41.814098, 44.268089, 38.420849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575603, 44.586349, 38.378048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639488, -0.551278, -0.535862,
		-0.485343, -0.251075, 0.837498,
		-0.596236, 0.795647, -0.106999,
		41.396732, 44.825043, 38.345947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041485, 44.017887, 38.633663>,  <41.814098, 44.268089, 38.420849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041485, 44.017887, 38.633663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065819, 44.323093, 38.376263>,  <41.080421, 44.506218, 38.221821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065819, 44.323093, 38.376263>,  <41.041485, 44.017887, 38.633663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065819, 44.323093, 38.376263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726770, -0.408048, -0.552542,
		-0.684181, 0.501296, 0.529715,
		0.060838, 0.763020, -0.643506,
		41.084068, 44.551998, 38.183212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370033, 44.325294, 38.501461>,  <41.041485, 44.017887, 38.633663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370033, 44.325294, 38.501461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595539, 44.386284, 38.176765>,  <40.730843, 44.422878, 37.981949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595539, 44.386284, 38.176765>,  <40.370033, 44.325294, 38.501461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595539, 44.386284, 38.176765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651237, -0.522422, -0.550424,
		-0.507994, 0.838945, -0.195228,
		0.563767, 0.152472, -0.811739,
		40.764668, 44.432026, 37.933243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020535, 44.105026, 37.943066>,  <40.370033, 44.325294, 38.501461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020535, 44.105026, 37.943066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366016, 44.171028, 37.752579>,  <40.573307, 44.210629, 37.638287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366016, 44.171028, 37.752579>,  <40.020535, 44.105026, 37.943066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366016, 44.171028, 37.752579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282274, -0.624422, -0.728298,
		-0.417533, 0.763460, -0.492742,
		0.863706, 0.165001, -0.476222,
		40.625130, 44.220528, 37.609711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742496, 44.245358, 37.225815>,  <40.020535, 44.105026, 37.943066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742496, 44.245358, 37.225815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134125, 44.166245, 37.206593>,  <40.369102, 44.118774, 37.195061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134125, 44.166245, 37.206593>,  <39.742496, 44.245358, 37.225815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134125, 44.166245, 37.206593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140176, -0.484034, -0.863749,
		0.147577, 0.852404, -0.501626,
		0.979067, -0.197785, -0.048054,
		40.427845, 44.106911, 37.192177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863846, 44.331043, 36.544621>,  <39.742496, 44.245358, 37.225815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863846, 44.331043, 36.544621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157150, 44.099178, 36.686794>,  <40.333134, 43.960060, 36.772099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157150, 44.099178, 36.686794>,  <39.863846, 44.331043, 36.544621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157150, 44.099178, 36.686794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033787, -0.553145, -0.832400,
		0.679111, 0.598354, -0.425182,
		0.733257, -0.579658, 0.355430,
		40.377129, 43.925282, 36.793423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314007, 44.176277, 36.030338>,  <39.863846, 44.331043, 36.544621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314007, 44.176277, 36.030338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397385, 43.858238, 36.258156>,  <40.447411, 43.667416, 36.394848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397385, 43.858238, 36.258156>,  <40.314007, 44.176277, 36.030338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397385, 43.858238, 36.258156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082580, -0.594563, -0.799797,
		0.974543, 0.119677, -0.189590,
		0.208440, -0.795093, 0.569544,
		40.459915, 43.619709, 36.429020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871273, 43.884418, 35.750198>,  <40.314007, 44.176277, 36.030338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871273, 43.884418, 35.750198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715244, 43.597366, 35.980972>,  <40.621628, 43.425137, 36.119438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715244, 43.597366, 35.980972>,  <40.871273, 43.884418, 35.750198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715244, 43.597366, 35.980972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044902, -0.640647, -0.766522,
		0.919689, -0.273092, 0.282121,
		-0.390071, -0.717630, 0.576934,
		40.598225, 43.382076, 36.154053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211067, 43.319923, 35.610924>,  <40.871273, 43.884418, 35.750198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211067, 43.319923, 35.610924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877697, 43.183819, 35.785107>,  <40.677673, 43.102158, 35.889618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877697, 43.183819, 35.785107>,  <41.211067, 43.319923, 35.610924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877697, 43.183819, 35.785107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060289, -0.727287, -0.683681,
		0.549335, -0.596050, 0.585624,
		-0.833424, -0.340263, 0.435459,
		40.627670, 43.081741, 35.915745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367146, 42.541344, 35.559376>,  <41.211067, 43.319923, 35.610924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367146, 42.541344, 35.559376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977108, 42.601490, 35.624596>,  <40.743084, 42.637577, 35.663727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977108, 42.601490, 35.624596>,  <41.367146, 42.541344, 35.559376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977108, 42.601490, 35.624596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221596, -0.691926, -0.687120,
		0.009499, -0.706137, 0.708012,
		-0.975093, 0.150366, 0.163049,
		40.684582, 42.646599, 35.673512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056179, 41.854820, 35.781460>,  <41.367146, 42.541344, 35.559376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056179, 41.854820, 35.781460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789833, 42.095638, 35.605202>,  <40.630024, 42.240128, 35.499447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789833, 42.095638, 35.605202>,  <41.056179, 41.854820, 35.781460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789833, 42.095638, 35.605202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246819, -0.735125, -0.631404,
		-0.704058, -0.311674, 0.638092,
		-0.665870, 0.602039, -0.440644,
		40.590073, 42.276249, 35.473007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521656, 42.151264, 36.288303>,  <41.056179, 41.854820, 35.781460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521656, 42.151264, 36.288303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729965, 41.982086, 36.584927>,  <41.854950, 41.880581, 36.762901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729965, 41.982086, 36.584927>,  <41.521656, 42.151264, 36.288303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729965, 41.982086, 36.584927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578481, -0.813645, -0.057806,
		0.627814, -0.398873, -0.668393,
		0.520777, -0.422944, 0.741559,
		41.886200, 41.855202, 36.807396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521553, 41.438492, 36.184959>,  <41.521656, 42.151264, 36.288303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521553, 41.438492, 36.184959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604958, 41.477779, 36.574188>,  <41.655003, 41.501350, 36.807728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604958, 41.477779, 36.574188>,  <41.521553, 41.438492, 36.184959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604958, 41.477779, 36.574188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527178, -0.826744, 0.196414,
		0.823775, -0.553939, -0.120610,
		0.208515, 0.098218, 0.973075,
		41.667511, 41.507244, 36.866112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855946, 40.839745, 36.607548>,  <41.521553, 41.438492, 36.184959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855946, 40.839745, 36.607548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630253, 41.033627, 36.874893>,  <41.494839, 41.149956, 37.035301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630253, 41.033627, 36.874893>,  <41.855946, 40.839745, 36.607548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630253, 41.033627, 36.874893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401601, -0.868429, 0.290771,
		0.721362, -0.104353, 0.684652,
		-0.564228, 0.484708, 0.668359,
		41.460983, 41.179039, 37.075401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968361, 40.818317, 37.390675>,  <41.855946, 40.839745, 36.607548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968361, 40.818317, 37.390675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231876, 40.726345, 37.104141>,  <42.389984, 40.671162, 36.932220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231876, 40.726345, 37.104141>,  <41.968361, 40.818317, 37.390675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231876, 40.726345, 37.104141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564068, -0.479089, 0.672534,
		-0.497824, -0.847115, -0.185920,
		0.658786, -0.229932, -0.716333,
		42.429512, 40.657368, 36.889240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062775, 40.080597, 37.210011>,  <41.968361, 40.818317, 37.390675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062775, 40.080597, 37.210011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405743, 40.254803, 37.100349>,  <42.611523, 40.359325, 37.034554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405743, 40.254803, 37.100349>,  <42.062775, 40.080597, 37.210011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405743, 40.254803, 37.100349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480698, -0.487560, 0.728845,
		0.183758, -0.756710, -0.627394,
		0.857416, 0.435518, -0.274156,
		42.662968, 40.385456, 37.018101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709980, 39.704048, 37.275932>,  <42.062775, 40.080597, 37.210011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709980, 39.704048, 37.275932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039585, 39.564396, 37.454418>,  <43.237350, 39.480606, 37.561508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039585, 39.564396, 37.454418>,  <42.709980, 39.704048, 37.275932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039585, 39.564396, 37.454418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536214, -0.226258, 0.813192,
		-0.182957, -0.909346, -0.373652,
		0.824015, -0.349137, 0.446209,
		43.286789, 39.459656, 37.588284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586739, 39.067272, 37.424580>,  <42.709980, 39.704048, 37.275932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586739, 39.067272, 37.424580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782207, 39.304520, 37.680523>,  <42.899487, 39.446869, 37.834087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782207, 39.304520, 37.680523>,  <42.586739, 39.067272, 37.424580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782207, 39.304520, 37.680523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730941, -0.122116, 0.671426,
		0.476371, -0.795802, 0.373859,
		0.488668, 0.593117, 0.639857,
		42.928806, 39.482456, 37.872478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837902, 38.637539, 37.975052>,  <42.586739, 39.067272, 37.424580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837902, 38.637539, 37.975052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757999, 39.007328, 38.104942>,  <42.710060, 39.229202, 38.182877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757999, 39.007328, 38.104942>,  <42.837902, 38.637539, 37.975052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757999, 39.007328, 38.104942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722889, -0.362761, 0.588079,
		0.661461, -0.117270, 0.740754,
		-0.199752, 0.924474, 0.324726,
		42.698074, 39.284672, 38.202358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431370, 38.592949, 38.232136>,  <42.837902, 38.637539, 37.975052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431370, 38.592949, 38.232136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659752, 38.912052, 38.154583>,  <43.796780, 39.103516, 38.108051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659752, 38.912052, 38.154583>,  <43.431370, 38.592949, 38.232136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659752, 38.912052, 38.154583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744486, -0.602653, -0.287316,
		-0.346055, 0.019699, -0.938008,
		0.570953, 0.797760, -0.193886,
		43.831039, 39.151379, 38.096416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730953, 38.266689, 37.726429>,  <43.431370, 38.592949, 38.232136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730953, 38.266689, 37.726429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919682, 38.612171, 37.797314>,  <44.032917, 38.819458, 37.839844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919682, 38.612171, 37.797314>,  <43.730953, 38.266689, 37.726429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919682, 38.612171, 37.797314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881574, -0.465462, -0.078569,
		0.014625, 0.193296, -0.981031,
		0.471820, 0.863702, 0.177212,
		44.061226, 38.871281, 37.850479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471207, 38.061611, 37.795113>,  <43.730953, 38.266689, 37.726429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471207, 38.061611, 37.795113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159527, 37.842831, 37.672672>,  <43.972519, 37.711563, 37.599209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159527, 37.842831, 37.672672>,  <44.471207, 38.061611, 37.795113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159527, 37.842831, 37.672672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467200, -0.181276, -0.865369,
		0.417823, -0.817304, 0.396784,
		-0.779197, -0.546948, -0.306104,
		43.925766, 37.678745, 37.580841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633602, 37.332233, 37.873447>,  <44.471207, 38.061611, 37.795113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633602, 37.332233, 37.873447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980778, 37.230972, 37.702522>,  <45.189083, 37.170216, 37.599968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980778, 37.230972, 37.702522>,  <44.633602, 37.332233, 37.873447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980778, 37.230972, 37.702522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366549, 0.254058, -0.895040,
		0.335146, 0.933470, 0.127713,
		0.867940, -0.253156, -0.427309,
		45.241161, 37.155025, 37.574329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749649, 37.712936, 37.201462>,  <44.633602, 37.332233, 37.873447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749649, 37.712936, 37.201462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005722, 37.405891, 37.189201>,  <45.159367, 37.221664, 37.181847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005722, 37.405891, 37.189201>,  <44.749649, 37.712936, 37.201462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005722, 37.405891, 37.189201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089821, 0.114414, -0.989364,
		0.762954, 0.630620, 0.142193,
		0.640182, -0.767612, -0.030650,
		45.197777, 37.175610, 37.180008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362408, 37.752220, 36.619041>,  <44.749649, 37.712936, 37.201462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362408, 37.752220, 36.619041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314816, 37.438129, 36.375977>,  <45.286263, 37.249676, 36.230137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314816, 37.438129, 36.375977>,  <45.362408, 37.752220, 36.619041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314816, 37.438129, 36.375977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948139, 0.091829, -0.304303,
		0.294749, -0.612356, 0.733582,
		-0.118978, -0.785231, -0.607665,
		45.279121, 37.202560, 36.193676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781734, 37.140823, 36.752834>,  <45.362408, 37.752220, 36.619041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781734, 37.140823, 36.752834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710720, 37.199917, 36.363647>,  <45.668114, 37.235374, 36.130135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710720, 37.199917, 36.363647>,  <45.781734, 37.140823, 36.752834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710720, 37.199917, 36.363647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984078, 0.035288, -0.174201,
		0.008598, -0.988397, -0.151648,
		-0.177532, 0.147736, -0.972963,
		45.657459, 37.244236, 36.071758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330387, 36.790752, 36.371624>,  <45.781734, 37.140823, 36.752834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.330387, 36.790752, 36.371624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195763, 37.097092, 36.152462>,  <46.114986, 37.280895, 36.020966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195763, 37.097092, 36.152462>,  <46.330387, 36.790752, 36.371624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195763, 37.097092, 36.152462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932032, 0.187932, -0.309835,
		-0.134319, -0.614942, -0.777048,
		-0.336562, 0.765851, -0.547903,
		46.094795, 37.326847, 35.988091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.855385, 36.487030, 35.789837>,  <46.330387, 36.790752, 36.371624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.855385, 36.487030, 35.789837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700104, 36.154316, 35.631130>,  <46.606934, 35.954685, 35.535908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700104, 36.154316, 35.631130>,  <46.855385, 36.487030, 35.789837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700104, 36.154316, 35.631130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921076, -0.364330, -0.137416,
		-0.030253, -0.418799, 0.907575,
		-0.388207, -0.831788, -0.396767,
		46.583641, 35.904781, 35.512100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.128952, 35.938049, 36.170860>,  <46.855385, 36.487030, 35.789837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.128952, 35.938049, 36.170860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016090, 35.806320, 35.810432>,  <46.948372, 35.727283, 35.594173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016090, 35.806320, 35.810432>,  <47.128952, 35.938049, 36.170860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016090, 35.806320, 35.810432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914278, -0.376866, -0.148553,
		-0.290662, -0.865747, 0.407428,
		-0.282155, -0.329324, -0.901074,
		46.931442, 35.707523, 35.540112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072128, 35.206348, 36.083046>,  <47.128952, 35.938049, 36.170860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.072128, 35.206348, 36.083046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171806, 35.362938, 35.728725>,  <47.231613, 35.456894, 35.516132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171806, 35.362938, 35.728725>,  <47.072128, 35.206348, 36.083046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.171806, 35.362938, 35.728725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841367, -0.540460, -0.002157,
		-0.479586, -0.744748, -0.464056,
		0.249198, 0.391476, -0.885803,
		47.246567, 35.480381, 35.462986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256004, 34.691753, 35.496304>,  <47.072128, 35.206348, 36.083046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256004, 34.691753, 35.496304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441677, 35.037746, 35.420055>,  <47.553082, 35.245342, 35.374306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441677, 35.037746, 35.420055>,  <47.256004, 34.691753, 35.496304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441677, 35.037746, 35.420055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861628, -0.490835, -0.129142,
		-0.205271, -0.104303, -0.973131,
		0.464177, 0.864987, -0.190624,
		47.580929, 35.297241, 35.362869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.742027, 34.805984, 34.750088>,  <47.256004, 34.691753, 35.496304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.742027, 34.805984, 34.750088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.862343, 34.953045, 35.102081>,  <47.934532, 35.041279, 35.313278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.862343, 34.953045, 35.102081>,  <47.742027, 34.805984, 34.750088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.862343, 34.953045, 35.102081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921530, -0.349645, -0.168908,
		0.245582, 0.861733, -0.443966,
		0.300784, 0.367648, 0.879979,
		47.952579, 35.063339, 35.366074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.650063, 31.428940, 34.951817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.434410, 31.111916, 34.837845>,  <41.305019, 30.921701, 34.769463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.434410, 31.111916, 34.837845>,  <41.650063, 31.428940, 34.951817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434410, 31.111916, 34.837845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773399, 0.331945, 0.540062,
		-0.333453, 0.511525, -0.791929,
		-0.539132, -0.792562, -0.284925,
		41.272671, 30.874147, 34.752369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112492, 31.616264, 34.573597>,  <41.650063, 31.428940, 34.951817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112492, 31.616264, 34.573597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007236, 31.269308, 34.742542>,  <40.944084, 31.061134, 34.843910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007236, 31.269308, 34.742542>,  <41.112492, 31.616264, 34.573597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007236, 31.269308, 34.742542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710060, 0.470500, 0.523875,
		-0.653126, -0.162049, -0.739707,
		-0.263138, -0.867393, 0.422360,
		40.928295, 31.009090, 34.869251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431995, 31.660000, 34.506367>,  <41.112492, 31.616264, 34.573597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431995, 31.660000, 34.506367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.494274, 31.394268, 34.798782>,  <40.531643, 31.234829, 34.974232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.494274, 31.394268, 34.798782>,  <40.431995, 31.660000, 34.506367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494274, 31.394268, 34.798782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749828, 0.402294, 0.525279,
		-0.643053, -0.629941, -0.435498,
		0.155696, -0.664330, 0.731043,
		40.540981, 31.194969, 35.018097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832600, 31.413534, 34.661579>,  <40.431995, 31.660000, 34.506367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832600, 31.413534, 34.661579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038910, 31.315977, 34.990089>,  <40.162697, 31.257442, 35.187195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038910, 31.315977, 34.990089>,  <39.832600, 31.413534, 34.661579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038910, 31.315977, 34.990089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644485, 0.521139, 0.559511,
		-0.564459, -0.817881, 0.111605,
		0.515776, -0.243894, 0.821275,
		40.193642, 31.242809, 35.236473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417328, 31.027378, 35.173138>,  <39.832600, 31.413534, 34.661579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417328, 31.027378, 35.173138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.709946, 31.194727, 35.388470>,  <39.885517, 31.295137, 35.517670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.709946, 31.194727, 35.388470>,  <39.417328, 31.027378, 35.173138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709946, 31.194727, 35.388470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675896, 0.548632, 0.492106,
		-0.089462, -0.723855, 0.684127,
		0.731547, 0.418374, 0.538332,
		39.929409, 31.320240, 35.549969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204998, 30.987717, 35.904495>,  <39.417328, 31.027378, 35.173138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204998, 30.987717, 35.904495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485397, 31.272516, 35.920788>,  <39.653637, 31.443396, 35.930565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485397, 31.272516, 35.920788>,  <39.204998, 30.987717, 35.904495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485397, 31.272516, 35.920788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579959, 0.535899, 0.613563,
		0.415028, -0.453729, 0.788595,
		0.700999, 0.711998, 0.040731,
		39.695698, 31.486116, 35.933006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112782, 31.313105, 36.606514>,  <39.204998, 30.987717, 35.904495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112782, 31.313105, 36.606514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324600, 31.567144, 36.381577>,  <39.451691, 31.719568, 36.246613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324600, 31.567144, 36.381577>,  <39.112782, 31.313105, 36.606514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324600, 31.567144, 36.381577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590055, 0.752046, 0.293705,
		0.609442, 0.176286, 0.772984,
		0.529543, 0.635099, -0.562347,
		39.483463, 31.757673, 36.212872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355392, 31.797710, 37.157757>,  <39.112782, 31.313105, 36.606514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355392, 31.797710, 37.157757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378662, 31.970236, 36.797626>,  <39.392624, 32.073750, 36.581547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378662, 31.970236, 36.797626>,  <39.355392, 31.797710, 37.157757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378662, 31.970236, 36.797626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266149, 0.875912, 0.402421,
		0.962175, 0.216208, 0.165752,
		0.058177, 0.431314, -0.900324,
		39.396114, 32.099628, 36.527531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643700, 32.388943, 37.282623>,  <39.355392, 31.797710, 37.157757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643700, 32.388943, 37.282623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.495258, 32.482540, 36.923172>,  <39.406193, 32.538700, 36.707500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.495258, 32.482540, 36.923172>,  <39.643700, 32.388943, 37.282623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495258, 32.482540, 36.923172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137333, 0.943259, 0.302329,
		0.918381, 0.235606, -0.317908,
		-0.371100, 0.233994, -0.898627,
		39.383926, 32.552738, 36.653584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855316, 33.076214, 37.155178>,  <39.643700, 32.388943, 37.282623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855316, 33.076214, 37.155178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.564060, 33.033131, 36.884411>,  <39.389309, 33.007282, 36.721951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.564060, 33.033131, 36.884411>,  <39.855316, 33.076214, 37.155178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564060, 33.033131, 36.884411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298509, 0.938833, 0.171713,
		0.617018, 0.327097, -0.715749,
		-0.728136, -0.107707, -0.676918,
		39.345619, 33.000820, 36.681335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960712, 33.569851, 36.488979>,  <39.855316, 33.076214, 37.155178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960712, 33.569851, 36.488979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577805, 33.459991, 36.525200>,  <39.348061, 33.394073, 36.546932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577805, 33.459991, 36.525200>,  <39.960712, 33.569851, 36.488979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577805, 33.459991, 36.525200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257593, 0.952113, 0.164699,
		-0.131448, 0.134337, -0.982179,
		-0.957271, -0.274652, 0.090550,
		39.290623, 33.377598, 36.552364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653309, 33.968620, 36.025036>,  <39.960712, 33.569851, 36.488979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653309, 33.968620, 36.025036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.397255, 33.880375, 36.319397>,  <39.243622, 33.827427, 36.496014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.397255, 33.880375, 36.319397>,  <39.653309, 33.968620, 36.025036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397255, 33.880375, 36.319397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239758, 0.967409, 0.081460,
		-0.729894, -0.124295, -0.672165,
		-0.640134, -0.220614, 0.735906,
		39.205215, 33.814190, 36.540169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979702, 34.225903, 35.844608>,  <39.653309, 33.968620, 36.025036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979702, 34.225903, 35.844608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.973686, 34.175339, 36.241356>,  <38.970078, 34.145000, 36.479404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.973686, 34.175339, 36.241356>,  <38.979702, 34.225903, 35.844608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973686, 34.175339, 36.241356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373239, 0.920985, 0.111714,
		-0.927613, -0.368523, -0.061026,
		-0.015035, -0.126405, 0.991865,
		38.969177, 34.137417, 36.538914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204689, 34.367085, 35.983452>,  <38.979702, 34.225903, 35.844608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204689, 34.367085, 35.983452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440399, 34.402840, 36.304642>,  <38.581825, 34.424294, 36.497356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440399, 34.402840, 36.304642>,  <38.204689, 34.367085, 35.983452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440399, 34.402840, 36.304642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522323, 0.800386, 0.294213,
		-0.616386, -0.592783, 0.518341,
		0.589277, 0.089392, 0.802971,
		38.617184, 34.429657, 36.545532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708542, 34.547112, 36.363781>,  <38.204689, 34.367085, 35.983452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708542, 34.547112, 36.363781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040291, 34.678925, 36.544247>,  <38.239342, 34.758011, 36.652527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040291, 34.678925, 36.544247>,  <37.708542, 34.547112, 36.363781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040291, 34.678925, 36.544247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485472, 0.824730, 0.290063,
		-0.276503, -0.459598, 0.843988,
		0.829375, 0.329529, 0.451163,
		38.289104, 34.777782, 36.679596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569859, 34.760235, 36.954243>,  <37.708542, 34.547112, 36.363781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569859, 34.760235, 36.954243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892342, 34.991245, 36.902882>,  <38.085831, 35.129852, 36.872066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892342, 34.991245, 36.902882>,  <37.569859, 34.760235, 36.954243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892342, 34.991245, 36.902882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465474, 0.753144, 0.464873,
		0.365180, -0.315020, 0.876017,
		0.806212, 0.577526, -0.128399,
		38.134205, 35.164501, 36.864361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672119, 35.060349, 37.589668>,  <37.569859, 34.760235, 36.954243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672119, 35.060349, 37.589668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873558, 35.286568, 37.328426>,  <37.994419, 35.422298, 37.171680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873558, 35.286568, 37.328426>,  <37.672119, 35.060349, 37.589668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873558, 35.286568, 37.328426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330176, 0.824564, 0.459433,
		0.798357, -0.015731, 0.601979,
		0.503598, 0.565551, -0.653102,
		38.024635, 35.456234, 37.132496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712765, 35.651150, 37.964493>,  <37.672119, 35.060349, 37.589668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712765, 35.651150, 37.964493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833443, 35.779850, 37.605503>,  <37.905849, 35.857071, 37.390110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833443, 35.779850, 37.605503>,  <37.712765, 35.651150, 37.964493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833443, 35.779850, 37.605503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273271, 0.931021, 0.241917,
		0.913402, 0.172266, 0.368812,
		0.301697, 0.321753, -0.897471,
		37.923950, 35.876377, 37.336262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147148, 36.241604, 38.134544>,  <37.712765, 35.651150, 37.964493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147148, 36.241604, 38.134544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.026928, 36.299072, 37.757393>,  <37.954796, 36.333553, 37.531101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.026928, 36.299072, 37.757393>,  <38.147148, 36.241604, 38.134544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026928, 36.299072, 37.757393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209329, 0.954549, 0.212173,
		0.930511, 0.261142, -0.256816,
		-0.300551, 0.143670, -0.942883,
		37.936764, 36.342175, 37.474529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186207, 36.925404, 38.061577>,  <38.147148, 36.241604, 38.134544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186207, 36.925404, 38.061577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.949211, 36.872131, 37.743778>,  <37.807014, 36.840168, 37.553101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.949211, 36.872131, 37.743778>,  <38.186207, 36.925404, 38.061577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949211, 36.872131, 37.743778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458452, 0.866699, 0.196608,
		0.662404, 0.480726, -0.574565,
		-0.592489, -0.133177, -0.794494,
		37.771465, 36.832180, 37.505428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228951, 37.462116, 37.713802>,  <38.186207, 36.925404, 38.061577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228951, 37.462116, 37.713802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882561, 37.302876, 37.592739>,  <37.674728, 37.207329, 37.520103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882561, 37.302876, 37.592739>,  <38.228951, 37.462116, 37.713802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882561, 37.302876, 37.592739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431930, 0.900439, 0.051444,
		0.252041, 0.175274, -0.951711,
		-0.865975, -0.398106, -0.302653,
		37.622768, 37.183445, 37.501942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810516, 38.068871, 37.780994>,  <38.228951, 37.462116, 37.713802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810516, 38.068871, 37.780994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571053, 37.780048, 37.642296>,  <37.427372, 37.606754, 37.559074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571053, 37.780048, 37.642296>,  <37.810516, 38.068871, 37.780994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571053, 37.780048, 37.642296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751044, 0.656491, -0.070370,
		0.278450, 0.218296, -0.935314,
		-0.598664, -0.722057, -0.346750,
		37.391453, 37.563431, 37.538269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187359, 38.644485, 37.305347>,  <37.810516, 38.068871, 37.780994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187359, 38.644485, 37.305347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470150, 38.927261, 37.297050>,  <38.639824, 39.096928, 37.292072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470150, 38.927261, 37.297050>,  <38.187359, 38.644485, 37.305347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470150, 38.927261, 37.297050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678517, -0.686244, -0.262078,
		-0.199505, 0.171209, -0.964824,
		0.706974, 0.706935, -0.020741,
		38.682243, 39.139343, 37.290829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599598, 38.472126, 36.708664>,  <38.187359, 38.644485, 37.305347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599598, 38.472126, 36.708664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861366, 38.684685, 36.923828>,  <39.018429, 38.812222, 37.052929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861366, 38.684685, 36.923828>,  <38.599598, 38.472126, 36.708664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861366, 38.684685, 36.923828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695715, -0.701815, -0.153087,
		0.296166, 0.474417, -0.828984,
		0.654421, 0.531398, 0.537913,
		39.057693, 38.844105, 37.085201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214260, 38.507320, 36.332710>,  <38.599598, 38.472126, 36.708664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214260, 38.507320, 36.332710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324902, 38.597847, 36.706291>,  <39.391285, 38.652161, 36.930439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324902, 38.597847, 36.706291>,  <39.214260, 38.507320, 36.332710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324902, 38.597847, 36.706291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763569, -0.641854, -0.070610,
		0.583483, 0.732670, -0.350347,
		0.276605, 0.226314, 0.933955,
		39.407883, 38.665741, 36.986477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894867, 38.688416, 36.172997>,  <39.214260, 38.507320, 36.332710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894867, 38.688416, 36.172997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847706, 38.600071, 36.560257>,  <39.819408, 38.547066, 36.792614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847706, 38.600071, 36.560257>,  <39.894867, 38.688416, 36.172997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847706, 38.600071, 36.560257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784110, -0.618937, -0.045702,
		0.609319, 0.753749, 0.246155,
		-0.117907, -0.220859, 0.968152,
		39.812332, 38.533813, 36.850704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613819, 38.554550, 36.455246>,  <39.894867, 38.688416, 36.172997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613819, 38.554550, 36.455246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343487, 38.396606, 36.704193>,  <40.181290, 38.301842, 36.853561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343487, 38.396606, 36.704193>,  <40.613819, 38.554550, 36.455246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343487, 38.396606, 36.704193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599788, -0.785390, 0.153024,
		0.428381, 0.476708, 0.767619,
		-0.675828, -0.394856, 0.622370,
		40.140739, 38.278149, 36.890903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950073, 38.480827, 37.162701>,  <40.613819, 38.554550, 36.455246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950073, 38.480827, 37.162701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.645443, 38.224495, 37.124062>,  <40.462666, 38.070694, 37.100880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.645443, 38.224495, 37.124062>,  <40.950073, 38.480827, 37.162701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645443, 38.224495, 37.124062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627728, -0.766483, 0.135873,
		-0.161109, 0.042843, 0.986006,
		-0.761578, -0.640834, -0.096594,
		40.416969, 38.032246, 37.095085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187004, 37.908466, 37.564548>,  <40.950073, 38.480827, 37.162701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187004, 37.908466, 37.564548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.887550, 37.766285, 37.340694>,  <40.707878, 37.680977, 37.206383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.887550, 37.766285, 37.340694>,  <41.187004, 37.908466, 37.564548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887550, 37.766285, 37.340694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444245, -0.895543, -0.025470,
		-0.492126, -0.267684, 0.828346,
		-0.748638, -0.355454, -0.559638,
		40.662960, 37.659649, 37.172802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994282, 37.284409, 37.886475>,  <41.187004, 37.908466, 37.564548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994282, 37.284409, 37.886475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.896187, 37.269066, 37.498993>,  <40.837330, 37.259861, 37.266502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.896187, 37.269066, 37.498993>,  <40.994282, 37.284409, 37.886475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896187, 37.269066, 37.498993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515798, -0.851215, -0.096877,
		-0.820860, -0.523413, 0.228532,
		-0.245236, -0.038354, -0.968704,
		40.822617, 37.257561, 37.208382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768887, 36.589684, 37.797390>,  <40.994282, 37.284409, 37.886475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768887, 36.589684, 37.797390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.884472, 36.731514, 37.441689>,  <40.953823, 36.816612, 37.228268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.884472, 36.731514, 37.441689>,  <40.768887, 36.589684, 37.797390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884472, 36.731514, 37.441689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504654, -0.845761, -0.173244,
		-0.813526, -0.398706, -0.423330,
		0.288963, 0.354574, -0.889257,
		40.971161, 36.837887, 37.174911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640263, 36.047359, 37.283485>,  <40.768887, 36.589684, 37.797390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640263, 36.047359, 37.283485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.907574, 36.272701, 37.089153>,  <41.067963, 36.407906, 36.972553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.907574, 36.272701, 37.089153>,  <40.640263, 36.047359, 37.283485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907574, 36.272701, 37.089153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366690, -0.817688, -0.443763,
		-0.647254, 0.118409, -0.753022,
		0.668282, 0.563353, -0.485832,
		41.108059, 36.441708, 36.943405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597603, 35.794125, 36.589943>,  <40.640263, 36.047359, 37.283485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597603, 35.794125, 36.589943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.940926, 35.999241, 36.582493>,  <41.146919, 36.122311, 36.578022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.940926, 35.999241, 36.582493>,  <40.597603, 35.794125, 36.589943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940926, 35.999241, 36.582493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388932, -0.673812, -0.628259,
		-0.334714, 0.531999, -0.777781,
		0.858311, 0.512791, -0.018622,
		41.198418, 36.153080, 36.576904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691303, 35.697121, 35.877522>,  <40.597603, 35.794125, 36.589943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691303, 35.697121, 35.877522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.027622, 35.809055, 36.062885>,  <41.229416, 35.876217, 36.174103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.027622, 35.809055, 36.062885>,  <40.691303, 35.697121, 35.877522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027622, 35.809055, 36.062885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512389, -0.687602, -0.514452,
		0.174676, 0.669996, -0.721522,
		0.840800, 0.279838, 0.463407,
		41.279861, 35.893005, 36.201908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268490, 35.679070, 35.421047>,  <40.691303, 35.697121, 35.877522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268490, 35.679070, 35.421047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.451740, 35.660748, 35.776131>,  <41.561691, 35.649754, 35.989182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.451740, 35.660748, 35.776131>,  <41.268490, 35.679070, 35.421047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451740, 35.660748, 35.776131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605368, -0.715197, -0.349318,
		0.650885, 0.697421, -0.299922,
		0.458125, -0.045803, 0.887707,
		41.589176, 35.647007, 36.042442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955379, 35.817715, 35.291676>,  <41.268490, 35.679070, 35.421047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955379, 35.817715, 35.291676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.951324, 35.592319, 35.622101>,  <41.948891, 35.457085, 35.820354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.951324, 35.592319, 35.622101>,  <41.955379, 35.817715, 35.291676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951324, 35.592319, 35.622101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656496, -0.626883, -0.419560,
		0.754261, 0.538053, 0.376283,
		-0.010140, -0.563486, 0.826063,
		41.948284, 35.423275, 35.869919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670982, 35.655640, 35.389023>,  <41.955379, 35.817715, 35.291676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670982, 35.655640, 35.389023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.463909, 35.396816, 35.612923>,  <42.339664, 35.241524, 35.747265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.463909, 35.396816, 35.612923>,  <42.670982, 35.655640, 35.389023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463909, 35.396816, 35.612923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561037, -0.750675, -0.348890,
		0.645945, 0.133430, 0.751632,
		-0.517679, -0.647058, 0.559754,
		42.308605, 35.202698, 35.780849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179398, 35.203297, 35.563053>,  <42.670982, 35.655640, 35.389023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179398, 35.203297, 35.563053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.833321, 35.016430, 35.635937>,  <42.625675, 34.904308, 35.679668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.833321, 35.016430, 35.635937>,  <43.179398, 35.203297, 35.563053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833321, 35.016430, 35.635937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343113, -0.816530, -0.464276,
		0.365676, -0.339168, 0.866745,
		-0.865191, -0.467166, 0.182212,
		42.573765, 34.876282, 35.690601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298134, 34.524342, 35.856808>,  <43.179398, 35.203297, 35.563053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298134, 34.524342, 35.856808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.933231, 34.478203, 35.699593>,  <42.714291, 34.450520, 35.605263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.933231, 34.478203, 35.699593>,  <43.298134, 34.524342, 35.856808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933231, 34.478203, 35.699593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298283, -0.844690, -0.444439,
		-0.280730, -0.522680, 0.804982,
		-0.912260, -0.115345, -0.393036,
		42.659554, 34.443600, 35.581680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145283, 33.826065, 35.921837>,  <43.298134, 34.524342, 35.856808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145283, 33.826065, 35.921837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.902733, 33.955284, 35.631195>,  <42.757202, 34.032814, 35.456810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.902733, 33.955284, 35.631195>,  <43.145283, 33.826065, 35.921837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902733, 33.955284, 35.631195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191274, -0.827675, -0.527607,
		-0.771829, -0.458909, 0.440094,
		-0.606378, 0.323044, -0.726600,
		42.720818, 34.052197, 35.413216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.713821, 33.267303, 35.734653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.663582, 33.519466, 35.428238>,  <42.633438, 33.670765, 35.244389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.663582, 33.519466, 35.428238>,  <42.713821, 33.267303, 35.734653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663582, 33.519466, 35.428238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039355, -0.768379, -0.638783,
		-0.991300, -0.110381, 0.071702,
		-0.125604, 0.630404, -0.766038,
		42.625900, 33.708588, 35.198425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087887, 33.038368, 35.303284>,  <42.713821, 33.267303, 35.734653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087887, 33.038368, 35.303284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323044, 33.263870, 35.071228>,  <42.464138, 33.399170, 34.931995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323044, 33.263870, 35.071228>,  <42.087887, 33.038368, 35.303284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323044, 33.263870, 35.071228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067945, -0.749037, -0.659035,
		-0.806078, 0.348027, -0.478661,
		0.587897, 0.563755, -0.580136,
		42.499413, 33.432999, 34.897186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768082, 32.948441, 34.684925>,  <42.087887, 33.038368, 35.303284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768082, 32.948441, 34.684925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.128220, 33.107666, 34.614578>,  <42.344303, 33.203201, 34.572369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.128220, 33.107666, 34.614578>,  <41.768082, 32.948441, 34.684925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128220, 33.107666, 34.614578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101355, -0.584825, -0.804802,
		-0.423212, 0.706774, -0.566889,
		0.900344, 0.398059, -0.175869,
		42.398323, 33.227085, 34.561817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790398, 32.964027, 33.972630>,  <41.768082, 32.948441, 34.684925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790398, 32.964027, 33.972630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178463, 33.015358, 34.054913>,  <42.411301, 33.046158, 34.104282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178463, 33.015358, 34.054913>,  <41.790398, 32.964027, 33.972630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178463, 33.015358, 34.054913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240270, -0.622490, -0.744833,
		0.032465, 0.772035, -0.634750,
		0.970163, 0.128331, 0.205706,
		42.469513, 33.053856, 34.116623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098660, 32.889427, 33.331833>,  <41.790398, 32.964027, 33.972630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098660, 32.889427, 33.331833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.403126, 32.872643, 33.590710>,  <42.585808, 32.862572, 33.746037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.403126, 32.872643, 33.590710>,  <42.098660, 32.889427, 33.331833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403126, 32.872643, 33.590710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484316, -0.626924, -0.610250,
		0.431349, 0.777950, -0.456873,
		0.761168, -0.041960, 0.647196,
		42.631477, 32.860054, 33.784870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708344, 33.120899, 32.992851>,  <42.098660, 32.889427, 33.331833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708344, 33.120899, 32.992851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.810429, 32.898079, 33.308968>,  <42.871681, 32.764389, 33.498638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.810429, 32.898079, 33.308968>,  <42.708344, 33.120899, 32.992851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810429, 32.898079, 33.308968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577605, -0.567648, -0.586641,
		0.775396, 0.606196, 0.176882,
		0.255213, -0.557047, 0.790294,
		42.886993, 32.730965, 33.546055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437489, 33.116920, 33.017899>,  <42.708344, 33.120899, 32.992851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437489, 33.116920, 33.017899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.323872, 32.786064, 33.211868>,  <43.255703, 32.587551, 33.328251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.323872, 32.786064, 33.211868>,  <43.437489, 33.116920, 33.017899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323872, 32.786064, 33.211868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669020, -0.533265, -0.517726,
		0.686829, 0.177372, 0.704844,
		-0.284039, -0.827144, 0.484927,
		43.238659, 32.537922, 33.357346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992573, 32.720325, 32.962868>,  <43.437489, 33.116920, 33.017899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992573, 32.720325, 32.962868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.732346, 32.436485, 33.071114>,  <43.576210, 32.266182, 33.136059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.732346, 32.436485, 33.071114>,  <43.992573, 32.720325, 32.962868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732346, 32.436485, 33.071114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638719, -0.704002, -0.310513,
		0.410851, -0.029165, 0.911236,
		-0.650568, -0.709599, 0.270612,
		43.537174, 32.223606, 33.152298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325111, 32.224224, 33.409248>,  <43.992573, 32.720325, 32.962868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325111, 32.224224, 33.409248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.021076, 32.082790, 33.191166>,  <43.838657, 31.997931, 33.060318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.021076, 32.082790, 33.191166>,  <44.325111, 32.224224, 33.409248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021076, 32.082790, 33.191166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606005, -0.688568, -0.398285,
		-0.234583, -0.633127, 0.737645,
		-0.760084, -0.353586, -0.545205,
		43.793053, 31.976715, 33.027603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574509, 31.542616, 33.278858>,  <44.325111, 32.224224, 33.409248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574509, 31.542616, 33.278858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.287914, 31.608164, 33.007622>,  <44.115959, 31.647491, 32.844879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.287914, 31.608164, 33.007622>,  <44.574509, 31.542616, 33.278858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287914, 31.608164, 33.007622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547672, -0.469943, -0.692249,
		-0.432097, -0.867354, 0.246962,
		-0.716483, 0.163865, -0.678086,
		44.072971, 31.657324, 32.804195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527218, 30.904615, 32.996300>,  <44.574509, 31.542616, 33.278858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527218, 30.904615, 32.996300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.354389, 31.137680, 32.720963>,  <44.250690, 31.277519, 32.555759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.354389, 31.137680, 32.720963>,  <44.527218, 30.904615, 32.996300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354389, 31.137680, 32.720963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435355, -0.533685, -0.725015,
		-0.789797, -0.612934, -0.023074,
		-0.432072, 0.582660, -0.688347,
		44.224766, 31.312477, 32.514458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228329, 30.427446, 32.506569>,  <44.527218, 30.904615, 32.996300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228329, 30.427446, 32.506569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.245342, 30.775595, 32.310349>,  <44.255550, 30.984484, 32.192616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.245342, 30.775595, 32.310349>,  <44.228329, 30.427446, 32.506569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245342, 30.775595, 32.310349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371184, -0.469619, -0.801049,
		-0.927585, -0.148016, -0.343042,
		0.042531, 0.870373, -0.490553,
		44.258102, 31.036707, 32.163181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965393, 30.363409, 31.888556>,  <44.228329, 30.427446, 32.506569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965393, 30.363409, 31.888556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.206833, 30.673050, 31.812206>,  <44.351696, 30.858835, 31.766397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.206833, 30.673050, 31.812206>,  <43.965393, 30.363409, 31.888556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206833, 30.673050, 31.812206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362470, -0.479666, -0.799085,
		-0.710127, 0.413143, -0.570116,
		0.603602, 0.774102, -0.190872,
		44.387913, 30.905281, 31.754944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966805, 30.421944, 31.070618>,  <43.965393, 30.363409, 31.888556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966805, 30.421944, 31.070618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.264874, 30.658293, 31.194284>,  <44.443714, 30.800102, 31.268484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.264874, 30.658293, 31.194284>,  <43.966805, 30.421944, 31.070618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264874, 30.658293, 31.194284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589657, -0.367262, -0.719322,
		-0.311483, 0.718322, -0.622087,
		0.745174, 0.590874, 0.309167,
		44.488426, 30.835554, 31.287035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173054, 30.871691, 30.484468>,  <43.966805, 30.421944, 31.070618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173054, 30.871691, 30.484468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.484241, 30.825468, 30.731501>,  <44.670956, 30.797735, 30.879719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.484241, 30.825468, 30.731501>,  <44.173054, 30.871691, 30.484468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484241, 30.825468, 30.731501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543094, -0.370565, -0.753479,
		0.315922, 0.921590, -0.225532,
		0.777973, -0.115556, 0.617579,
		44.717632, 30.790802, 30.916775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654755, 31.050144, 30.089931>,  <44.173054, 30.871691, 30.484468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654755, 31.050144, 30.089931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.856789, 30.864855, 30.381222>,  <44.978008, 30.753681, 30.555996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.856789, 30.864855, 30.381222>,  <44.654755, 31.050144, 30.089931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856789, 30.864855, 30.381222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605705, -0.410818, -0.681433,
		0.614824, 0.785272, 0.073078,
		0.505088, -0.463224, 0.728223,
		45.008316, 30.725887, 30.599689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433384, 31.206568, 30.049398>,  <44.654755, 31.050144, 30.089931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433384, 31.206568, 30.049398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.389835, 30.860733, 30.245617>,  <45.363705, 30.653233, 30.363348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.389835, 30.860733, 30.245617>,  <45.433384, 31.206568, 30.049398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389835, 30.860733, 30.245617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645701, -0.436707, -0.626384,
		0.755789, 0.248551, 0.605810,
		-0.108873, -0.864586, 0.490548,
		45.357174, 30.601357, 30.392782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064980, 30.937729, 30.003452>,  <45.433384, 31.206568, 30.049398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064980, 30.937729, 30.003452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.848885, 30.616608, 30.104372>,  <45.719227, 30.423935, 30.164925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.848885, 30.616608, 30.104372>,  <46.064980, 30.937729, 30.003452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848885, 30.616608, 30.104372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565517, -0.568373, -0.597614,
		0.623166, -0.180173, 0.761054,
		-0.540236, -0.802802, 0.252300,
		45.686813, 30.375767, 30.180061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.528805, 30.433472, 29.924681>,  <46.064980, 30.937729, 30.003452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.528805, 30.433472, 29.924681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.179794, 30.240551, 29.893505>,  <45.970387, 30.124798, 29.874800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.179794, 30.240551, 29.893505>,  <46.528805, 30.433472, 29.924681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179794, 30.240551, 29.893505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401930, -0.617927, -0.675736,
		0.277749, -0.620926, 0.733012,
		-0.872530, -0.482304, -0.077940,
		45.918034, 30.095860, 29.870123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692974, 29.736067, 29.855732>,  <46.528805, 30.433472, 29.924681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692974, 29.736067, 29.855732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.307438, 29.744205, 29.749456>,  <46.076115, 29.749088, 29.685692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.307438, 29.744205, 29.749456>,  <46.692974, 29.736067, 29.855732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.307438, 29.744205, 29.749456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163243, -0.742983, -0.649098,
		-0.210607, -0.669001, 0.712799,
		-0.963845, 0.020345, -0.265688,
		46.018284, 29.750309, 29.669750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390045, 29.041691, 29.920385>,  <46.692974, 29.736067, 29.855732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390045, 29.041691, 29.920385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.192074, 29.249918, 29.642088>,  <46.073292, 29.374853, 29.475109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.192074, 29.249918, 29.642088>,  <46.390045, 29.041691, 29.920385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192074, 29.249918, 29.642088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073005, -0.772942, -0.630262,
		-0.865863, -0.362725, 0.344545,
		-0.494925, 0.520567, -0.695743,
		46.043594, 29.406088, 29.433365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819477, 28.780783, 29.860167>,  <46.390045, 29.041691, 29.920385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819477, 28.780783, 29.860167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.949730, 28.950518, 29.522194>,  <46.027882, 29.052359, 29.319410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.949730, 28.950518, 29.522194>,  <45.819477, 28.780783, 29.860167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949730, 28.950518, 29.522194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004384, -0.894302, -0.447442,
		-0.945488, 0.141996, -0.293070,
		0.325628, 0.424335, -0.844929,
		46.047417, 29.077818, 29.268715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432709, 28.569508, 29.308331>,  <45.819477, 28.780783, 29.860167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432709, 28.569508, 29.308331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.783539, 28.663736, 29.140886>,  <45.994038, 28.720274, 29.040419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.783539, 28.663736, 29.140886>,  <45.432709, 28.569508, 29.308331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783539, 28.663736, 29.140886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035810, -0.836990, -0.546045,
		-0.479008, 0.493916, -0.725671,
		0.877080, 0.235574, -0.418612,
		46.046661, 28.734409, 29.015303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371689, 28.741049, 28.476200>,  <45.432709, 28.569508, 29.308331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371689, 28.741049, 28.476200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.667118, 28.542187, 28.658344>,  <45.844376, 28.422869, 28.767632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.667118, 28.542187, 28.658344>,  <45.371689, 28.741049, 28.476200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667118, 28.542187, 28.658344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204593, -0.808859, -0.551261,
		0.642385, 0.313980, -0.699112,
		0.738568, -0.497155, 0.455361,
		45.888687, 28.393040, 28.794952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150604, 28.145868, 28.705633>,  <45.371689, 28.741049, 28.476200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150604, 28.145868, 28.705633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.014961, 27.773109, 28.654133>,  <44.933575, 27.549454, 28.623232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.014961, 27.773109, 28.654133>,  <45.150604, 28.145868, 28.705633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014961, 27.773109, 28.654133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747621, 0.183883, 0.638162,
		-0.571025, 0.312661, -0.759061,
		-0.339107, -0.931896, -0.128750,
		44.913231, 27.493540, 28.615507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435860, 28.113392, 28.408333>,  <45.150604, 28.145868, 28.705633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435860, 28.113392, 28.408333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.529541, 27.800938, 28.639843>,  <44.585751, 27.613464, 28.778749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.529541, 27.800938, 28.639843>,  <44.435860, 28.113392, 28.408333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529541, 27.800938, 28.639843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696465, 0.280557, 0.660473,
		-0.678297, -0.557778, -0.478327,
		0.234199, -0.781135, 0.578774,
		44.599800, 27.566597, 28.813475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826149, 27.915596, 28.565687>,  <44.435860, 28.113392, 28.408333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826149, 27.915596, 28.565687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050152, 27.736828, 28.844732>,  <44.184551, 27.629568, 29.012159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050152, 27.736828, 28.844732>,  <43.826149, 27.915596, 28.565687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050152, 27.736828, 28.844732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700328, 0.194524, 0.686805,
		-0.442649, -0.873169, -0.204056,
		0.560002, -0.446919, 0.697610,
		44.218151, 27.602753, 29.054016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345074, 27.564989, 28.928814>,  <43.826149, 27.915596, 28.565687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345074, 27.564989, 28.928814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.658661, 27.581720, 29.176569>,  <43.846813, 27.591759, 29.325222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.658661, 27.581720, 29.176569>,  <43.345074, 27.564989, 28.928814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658661, 27.581720, 29.176569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616949, 0.163428, 0.769848,
		-0.069026, -0.985668, 0.153927,
		0.783970, 0.041826, 0.619388,
		43.893852, 27.594269, 29.362385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127003, 27.319605, 29.466618>,  <43.345074, 27.564989, 28.928814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127003, 27.319605, 29.466618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.442478, 27.508871, 29.623636>,  <43.631763, 27.622431, 29.717848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.442478, 27.508871, 29.623636>,  <43.127003, 27.319605, 29.466618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442478, 27.508871, 29.623636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536242, 0.217144, 0.815655,
		0.300703, -0.853792, 0.424990,
		0.788684, 0.473167, 0.392543,
		43.679085, 27.650820, 29.741400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999969, 27.349426, 30.172678>,  <43.127003, 27.319605, 29.466618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999969, 27.349426, 30.172678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.291954, 27.622553, 30.160507>,  <43.467144, 27.786428, 30.153204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.291954, 27.622553, 30.160507>,  <42.999969, 27.349426, 30.172678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291954, 27.622553, 30.160507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229296, 0.286579, 0.930213,
		0.643884, -0.672038, 0.365757,
		0.729957, 0.682816, -0.030428,
		43.510941, 27.827398, 30.151379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258453, 27.258831, 30.858549>,  <42.999969, 27.349426, 30.172678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258453, 27.258831, 30.858549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357037, 27.607334, 30.688761>,  <43.416187, 27.816435, 30.586887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357037, 27.607334, 30.688761>,  <43.258453, 27.258831, 30.858549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357037, 27.607334, 30.688761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292792, 0.484449, 0.824368,
		0.923869, -0.078887, 0.374491,
		0.246453, 0.871255, -0.424470,
		43.430973, 27.868711, 30.561420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516590, 27.672934, 31.326958>,  <43.258453, 27.258831, 30.858549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516590, 27.672934, 31.326958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.410511, 27.953638, 31.062471>,  <43.346863, 28.122061, 30.903780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.410511, 27.953638, 31.062471>,  <43.516590, 27.672934, 31.326958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410511, 27.953638, 31.062471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257044, 0.609496, 0.749962,
		0.929300, 0.368848, 0.018746,
		-0.265197, 0.701759, -0.661215,
		43.330952, 28.164165, 30.864107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969135, 28.281353, 31.269028>,  <43.516590, 27.672934, 31.326958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969135, 28.281353, 31.269028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.604713, 28.392485, 31.147184>,  <43.386059, 28.459164, 31.074078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.604713, 28.392485, 31.147184>,  <43.969135, 28.281353, 31.269028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604713, 28.392485, 31.147184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078965, 0.607571, 0.790330,
		0.404647, 0.744089, -0.531594,
		-0.911057, 0.277828, -0.304609,
		43.331398, 28.475832, 31.055801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881683, 29.037405, 31.434256>,  <43.969135, 28.281353, 31.269028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881683, 29.037405, 31.434256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.513103, 28.891359, 31.381168>,  <43.291954, 28.803732, 31.349316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.513103, 28.891359, 31.381168>,  <43.881683, 29.037405, 31.434256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513103, 28.891359, 31.381168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363794, 0.691103, 0.624525,
		-0.136301, 0.623753, -0.769645,
		-0.921453, -0.365115, -0.132720,
		43.236668, 28.781824, 31.341352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443832, 29.647703, 31.272221>,  <43.881683, 29.037405, 31.434256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443832, 29.647703, 31.272221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.201714, 29.355347, 31.398340>,  <43.056442, 29.179934, 31.474012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.201714, 29.355347, 31.398340>,  <43.443832, 29.647703, 31.272221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201714, 29.355347, 31.398340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434097, 0.635118, 0.638893,
		-0.667214, 0.249849, -0.701713,
		-0.605297, -0.730890, 0.315301,
		43.020123, 29.136080, 31.492931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750042, 29.983027, 31.300056>,  <43.443832, 29.647703, 31.272221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750042, 29.983027, 31.300056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.760403, 29.673023, 31.552626>,  <42.766621, 29.487022, 31.704166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.760403, 29.673023, 31.552626>,  <42.750042, 29.983027, 31.300056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760403, 29.673023, 31.552626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543599, 0.519164, 0.659522,
		-0.838945, -0.360323, -0.407845,
		0.025903, -0.775007, 0.631422,
		42.768173, 29.440521, 31.742052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096504, 29.929089, 31.526693>,  <42.750042, 29.983027, 31.300056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096504, 29.929089, 31.526693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.279552, 29.703636, 31.801764>,  <42.389381, 29.568365, 31.966806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.279552, 29.703636, 31.801764>,  <42.096504, 29.929089, 31.526693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279552, 29.703636, 31.801764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554852, 0.423321, 0.716197,
		-0.694779, -0.709308, -0.119010,
		0.457625, -0.563632, 0.687675,
		42.416840, 29.534546, 32.008068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513184, 29.764105, 31.873211>,  <42.096504, 29.929089, 31.526693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513184, 29.764105, 31.873211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.831818, 29.693129, 32.104370>,  <42.022999, 29.650543, 32.243065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.831818, 29.693129, 32.104370>,  <41.513184, 29.764105, 31.873211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831818, 29.693129, 32.104370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493542, 0.361147, 0.791195,
		-0.349095, -0.915472, 0.200110,
		0.796586, -0.177440, 0.577898,
		42.070793, 29.639896, 32.277740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343822, 29.419584, 32.422318>,  <41.513184, 29.764105, 31.873211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343822, 29.419584, 32.422318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.687416, 29.588331, 32.538368>,  <41.893574, 29.689579, 32.607998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.687416, 29.588331, 32.538368>,  <41.343822, 29.419584, 32.422318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687416, 29.588331, 32.538368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457755, 0.378936, 0.804281,
		0.229359, -0.823673, 0.518611,
		0.858985, 0.421866, 0.290128,
		41.945110, 29.714891, 32.625408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344185, 29.217001, 33.175640>,  <41.343822, 29.419584, 32.422318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344185, 29.217001, 33.175640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.598213, 29.522360, 33.128468>,  <41.750629, 29.705576, 33.100163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.598213, 29.522360, 33.128468>,  <41.344185, 29.217001, 33.175640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598213, 29.522360, 33.128468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461790, 0.497597, 0.734266,
		0.619221, -0.411851, 0.668539,
		0.635071, 0.763398, -0.117934,
		41.788734, 29.751379, 33.093086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732471, 29.261473, 33.784336>,  <41.344185, 29.217001, 33.175640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732471, 29.261473, 33.784336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.783134, 29.627874, 33.632072>,  <41.813530, 29.847715, 33.540714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.783134, 29.627874, 33.632072>,  <41.732471, 29.261473, 33.784336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783134, 29.627874, 33.632072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192502, 0.399148, 0.896451,
		0.973089, -0.040263, 0.226887,
		0.126655, 0.916002, -0.380655,
		41.821133, 29.902676, 33.517876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364510, 29.610579, 34.084106>,  <41.732471, 29.261473, 33.784336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364510, 29.610579, 34.084106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.112122, 29.887531, 33.944118>,  <41.960690, 30.053703, 33.860126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.112122, 29.887531, 33.944118>,  <42.364510, 29.610579, 34.084106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112122, 29.887531, 33.944118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212572, 0.279549, 0.936304,
		0.746116, 0.665175, -0.029206,
		-0.630971, 0.692383, -0.349974,
		41.922829, 30.095245, 33.839127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387020, 30.215158, 34.581070>,  <42.364510, 29.610579, 34.084106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387020, 30.215158, 34.581070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.057320, 30.304579, 34.372982>,  <41.859497, 30.358231, 34.248131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.057320, 30.304579, 34.372982>,  <42.387020, 30.215158, 34.581070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057320, 30.304579, 34.372982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380185, 0.462344, 0.801060,
		0.419599, 0.858057, -0.296098,
		-0.824255, 0.223552, -0.520219,
		41.810043, 30.371645, 34.216915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236916, 30.839657, 34.755611>,  <42.387020, 30.215158, 34.581070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236916, 30.839657, 34.755611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.887104, 30.689692, 34.632553>,  <41.677219, 30.599712, 34.558720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.887104, 30.689692, 34.632553>,  <42.236916, 30.839657, 34.755611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887104, 30.689692, 34.632553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467345, 0.481968, 0.741145,
		-0.129589, 0.791927, -0.596707,
		-0.874526, -0.374912, -0.307645,
		41.624744, 30.577217, 34.540260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.427620, 36.123455, 36.755947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.067394, 36.069687, 36.590580>,  <41.851257, 36.037426, 36.491360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.067394, 36.069687, 36.590580>,  <42.427620, 36.123455, 36.755947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067394, 36.069687, 36.590580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134924, 0.990457, -0.028125,
		0.413257, 0.030452, -0.910105,
		-0.900563, -0.134418, -0.413422,
		41.797226, 36.029362, 36.466553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319618, 36.794666, 36.510933>,  <42.427620, 36.123455, 36.755947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319618, 36.794666, 36.510933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966591, 36.606865, 36.500801>,  <41.754776, 36.494186, 36.494720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966591, 36.606865, 36.500801>,  <42.319618, 36.794666, 36.510933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966591, 36.606865, 36.500801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464533, 0.862375, 0.201290,
		-0.072661, 0.189419, -0.979204,
		-0.882570, -0.469499, -0.025330,
		41.701820, 36.466015, 36.493202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801582, 37.171547, 36.123344>,  <42.319618, 36.794666, 36.510933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801582, 37.171547, 36.123344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579254, 36.960854, 36.380596>,  <41.445858, 36.834438, 36.534946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.579254, 36.960854, 36.380596>,  <41.801582, 37.171547, 36.123344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579254, 36.960854, 36.380596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576443, 0.801642, 0.158377,
		-0.598982, -0.282699, -0.749200,
		-0.555817, -0.526737, 0.643129,
		41.412510, 36.802834, 36.573536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157131, 37.330791, 35.989029>,  <41.801582, 37.171547, 36.123344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157131, 37.330791, 35.989029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.102283, 37.172043, 36.352058>,  <41.069374, 37.076794, 36.569878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.102283, 37.172043, 36.352058>,  <41.157131, 37.330791, 35.989029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102283, 37.172043, 36.352058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747627, 0.642516, 0.168010,
		-0.649809, -0.655488, -0.384816,
		-0.137122, -0.396873, 0.907573,
		41.061146, 37.052982, 36.624329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461761, 37.139893, 36.006924>,  <41.157131, 37.330791, 35.989029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461761, 37.139893, 36.006924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583336, 37.180206, 36.385864>,  <40.656281, 37.204395, 36.613228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583336, 37.180206, 36.385864>,  <40.461761, 37.139893, 36.006924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583336, 37.180206, 36.385864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660918, 0.738493, 0.133475,
		-0.686158, -0.666687, 0.291062,
		0.303933, 0.100783, 0.947347,
		40.674515, 37.210442, 36.670067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789238, 37.121403, 36.418732>,  <40.461761, 37.139893, 36.006924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789238, 37.121403, 36.418732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.071442, 37.302406, 36.636902>,  <40.240765, 37.411011, 36.767803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.071442, 37.302406, 36.636902>,  <39.789238, 37.121403, 36.418732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071442, 37.302406, 36.636902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670113, 0.676433, 0.305592,
		-0.230659, -0.581094, 0.780465,
		0.705510, 0.452513, 0.545424,
		40.283096, 37.438160, 36.800529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400410, 37.317101, 37.074406>,  <39.789238, 37.121403, 36.418732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400410, 37.317101, 37.074406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.731686, 37.539848, 37.049129>,  <39.930450, 37.673496, 37.033962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.731686, 37.539848, 37.049129>,  <39.400410, 37.317101, 37.074406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731686, 37.539848, 37.049129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501893, 0.787119, 0.358536,
		0.249398, -0.265221, 0.931375,
		0.828194, 0.556868, -0.063194,
		39.980145, 37.706909, 37.030170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374634, 37.644440, 37.697483>,  <39.400410, 37.317101, 37.074406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374634, 37.644440, 37.697483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.597919, 37.856007, 37.441780>,  <39.731892, 37.982948, 37.288361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.597919, 37.856007, 37.441780>,  <39.374634, 37.644440, 37.697483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597919, 37.856007, 37.441780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580420, 0.799493, 0.154669,
		0.592886, 0.284698, 0.753282,
		0.558210, 0.528921, -0.639253,
		39.765381, 38.014683, 37.250004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595440, 38.251865, 38.106789>,  <39.374634, 37.644440, 37.697483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595440, 38.251865, 38.106789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658794, 38.341866, 37.722229>,  <39.696808, 38.395866, 37.491493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658794, 38.341866, 37.722229>,  <39.595440, 38.251865, 38.106789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658794, 38.341866, 37.722229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302199, 0.938010, 0.169745,
		0.939995, 0.263649, 0.216560,
		0.158383, 0.225004, -0.961399,
		39.706310, 38.409367, 37.433811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901321, 38.940590, 38.151485>,  <39.595440, 38.251865, 38.106789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901321, 38.940590, 38.151485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.747433, 38.864853, 37.790123>,  <39.655102, 38.819408, 37.573307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.747433, 38.864853, 37.790123>,  <39.901321, 38.940590, 38.151485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747433, 38.864853, 37.790123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525687, 0.849443, 0.045829,
		0.758714, 0.492539, -0.426332,
		-0.384717, -0.189346, -0.903405,
		39.632019, 38.808048, 37.519100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814548, 39.572803, 37.859390>,  <39.901321, 38.940590, 38.151485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814548, 39.572803, 37.859390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.589096, 39.358154, 37.608200>,  <39.453823, 39.229366, 37.457485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.589096, 39.358154, 37.608200>,  <39.814548, 39.572803, 37.859390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589096, 39.358154, 37.608200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583345, 0.796838, -0.157346,
		0.584832, 0.277643, -0.762158,
		-0.563631, -0.536622, -0.627979,
		39.420006, 39.197166, 37.419807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684299, 39.915833, 37.195625>,  <39.814548, 39.572803, 37.859390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684299, 39.915833, 37.195625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379711, 39.662838, 37.252365>,  <39.196957, 39.511040, 37.286411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379711, 39.662838, 37.252365>,  <39.684299, 39.915833, 37.195625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379711, 39.662838, 37.252365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636929, 0.770726, 0.017408,
		-0.120339, -0.077094, -0.989735,
		-0.761473, -0.632486, 0.141852,
		39.151268, 39.473091, 37.294922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215076, 39.979786, 36.636288>,  <39.684299, 39.915833, 37.195625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215076, 39.979786, 36.636288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052456, 39.889248, 36.990345>,  <38.954884, 39.834923, 37.202778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052456, 39.889248, 36.990345>,  <39.215076, 39.979786, 36.636288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052456, 39.889248, 36.990345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640210, 0.761760, -0.099257,
		-0.651800, -0.607032, -0.454608,
		-0.406555, -0.226349, 0.885144,
		38.930489, 39.821342, 37.255890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359978, 40.603302, 36.282131>,  <39.215076, 39.979786, 36.636288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359978, 40.603302, 36.282131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.308521, 40.549927, 36.675201>,  <39.277649, 40.517902, 36.911041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.308521, 40.549927, 36.675201>,  <39.359978, 40.603302, 36.282131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308521, 40.549927, 36.675201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162059, -0.974756, -0.153582,
		0.978361, -0.179007, 0.103763,
		-0.128636, -0.133442, 0.982673,
		39.269932, 40.509895, 36.970005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698246, 40.168846, 36.091305>,  <39.359978, 40.603302, 36.282131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698246, 40.168846, 36.091305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364655, 40.277111, 35.898964>,  <38.164501, 40.342068, 35.783558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364655, 40.277111, 35.898964>,  <38.698246, 40.168846, 36.091305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364655, 40.277111, 35.898964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495754, -0.015126, -0.868331,
		-0.242294, -0.962557, -0.121564,
		-0.833980, 0.270657, -0.480856,
		38.114460, 40.358307, 35.754707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690914, 40.734009, 35.698284>,  <38.698246, 40.168846, 36.091305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690914, 40.734009, 35.698284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512901, 41.062950, 35.840088>,  <38.406094, 41.260315, 35.925171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512901, 41.062950, 35.840088>,  <38.690914, 40.734009, 35.698284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512901, 41.062950, 35.840088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820627, -0.216029, -0.529058,
		-0.358490, -0.526367, 0.770988,
		-0.445035, 0.822356, 0.354506,
		38.379391, 41.309658, 35.946438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118637, 40.969646, 35.091469>,  <38.690914, 40.734009, 35.698284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118637, 40.969646, 35.091469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.338165, 41.199558, 34.848679>,  <39.469883, 41.337505, 34.703003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.338165, 41.199558, 34.848679>,  <39.118637, 40.969646, 35.091469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338165, 41.199558, 34.848679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596724, -0.239124, -0.765990,
		-0.585421, 0.782589, 0.211750,
		0.548820, 0.574782, -0.606978,
		39.502811, 41.371994, 34.666584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633766, 41.285099, 34.714409>,  <39.118637, 40.969646, 35.091469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633766, 41.285099, 34.714409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980480, 41.332047, 34.520538>,  <39.188507, 41.360214, 34.404217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980480, 41.332047, 34.520538>,  <38.633766, 41.285099, 34.714409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980480, 41.332047, 34.520538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430841, -0.313176, -0.846343,
		-0.251122, 0.942415, -0.220889,
		0.866783, 0.117368, -0.484677,
		39.240517, 41.367256, 34.375134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581154, 41.595043, 34.035236>,  <38.633766, 41.285099, 34.714409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581154, 41.595043, 34.035236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.918537, 41.383739, 33.996197>,  <39.120968, 41.256958, 33.972771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.918537, 41.383739, 33.996197>,  <38.581154, 41.595043, 34.035236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918537, 41.383739, 33.996197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299128, -0.310931, -0.902133,
		0.446210, 0.790105, -0.420273,
		0.843456, -0.528257, -0.097602,
		39.171574, 41.225262, 33.966915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752781, 41.589336, 33.284519>,  <38.581154, 41.595043, 34.035236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752781, 41.589336, 33.284519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988243, 41.303413, 33.435532>,  <39.129520, 41.131859, 33.526138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988243, 41.303413, 33.435532>,  <38.752781, 41.589336, 33.284519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988243, 41.303413, 33.435532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083070, -0.518037, -0.851315,
		0.804104, 0.469770, -0.364325,
		0.588656, -0.714810, 0.377532,
		39.164841, 41.088970, 33.548790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041702, 41.295311, 32.564922>,  <38.752781, 41.589336, 33.284519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041702, 41.295311, 32.564922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109158, 41.027382, 32.854172>,  <39.149632, 40.866627, 33.027721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109158, 41.027382, 32.854172>,  <39.041702, 41.295311, 32.564922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109158, 41.027382, 32.854172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205028, -0.741417, -0.638956,
		0.964119, -0.040509, -0.262361,
		0.168635, -0.669821, 0.723120,
		39.159748, 40.826435, 33.071106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428268, 40.764568, 32.270603>,  <39.041702, 41.295311, 32.564922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428268, 40.764568, 32.270603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287312, 40.585098, 32.599117>,  <39.202740, 40.477417, 32.796227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287312, 40.585098, 32.599117>,  <39.428268, 40.764568, 32.270603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287312, 40.585098, 32.599117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226777, -0.810486, -0.540078,
		0.907962, -0.376566, 0.183856,
		-0.352388, -0.448676, 0.821287,
		39.181595, 40.450497, 32.845505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872444, 40.189049, 32.426479>,  <39.428268, 40.764568, 32.270603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872444, 40.189049, 32.426479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506634, 40.134197, 32.578712>,  <39.287148, 40.101288, 32.670052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506634, 40.134197, 32.578712>,  <39.872444, 40.189049, 32.426479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506634, 40.134197, 32.578712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102361, -0.831739, -0.545649,
		0.391365, -0.537966, 0.746610,
		-0.914525, -0.137124, 0.380580,
		39.232277, 40.093060, 32.692886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864243, 39.524067, 32.679131>,  <39.872444, 40.189049, 32.426479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864243, 39.524067, 32.679131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469448, 39.575783, 32.640900>,  <39.232571, 39.606812, 32.617962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469448, 39.575783, 32.640900>,  <39.864243, 39.524067, 32.679131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469448, 39.575783, 32.640900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067458, -0.872595, -0.483764,
		-0.145950, -0.471022, 0.869964,
		-0.986989, 0.129292, -0.095581,
		39.173351, 39.614571, 32.612225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659985, 38.869476, 32.852703>,  <39.864243, 39.524067, 32.679131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659985, 38.869476, 32.852703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363625, 39.051815, 32.655411>,  <39.185810, 39.161217, 32.537033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363625, 39.051815, 32.655411>,  <39.659985, 38.869476, 32.852703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363625, 39.051815, 32.655411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220172, -0.858662, -0.462844,
		-0.634506, -0.234322, 0.736543,
		-0.740896, 0.455843, -0.493234,
		39.141357, 39.188568, 32.507439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021336, 38.332733, 32.804737>,  <39.659985, 38.869476, 32.852703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021336, 38.332733, 32.804737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968147, 38.604530, 32.516125>,  <38.936234, 38.767609, 32.342957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968147, 38.604530, 32.516125>,  <39.021336, 38.332733, 32.804737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968147, 38.604530, 32.516125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041555, -0.731177, -0.680921,
		-0.990249, -0.060556, 0.125458,
		-0.132966, 0.679495, -0.721531,
		38.928257, 38.808380, 32.299667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479332, 38.136608, 32.495647>,  <39.021336, 38.332733, 32.804737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479332, 38.136608, 32.495647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.662090, 38.356682, 32.216064>,  <38.771744, 38.488728, 32.048313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.662090, 38.356682, 32.216064>,  <38.479332, 38.136608, 32.495647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662090, 38.356682, 32.216064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066528, -0.804706, -0.589934,
		-0.887029, 0.223038, -0.404269,
		0.456895, 0.550184, -0.698960,
		38.799160, 38.521736, 32.006378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225174, 37.870209, 31.816374>,  <38.479332, 38.136608, 32.495647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225174, 37.870209, 31.816374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563339, 38.057461, 31.713516>,  <38.766239, 38.169811, 31.651802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.563339, 38.057461, 31.713516>,  <38.225174, 37.870209, 31.816374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563339, 38.057461, 31.713516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145513, -0.665107, -0.732434,
		-0.513905, 0.581793, -0.630411,
		0.845415, 0.468135, -0.257144,
		38.816963, 38.197903, 31.636374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797215, 38.039780, 31.331993>,  <38.225174, 37.870209, 31.816374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797215, 38.039780, 31.331993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.435879, 37.878990, 31.272133>,  <37.219078, 37.782516, 31.236217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.435879, 37.878990, 31.272133>,  <37.797215, 38.039780, 31.331993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435879, 37.878990, 31.272133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338350, 0.453369, 0.824607,
		-0.263622, 0.795534, -0.545554,
		-0.903340, -0.401973, -0.149651,
		37.164875, 37.758400, 31.227238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505852, 38.564846, 31.504745>,  <37.797215, 38.039780, 31.331993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505852, 38.564846, 31.504745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.228241, 38.277084, 31.515907>,  <37.061676, 38.104427, 31.522604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.228241, 38.277084, 31.515907>,  <37.505852, 38.564846, 31.504745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228241, 38.277084, 31.515907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435355, 0.450233, 0.779587,
		-0.573403, 0.528908, -0.625672,
		-0.694028, -0.719407, 0.027903,
		37.020031, 38.061264, 31.524279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967411, 38.896008, 31.623531>,  <37.505852, 38.564846, 31.504745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967411, 38.896008, 31.623531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.881733, 38.521614, 31.735281>,  <36.830326, 38.296978, 31.802330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.881733, 38.521614, 31.735281>,  <36.967411, 38.896008, 31.623531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881733, 38.521614, 31.735281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400980, 0.345058, 0.848617,
		-0.890694, 0.069747, -0.449222,
		-0.214196, -0.935986, 0.279374,
		36.817474, 38.240818, 31.819094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301155, 38.895031, 31.794003>,  <36.967411, 38.896008, 31.623531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301155, 38.895031, 31.794003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.427704, 38.557846, 31.968044>,  <36.503632, 38.355534, 32.072468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.427704, 38.557846, 31.968044>,  <36.301155, 38.895031, 31.794003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427704, 38.557846, 31.968044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566101, 0.200277, 0.799637,
		-0.761209, -0.499296, -0.413842,
		0.316372, -0.842966, 0.435105,
		36.522617, 38.304955, 32.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718204, 38.570339, 32.105618>,  <36.301155, 38.895031, 31.794003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718204, 38.570339, 32.105618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.036026, 38.438217, 32.309414>,  <36.226719, 38.358944, 32.431694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.036026, 38.438217, 32.309414>,  <35.718204, 38.570339, 32.105618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036026, 38.438217, 32.309414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506119, 0.103295, 0.856256,
		-0.335454, -0.938205, -0.085101,
		0.794553, -0.330306, 0.509494,
		36.274391, 38.339127, 32.462261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412918, 38.372704, 32.716225>,  <35.718204, 38.570339, 32.105618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412918, 38.372704, 32.716225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.795990, 38.373989, 32.831352>,  <36.025833, 38.374760, 32.900429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.795990, 38.373989, 32.831352>,  <35.412918, 38.372704, 32.716225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795990, 38.373989, 32.831352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287832, 0.002390, 0.957678,
		0.002390, -0.999992, 0.003213,
		-0.957678, -0.003213, -0.287824,
		36.083294, 38.374954, 32.917698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489410, 37.837715, 33.234821>,  <35.412918, 38.372704, 32.716225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489410, 37.837715, 33.234821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.760338, 38.130146, 33.267700>,  <35.922894, 38.305607, 33.287426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.760338, 38.130146, 33.267700>,  <35.489410, 37.837715, 33.234821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760338, 38.130146, 33.267700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262794, 0.136077, 0.955208,
		0.687148, -0.668584, 0.284292,
		0.677323, 0.731080, 0.082195,
		35.963535, 38.349468, 33.292358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988945, 37.702915, 33.803669>,  <35.489410, 37.837715, 33.234821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988945, 37.702915, 33.803669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.984406, 38.100113, 33.756611>,  <35.981682, 38.338432, 33.728378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.984406, 38.100113, 33.756611>,  <35.988945, 37.702915, 33.803669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984406, 38.100113, 33.756611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247081, 0.111217, 0.962591,
		0.968929, 0.039992, 0.244087,
		-0.011349, 0.992991, -0.117643,
		35.980999, 38.398010, 33.721317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277729, 37.931122, 34.426788>,  <35.988945, 37.702915, 33.803669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277729, 37.931122, 34.426788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107761, 38.258236, 34.271523>,  <36.005779, 38.454506, 34.178364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107761, 38.258236, 34.271523>,  <36.277729, 37.931122, 34.426788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107761, 38.258236, 34.271523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031137, 0.415341, 0.909133,
		0.904695, 0.398396, -0.151024,
		-0.424921, 0.817785, -0.388161,
		35.980286, 38.503571, 34.155075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547077, 38.390408, 34.822903>,  <36.277729, 37.931122, 34.426788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547077, 38.390408, 34.822903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.217552, 38.553047, 34.664913>,  <36.019836, 38.650631, 34.570118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.217552, 38.553047, 34.664913>,  <36.547077, 38.390408, 34.822903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217552, 38.553047, 34.664913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324015, 0.233972, 0.916663,
		0.465132, 0.883137, -0.061003,
		-0.823812, 0.406604, -0.394978,
		35.970409, 38.675030, 34.546421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567654, 38.916653, 35.224045>,  <36.547077, 38.390408, 34.822903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567654, 38.916653, 35.224045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.195145, 38.876766, 35.083885>,  <35.971638, 38.852833, 34.999790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.195145, 38.876766, 35.083885>,  <36.567654, 38.916653, 35.224045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195145, 38.876766, 35.083885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360578, 0.114932, 0.925621,
		-0.052026, 0.988356, -0.142988,
		-0.931277, -0.099715, -0.350400,
		35.915760, 38.846851, 34.978764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175621, 39.516624, 35.417431>,  <36.567654, 38.916653, 35.224045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175621, 39.516624, 35.417431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.900230, 39.233994, 35.352016>,  <35.734997, 39.064415, 35.312767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.900230, 39.233994, 35.352016>,  <36.175621, 39.516624, 35.417431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900230, 39.233994, 35.352016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493471, 0.291128, 0.819592,
		-0.531498, 0.644970, -0.549111,
		-0.688474, -0.706582, -0.163541,
		35.693687, 39.022018, 35.302956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.290813, 36.254375, 28.830154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012024, 35.969749, 28.865700>,  <38.844749, 35.798973, 28.887028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012024, 35.969749, 28.865700>,  <39.290813, 36.254375, 28.830154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012024, 35.969749, 28.865700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618800, 0.659428, 0.426897,
		-0.362364, 0.242549, -0.899923,
		-0.696978, -0.711565, 0.088864,
		38.802929, 35.756279, 28.892359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699257, 36.486233, 28.593256>,  <39.290813, 36.254375, 28.830154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699257, 36.486233, 28.593256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566483, 36.201996, 28.841412>,  <38.486820, 36.031456, 28.990305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566483, 36.201996, 28.841412>,  <38.699257, 36.486233, 28.593256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566483, 36.201996, 28.841412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657734, 0.645779, 0.387757,
		-0.676171, -0.279343, -0.681733,
		-0.331932, -0.710589, 0.620391,
		38.466904, 35.988819, 29.027529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021988, 36.405960, 28.495188>,  <38.699257, 36.486233, 28.593256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021988, 36.405960, 28.495188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084705, 36.236595, 28.852093>,  <38.122337, 36.134975, 29.066236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084705, 36.236595, 28.852093>,  <38.021988, 36.405960, 28.495188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084705, 36.236595, 28.852093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811487, 0.459721, 0.360757,
		-0.562942, -0.780626, -0.271512,
		0.156797, -0.423414, 0.892264,
		38.131744, 36.109570, 29.119772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446220, 36.574963, 28.844372>,  <38.021988, 36.405960, 28.495188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446220, 36.574963, 28.844372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667618, 36.408386, 29.132875>,  <37.800457, 36.308441, 29.305977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667618, 36.408386, 29.132875>,  <37.446220, 36.574963, 28.844372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667618, 36.408386, 29.132875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583476, 0.424075, 0.692616,
		-0.594304, -0.804198, -0.008262,
		0.553497, -0.416445, 0.721259,
		37.833668, 36.283451, 29.349253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976631, 36.275253, 29.301188>,  <37.446220, 36.574963, 28.844372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976631, 36.275253, 29.301188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308125, 36.381924, 29.497995>,  <37.507023, 36.445927, 29.616079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308125, 36.381924, 29.497995>,  <36.976631, 36.275253, 29.301188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308125, 36.381924, 29.497995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555894, 0.493805, 0.668684,
		-0.064641, -0.827672, 0.557477,
		0.828737, 0.266674, 0.492018,
		37.556744, 36.461926, 29.645601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852962, 36.123707, 29.996508>,  <36.976631, 36.275253, 29.301188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852962, 36.123707, 29.996508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141090, 36.401138, 29.992771>,  <37.313969, 36.567596, 29.990530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141090, 36.401138, 29.992771>,  <36.852962, 36.123707, 29.996508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141090, 36.401138, 29.992771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446789, 0.474234, 0.758606,
		0.530584, -0.542264, 0.651483,
		0.720319, 0.693580, -0.009343,
		37.357185, 36.609211, 29.989969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077881, 36.186462, 30.737551>,  <36.852962, 36.123707, 29.996508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077881, 36.186462, 30.737551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197124, 36.512775, 30.539307>,  <37.268669, 36.708565, 30.420361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197124, 36.512775, 30.539307>,  <37.077881, 36.186462, 30.737551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197124, 36.512775, 30.539307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306965, 0.573568, 0.759469,
		0.903828, -0.074269, 0.421402,
		0.298107, 0.815784, -0.495609,
		37.286556, 36.757511, 30.390623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707527, 36.515450, 31.072943>,  <37.077881, 36.186462, 30.737551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707527, 36.515450, 31.072943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502239, 36.794052, 30.872349>,  <37.379066, 36.961212, 30.751993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502239, 36.794052, 30.872349>,  <37.707527, 36.515450, 31.072943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502239, 36.794052, 30.872349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138641, 0.509351, 0.849317,
		0.846987, 0.505411, -0.164843,
		-0.513218, 0.696506, -0.501485,
		37.348274, 37.003002, 30.721903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955185, 37.143139, 31.293026>,  <37.707527, 36.515450, 31.072943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955185, 37.143139, 31.293026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588089, 37.220058, 31.154013>,  <37.367832, 37.266212, 31.070604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588089, 37.220058, 31.154013>,  <37.955185, 37.143139, 31.293026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588089, 37.220058, 31.154013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207190, 0.514721, 0.831946,
		0.338866, 0.835513, -0.432536,
		-0.917737, 0.192301, -0.347532,
		37.312767, 37.277748, 31.049753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358608, 37.738464, 30.969702>,  <37.955185, 37.143139, 31.293026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358608, 37.738464, 30.969702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713318, 37.855595, 31.112747>,  <38.926144, 37.925873, 31.198574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713318, 37.855595, 31.112747>,  <38.358608, 37.738464, 30.969702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713318, 37.855595, 31.112747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458416, -0.458306, -0.761453,
		-0.059078, 0.839171, -0.540649,
		0.886772, 0.292828, 0.357613,
		38.979351, 37.943443, 31.220032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776360, 38.018936, 30.390818>,  <38.358608, 37.738464, 30.969702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776360, 38.018936, 30.390818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049984, 37.891914, 30.653486>,  <39.214161, 37.815701, 30.811087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049984, 37.891914, 30.653486>,  <38.776360, 38.018936, 30.390818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049984, 37.891914, 30.653486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521373, -0.416734, -0.744649,
		0.510125, 0.851757, -0.119507,
		0.684063, -0.317556, 0.656670,
		39.255203, 37.796646, 30.850487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335133, 38.034729, 29.927946>,  <38.776360, 38.018936, 30.390818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335133, 38.034729, 29.927946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483818, 37.845646, 30.247541>,  <39.573029, 37.732197, 30.439299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483818, 37.845646, 30.247541>,  <39.335133, 38.034729, 29.927946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483818, 37.845646, 30.247541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545347, -0.585316, -0.600002,
		0.751284, 0.658753, 0.040220,
		0.371712, -0.472705, 0.798987,
		39.595333, 37.703835, 30.487238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046848, 37.913593, 29.742624>,  <39.335133, 38.034729, 29.927946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046848, 37.913593, 29.742624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958462, 37.666012, 30.044104>,  <39.905430, 37.517464, 30.224991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958462, 37.666012, 30.044104>,  <40.046848, 37.913593, 29.742624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958462, 37.666012, 30.044104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669192, -0.658406, -0.344505,
		0.709475, 0.428245, 0.559689,
		-0.220971, -0.618957, 0.753700,
		39.892170, 37.480324, 30.270214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750237, 37.730637, 30.125660>,  <40.046848, 37.913593, 29.742624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750237, 37.730637, 30.125660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485500, 37.447369, 30.224016>,  <40.326660, 37.277409, 30.283030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485500, 37.447369, 30.224016>,  <40.750237, 37.730637, 30.125660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485500, 37.447369, 30.224016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672440, -0.705813, -0.222827,
		0.331352, 0.017871, 0.943338,
		-0.661838, -0.708173, 0.245889,
		40.286949, 37.234917, 30.297783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015434, 37.209980, 30.647585>,  <40.750237, 37.730637, 30.125660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015434, 37.209980, 30.647585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736012, 36.991550, 30.462622>,  <40.568359, 36.860493, 30.351645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736012, 36.991550, 30.462622>,  <41.015434, 37.209980, 30.647585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736012, 36.991550, 30.462622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677808, -0.712098, -0.183011,
		-0.229342, -0.441268, 0.867574,
		-0.698555, -0.546077, -0.462409,
		40.526443, 36.827728, 30.323898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236359, 36.594131, 30.866091>,  <41.015434, 37.209980, 30.647585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236359, 36.594131, 30.866091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964870, 36.550037, 30.575663>,  <40.801975, 36.523582, 30.401405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964870, 36.550037, 30.575663>,  <41.236359, 36.594131, 30.866091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964870, 36.550037, 30.575663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528290, -0.760059, -0.378444,
		-0.510140, -0.640436, 0.574107,
		-0.678725, -0.110236, -0.726072,
		40.761253, 36.516968, 30.357841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062435, 35.906368, 30.890551>,  <41.236359, 36.594131, 30.866091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062435, 35.906368, 30.890551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001019, 36.036587, 30.517361>,  <40.964169, 36.114719, 30.293447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001019, 36.036587, 30.517361>,  <41.062435, 35.906368, 30.890551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001019, 36.036587, 30.517361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674685, -0.655295, -0.339690,
		-0.721960, -0.681621, -0.119028,
		-0.153541, 0.325548, -0.932975,
		40.954956, 36.134251, 30.237469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784100, 35.323906, 30.498352>,  <41.062435, 35.906368, 30.890551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784100, 35.323906, 30.498352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933418, 35.588352, 30.238022>,  <41.023010, 35.747021, 30.081823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933418, 35.588352, 30.238022>,  <40.784100, 35.323906, 30.498352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933418, 35.588352, 30.238022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649461, -0.687188, -0.325535,
		-0.662455, -0.301164, -0.685896,
		0.373300, 0.661115, -0.650825,
		41.045410, 35.786686, 30.042774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812279, 34.968399, 29.839590>,  <40.784100, 35.323906, 30.498352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812279, 34.968399, 29.839590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080822, 35.264050, 29.817795>,  <41.241947, 35.441441, 29.804718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080822, 35.264050, 29.817795>,  <40.812279, 34.968399, 29.839590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080822, 35.264050, 29.817795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665715, -0.633719, -0.393984,
		-0.325735, 0.228229, -0.917501,
		0.671357, 0.739129, -0.054489,
		41.282230, 35.485786, 29.801449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120552, 35.078457, 29.083811>,  <40.812279, 34.968399, 29.839590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120552, 35.078457, 29.083811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385780, 35.192753, 29.360559>,  <41.544918, 35.261330, 29.526609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385780, 35.192753, 29.360559>,  <41.120552, 35.078457, 29.083811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385780, 35.192753, 29.360559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628906, -0.713924, -0.307881,
		0.405969, 0.639269, -0.653088,
		0.663074, 0.285741, 0.691871,
		41.584702, 35.278477, 29.568121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737316, 34.952866, 28.773462>,  <41.120552, 35.078457, 29.083811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737316, 34.952866, 28.773462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867218, 35.033363, 29.143118>,  <41.945160, 35.081661, 29.364912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867218, 35.033363, 29.143118>,  <41.737316, 34.952866, 28.773462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867218, 35.033363, 29.143118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775715, -0.615694, -0.138520,
		0.541109, 0.761853, -0.356062,
		0.324757, 0.201248, 0.924139,
		41.964645, 35.093739, 29.420359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359062, 34.977745, 28.674707>,  <41.737316, 34.952866, 28.773462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359062, 34.977745, 28.674707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380062, 34.945282, 29.072834>,  <42.392662, 34.925804, 29.311710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380062, 34.945282, 29.072834>,  <42.359062, 34.977745, 28.674707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380062, 34.945282, 29.072834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750622, -0.654164, -0.092930,
		0.658644, 0.751986, 0.026579,
		0.052495, -0.081159, 0.995318,
		42.395809, 34.920933, 29.371429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991375, 35.281517, 28.924101>,  <42.359062, 34.977745, 28.674707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991375, 35.281517, 28.924101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887691, 35.024399, 29.212440>,  <42.825481, 34.870129, 29.385445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887691, 35.024399, 29.212440>,  <42.991375, 35.281517, 28.924101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887691, 35.024399, 29.212440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899643, -0.432215, -0.061909,
		0.351357, 0.632460, 0.690320,
		-0.259212, -0.642794, 0.720850,
		42.809929, 34.831562, 29.428696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.279526, 28.034723, 32.930103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291134, 28.421320, 32.828079>,  <39.298100, 28.653278, 32.766865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291134, 28.421320, 32.828079>,  <39.279526, 28.034723, 32.930103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291134, 28.421320, 32.828079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499364, 0.235064, 0.833895,
		0.865906, 0.103166, 0.489452,
		0.029023, 0.966489, -0.255061,
		39.299839, 28.711267, 32.751560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515953, 28.467066, 33.548519>,  <39.279526, 28.034723, 32.930103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515953, 28.467066, 33.548519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.329998, 28.732080, 33.313599>,  <39.218426, 28.891088, 33.172646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.329998, 28.732080, 33.313599>,  <39.515953, 28.467066, 33.548519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329998, 28.732080, 33.313599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473422, 0.374526, 0.797246,
		0.748165, 0.648673, 0.139546,
		-0.464888, 0.662536, -0.587303,
		39.190533, 28.930841, 33.137409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479958, 29.092346, 33.981632>,  <39.515953, 28.467066, 33.548519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479958, 29.092346, 33.981632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204788, 29.154999, 33.698162>,  <39.039688, 29.192591, 33.528080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204788, 29.154999, 33.698162>,  <39.479958, 29.092346, 33.981632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204788, 29.154999, 33.698162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525047, 0.566737, 0.634929,
		0.501084, 0.808873, -0.307634,
		-0.687925, 0.156630, -0.708679,
		38.998409, 29.201988, 33.485558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385693, 29.861700, 33.928474>,  <39.479958, 29.092346, 33.981632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385693, 29.861700, 33.928474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.052902, 29.672865, 33.811890>,  <38.853230, 29.559565, 33.741940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.052902, 29.672865, 33.811890>,  <39.385693, 29.861700, 33.928474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052902, 29.672865, 33.811890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542941, 0.584698, 0.602779,
		-0.114149, 0.659743, -0.742771,
		-0.831976, -0.472088, -0.291459,
		38.803310, 29.531239, 33.724453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912384, 30.449526, 33.801056>,  <39.385693, 29.861700, 33.928474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912384, 30.449526, 33.801056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.702721, 30.112919, 33.853374>,  <38.576923, 29.910955, 33.884766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.702721, 30.112919, 33.853374>,  <38.912384, 30.449526, 33.801056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702721, 30.112919, 33.853374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658135, 0.497736, 0.564904,
		-0.540478, 0.210019, -0.814724,
		-0.524158, -0.841517, 0.130795,
		38.545471, 29.860464, 33.892612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204296, 30.685501, 33.632442>,  <38.912384, 30.449526, 33.801056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204296, 30.685501, 33.632442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168522, 30.327154, 33.806530>,  <38.147057, 30.112146, 33.910984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168522, 30.327154, 33.806530>,  <38.204296, 30.685501, 33.632442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168522, 30.327154, 33.806530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633701, 0.388303, 0.669062,
		-0.768390, -0.215962, -0.602443,
		-0.089438, -0.895869, 0.435223,
		38.141689, 30.058393, 33.937096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462276, 30.551054, 33.723072>,  <38.204296, 30.685501, 33.632442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462276, 30.551054, 33.723072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658085, 30.335714, 33.997459>,  <37.775570, 30.206511, 34.162090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658085, 30.335714, 33.997459>,  <37.462276, 30.551054, 33.723072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658085, 30.335714, 33.997459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528204, 0.442850, 0.724489,
		-0.693808, -0.716983, -0.067572,
		0.489522, -0.538348, 0.685966,
		37.804943, 30.174210, 34.203251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946655, 30.316660, 34.196991>,  <37.462276, 30.551054, 33.723072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946655, 30.316660, 34.196991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301899, 30.310194, 34.380730>,  <37.515045, 30.306314, 34.490974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301899, 30.310194, 34.380730>,  <36.946655, 30.316660, 34.196991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301899, 30.310194, 34.380730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394761, 0.485058, 0.780309,
		-0.235423, -0.874333, 0.424404,
		0.888110, -0.016165, 0.459346,
		37.568333, 30.305346, 34.518532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888439, 30.090763, 34.934311>,  <36.946655, 30.316660, 34.196991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888439, 30.090763, 34.934311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.232109, 30.295321, 34.927372>,  <37.438309, 30.418055, 34.923210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.232109, 30.295321, 34.927372>,  <36.888439, 30.090763, 34.934311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232109, 30.295321, 34.927372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316891, 0.558403, 0.766659,
		0.401748, -0.653196, 0.641820,
		0.859173, 0.511391, -0.017345,
		37.489861, 30.448738, 34.922169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048916, 30.158634, 35.703007>,  <36.888439, 30.090763, 34.934311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048916, 30.158634, 35.703007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258644, 30.443161, 35.515766>,  <37.384480, 30.613876, 35.403423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258644, 30.443161, 35.515766>,  <37.048916, 30.158634, 35.703007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258644, 30.443161, 35.515766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243938, 0.652155, 0.717766,
		0.815832, -0.262152, 0.515455,
		0.524320, 0.711316, -0.468100,
		37.415939, 30.656555, 35.375336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398430, 30.445509, 36.284348>,  <37.048916, 30.158634, 35.703007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398430, 30.445509, 36.284348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455921, 30.718700, 35.997883>,  <37.490417, 30.882616, 35.826004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455921, 30.718700, 35.997883>,  <37.398430, 30.445509, 36.284348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455921, 30.718700, 35.997883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187594, 0.729354, 0.657915,
		0.971675, 0.039786, 0.232951,
		0.143728, 0.682980, -0.716158,
		37.499039, 30.923594, 35.783035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756538, 31.026808, 36.537407>,  <37.398430, 30.445509, 36.284348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756538, 31.026808, 36.537407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611099, 31.203796, 36.209499>,  <37.523838, 31.309990, 36.012756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611099, 31.203796, 36.209499>,  <37.756538, 31.026808, 36.537407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611099, 31.203796, 36.209499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051789, 0.869036, 0.492031,
		0.930117, 0.221354, -0.293061,
		-0.363594, 0.442469, -0.819769,
		37.502022, 31.336536, 35.963570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041290, 31.674715, 36.556877>,  <37.756538, 31.026808, 36.537407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041290, 31.674715, 36.556877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723133, 31.705896, 36.316456>,  <37.532238, 31.724606, 36.172203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723133, 31.705896, 36.316456>,  <38.041290, 31.674715, 36.556877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723133, 31.705896, 36.316456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296658, 0.814712, 0.498236,
		0.528527, 0.574603, -0.624893,
		-0.795395, 0.077951, -0.601057,
		37.484516, 31.729282, 36.136139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981503, 32.395523, 36.258442>,  <38.041290, 31.674715, 36.556877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981503, 32.395523, 36.258442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608402, 32.251389, 36.253979>,  <37.384541, 32.164906, 36.251301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608402, 32.251389, 36.253979>,  <37.981503, 32.395523, 36.258442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608402, 32.251389, 36.253979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279177, 0.702382, 0.654767,
		-0.228100, 0.613853, -0.755748,
		-0.932755, -0.360340, -0.011160,
		37.328575, 32.143288, 36.250629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370483, 32.784065, 35.867374>,  <37.981503, 32.395523, 36.258442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370483, 32.784065, 35.867374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.702103, 32.848782, 36.081478>,  <38.901073, 32.887611, 36.209938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.702103, 32.848782, 36.081478>,  <38.370483, 32.784065, 35.867374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702103, 32.848782, 36.081478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279315, -0.949072, -0.145761,
		0.484415, 0.270348, -0.832018,
		0.829051, 0.161787, 0.535257,
		38.950817, 32.897316, 36.242054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847382, 32.391304, 35.511730>,  <38.370483, 32.784065, 35.867374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847382, 32.391304, 35.511730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016747, 32.470898, 35.865257>,  <39.118366, 32.518654, 36.077374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016747, 32.470898, 35.865257>,  <38.847382, 32.391304, 35.511730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016747, 32.470898, 35.865257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593870, -0.797690, -0.104918,
		0.684134, 0.569295, -0.455920,
		0.423413, 0.198979, 0.883815,
		39.143772, 32.530590, 36.130402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579075, 32.566437, 35.327744>,  <38.847382, 32.391304, 35.511730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579075, 32.566437, 35.327744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533535, 32.450329, 35.707802>,  <39.506210, 32.380665, 35.935837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.533535, 32.450329, 35.707802>,  <39.579075, 32.566437, 35.327744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533535, 32.450329, 35.707802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791040, -0.605096, -0.090075,
		0.601078, 0.741351, 0.298503,
		-0.113846, -0.290270, 0.950149,
		39.499382, 32.363247, 35.992847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307568, 32.588135, 35.644123>,  <39.579075, 32.566437, 35.327744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307568, 32.588135, 35.644123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.055447, 32.340832, 35.831940>,  <39.904175, 32.192451, 35.944630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.055447, 32.340832, 35.831940>,  <40.307568, 32.588135, 35.644123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055447, 32.340832, 35.831940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668821, -0.739534, -0.075950,
		0.394199, 0.266168, 0.879637,
		-0.630306, -0.618259, 0.469542,
		39.866356, 32.155354, 35.972801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664837, 32.238239, 36.091255>,  <40.307568, 32.588135, 35.644123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664837, 32.238239, 36.091255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352581, 32.002811, 36.007172>,  <40.165230, 31.861553, 35.956722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352581, 32.002811, 36.007172>,  <40.664837, 32.238239, 36.091255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352581, 32.002811, 36.007172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624887, -0.741007, -0.245814,
		-0.011087, -0.323249, 0.946249,
		-0.780636, -0.588574, -0.210209,
		40.118389, 31.826239, 35.944107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012318, 31.663679, 36.227673>,  <40.664837, 32.238239, 36.091255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012318, 31.663679, 36.227673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.678368, 31.569454, 36.028675>,  <40.477997, 31.512920, 35.909279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.678368, 31.569454, 36.028675>,  <41.012318, 31.663679, 36.227673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678368, 31.569454, 36.028675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494169, -0.718850, -0.488929,
		-0.242448, -0.654039, 0.716556,
		-0.834875, -0.235560, -0.497489,
		40.427906, 31.498787, 35.879429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847233, 30.874258, 36.288349>,  <41.012318, 31.663679, 36.227673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847233, 30.874258, 36.288349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.649364, 30.976761, 35.956173>,  <40.530643, 31.038263, 35.756866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.649364, 30.976761, 35.956173>,  <40.847233, 30.874258, 36.288349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649364, 30.976761, 35.956173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443159, -0.747601, -0.494674,
		-0.747601, -0.612719, 0.256257,
		0.494674, -0.256257, 0.830439,
		40.500961, 31.053638, 35.707043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829826, 30.246967, 35.901733>,  <40.847233, 30.874258, 36.288349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829826, 30.246967, 35.901733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.715553, 30.519003, 35.631660>,  <40.646988, 30.682224, 35.469616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.715553, 30.519003, 35.631660>,  <40.829826, 30.246967, 35.901733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715553, 30.519003, 35.631660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347612, -0.583018, -0.734340,
		-0.893056, -0.444490, -0.069846,
		-0.285685, 0.680087, -0.675178,
		40.629848, 30.723028, 35.429108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557030, 29.846481, 35.319870>,  <40.829826, 30.246967, 35.901733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557030, 29.846481, 35.319870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687080, 30.203779, 35.195675>,  <40.765110, 30.418158, 35.121159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687080, 30.203779, 35.195675>,  <40.557030, 29.846481, 35.319870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687080, 30.203779, 35.195675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437138, -0.433103, -0.788246,
		-0.838573, 0.120551, -0.531285,
		0.325125, 0.893246, -0.310491,
		40.784618, 30.471754, 35.102528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595104, 29.714783, 34.652973>,  <40.557030, 29.846481, 35.319870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595104, 29.714783, 34.652973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802700, 30.055807, 34.677612>,  <40.927258, 30.260422, 34.692394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802700, 30.055807, 34.677612>,  <40.595104, 29.714783, 34.652973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802700, 30.055807, 34.677612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429396, -0.197725, -0.881206,
		-0.739101, 0.483785, -0.468703,
		0.518988, 0.852559, 0.061597,
		40.958397, 30.311575, 34.696091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567108, 30.027794, 34.042763>,  <40.595104, 29.714783, 34.652973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567108, 30.027794, 34.042763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.886925, 30.208179, 34.201443>,  <41.078815, 30.316410, 34.296650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.886925, 30.208179, 34.201443>,  <40.567108, 30.027794, 34.042763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886925, 30.208179, 34.201443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501725, -0.138408, -0.853882,
		-0.330163, 0.881746, -0.336922,
		0.799540, 0.450963, 0.396697,
		41.126785, 30.343468, 34.320454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692234, 30.440048, 33.489918>,  <40.567108, 30.027794, 34.042763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692234, 30.440048, 33.489918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.017387, 30.441486, 33.722881>,  <41.212479, 30.442348, 33.862659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.017387, 30.441486, 33.722881>,  <40.692234, 30.440048, 33.489918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017387, 30.441486, 33.722881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582274, -0.027438, -0.812529,
		0.013059, 0.999617, -0.024397,
		0.812888, 0.003595, 0.582409,
		41.261253, 30.442564, 33.897606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213432, 31.022875, 33.305378>,  <40.692234, 30.440048, 33.489918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213432, 31.022875, 33.305378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403206, 30.698977, 33.443493>,  <41.517071, 30.504639, 33.526363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403206, 30.698977, 33.443493>,  <41.213432, 31.022875, 33.305378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403206, 30.698977, 33.443493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537416, -0.044236, -0.842157,
		0.697206, 0.585113, 0.414183,
		0.474435, -0.809745, 0.345290,
		41.545536, 30.456053, 33.547081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925426, 31.083406, 33.002975>,  <41.213432, 31.022875, 33.305378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925426, 31.083406, 33.002975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.889076, 30.712467, 33.148174>,  <41.867268, 30.489904, 33.235294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.889076, 30.712467, 33.148174>,  <41.925426, 31.083406, 33.002975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889076, 30.712467, 33.148174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585187, -0.344664, -0.734004,
		0.805790, 0.145721, 0.573993,
		-0.090875, -0.927347, 0.363001,
		41.861813, 30.434263, 33.257076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629837, 31.370062, 33.316345>,  <41.925426, 31.083406, 33.002975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629837, 31.370062, 33.316345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.907082, 31.653599, 33.263988>,  <43.073429, 31.823721, 33.232574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.907082, 31.653599, 33.263988>,  <42.629837, 31.370062, 33.316345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907082, 31.653599, 33.263988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391705, 0.522818, 0.757118,
		0.605112, -0.473498, 0.640031,
		0.693113, 0.708845, -0.130892,
		43.115017, 31.866253, 33.224720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851086, 31.469837, 33.995014>,  <42.629837, 31.370062, 33.316345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851086, 31.469837, 33.995014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.983643, 31.790119, 33.795395>,  <43.063179, 31.982288, 33.675625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.983643, 31.790119, 33.795395>,  <42.851086, 31.469837, 33.995014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983643, 31.790119, 33.795395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369380, 0.596821, 0.712295,
		0.868180, -0.051712, 0.493548,
		0.331394, 0.800707, -0.499046,
		43.083061, 32.030331, 33.645679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051910, 31.926416, 34.533642>,  <42.851086, 31.469837, 33.995014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051910, 31.926416, 34.533642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.019749, 32.174511, 34.221527>,  <43.000450, 32.323368, 34.034260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.019749, 32.174511, 34.221527>,  <43.051910, 31.926416, 34.533642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019749, 32.174511, 34.221527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323987, 0.724050, 0.608921,
		0.942639, 0.301763, 0.142730,
		-0.080406, 0.620235, -0.780284,
		42.995628, 32.360580, 33.987442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501774, 32.529083, 34.689224>,  <43.051910, 31.926416, 34.533642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501774, 32.529083, 34.689224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.230453, 32.645565, 34.419380>,  <43.067661, 32.715454, 34.257473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.230453, 32.645565, 34.419380>,  <43.501774, 32.529083, 34.689224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230453, 32.645565, 34.419380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267206, 0.757500, 0.595647,
		0.684473, 0.584291, -0.436006,
		-0.678305, 0.291200, -0.674614,
		43.026962, 32.732925, 34.216995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741394, 33.163506, 34.531094>,  <43.501774, 32.529083, 34.689224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741394, 33.163506, 34.531094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.358879, 33.118652, 34.423061>,  <43.129372, 33.091740, 34.358242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.358879, 33.118652, 34.423061>,  <43.741394, 33.163506, 34.531094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358879, 33.118652, 34.423061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262341, 0.737013, 0.622888,
		0.129209, 0.666512, -0.734211,
		-0.956286, -0.112131, -0.270083,
		43.071995, 33.085014, 34.342037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533520, 33.763458, 34.240204>,  <43.741394, 33.163506, 34.531094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533520, 33.763458, 34.240204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.172207, 33.604176, 34.304100>,  <42.955418, 33.508606, 34.342438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.172207, 33.604176, 34.304100>,  <43.533520, 33.763458, 34.240204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172207, 33.604176, 34.304100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303543, 0.856233, 0.418002,
		-0.303225, 0.329085, -0.894292,
		-0.903281, -0.398205, 0.159739,
		42.901222, 33.484715, 34.352020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995819, 34.315361, 34.087070>,  <43.533520, 33.763458, 34.240204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995819, 34.315361, 34.087070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.833035, 34.033630, 34.319729>,  <42.735363, 33.864594, 34.459324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.833035, 34.033630, 34.319729>,  <42.995819, 34.315361, 34.087070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833035, 34.033630, 34.319729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318281, 0.706189, 0.632451,
		-0.856201, 0.072256, -0.511565,
		-0.406960, -0.704327, 0.581642,
		42.710945, 33.822330, 34.494221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418503, 34.565220, 34.244892>,  <42.995819, 34.315361, 34.087070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418503, 34.565220, 34.244892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.500690, 34.292507, 34.525734>,  <42.550003, 34.128880, 34.694241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.500690, 34.292507, 34.525734>,  <42.418503, 34.565220, 34.244892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500690, 34.292507, 34.525734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433587, 0.579744, 0.689855,
		-0.877373, -0.446171, -0.176490,
		0.205474, -0.681784, 0.702105,
		42.562332, 34.087971, 34.736366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789471, 34.479588, 34.576405>,  <42.418503, 34.565220, 34.244892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789471, 34.479588, 34.576405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.063923, 34.341263, 34.832417>,  <42.228596, 34.258266, 34.986023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.063923, 34.341263, 34.832417>,  <41.789471, 34.479588, 34.576405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063923, 34.341263, 34.832417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384818, 0.574094, 0.722725,
		-0.617366, -0.742178, 0.260827,
		0.686130, -0.345814, 0.640030,
		42.269760, 34.237518, 35.024426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441372, 34.290688, 35.234974>,  <41.789471, 34.479588, 34.576405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441372, 34.290688, 35.234974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.826187, 34.335159, 35.334667>,  <42.057076, 34.361843, 35.394482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.826187, 34.335159, 35.334667>,  <41.441372, 34.290688, 35.234974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826187, 34.335159, 35.334667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262420, 0.627589, 0.732985,
		-0.074921, -0.770565, 0.632942,
		0.962041, 0.111181, 0.249231,
		42.114799, 34.368515, 35.409435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458035, 34.165909, 35.878723>,  <41.441372, 34.290688, 35.234974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458035, 34.165909, 35.878723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.781384, 34.392075, 35.813194>,  <41.975391, 34.527775, 35.773876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.781384, 34.392075, 35.813194>,  <41.458035, 34.165909, 35.878723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781384, 34.392075, 35.813194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297864, 0.632911, 0.714633,
		0.507753, -0.528891, 0.680044,
		0.808371, 0.565419, -0.163825,
		42.023895, 34.561699, 35.764046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731060, 34.312675, 36.544926>,  <41.458035, 34.165909, 35.878723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731060, 34.312675, 36.544926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.887337, 34.587337, 36.299698>,  <41.981102, 34.752136, 36.152561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.887337, 34.587337, 36.299698>,  <41.731060, 34.312675, 36.544926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887337, 34.587337, 36.299698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199732, 0.713376, 0.671716,
		0.898590, -0.139985, 0.415860,
		0.390694, 0.686658, -0.613073,
		42.004543, 34.793335, 36.115776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002762, 34.881386, 37.000732>,  <41.731060, 34.312675, 36.544926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002762, 34.881386, 37.000732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.978729, 35.069668, 36.648636>,  <41.964310, 35.182636, 36.437378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.978729, 35.069668, 36.648636>,  <42.002762, 34.881386, 37.000732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978729, 35.069668, 36.648636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338517, 0.819968, 0.461583,
		0.939040, 0.325708, 0.110080,
		-0.060079, 0.470709, -0.880241,
		41.960705, 35.210880, 36.384563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244789, 35.466148, 37.141018>,  <42.002762, 34.881386, 37.000732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244789, 35.466148, 37.141018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.040226, 35.524075, 36.802200>,  <41.917488, 35.558830, 36.598907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.040226, 35.524075, 36.802200>,  <42.244789, 35.466148, 37.141018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040226, 35.524075, 36.802200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276096, 0.905748, 0.321546,
		0.813777, 0.398308, -0.423223,
		-0.511408, 0.144816, -0.847048,
		41.886803, 35.567520, 36.548084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.644314, 35.154301, 29.221298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.403702, 34.877995, 29.381802>,  <43.259335, 34.712212, 29.478104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.403702, 34.877995, 29.381802>,  <43.644314, 35.154301, 29.221298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403702, 34.877995, 29.381802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760717, -0.648649, 0.023740,
		0.243878, 0.319526, 0.915657,
		-0.601526, -0.690766, 0.401260,
		43.223244, 34.670765, 29.502180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030003, 34.887493, 29.816618>,  <43.644314, 35.154301, 29.221298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030003, 34.887493, 29.816618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.756424, 34.605507, 29.741529>,  <43.592278, 34.436314, 29.696476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.756424, 34.605507, 29.741529>,  <44.030003, 34.887493, 29.816618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756424, 34.605507, 29.741529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671613, -0.708923, 0.215326,
		-0.284878, 0.021195, 0.958330,
		-0.683945, -0.704968, -0.187722,
		43.551239, 34.394016, 29.685213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975861, 34.412224, 30.371256>,  <44.030003, 34.887493, 29.816618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975861, 34.412224, 30.371256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.850849, 34.215843, 30.045977>,  <43.775841, 34.098015, 29.850809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.850849, 34.215843, 30.045977>,  <43.975861, 34.412224, 30.371256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850849, 34.215843, 30.045977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681620, -0.712160, 0.167996,
		-0.661604, -0.501788, 0.557215,
		-0.312528, -0.490956, -0.813197,
		43.757092, 34.068558, 29.802017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110756, 33.643829, 30.458239>,  <43.975861, 34.412224, 30.371256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110756, 33.643829, 30.458239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.060280, 33.652962, 30.061541>,  <44.029995, 33.658440, 29.823523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.060280, 33.652962, 30.061541>,  <44.110756, 33.643829, 30.458239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060280, 33.652962, 30.061541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610151, -0.786479, -0.095741,
		-0.782171, -0.617195, 0.085319,
		-0.126193, 0.022829, -0.991743,
		44.022423, 33.659809, 29.764017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053120, 33.015972, 30.286209>,  <44.110756, 33.643829, 30.458239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053120, 33.015972, 30.286209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.113651, 33.174194, 29.923853>,  <44.149971, 33.269127, 29.706440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.113651, 33.174194, 29.923853>,  <44.053120, 33.015972, 30.286209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113651, 33.174194, 29.923853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461507, -0.838702, -0.289119,
		-0.874134, -0.374322, -0.309472,
		0.151331, 0.395552, -0.905890,
		44.159050, 33.292862, 29.652086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874130, 32.470432, 29.738747>,  <44.053120, 33.015972, 30.286209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874130, 32.470432, 29.738747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.085819, 32.727570, 29.517235>,  <44.212833, 32.881851, 29.384327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.085819, 32.727570, 29.517235>,  <43.874130, 32.470432, 29.738747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085819, 32.727570, 29.517235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572465, -0.752262, -0.326167,
		-0.626263, -0.144405, -0.766122,
		0.529224, 0.642844, -0.553781,
		44.244587, 32.920422, 29.351101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862820, 32.237133, 28.997036>,  <43.874130, 32.470432, 29.738747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862820, 32.237133, 28.997036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.186314, 32.470394, 29.027699>,  <44.380409, 32.610352, 29.046097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.186314, 32.470394, 29.027699>,  <43.862820, 32.237133, 28.997036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186314, 32.470394, 29.027699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525828, -0.658456, -0.538461,
		-0.263529, 0.475782, -0.839156,
		0.808738, 0.583152, 0.076657,
		44.428936, 32.645340, 29.050695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046005, 32.432037, 28.344513>,  <43.862820, 32.237133, 28.997036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046005, 32.432037, 28.344513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.380207, 32.476620, 28.559734>,  <44.580730, 32.503368, 28.688868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.380207, 32.476620, 28.559734>,  <44.046005, 32.432037, 28.344513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380207, 32.476620, 28.559734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480865, -0.622139, -0.617829,
		0.265883, 0.774933, -0.573398,
		0.835509, 0.111457, 0.538054,
		44.630859, 32.510056, 28.721151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517231, 32.444847, 27.760748>,  <44.046005, 32.432037, 28.344513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517231, 32.444847, 27.760748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.724861, 32.385544, 28.097456>,  <44.849442, 32.349960, 28.299480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.724861, 32.385544, 28.097456>,  <44.517231, 32.444847, 27.760748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724861, 32.385544, 28.097456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590078, -0.650331, -0.478411,
		0.618358, 0.745043, -0.250088,
		0.519077, -0.148258, 0.841771,
		44.880585, 32.341068, 28.349987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186787, 32.612652, 27.675846>,  <44.517231, 32.444847, 27.760748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186787, 32.612652, 27.675846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.201382, 32.360153, 27.985735>,  <45.210136, 32.208652, 28.171669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.201382, 32.360153, 27.985735>,  <45.186787, 32.612652, 27.675846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201382, 32.360153, 27.985735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638743, -0.581481, -0.503872,
		0.768555, 0.513232, 0.381990,
		0.036483, -0.631247, 0.774723,
		45.212326, 32.170780, 28.218151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854309, 32.463692, 27.736320>,  <45.186787, 32.612652, 27.675846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854309, 32.463692, 27.736320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.639534, 32.163033, 27.889534>,  <45.510670, 31.982635, 27.981462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.639534, 32.163033, 27.889534>,  <45.854309, 32.463692, 27.736320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639534, 32.163033, 27.889534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551039, -0.656281, -0.515414,
		0.638790, -0.065678, 0.766572,
		-0.536938, -0.751653, 0.383035,
		45.478451, 31.937536, 28.004444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.360397, 31.904757, 27.802511>,  <45.854309, 32.463692, 27.736320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.360397, 31.904757, 27.802511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.010948, 31.718325, 27.858456>,  <45.801281, 31.606466, 27.892023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.010948, 31.718325, 27.858456>,  <46.360397, 31.904757, 27.802511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010948, 31.718325, 27.858456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322709, -0.770041, -0.550359,
		0.364211, -0.435669, 0.823130,
		-0.873618, -0.466078, 0.139863,
		45.748863, 31.578501, 27.900414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561806, 31.240700, 27.938116>,  <46.360397, 31.904757, 27.802511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561806, 31.240700, 27.938116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.181854, 31.223795, 27.814217>,  <45.953884, 31.213652, 27.739878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.181854, 31.223795, 27.814217>,  <46.561806, 31.240700, 27.938116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181854, 31.223795, 27.814217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248704, -0.702477, -0.666838,
		-0.189409, -0.710451, 0.677778,
		-0.949879, -0.042261, -0.309748,
		45.896889, 31.211117, 27.721292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082901, 30.613359, 28.048916>,  <46.561806, 31.240700, 27.938116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082901, 30.613359, 28.048916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.921902, 30.798864, 27.733215>,  <45.825302, 30.910168, 27.543795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.921902, 30.798864, 27.733215>,  <46.082901, 30.613359, 28.048916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921902, 30.798864, 27.733215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193743, -0.799488, -0.568580,
		-0.894684, -0.381765, 0.231941,
		-0.402497, 0.463762, -0.789253,
		45.801151, 30.937994, 27.496439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765884, 29.985611, 28.285599>,  <46.082901, 30.613359, 28.048916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765884, 29.985611, 28.285599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.832722, 29.696545, 28.553877>,  <45.872826, 29.523104, 28.714844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.832722, 29.696545, 28.553877>,  <45.765884, 29.985611, 28.285599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.832722, 29.696545, 28.553877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527127, 0.509390, 0.680191,
		-0.833197, -0.467198, -0.295820,
		0.167096, -0.722667, 0.670694,
		45.882851, 29.479744, 28.755085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224350, 30.009151, 28.627150>,  <45.765884, 29.985611, 28.285599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224350, 30.009151, 28.627150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.471325, 29.808039, 28.869135>,  <45.619511, 29.687372, 29.014326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.471325, 29.808039, 28.869135>,  <45.224350, 30.009151, 28.627150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471325, 29.808039, 28.869135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388690, 0.473611, 0.790325,
		-0.683876, -0.723122, 0.097002,
		0.617442, -0.502780, 0.604961,
		45.656559, 29.657206, 29.050623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836845, 29.892426, 29.254887>,  <45.224350, 30.009151, 28.627150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836845, 29.892426, 29.254887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.212490, 29.825296, 29.374817>,  <45.437878, 29.785019, 29.446775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.212490, 29.825296, 29.374817>,  <44.836845, 29.892426, 29.254887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212490, 29.825296, 29.374817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262715, 0.211690, 0.941365,
		-0.221455, -0.962820, 0.154711,
		0.939116, -0.167825, 0.299827,
		45.494225, 29.774948, 29.464766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786106, 29.480581, 29.809132>,  <44.836845, 29.892426, 29.254887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786106, 29.480581, 29.809132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.134407, 29.673704, 29.846397>,  <45.343388, 29.789577, 29.868757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.134407, 29.673704, 29.846397>,  <44.786106, 29.480581, 29.809132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134407, 29.673704, 29.846397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260720, 0.292690, 0.919977,
		0.416905, -0.825366, 0.380739,
		0.870756, 0.482809, 0.093165,
		45.395634, 29.818546, 29.874348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921104, 29.369585, 30.493219>,  <44.786106, 29.480581, 29.809132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921104, 29.369585, 30.493219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.155670, 29.673277, 30.380301>,  <45.296410, 29.855492, 30.312550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.155670, 29.673277, 30.380301>,  <44.921104, 29.369585, 30.493219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155670, 29.673277, 30.380301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256481, 0.504616, 0.824367,
		0.768336, -0.411013, 0.490640,
		0.586410, 0.759231, -0.282298,
		45.331593, 29.901047, 30.295610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155354, 29.585299, 31.125216>,  <44.921104, 29.369585, 30.493219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155354, 29.585299, 31.125216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.235241, 29.901411, 30.893503>,  <45.283173, 30.091080, 30.754477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.235241, 29.901411, 30.893503>,  <45.155354, 29.585299, 31.125216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235241, 29.901411, 30.893503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243304, 0.612672, 0.751955,
		0.949166, -0.009238, 0.314640,
		0.199718, 0.790283, -0.579280,
		45.295155, 30.138496, 30.719719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577980, 30.049469, 31.578106>,  <45.155354, 29.585299, 31.125216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577980, 30.049469, 31.578106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.393730, 30.230640, 31.272772>,  <45.283180, 30.339344, 31.089571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.393730, 30.230640, 31.272772>,  <45.577980, 30.049469, 31.578106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393730, 30.230640, 31.272772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450579, 0.621630, 0.640745,
		0.764725, 0.639085, -0.082257,
		-0.460624, 0.452930, -0.763335,
		45.255543, 30.366520, 31.043772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754513, 30.747868, 31.655409>,  <45.577980, 30.049469, 31.578106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754513, 30.747868, 31.655409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.423676, 30.745901, 31.430590>,  <45.225174, 30.744720, 31.295698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.423676, 30.745901, 31.430590>,  <45.754513, 30.747868, 31.655409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423676, 30.745901, 31.430590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370706, 0.756416, 0.538899,
		0.422494, 0.654073, -0.627446,
		-0.827089, -0.004916, -0.562050,
		45.175549, 30.744427, 31.261974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580952, 31.453485, 31.679716>,  <45.754513, 30.747868, 31.655409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580952, 31.453485, 31.679716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.248669, 31.279911, 31.540213>,  <45.049301, 31.175766, 31.456511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.248669, 31.279911, 31.540213>,  <45.580952, 31.453485, 31.679716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248669, 31.279911, 31.540213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554597, 0.699625, 0.450497,
		0.048513, 0.567649, -0.821840,
		-0.830704, -0.433935, -0.348757,
		44.999458, 31.149731, 31.435585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132965, 32.006191, 31.785208>,  <45.580952, 31.453485, 31.679716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132965, 32.006191, 31.785208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.894352, 31.688946, 31.736027>,  <44.751183, 31.498598, 31.706518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.894352, 31.688946, 31.736027>,  <45.132965, 32.006191, 31.785208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894352, 31.688946, 31.736027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651166, 0.388719, 0.651829,
		-0.469181, 0.468899, -0.748333,
		-0.596534, -0.793114, -0.122951,
		44.715393, 31.451012, 31.699141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462364, 32.224014, 31.750195>,  <45.132965, 32.006191, 31.785208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462364, 32.224014, 31.750195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.398178, 31.839825, 31.841175>,  <44.359669, 31.609310, 31.895763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.398178, 31.839825, 31.841175>,  <44.462364, 32.224014, 31.750195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398178, 31.839825, 31.841175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675262, 0.274894, 0.684437,
		-0.719912, -0.043761, -0.692685,
		-0.160463, -0.960478, 0.227449,
		44.350040, 31.551682, 31.909410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744625, 31.914278, 31.501055>,  <44.462364, 32.224014, 31.750195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744625, 31.914278, 31.501055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.887280, 31.736694, 31.829861>,  <43.972874, 31.630144, 32.027145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.887280, 31.736694, 31.829861>,  <43.744625, 31.914278, 31.501055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887280, 31.736694, 31.829861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718439, 0.432120, 0.545085,
		-0.597204, -0.784967, -0.164847,
		0.356640, -0.443959, 0.822015,
		43.994270, 31.603506, 32.076466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122673, 31.691690, 31.924088>,  <43.744625, 31.914278, 31.501055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122673, 31.691690, 31.924088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.421642, 31.700449, 32.189682>,  <43.601025, 31.705704, 32.349037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.421642, 31.700449, 32.189682>,  <43.122673, 31.691690, 31.924088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421642, 31.700449, 32.189682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641544, 0.283392, 0.712818,
		-0.172562, -0.958754, 0.225861,
		0.747424, 0.021895, 0.663986,
		43.645870, 31.707018, 32.388878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848633, 31.308853, 32.464725>,  <43.122673, 31.691690, 31.924088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848633, 31.308853, 32.464725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.131718, 31.524130, 32.647804>,  <43.301571, 31.653296, 32.757652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.131718, 31.524130, 32.647804>,  <42.848633, 31.308853, 32.464725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131718, 31.524130, 32.647804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607947, 0.133888, 0.782608,
		0.359914, -0.832119, 0.421948,
		0.707716, 0.538193, 0.457696,
		43.344032, 31.685587, 32.785114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660954, 30.662043, 32.939167>,  <42.848633, 31.308853, 32.464725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660954, 30.662043, 32.939167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.380707, 30.386974, 33.015312>,  <42.212559, 30.221933, 33.061001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.380707, 30.386974, 33.015312>,  <42.660954, 30.662043, 32.939167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380707, 30.386974, 33.015312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434388, -0.622722, -0.650787,
		0.566075, -0.373260, 0.735008,
		-0.700619, -0.687673, 0.190367,
		42.170521, 30.180672, 33.072422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087570, 30.091110, 33.067162>,  <42.660954, 30.662043, 32.939167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087570, 30.091110, 33.067162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.728523, 29.974733, 32.934719>,  <42.513096, 29.904907, 32.855251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.728523, 29.974733, 32.934719>,  <43.087570, 30.091110, 33.067162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728523, 29.974733, 32.934719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440420, -0.562024, -0.700113,
		0.017599, -0.774262, 0.632620,
		-0.897619, -0.290940, -0.331110,
		42.459236, 29.887451, 32.835384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193485, 29.427576, 32.951584>,  <43.087570, 30.091110, 33.067162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193485, 29.427576, 32.951584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.839424, 29.470873, 32.770565>,  <42.626987, 29.496851, 32.661953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.839424, 29.470873, 32.770565>,  <43.193485, 29.427576, 32.951584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839424, 29.470873, 32.770565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288767, -0.634840, -0.716653,
		-0.364865, -0.765024, 0.530671,
		-0.885148, 0.108241, -0.452544,
		42.573879, 29.503345, 32.634800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055695, 28.750519, 32.806469>,  <43.193485, 29.427576, 32.951584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055695, 28.750519, 32.806469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.844013, 28.989559, 32.565533>,  <42.717003, 29.132984, 32.420971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.844013, 28.989559, 32.565533>,  <43.055695, 28.750519, 32.806469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844013, 28.989559, 32.565533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119241, -0.650468, -0.750115,
		-0.840072, -0.468790, 0.272974,
		-0.529207, 0.597601, -0.602339,
		42.685249, 29.168840, 32.384830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569561, 28.371487, 32.516827>,  <43.055695, 28.750519, 32.806469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569561, 28.371487, 32.516827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594147, 28.680212, 32.263680>,  <42.608898, 28.865448, 32.111790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594147, 28.680212, 32.263680>,  <42.569561, 28.371487, 32.516827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594147, 28.680212, 32.263680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233801, -0.627560, -0.742634,
		-0.970340, -0.102319, -0.219024,
		0.061465, 0.771816, -0.632869,
		42.612587, 28.911757, 32.073818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223179, 28.196405, 31.910881>,  <42.569561, 28.371487, 32.516827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223179, 28.196405, 31.910881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.483181, 28.476046, 31.791719>,  <42.639183, 28.643829, 31.720222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.483181, 28.476046, 31.791719>,  <42.223179, 28.196405, 31.910881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483181, 28.476046, 31.791719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212951, -0.543879, -0.811694,
		-0.729481, 0.464168, -0.502399,
		0.650007, 0.699102, -0.297904,
		42.678185, 28.685776, 31.702349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057312, 28.326578, 31.170382>,  <42.223179, 28.196405, 31.910881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057312, 28.326578, 31.170382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.427692, 28.468023, 31.223410>,  <42.649921, 28.552891, 31.255226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.427692, 28.468023, 31.223410>,  <42.057312, 28.326578, 31.170382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427692, 28.468023, 31.223410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328672, -0.581690, -0.744050,
		-0.185991, 0.732525, -0.654839,
		0.925949, 0.353614, 0.132571,
		42.705479, 28.574108, 31.263182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768818, 28.976042, 31.106331>,  <42.057312, 28.326578, 31.170382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768818, 28.976042, 31.106331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465652, 28.804657, 30.909565>,  <41.283752, 28.701826, 30.791506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465652, 28.804657, 30.909565>,  <41.768818, 28.976042, 31.106331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465652, 28.804657, 30.909565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586249, 0.116602, 0.801696,
		-0.286139, 0.896004, -0.339561,
		-0.757916, -0.428463, -0.491917,
		41.238277, 28.676119, 30.761990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227367, 29.544428, 31.034161>,  <41.768818, 28.976042, 31.106331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227367, 29.544428, 31.034161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.079983, 29.173939, 31.002291>,  <40.991550, 28.951645, 30.983168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.079983, 29.173939, 31.002291>,  <41.227367, 29.544428, 31.034161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079983, 29.173939, 31.002291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593481, 0.168390, 0.787036,
		-0.715553, 0.337278, -0.611741,
		-0.368461, -0.926223, -0.079676,
		40.969444, 28.896072, 30.978388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543655, 29.649099, 30.886694>,  <41.227367, 29.544428, 31.034161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543655, 29.649099, 30.886694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.555302, 29.280008, 31.040436>,  <40.562290, 29.058554, 31.132681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.555302, 29.280008, 31.040436>,  <40.543655, 29.649099, 30.886694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555302, 29.280008, 31.040436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718551, 0.247982, 0.649761,
		-0.694865, -0.295093, -0.655807,
		0.029112, -0.922727, 0.384353,
		40.564034, 29.003191, 31.155743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876144, 29.500299, 31.056959>,  <40.543655, 29.649099, 30.886694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876144, 29.500299, 31.056959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.053200, 29.201639, 31.255590>,  <40.159431, 29.022444, 31.374769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.053200, 29.201639, 31.255590>,  <39.876144, 29.500299, 31.056959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053200, 29.201639, 31.255590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574002, 0.189527, 0.796619,
		-0.688910, -0.637648, -0.344687,
		0.442635, -0.746649, 0.496579,
		40.185989, 28.977644, 31.404564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376926, 28.869934, 31.181688>,  <39.876144, 29.500299, 31.056959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376926, 28.869934, 31.181688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668419, 28.865717, 31.455576>,  <39.843315, 28.863188, 31.619909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668419, 28.865717, 31.455576>,  <39.376926, 28.869934, 31.181688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668419, 28.865717, 31.455576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684798, -0.013989, 0.728599,
		0.001929, -0.999847, -0.017384,
		0.728731, -0.010499, 0.684720,
		39.887039, 28.862555, 31.660992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169197, 28.361456, 31.525043>,  <39.376926, 28.869934, 31.181688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169197, 28.361456, 31.525043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415043, 28.580685, 31.751976>,  <39.562550, 28.712223, 31.888136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.415043, 28.580685, 31.751976>,  <39.169197, 28.361456, 31.525043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415043, 28.580685, 31.751976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680825, 0.005323, 0.732427,
		0.398403, -0.836414, 0.376413,
		0.614616, 0.548073, 0.567331,
		39.599426, 28.745106, 31.922174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149593, 28.122051, 32.129822>,  <39.169197, 28.361456, 31.525043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149593, 28.122051, 32.129822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314220, 28.471397, 32.234009>,  <39.412998, 28.681005, 32.296520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314220, 28.471397, 32.234009>,  <39.149593, 28.122051, 32.129822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314220, 28.471397, 32.234009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564482, 0.019911, 0.825205,
		0.715520, -0.486658, 0.501194,
		0.411572, 0.873366, 0.260463,
		39.437691, 28.733406, 32.312149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.512894, 30.311365, 26.702036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.743641, 30.418089, 27.010849>,  <42.882092, 30.482122, 27.196136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.743641, 30.418089, 27.010849>,  <42.512894, 30.311365, 26.702036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743641, 30.418089, 27.010849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620701, 0.757584, 0.201981,
		-0.530989, -0.595718, 0.602637,
		0.576871, 0.266808, 0.772032,
		42.916702, 30.498131, 27.242458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072109, 30.549438, 27.332798>,  <42.512894, 30.311365, 26.702036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072109, 30.549438, 27.332798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.429337, 30.712635, 27.408665>,  <42.643673, 30.810553, 27.454185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.429337, 30.712635, 27.408665>,  <42.072109, 30.549438, 27.332798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429337, 30.712635, 27.408665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445077, 0.862811, 0.239717,
		-0.065844, -0.298500, 0.952136,
		0.893068, 0.407990, 0.189666,
		42.697258, 30.835032, 27.465565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124611, 30.706059, 28.047632>,  <42.072109, 30.549438, 27.332798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124611, 30.706059, 28.047632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.364456, 30.956327, 27.848032>,  <42.508362, 31.106489, 27.728271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.364456, 30.956327, 27.848032>,  <42.124611, 30.706059, 28.047632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364456, 30.956327, 27.848032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467045, 0.779907, 0.416671,
		0.649872, -0.016786, 0.759858,
		0.599613, 0.625670, -0.499000,
		42.544338, 31.144028, 27.698332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340076, 31.176170, 28.451994>,  <42.124611, 30.706059, 28.047632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340076, 31.176170, 28.451994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.411797, 31.356573, 28.102264>,  <42.454826, 31.464815, 27.892426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.411797, 31.356573, 28.102264>,  <42.340076, 31.176170, 28.451994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411797, 31.356573, 28.102264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702922, 0.680514, 0.206885,
		0.688299, 0.577490, 0.439033,
		0.179294, 0.451004, -0.874327,
		42.465584, 31.491875, 27.839966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486580, 31.912191, 28.617910>,  <42.340076, 31.176170, 28.451994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486580, 31.912191, 28.617910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.380707, 31.928284, 28.232512>,  <42.317181, 31.937939, 28.001272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.380707, 31.928284, 28.232512>,  <42.486580, 31.912191, 28.617910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380707, 31.928284, 28.232512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577303, 0.793700, 0.191734,
		0.772439, 0.606978, -0.186857,
		-0.264686, 0.040229, -0.963495,
		42.301300, 31.940353, 27.943462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682858, 32.565838, 28.311258>,  <42.486580, 31.912191, 28.617910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682858, 32.565838, 28.311258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386646, 32.435661, 28.076069>,  <42.208920, 32.357555, 27.934956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386646, 32.435661, 28.076069>,  <42.682858, 32.565838, 28.311258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386646, 32.435661, 28.076069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426290, 0.903845, 0.036622,
		0.519520, 0.277767, -0.808050,
		-0.740524, -0.325437, -0.587975,
		42.164490, 32.338032, 27.899677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400688, 33.201180, 28.101360>,  <42.682858, 32.565838, 28.311258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400688, 33.201180, 28.101360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.130241, 32.940014, 27.964792>,  <41.967972, 32.783314, 27.882851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.130241, 32.940014, 27.964792>,  <42.400688, 33.201180, 28.101360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130241, 32.940014, 27.964792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698181, 0.715788, 0.013791,
		0.235382, 0.247699, -0.939809,
		-0.676120, -0.652911, -0.341423,
		41.927406, 32.744141, 27.862366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047882, 33.457886, 27.535549>,  <42.400688, 33.201180, 28.101360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047882, 33.457886, 27.535549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.793980, 33.179192, 27.669197>,  <41.641636, 33.011974, 27.749386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.793980, 33.179192, 27.669197>,  <42.047882, 33.457886, 27.535549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793980, 33.179192, 27.669197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746797, 0.664197, -0.033714,
		-0.198433, -0.270921, -0.941927,
		-0.634758, -0.696739, 0.334122,
		41.603554, 32.970169, 27.769434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499519, 33.667572, 27.228653>,  <42.047882, 33.457886, 27.535549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499519, 33.667572, 27.228653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.375729, 33.423832, 27.520657>,  <41.301453, 33.277588, 27.695860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.375729, 33.423832, 27.520657>,  <41.499519, 33.667572, 27.228653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375729, 33.423832, 27.520657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806808, 0.574574, 0.137568,
		-0.503272, -0.546404, -0.669447,
		-0.309479, -0.609350, 0.730011,
		41.282887, 33.241028, 27.739660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767193, 33.419735, 27.072378>,  <41.499519, 33.667572, 27.228653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767193, 33.419735, 27.072378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.821102, 33.382401, 27.466967>,  <40.853447, 33.360001, 27.703720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.821102, 33.382401, 27.466967>,  <40.767193, 33.419735, 27.072378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821102, 33.382401, 27.466967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863287, 0.477621, 0.163135,
		-0.486385, -0.873594, -0.016203,
		0.134775, -0.093334, 0.986471,
		40.861534, 33.354401, 27.762907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125565, 33.191654, 27.303181>,  <40.767193, 33.419735, 27.072378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125565, 33.191654, 27.303181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299244, 33.338783, 27.632099>,  <40.403454, 33.427063, 27.829451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299244, 33.338783, 27.632099>,  <40.125565, 33.191654, 27.303181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299244, 33.338783, 27.632099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849190, 0.471722, 0.237392,
		-0.300577, -0.801363, 0.517176,
		0.434201, 0.367826, 0.822298,
		40.429504, 33.449131, 27.878788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605476, 33.136349, 27.836456>,  <40.125565, 33.191654, 27.303181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605476, 33.136349, 27.836456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856045, 33.425617, 27.952814>,  <40.006386, 33.599178, 28.022629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856045, 33.425617, 27.952814>,  <39.605476, 33.136349, 27.836456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856045, 33.425617, 27.952814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779114, 0.569409, 0.262212,
		0.023986, -0.390895, 0.920123,
		0.626423, 0.723170, 0.290894,
		40.043972, 33.642567, 28.040083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315990, 32.661377, 28.391516>,  <39.605476, 33.136349, 27.836456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315990, 32.661377, 28.391516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.003578, 32.436172, 28.499603>,  <38.816132, 32.301052, 28.564455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.003578, 32.436172, 28.499603>,  <39.315990, 32.661377, 28.391516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003578, 32.436172, 28.499603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424909, -0.796188, -0.430739,
		0.457654, -0.221601, 0.861072,
		-0.781028, -0.563007, 0.270219,
		38.769268, 32.267269, 28.580669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593632, 32.014927, 28.647726>,  <39.315990, 32.661377, 28.391516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593632, 32.014927, 28.647726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208042, 31.960855, 28.556091>,  <38.976688, 31.928413, 28.501110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208042, 31.960855, 28.556091>,  <39.593632, 32.014927, 28.647726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208042, 31.960855, 28.556091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197625, -0.940423, -0.276675,
		-0.178040, -0.311981, 0.933257,
		-0.963974, -0.135176, -0.229088,
		38.918850, 31.920303, 28.487366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562656, 31.339190, 28.855328>,  <39.593632, 32.014927, 28.647726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562656, 31.339190, 28.855328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.244781, 31.409161, 28.622824>,  <39.054054, 31.451143, 28.483320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.244781, 31.409161, 28.622824>,  <39.562656, 31.339190, 28.855328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244781, 31.409161, 28.622824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106672, -0.902430, -0.417423,
		-0.597567, -0.393727, 0.698493,
		-0.794692, 0.174928, -0.581262,
		39.006374, 31.461639, 28.448444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214539, 30.790541, 28.954763>,  <39.562656, 31.339190, 28.855328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214539, 30.790541, 28.954763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080116, 30.927607, 28.603846>,  <38.999462, 31.009846, 28.393295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080116, 30.927607, 28.603846>,  <39.214539, 30.790541, 28.954763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080116, 30.927607, 28.603846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044849, -0.936233, -0.348506,
		-0.940773, -0.077772, 0.329996,
		-0.336057, 0.342665, -0.877295,
		38.979301, 31.030407, 28.340656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699039, 30.370596, 28.759264>,  <39.214539, 30.790541, 28.954763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699039, 30.370596, 28.759264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.831497, 30.545580, 28.424847>,  <38.910973, 30.650570, 28.224195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.831497, 30.545580, 28.424847>,  <38.699039, 30.370596, 28.759264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831497, 30.545580, 28.424847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039357, -0.878860, -0.475454,
		-0.942758, 0.190349, -0.273815,
		0.331147, 0.437462, -0.836043,
		38.930840, 30.676819, 28.174034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358135, 30.003504, 28.225063>,  <38.699039, 30.370596, 28.759264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358135, 30.003504, 28.225063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668659, 30.192684, 28.058374>,  <38.854973, 30.306192, 27.958361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668659, 30.192684, 28.058374>,  <38.358135, 30.003504, 28.225063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668659, 30.192684, 28.058374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201487, -0.812598, -0.546889,
		-0.597276, 0.340594, -0.726124,
		0.776314, 0.472949, -0.416720,
		38.901554, 30.334568, 27.933359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299469, 29.745962, 27.529636>,  <38.358135, 30.003504, 28.225063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299469, 29.745962, 27.529636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658279, 29.919863, 27.561480>,  <38.873566, 30.024202, 27.580585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658279, 29.919863, 27.561480>,  <38.299469, 29.745962, 27.529636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658279, 29.919863, 27.561480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340139, -0.564025, -0.752450,
		-0.282227, 0.702044, -0.653821,
		0.897025, 0.434752, 0.079609,
		38.927387, 30.050289, 27.585361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449650, 29.873550, 26.894514>,  <38.299469, 29.745962, 27.529636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449650, 29.873550, 26.894514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.799465, 29.855602, 27.087667>,  <39.009354, 29.844833, 27.203560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.799465, 29.855602, 27.087667>,  <38.449650, 29.873550, 26.894514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799465, 29.855602, 27.087667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362954, -0.599825, -0.713074,
		0.321640, 0.798872, -0.508282,
		0.874535, -0.044870, 0.482882,
		39.061825, 29.842142, 27.232533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931961, 29.849312, 26.424040>,  <38.449650, 29.873550, 26.894514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931961, 29.849312, 26.424040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125042, 29.697237, 26.739622>,  <39.240891, 29.605991, 26.928972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125042, 29.697237, 26.739622>,  <38.931961, 29.849312, 26.424040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125042, 29.697237, 26.739622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497934, -0.621946, -0.604355,
		0.720457, 0.684573, -0.110908,
		0.482704, -0.380187, 0.788958,
		39.269852, 29.583181, 26.976309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528187, 29.722692, 26.163136>,  <38.931961, 29.849312, 26.424040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528187, 29.722692, 26.163136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543423, 29.516127, 26.505333>,  <39.552563, 29.392187, 26.710651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543423, 29.516127, 26.505333>,  <39.528187, 29.722692, 26.163136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543423, 29.516127, 26.505333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444470, -0.758009, -0.477356,
		0.894984, 0.398421, 0.200660,
		0.038087, -0.516413, 0.855492,
		39.554848, 29.361202, 26.761980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238728, 29.523289, 26.168856>,  <39.528187, 29.722692, 26.163136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238728, 29.523289, 26.168856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073532, 29.256899, 26.417345>,  <39.974415, 29.097065, 26.566439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073532, 29.256899, 26.417345>,  <40.238728, 29.523289, 26.168856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073532, 29.256899, 26.417345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519154, -0.732584, -0.440228,
		0.748279, 0.140703, 0.648291,
		-0.412986, -0.665976, 0.621224,
		39.949635, 29.057106, 26.603712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782654, 29.179802, 26.561096>,  <40.238728, 29.523289, 26.168856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782654, 29.179802, 26.561096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.454437, 28.952953, 26.532591>,  <40.257507, 28.816843, 26.515488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.454437, 28.952953, 26.532591>,  <40.782654, 29.179802, 26.561096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454437, 28.952953, 26.532591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480923, -0.617631, -0.622291,
		0.308902, -0.544889, 0.779536,
		-0.820544, -0.567123, -0.071262,
		40.208275, 28.782816, 26.511211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939114, 28.434368, 26.546221>,  <40.782654, 29.179802, 26.561096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939114, 28.434368, 26.546221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585636, 28.490307, 26.367548>,  <40.373550, 28.523870, 26.260344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585636, 28.490307, 26.367548>,  <40.939114, 28.434368, 26.546221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585636, 28.490307, 26.367548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231588, -0.698687, -0.676907,
		-0.406755, -0.701626, 0.585040,
		-0.883696, 0.139847, -0.446683,
		40.320526, 28.532261, 26.233543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010693, 28.172522, 27.276363>,  <40.939114, 28.434368, 26.546221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010693, 28.172522, 27.276363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.103561, 27.818497, 27.437737>,  <41.159283, 27.606081, 27.534561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.103561, 27.818497, 27.437737>,  <41.010693, 28.172522, 27.276363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103561, 27.818497, 27.437737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371714, 0.464021, 0.804061,
		-0.898845, -0.036722, 0.436725,
		0.232176, -0.885063, 0.403433,
		41.173214, 27.552979, 27.558767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582466, 28.032413, 27.871542>,  <41.010693, 28.172522, 27.276363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582466, 28.032413, 27.871542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911594, 27.811270, 27.924173>,  <41.109070, 27.678583, 27.955751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911594, 27.811270, 27.924173>,  <40.582466, 28.032413, 27.871542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911594, 27.811270, 27.924173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066149, 0.323125, 0.944042,
		-0.564438, -0.768073, 0.302445,
		0.822821, -0.552859, 0.131577,
		41.158440, 27.645412, 27.963646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419632, 27.609087, 28.457664>,  <40.582466, 28.032413, 27.871542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419632, 27.609087, 28.457664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.815212, 27.564465, 28.418617>,  <41.052559, 27.537691, 28.395189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.815212, 27.564465, 28.418617>,  <40.419632, 27.609087, 28.457664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815212, 27.564465, 28.418617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106116, 0.072961, 0.991673,
		-0.103508, -0.991076, 0.083993,
		0.988952, -0.111560, -0.097617,
		41.111897, 27.530996, 28.389332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584705, 27.147139, 28.986742>,  <40.419632, 27.609087, 28.457664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584705, 27.147139, 28.986742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918556, 27.350679, 28.902397>,  <41.118866, 27.472805, 28.851789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.918556, 27.350679, 28.902397>,  <40.584705, 27.147139, 28.986742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918556, 27.350679, 28.902397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054271, 0.304989, 0.950808,
		0.548134, -0.805015, 0.226936,
		0.834628, 0.508854, -0.210864,
		41.168945, 27.503336, 28.839138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925777, 27.058573, 29.630257>,  <40.584705, 27.147139, 28.986742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925777, 27.058573, 29.630257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109097, 27.366751, 29.453001>,  <41.219090, 27.551659, 29.346647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109097, 27.366751, 29.453001>,  <40.925777, 27.058573, 29.630257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109097, 27.366751, 29.453001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066408, 0.467507, 0.881491,
		0.886313, -0.433416, 0.163095,
		0.458300, 0.770447, -0.443140,
		41.246586, 27.597885, 29.320059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356277, 27.191513, 30.094271>,  <40.925777, 27.058573, 29.630257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356277, 27.191513, 30.094271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.370686, 27.518896, 29.864897>,  <41.379330, 27.715326, 29.727272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.370686, 27.518896, 29.864897>,  <41.356277, 27.191513, 30.094271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370686, 27.518896, 29.864897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144479, 0.563516, 0.813373,
		0.988852, -0.112146, -0.097953,
		0.036018, 0.818458, -0.573436,
		41.381493, 27.764433, 29.692865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981281, 27.459951, 30.270941>,  <41.356277, 27.191513, 30.094271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981281, 27.459951, 30.270941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.740074, 27.744986, 30.127499>,  <41.595352, 27.916006, 30.041433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.740074, 27.744986, 30.127499>,  <41.981281, 27.459951, 30.270941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740074, 27.744986, 30.127499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027169, 0.430924, 0.901979,
		0.797268, 0.553649, -0.240493,
		-0.603014, 0.712585, -0.358604,
		41.559170, 27.958761, 30.019917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321014, 28.215342, 30.417536>,  <41.981281, 27.459951, 30.270941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321014, 28.215342, 30.417536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921619, 28.215271, 30.395512>,  <41.681984, 28.215229, 30.382298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921619, 28.215271, 30.395512>,  <42.321014, 28.215342, 30.417536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921619, 28.215271, 30.395512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048940, 0.461074, 0.886011,
		0.025231, 0.887362, -0.460383,
		-0.998483, -0.000176, -0.055061,
		41.622074, 28.215218, 30.378994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266594, 28.904930, 30.527384>,  <42.321014, 28.215342, 30.417536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266594, 28.904930, 30.527384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.581924, 28.734297, 30.704727>,  <42.771122, 28.631916, 30.811132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.581924, 28.734297, 30.704727>,  <42.266594, 28.904930, 30.527384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581924, 28.734297, 30.704727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345724, -0.288945, -0.892741,
		0.508934, 0.857052, -0.080303,
		0.788328, -0.426583, 0.443357,
		42.818424, 28.606321, 30.837734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886871, 29.089941, 30.032125>,  <42.266594, 28.904930, 30.527384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886871, 29.089941, 30.032125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.051144, 28.839882, 30.297615>,  <43.149708, 28.689846, 30.456909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.051144, 28.839882, 30.297615>,  <42.886871, 29.089941, 30.032125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051144, 28.839882, 30.297615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644385, -0.316005, -0.696354,
		0.645066, 0.713673, 0.273060,
		0.410681, -0.625149, 0.663724,
		43.174347, 28.652336, 30.496733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678001, 29.001097, 29.945988>,  <42.886871, 29.089941, 30.032125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678001, 29.001097, 29.945988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.626526, 28.669233, 30.163284>,  <43.595642, 28.470116, 30.293661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.626526, 28.669233, 30.163284>,  <43.678001, 29.001097, 29.945988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626526, 28.669233, 30.163284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723294, -0.453287, -0.520939,
		0.678444, 0.325884, 0.658417,
		-0.128686, -0.829657, 0.543240,
		43.587921, 28.420336, 30.326256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382439, 28.766603, 30.116564>,  <43.678001, 29.001097, 29.945988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382439, 28.766603, 30.116564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.106945, 28.477209, 30.135380>,  <43.941650, 28.303572, 30.146669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.106945, 28.477209, 30.135380>,  <44.382439, 28.766603, 30.116564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106945, 28.477209, 30.135380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579874, -0.588643, -0.563245,
		0.435190, -0.360650, 0.824950,
		-0.688735, -0.723485, 0.047040,
		43.900326, 28.260164, 30.149492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775703, 28.162971, 30.325100>,  <44.382439, 28.766603, 30.116564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775703, 28.162971, 30.325100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.455330, 28.012945, 30.138411>,  <44.263107, 27.922930, 30.026398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.455330, 28.012945, 30.138411>,  <44.775703, 28.162971, 30.325100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455330, 28.012945, 30.138411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595028, -0.585393, -0.550687,
		-0.066671, -0.718777, 0.692037,
		-0.800935, -0.375066, -0.466721,
		44.215050, 27.900425, 29.998394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987312, 27.572222, 30.078897>,  <44.775703, 28.162971, 30.325100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987312, 27.572222, 30.078897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.644169, 27.516644, 29.881002>,  <44.438282, 27.483297, 29.762266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.644169, 27.516644, 29.881002>,  <44.987312, 27.572222, 30.078897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644169, 27.516644, 29.881002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495217, -0.480628, -0.723711,
		-0.137228, -0.865847, 0.481121,
		-0.857863, -0.138946, -0.494738,
		44.386810, 27.474960, 29.732582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925812, 26.898905, 29.842291>,  <44.987312, 27.572222, 30.078897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925812, 26.898905, 29.842291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.702850, 27.115971, 29.590954>,  <44.569073, 27.246210, 29.440151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.702850, 27.115971, 29.590954>,  <44.925812, 26.898905, 29.842291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702850, 27.115971, 29.590954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545516, -0.331137, -0.769909,
		-0.625872, -0.771921, -0.111458,
		-0.557401, 0.542667, -0.628345,
		44.535629, 27.278770, 29.402451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906269, 26.452419, 29.355621>,  <44.925812, 26.898905, 29.842291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906269, 26.452419, 29.355621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.798828, 26.796436, 29.182100>,  <44.734364, 27.002846, 29.077988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.798828, 26.796436, 29.182100>,  <44.906269, 26.452419, 29.355621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798828, 26.796436, 29.182100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514148, -0.252823, -0.819593,
		-0.814558, -0.443182, -0.374280,
		-0.268602, 0.860041, -0.433800,
		44.718246, 27.054449, 29.051960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663509, 26.265984, 28.655890>,  <44.906269, 26.452419, 29.355621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663509, 26.265984, 28.655890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.779053, 26.648932, 28.655228>,  <44.848377, 26.878700, 28.654831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.779053, 26.648932, 28.655228>,  <44.663509, 26.265984, 28.655890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779053, 26.648932, 28.655228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578227, -0.175842, -0.796702,
		-0.763030, 0.229177, -0.604371,
		0.288859, 0.957370, -0.001656,
		44.865711, 26.936142, 28.654730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.777943, 36.692356, 37.649406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769943, 36.293114, 37.672691>,  <36.765144, 36.053570, 37.686665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769943, 36.293114, 37.672691>,  <36.777943, 36.692356, 37.649406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769943, 36.293114, 37.672691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763441, -0.052839, -0.643713,
		0.645568, 0.031571, 0.763050,
		-0.019996, -0.998104, 0.058214,
		36.763943, 35.993683, 37.690155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471081, 36.742710, 37.015621>,  <36.777943, 36.692356, 37.649406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471081, 36.742710, 37.015621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.827488, 36.890751, 37.120777>,  <37.041332, 36.979576, 37.183872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.827488, 36.890751, 37.120777>,  <36.471081, 36.742710, 37.015621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827488, 36.890751, 37.120777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441376, -0.841709, -0.310988,
		0.106181, 0.393130, -0.913331,
		0.891018, 0.370102, 0.262892,
		37.094791, 37.001781, 37.199646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984543, 36.598888, 36.492718>,  <36.471081, 36.742710, 37.015621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984543, 36.598888, 36.492718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230259, 36.657227, 36.802914>,  <37.377689, 36.692230, 36.989029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230259, 36.657227, 36.802914>,  <36.984543, 36.598888, 36.492718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230259, 36.657227, 36.802914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515363, -0.818364, -0.254327,
		0.597538, 0.555887, -0.577874,
		0.614288, 0.145845, 0.775486,
		37.414547, 36.700981, 37.035561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571949, 36.616447, 36.263893>,  <36.984543, 36.598888, 36.492718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571949, 36.616447, 36.263893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663006, 36.523224, 36.642071>,  <37.717640, 36.467289, 36.868977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663006, 36.523224, 36.642071>,  <37.571949, 36.616447, 36.263893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663006, 36.523224, 36.642071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598609, -0.732306, -0.324646,
		0.768015, 0.639854, -0.027191,
		0.227638, -0.233057, 0.945445,
		37.731297, 36.453308, 36.925705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228149, 36.323677, 36.173973>,  <37.571949, 36.616447, 36.263893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228149, 36.323677, 36.173973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153389, 36.209686, 36.550026>,  <38.108532, 36.141293, 36.775658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153389, 36.209686, 36.550026>,  <38.228149, 36.323677, 36.173973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153389, 36.209686, 36.550026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480059, -0.861447, -0.165687,
		0.857094, 0.420353, 0.297813,
		-0.186903, -0.284977, 0.940136,
		38.097317, 36.124195, 36.832066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887741, 36.120251, 36.487099>,  <38.228149, 36.323677, 36.173973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887741, 36.120251, 36.487099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.583538, 35.926987, 36.660618>,  <38.401016, 35.811028, 36.764729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.583538, 35.926987, 36.660618>,  <38.887741, 36.120251, 36.487099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583538, 35.926987, 36.660618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504717, -0.860175, -0.073211,
		0.408516, 0.163268, 0.898030,
		-0.760510, -0.483159, 0.433799,
		38.355385, 35.782040, 36.790756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196007, 35.810230, 37.040302>,  <38.887741, 36.120251, 36.487099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196007, 35.810230, 37.040302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.860565, 35.618622, 36.936546>,  <38.659302, 35.503658, 36.874290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.860565, 35.618622, 36.936546>,  <39.196007, 35.810230, 37.040302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860565, 35.618622, 36.936546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500711, -0.865366, -0.020717,
		-0.214547, -0.147255, 0.965549,
		-0.838605, -0.479017, -0.259394,
		38.608982, 35.474918, 36.858727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391075, 35.170025, 37.351181>,  <39.196007, 35.810230, 37.040302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391075, 35.170025, 37.351181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.081001, 35.061695, 37.122887>,  <38.894958, 34.996696, 36.985909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.081001, 35.061695, 37.122887>,  <39.391075, 35.170025, 37.351181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081001, 35.061695, 37.122887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389566, -0.916149, -0.094387,
		-0.497321, -0.295508, 0.815688,
		-0.775184, -0.270824, -0.570740,
		38.848446, 34.980450, 36.951664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169212, 34.489166, 37.681831>,  <39.391075, 35.170025, 37.351181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169212, 34.489166, 37.681831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.027657, 34.474174, 37.308018>,  <38.942722, 34.465179, 37.083729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.027657, 34.474174, 37.308018>,  <39.169212, 34.489166, 37.681831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027657, 34.474174, 37.308018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200569, -0.978993, -0.036688,
		-0.913530, -0.200423, 0.353968,
		-0.353885, -0.037479, -0.934538,
		38.921490, 34.462933, 37.027657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774857, 33.926907, 37.785980>,  <39.169212, 34.489166, 37.681831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774857, 33.926907, 37.785980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.837505, 33.998444, 37.397449>,  <38.875095, 34.041367, 37.164330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.837505, 33.998444, 37.397449>,  <38.774857, 33.926907, 37.785980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837505, 33.998444, 37.397449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102617, -0.981092, -0.164096,
		-0.982313, -0.073974, -0.172015,
		0.156624, 0.178845, -0.971331,
		38.884491, 34.052097, 37.106049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310669, 33.490620, 37.376244>,  <38.774857, 33.926907, 37.785980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310669, 33.490620, 37.376244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621834, 33.584560, 37.143108>,  <38.808533, 33.640923, 37.003227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.621834, 33.584560, 37.143108>,  <38.310669, 33.490620, 37.376244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621834, 33.584560, 37.143108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080991, -0.957270, -0.277623,
		-0.623131, 0.168762, -0.763693,
		0.777913, 0.234847, -0.582836,
		38.855209, 33.655014, 36.968258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042938, 33.206955, 36.659565>,  <38.310669, 33.490620, 37.376244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042938, 33.206955, 36.659565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440754, 33.237892, 36.631557>,  <38.679443, 33.256454, 36.614754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440754, 33.237892, 36.631557>,  <38.042938, 33.206955, 36.659565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440754, 33.237892, 36.631557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061176, -0.975968, -0.209153,
		-0.084511, 0.203728, -0.975373,
		0.994543, 0.077345, -0.070017,
		38.739117, 33.261097, 36.610554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501038, 32.984585, 36.105312>,  <38.042938, 33.206955, 36.659565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501038, 32.984585, 36.105312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266068, 32.706730, 36.271404>,  <37.125084, 32.540016, 36.371059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266068, 32.706730, 36.271404>,  <37.501038, 32.984585, 36.105312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266068, 32.706730, 36.271404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560662, 0.719317, 0.410173,
		-0.583601, 0.008143, -0.812000,
		-0.587425, -0.694635, 0.415229,
		37.089840, 32.498341, 36.395973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793602, 33.169472, 36.006016>,  <37.501038, 32.984585, 36.105312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793602, 33.169472, 36.006016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778976, 32.913456, 36.313004>,  <36.770199, 32.759846, 36.497196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778976, 32.913456, 36.313004>,  <36.793602, 33.169472, 36.006016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778976, 32.913456, 36.313004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595966, 0.630437, 0.497366,
		-0.802176, -0.439199, -0.404496,
		-0.036567, -0.640042, 0.767469,
		36.768005, 32.721443, 36.543243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034420, 33.022961, 36.139107>,  <36.793602, 33.169472, 36.006016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034420, 33.022961, 36.139107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244453, 32.943150, 36.470039>,  <36.370472, 32.895264, 36.668598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244453, 32.943150, 36.470039>,  <36.034420, 33.022961, 36.139107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244453, 32.943150, 36.470039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653944, 0.527545, 0.542268,
		-0.544652, -0.825763, 0.146525,
		0.525083, -0.199528, 0.827331,
		36.401978, 32.883293, 36.718239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545071, 33.198895, 36.653564>,  <36.034420, 33.022961, 36.139107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545071, 33.198895, 36.653564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881496, 33.147121, 36.863651>,  <36.083351, 33.116058, 36.989704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881496, 33.147121, 36.863651>,  <35.545071, 33.198895, 36.653564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881496, 33.147121, 36.863651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329937, 0.646672, 0.687719,
		-0.428657, -0.751706, 0.501190,
		0.841068, -0.129434, 0.525216,
		36.133816, 33.108292, 37.021217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200119, 33.185390, 37.274323>,  <35.545071, 33.198895, 36.653564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200119, 33.185390, 37.274323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586632, 33.280640, 37.313488>,  <35.818539, 33.337791, 37.336987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586632, 33.280640, 37.313488>,  <35.200119, 33.185390, 37.274323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586632, 33.280640, 37.313488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249162, 0.769024, 0.588660,
		0.064877, -0.593210, 0.802429,
		0.966286, 0.238125, 0.097913,
		35.876518, 33.352077, 37.342861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273888, 33.193707, 38.023613>,  <35.200119, 33.185390, 37.274323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273888, 33.193707, 38.023613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589478, 33.392735, 37.879425>,  <35.778831, 33.512150, 37.792912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589478, 33.392735, 37.879425>,  <35.273888, 33.193707, 38.023613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589478, 33.392735, 37.879425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317314, 0.832361, 0.454408,
		0.526142, -0.244135, 0.814600,
		0.788978, 0.497567, -0.360473,
		35.826172, 33.542004, 37.771282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710609, 33.548206, 38.580151>,  <35.273888, 33.193707, 38.023613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710609, 33.548206, 38.580151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805756, 33.753876, 38.250534>,  <35.862843, 33.877277, 38.052765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805756, 33.753876, 38.250534>,  <35.710609, 33.548206, 38.580151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805756, 33.753876, 38.250534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269011, 0.850079, 0.452768,
		0.933302, 0.113977, 0.340525,
		0.237867, 0.514174, -0.824041,
		35.877117, 33.908127, 38.003323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157269, 34.052784, 38.834324>,  <35.710609, 33.548206, 38.580151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157269, 34.052784, 38.834324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018444, 34.181988, 38.482140>,  <35.935150, 34.259510, 38.270828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018444, 34.181988, 38.482140>,  <36.157269, 34.052784, 38.834324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018444, 34.181988, 38.482140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366871, 0.817245, 0.444428,
		0.863109, 0.477258, -0.165128,
		-0.347057, 0.323009, -0.880464,
		35.914326, 34.278889, 38.218002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323441, 34.808170, 38.714905>,  <36.157269, 34.052784, 38.834324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323441, 34.808170, 38.714905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993786, 34.747047, 38.496754>,  <35.795990, 34.710373, 38.365864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993786, 34.747047, 38.496754>,  <36.323441, 34.808170, 38.714905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993786, 34.747047, 38.496754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349396, 0.895031, 0.277204,
		0.445773, 0.419009, -0.791023,
		-0.824142, -0.152810, -0.545380,
		35.746544, 34.701206, 38.333141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169037, 35.451286, 38.384083>,  <36.323441, 34.808170, 38.714905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169037, 35.451286, 38.384083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823730, 35.252853, 38.346828>,  <35.616547, 35.133793, 38.324478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823730, 35.252853, 38.346828>,  <36.169037, 35.451286, 38.384083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823730, 35.252853, 38.346828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504505, 0.853759, 0.128724,
		0.015655, 0.158109, -0.987298,
		-0.863267, -0.496081, -0.093132,
		35.564751, 35.104031, 38.318890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707745, 35.977570, 38.146179>,  <36.169037, 35.451286, 38.384083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707745, 35.977570, 38.146179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455658, 35.688946, 38.260849>,  <35.304405, 35.515774, 38.329651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455658, 35.688946, 38.260849>,  <35.707745, 35.977570, 38.146179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455658, 35.688946, 38.260849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662252, 0.692293, 0.286621,
		-0.405276, -0.009217, -0.914148,
		-0.630217, -0.721557, 0.286674,
		35.266594, 35.472477, 38.346851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122181, 36.210415, 37.751163>,  <35.707745, 35.977570, 38.146179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122181, 36.210415, 37.751163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015850, 35.978584, 38.059303>,  <34.952053, 35.839485, 38.244186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015850, 35.978584, 38.059303>,  <35.122181, 36.210415, 37.751163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015850, 35.978584, 38.059303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644116, 0.701326, 0.305379,
		-0.717253, -0.415015, -0.559741,
		-0.265824, -0.579572, 0.770346,
		34.936104, 35.804714, 38.290405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408680, 36.117176, 37.670715>,  <35.122181, 36.210415, 37.751163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408680, 36.117176, 37.670715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489605, 36.036747, 38.054100>,  <34.538158, 35.988491, 38.284130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489605, 36.036747, 38.054100>,  <34.408680, 36.117176, 37.670715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489605, 36.036747, 38.054100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563571, 0.776495, 0.281857,
		-0.800911, -0.597181, 0.043774,
		0.202310, -0.201072, 0.958457,
		34.550297, 35.976425, 38.341637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756207, 36.077785, 38.066357>,  <34.408680, 36.117176, 37.670715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756207, 36.077785, 38.066357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.002220, 36.162704, 38.370110>,  <34.149830, 36.213654, 38.552361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.002220, 36.162704, 38.370110>,  <33.756207, 36.077785, 38.066357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002220, 36.162704, 38.370110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570041, 0.785106, 0.242202,
		-0.544777, -0.581842, 0.603886,
		0.615038, 0.212293, 0.759381,
		34.186733, 36.226391, 38.597923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795872, 36.644386, 37.459881>,  <33.756207, 36.077785, 38.066357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795872, 36.644386, 37.459881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645142, 36.663570, 37.089863>,  <33.554703, 36.675079, 36.867851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645142, 36.663570, 37.089863>,  <33.795872, 36.644386, 37.459881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645142, 36.663570, 37.089863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911286, -0.198183, 0.360945,
		-0.166017, 0.978991, 0.118386,
		-0.376824, 0.047961, -0.925042,
		33.532093, 36.677959, 36.812351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479927, 36.933071, 37.148659>,  <33.795872, 36.644386, 37.459881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479927, 36.933071, 37.148659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443169, 37.307438, 37.012650>,  <34.421112, 37.532059, 36.931042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443169, 37.307438, 37.012650>,  <34.479927, 36.933071, 37.148659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443169, 37.307438, 37.012650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053096, -0.336379, -0.940229,
		-0.994352, -0.104458, -0.018781,
		-0.091897, 0.935915, -0.340026,
		34.415600, 37.588211, 36.910641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060223, 37.006104, 36.646999>,  <34.479927, 36.933071, 37.148659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060223, 37.006104, 36.646999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277260, 37.331161, 36.561951>,  <34.407482, 37.526196, 36.510921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277260, 37.331161, 36.561951>,  <34.060223, 37.006104, 36.646999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277260, 37.331161, 36.561951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194212, -0.367626, -0.909468,
		-0.817238, 0.452175, -0.357295,
		0.542590, 0.812643, -0.212620,
		34.440037, 37.574955, 36.498165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717270, 37.283207, 36.088734>,  <34.060223, 37.006104, 36.646999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717270, 37.283207, 36.088734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111012, 37.353668, 36.087349>,  <34.347256, 37.395947, 36.086517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111012, 37.353668, 36.087349>,  <33.717270, 37.283207, 36.088734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111012, 37.353668, 36.087349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069032, -0.403697, -0.912285,
		-0.162103, 0.897774, -0.409542,
		0.984356, 0.176155, -0.003465,
		34.406319, 37.406513, 36.086308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857063, 37.393082, 35.377556>,  <33.717270, 37.283207, 36.088734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857063, 37.393082, 35.377556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218369, 37.343281, 35.541805>,  <34.435150, 37.313400, 35.640354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218369, 37.343281, 35.541805>,  <33.857063, 37.393082, 35.377556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218369, 37.343281, 35.541805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311589, -0.467614, -0.827194,
		0.295002, 0.875121, -0.383585,
		0.903264, -0.124503, 0.410625,
		34.489349, 37.305931, 35.664993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263275, 37.553341, 34.832649>,  <33.857063, 37.393082, 35.377556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263275, 37.553341, 34.832649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469208, 37.318501, 35.082531>,  <34.592766, 37.177597, 35.232460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469208, 37.318501, 35.082531>,  <34.263275, 37.553341, 34.832649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469208, 37.318501, 35.082531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326600, -0.539424, -0.776115,
		0.792641, 0.603598, -0.085965,
		0.514833, -0.587104, 0.624704,
		34.623657, 37.142368, 35.269943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854717, 37.415981, 34.451267>,  <34.263275, 37.553341, 34.832649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854717, 37.415981, 34.451267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848877, 37.137791, 34.738628>,  <34.845371, 36.970879, 34.911045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848877, 37.137791, 34.738628>,  <34.854717, 37.415981, 34.451267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848877, 37.137791, 34.738628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408269, -0.660007, -0.630641,
		0.912745, 0.284095, 0.293576,
		-0.014600, -0.695472, 0.718405,
		34.844498, 36.929150, 34.954151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457272, 37.086067, 34.289936>,  <34.854717, 37.415981, 34.451267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457272, 37.086067, 34.289936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219028, 36.846745, 34.504330>,  <35.076084, 36.703152, 34.632965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219028, 36.846745, 34.504330>,  <35.457272, 37.086067, 34.289936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219028, 36.846745, 34.504330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359777, -0.795277, -0.487950,
		0.718203, -0.097789, 0.688928,
		-0.595605, -0.598308, 0.535988,
		35.040348, 36.667252, 34.665127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866707, 36.517948, 34.248695>,  <35.457272, 37.086067, 34.289936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866707, 36.517948, 34.248695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512840, 36.377628, 34.371529>,  <35.300518, 36.293438, 34.445229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512840, 36.377628, 34.371529>,  <35.866707, 36.517948, 34.248695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512840, 36.377628, 34.371529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180897, -0.865347, -0.467387,
		0.429695, -0.357931, 0.829004,
		-0.884668, -0.350798, 0.307086,
		35.247440, 36.272388, 34.463654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918579, 35.738159, 34.464020>,  <35.866707, 36.517948, 34.248695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918579, 35.738159, 34.464020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536652, 35.811455, 34.370430>,  <35.307495, 35.855431, 34.314278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536652, 35.811455, 34.370430>,  <35.918579, 35.738159, 34.464020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536652, 35.811455, 34.370430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014852, -0.756892, -0.653372,
		-0.296817, -0.627326, 0.719973,
		-0.954819, 0.183239, -0.233976,
		35.250206, 35.866425, 34.300236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481792, 35.108704, 34.586590>,  <35.918579, 35.738159, 34.464020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481792, 35.108704, 34.586590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298355, 35.343845, 34.320019>,  <35.188293, 35.484928, 34.160076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298355, 35.343845, 34.320019>,  <35.481792, 35.108704, 34.586590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298355, 35.343845, 34.320019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055260, -0.729619, -0.681617,
		-0.886928, -0.349410, 0.302112,
		-0.458590, 0.587850, -0.666428,
		35.160778, 35.520199, 34.120090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087589, 34.667164, 34.163853>,  <35.481792, 35.108704, 34.586590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087589, 34.667164, 34.163853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115826, 35.005779, 33.952801>,  <35.132767, 35.208946, 33.826168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115826, 35.005779, 33.952801>,  <35.087589, 34.667164, 34.163853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115826, 35.005779, 33.952801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172865, -0.531331, -0.829340,
		-0.982413, -0.032666, -0.183843,
		0.070590, 0.846534, -0.527633,
		35.137001, 35.259739, 33.794510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770374, 34.476818, 33.613682>,  <35.087589, 34.667164, 34.163853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770374, 34.476818, 33.613682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970638, 34.796719, 33.481171>,  <35.090797, 34.988659, 33.401665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970638, 34.796719, 33.481171>,  <34.770374, 34.476818, 33.613682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970638, 34.796719, 33.481171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179987, -0.470503, -0.863847,
		-0.846728, 0.372864, -0.379505,
		0.500655, 0.799749, -0.331278,
		35.120834, 35.036644, 33.381786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599335, 34.539700, 32.880592>,  <34.770374, 34.476818, 33.613682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599335, 34.539700, 32.880592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955482, 34.706608, 32.953400>,  <35.169170, 34.806751, 32.997086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955482, 34.706608, 32.953400>,  <34.599335, 34.539700, 32.880592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955482, 34.706608, 32.953400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377114, -0.452068, -0.808344,
		-0.255014, 0.788365, -0.559865,
		0.890367, 0.417272, 0.182020,
		35.222591, 34.831791, 33.008007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874825, 34.469986, 32.194279>,  <34.599335, 34.539700, 32.880592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874825, 34.469986, 32.194279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185757, 34.606575, 32.405621>,  <35.372314, 34.688526, 32.532425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185757, 34.606575, 32.405621>,  <34.874825, 34.469986, 32.194279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185757, 34.606575, 32.405621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621380, -0.285631, -0.729590,
		-0.098218, 0.895440, -0.434212,
		0.777329, 0.341470, 0.528354,
		35.418957, 34.709015, 32.564125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306374, 34.745419, 31.712574>,  <34.874825, 34.469986, 32.194279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306374, 34.745419, 31.712574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543148, 34.683529, 32.028973>,  <35.685211, 34.646397, 32.218811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543148, 34.683529, 32.028973>,  <35.306374, 34.745419, 31.712574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543148, 34.683529, 32.028973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756142, -0.233164, -0.611460,
		0.279037, 0.960050, -0.021027,
		0.591935, -0.154721, 0.790996,
		35.720730, 34.637112, 32.266270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906147, 35.128105, 31.566818>,  <35.306374, 34.745419, 31.712574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906147, 35.128105, 31.566818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966370, 34.822025, 31.817194>,  <36.002502, 34.638378, 31.967419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966370, 34.822025, 31.817194>,  <35.906147, 35.128105, 31.566818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966370, 34.822025, 31.817194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640667, -0.406687, -0.651270,
		0.752914, 0.499069, 0.429011,
		0.150555, -0.765203, 0.625937,
		36.011536, 34.592464, 32.004974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659531, 34.994705, 31.742857>,  <35.906147, 35.128105, 31.566818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659531, 34.994705, 31.742857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496845, 34.633163, 31.795969>,  <36.399235, 34.416237, 31.827837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496845, 34.633163, 31.795969>,  <36.659531, 34.994705, 31.742857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496845, 34.633163, 31.795969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572641, -0.365478, -0.733831,
		0.711806, -0.222422, 0.666229,
		-0.406712, -0.903855, 0.132781,
		36.374832, 34.362007, 31.835804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178974, 34.669315, 31.705824>,  <36.659531, 34.994705, 31.742857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178974, 34.669315, 31.705824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921062, 34.366631, 31.662678>,  <36.766315, 34.185020, 31.636789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921062, 34.366631, 31.662678>,  <37.178974, 34.669315, 31.705824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921062, 34.366631, 31.662678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601076, -0.414788, -0.683124,
		0.472189, -0.505303, 0.722292,
		-0.644783, -0.756716, -0.107867,
		36.727627, 34.139614, 31.630318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519577, 34.010784, 31.827192>,  <37.178974, 34.669315, 31.705824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519577, 34.010784, 31.827192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200462, 33.907173, 31.609409>,  <37.008991, 33.845005, 31.478739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200462, 33.907173, 31.609409>,  <37.519577, 34.010784, 31.827192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200462, 33.907173, 31.609409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593427, -0.497089, -0.633046,
		-0.106666, -0.828134, 0.550288,
		-0.797789, -0.259031, -0.544459,
		36.961124, 33.829464, 31.446072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686729, 33.304024, 31.678032>,  <37.519577, 34.010784, 31.827192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686729, 33.304024, 31.678032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.415409, 33.393631, 31.398111>,  <37.252617, 33.447395, 31.230160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.415409, 33.393631, 31.398111>,  <37.686729, 33.304024, 31.678032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415409, 33.393631, 31.398111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460166, -0.612985, -0.642259,
		-0.572848, -0.757670, 0.312701,
		-0.678302, 0.224022, -0.699801,
		37.211918, 33.460838, 31.188171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552086, 32.653408, 31.359068>,  <37.686729, 33.304024, 31.678032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552086, 32.653408, 31.359068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460674, 32.955978, 31.113928>,  <37.405827, 33.137520, 30.966843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460674, 32.955978, 31.113928>,  <37.552086, 32.653408, 31.359068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460674, 32.955978, 31.113928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375179, -0.512457, -0.772417,
		-0.898340, -0.406451, -0.166684,
		-0.228531, 0.756430, -0.612852,
		37.392117, 33.182907, 30.930073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334076, 32.419098, 30.757511>,  <37.552086, 32.653408, 31.359068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334076, 32.419098, 30.757511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373028, 32.786190, 30.603479>,  <37.396397, 33.006447, 30.511061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373028, 32.786190, 30.603479>,  <37.334076, 32.419098, 30.757511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373028, 32.786190, 30.603479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520790, -0.376702, -0.766077,
		-0.848113, -0.125946, -0.514628,
		0.097377, 0.917733, -0.385077,
		37.402241, 33.061508, 30.487957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988831, 32.496735, 30.131086>,  <37.334076, 32.419098, 30.757511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988831, 32.496735, 30.131086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284187, 32.765671, 30.110142>,  <37.461399, 32.927032, 30.097574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284187, 32.765671, 30.110142>,  <36.988831, 32.496735, 30.131086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284187, 32.765671, 30.110142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265567, -0.361267, -0.893846,
		-0.619885, 0.646100, -0.445307,
		0.738388, 0.672340, -0.052361,
		37.505703, 32.967373, 30.094433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079323, 32.550915, 29.354010>,  <36.988831, 32.496735, 30.131086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079323, 32.550915, 29.354010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394249, 32.742443, 29.509377>,  <37.583202, 32.857361, 29.602596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394249, 32.742443, 29.509377>,  <37.079323, 32.550915, 29.354010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394249, 32.742443, 29.509377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571770, -0.331310, -0.750542,
		-0.230689, 0.812997, -0.534620,
		0.787313, 0.478822, 0.388418,
		37.630444, 32.886089, 29.625902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347034, 32.914291, 28.874821>,  <37.079323, 32.550915, 29.354010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347034, 32.914291, 28.874821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.649345, 32.851086, 29.129011>,  <37.830734, 32.813164, 29.281525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.649345, 32.851086, 29.129011>,  <37.347034, 32.914291, 28.874821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649345, 32.851086, 29.129011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557092, -0.354889, -0.750801,
		0.344160, 0.921458, -0.180191,
		0.755779, -0.158013, 0.635476,
		37.876080, 32.803680, 29.319654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889328, 32.989429, 28.376785>,  <37.347034, 32.914291, 28.874821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889328, 32.989429, 28.376785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023327, 32.822399, 28.714640>,  <38.103725, 32.722183, 28.917353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023327, 32.822399, 28.714640>,  <37.889328, 32.989429, 28.376785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023327, 32.822399, 28.714640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718112, -0.467200, -0.515791,
		0.609994, 0.779331, 0.143354,
		0.334996, -0.417574, 0.844636,
		38.123825, 32.697128, 28.968031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643585, 33.066109, 28.237795>,  <37.889328, 32.989429, 28.376785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643585, 33.066109, 28.237795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545616, 32.802132, 28.521904>,  <38.486835, 32.643745, 28.692369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545616, 32.802132, 28.521904>,  <38.643585, 33.066109, 28.237795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545616, 32.802132, 28.521904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607210, -0.675529, -0.418279,
		0.755849, 0.328837, 0.566179,
		-0.244924, -0.659945, 0.710271,
		38.472137, 32.604149, 28.734985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316776, 33.381901, 28.594240>,  <38.643585, 33.066109, 28.237795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316776, 33.381901, 28.594240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572300, 33.659527, 28.461454>,  <39.725613, 33.826103, 28.381783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572300, 33.659527, 28.461454>,  <39.316776, 33.381901, 28.594240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572300, 33.659527, 28.461454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632261, 0.719433, 0.287509,
		0.438376, 0.026226, 0.898409,
		0.638805, 0.694066, -0.331963,
		39.763943, 33.867748, 28.361866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404839, 33.778786, 29.191317>,  <39.316776, 33.381901, 28.594240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404839, 33.778786, 29.191317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486744, 34.004238, 28.871220>,  <39.535889, 34.139511, 28.679161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486744, 34.004238, 28.871220>,  <39.404839, 33.778786, 29.191317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486744, 34.004238, 28.871220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586092, 0.725402, 0.360954,
		0.783944, 0.395106, 0.478878,
		0.204764, 0.563634, -0.800243,
		39.548172, 34.173328, 28.631147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708469, 34.394180, 29.412952>,  <39.404839, 33.778786, 29.191317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708469, 34.394180, 29.412952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.537136, 34.460407, 29.057623>,  <39.434338, 34.500141, 28.844425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.537136, 34.460407, 29.057623>,  <39.708469, 34.394180, 29.412952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537136, 34.460407, 29.057623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421635, 0.832874, 0.358531,
		0.799223, 0.528119, -0.286937,
		-0.428330, 0.165564, -0.888326,
		39.408638, 34.510075, 28.791124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632710, 35.072765, 29.530392>,  <39.708469, 34.394180, 29.412952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632710, 35.072765, 29.530392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430416, 35.023834, 29.188803>,  <39.309040, 34.994476, 28.983849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430416, 35.023834, 29.188803>,  <39.632710, 35.072765, 29.530392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430416, 35.023834, 29.188803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525051, 0.829089, 0.192180,
		0.684511, 0.545571, -0.483525,
		-0.505733, -0.122326, -0.853973,
		39.278698, 34.987137, 28.932611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593220, 35.686096, 29.260687>,  <39.632710, 35.072765, 29.530392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593220, 35.686096, 29.260687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290764, 35.513268, 29.064087>,  <39.109291, 35.409569, 28.946127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290764, 35.513268, 29.064087>,  <39.593220, 35.686096, 29.260687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290764, 35.513268, 29.064087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566809, 0.807789, 0.161877,
		0.327085, 0.400988, -0.855701,
		-0.756136, -0.432072, -0.491499,
		39.063923, 35.383644, 28.916637>
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
