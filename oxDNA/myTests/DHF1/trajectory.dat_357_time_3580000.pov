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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.357089, 2.108695, 3.581661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.280186, 2.371048, 3.289673>,  <2.234044, 2.528460, 3.114480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.280186, 2.371048, 3.289673>,  <2.357089, 2.108695, 3.581661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.280186, 2.371048, 3.289673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564444, 0.682397, 0.464476,
		0.802770, -0.322728, -0.501405,
		-0.192257, 0.655882, -0.729970,
		2.222509, 2.567813, 3.070682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.902910, 2.372872, 3.046750>,  <2.357089, 2.108695, 3.581661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.902910, 2.372872, 3.046750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.641979, 2.662605, 3.136024>,  <2.485421, 2.836445, 3.189590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.641979, 2.662605, 3.136024>,  <2.902910, 2.372872, 3.046750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.641979, 2.662605, 3.136024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755600, 0.644591, 0.116492,
		-0.059486, 0.244631, -0.967790,
		-0.652326, 0.724332, 0.223188,
		2.446281, 2.879905, 3.202981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.754004, 3.034577, 2.604434>,  <2.902910, 2.372872, 3.046750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.754004, 3.034577, 2.604434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.723904, 3.105431, 2.996956>,  <2.705844, 3.147943, 3.232469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.723904, 3.105431, 2.996956>,  <2.754004, 3.034577, 2.604434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.723904, 3.105431, 2.996956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640167, 0.763103, -0.088656,
		-0.764542, 0.621528, -0.170818,
		-0.075250, 0.177133, 0.981306,
		2.701329, 3.158571, 3.291348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.517204, 3.728107, 2.689389>,  <2.754004, 3.034577, 2.604434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.517204, 3.728107, 2.689389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741634, 3.591309, 2.990913>,  <2.876292, 3.509229, 3.171828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741634, 3.591309, 2.990913>,  <2.517204, 3.728107, 2.689389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.741634, 3.591309, 2.990913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665801, 0.727547, -0.165486,
		-0.491838, 0.594738, 0.635910,
		0.561075, -0.341997, 0.753812,
		2.909957, 3.488709, 3.217057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.553722, 4.228298, 3.108412>,  <2.517204, 3.728107, 2.689389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.553722, 4.228298, 3.108412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.864067, 4.018684, 3.248940>,  <3.050274, 3.892916, 3.333256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.864067, 4.018684, 3.248940>,  <2.553722, 4.228298, 3.108412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.864067, 4.018684, 3.248940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556956, 0.830495, 0.008784,
		-0.296372, 0.188854, 0.936215,
		0.775863, -0.524034, 0.351319,
		3.096826, 3.861474, 3.354335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.859993, 4.689524, 3.648561>,  <2.553722, 4.228298, 3.108412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.859993, 4.689524, 3.648561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.124317, 4.409081, 3.541397>,  <3.282912, 4.240814, 3.477098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.124317, 4.409081, 3.541397>,  <2.859993, 4.689524, 3.648561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.124317, 4.409081, 3.541397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671656, 0.711699, -0.205822,
		0.334976, -0.043935, 0.941202,
		0.660809, -0.701110, -0.267911,
		3.322560, 4.198748, 3.461024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.381902, 4.803613, 4.120747>,  <2.859993, 4.689524, 3.648561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.381902, 4.803613, 4.120747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.537601, 4.613548, 3.805099>,  <3.631021, 4.499509, 3.615711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.537601, 4.613548, 3.805099>,  <3.381902, 4.803613, 4.120747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.537601, 4.613548, 3.805099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777244, 0.629183, 0.004534,
		0.494345, -0.615102, 0.614225,
		0.389249, -0.475162, -0.789118,
		3.654376, 4.471000, 3.568364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.042042, 4.612052, 4.271116>,  <3.381902, 4.803613, 4.120747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.042042, 4.612052, 4.271116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.060642, 4.595802, 3.871880>,  <4.071803, 4.586052, 3.632338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.060642, 4.595802, 3.871880>,  <4.042042, 4.612052, 4.271116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.060642, 4.595802, 3.871880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773442, 0.633785, 0.010239,
		0.632159, -0.772442, 0.060892,
		0.046501, -0.040624, -0.998092,
		4.074593, 4.583615, 3.572452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.388538, 5.684995, 3.425738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.383062, 5.668884, 3.026100>,  <4.379777, 5.659218, 2.786317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.383062, 5.668884, 3.026100>,  <4.388538, 5.684995, 3.425738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.383062, 5.668884, 3.026100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063623, -0.997129, 0.041068,
		-0.997880, 0.064127, 0.011088,
		-0.013690, -0.040276, -0.999095,
		4.378955, 5.656802, 2.726372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.799549, 5.467467, 3.132882>,  <4.388538, 5.684995, 3.425738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.799549, 5.467467, 3.132882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.105629, 5.360825, 2.898483>,  <4.289277, 5.296839, 2.757844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.105629, 5.360825, 2.898483>,  <3.799549, 5.467467, 3.132882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.105629, 5.360825, 2.898483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058549, -0.935270, 0.349059,
		-0.641125, -0.232791, -0.731278,
		0.765200, -0.266606, -0.585995,
		4.335189, 5.280843, 2.722685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.583646, 5.087884, 2.516966>,  <3.799549, 5.467467, 3.132882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.583646, 5.087884, 2.516966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.936174, 5.008316, 2.688408>,  <4.147692, 4.960575, 2.791273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.936174, 5.008316, 2.688408>,  <3.583646, 5.087884, 2.516966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.936174, 5.008316, 2.688408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340445, -0.896335, 0.284044,
		0.327671, -0.396251, -0.857681,
		0.881322, -0.198920, 0.428605,
		4.200571, 4.948640, 2.816989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.819558, 4.427098, 2.343856>,  <3.583646, 5.087884, 2.516966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.819558, 4.427098, 2.343856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.933260, 4.506348, 2.719078>,  <4.001481, 4.553897, 2.944211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.933260, 4.506348, 2.719078>,  <3.819558, 4.427098, 2.343856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.933260, 4.506348, 2.719078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499387, -0.804612, 0.321266,
		0.818421, -0.559773, -0.129775,
		0.284254, 0.198123, 0.938055,
		4.018536, 4.565784, 3.000494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.184693, 3.783171, 2.581214>,  <3.819558, 4.427098, 2.343856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.184693, 3.783171, 2.581214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.043108, 3.984467, 2.896545>,  <3.958157, 4.105244, 3.085744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.043108, 3.984467, 2.896545>,  <4.184693, 3.783171, 2.581214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.043108, 3.984467, 2.896545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429898, -0.836121, 0.340720,
		0.830601, -0.218298, 0.512297,
		-0.353964, 0.503238, 0.788328,
		3.936919, 4.135438, 3.133044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.166794, 3.277321, 3.099444>,  <4.184693, 3.783171, 2.581214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.166794, 3.277321, 3.099444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.934740, 3.570099, 3.242386>,  <3.795508, 3.745765, 3.328151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.934740, 3.570099, 3.242386>,  <4.166794, 3.277321, 3.099444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.934740, 3.570099, 3.242386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551976, -0.675909, 0.488333,
		0.598971, 0.086048, 0.796134,
		-0.580134, 0.731944, 0.357354,
		3.760700, 3.789682, 3.349592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.081027, 3.199679, 3.831354>,  <4.166794, 3.277321, 3.099444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.081027, 3.199679, 3.831354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.768604, 3.376083, 3.654510>,  <3.581151, 3.481926, 3.548404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.768604, 3.376083, 3.654510>,  <4.081027, 3.199679, 3.831354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.768604, 3.376083, 3.654510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606190, -0.705470, 0.367213,
		-0.149949, 0.554816, 0.818348,
		-0.781056, 0.441011, -0.442109,
		3.534287, 3.508387, 3.521878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.546838, 3.015327, 4.200975>,  <4.081027, 3.199679, 3.831354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.546838, 3.015327, 4.200975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.356918, 3.162506, 3.881180>,  <3.242966, 3.250813, 3.689303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.356918, 3.162506, 3.881180>,  <3.546838, 3.015327, 4.200975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.356918, 3.162506, 3.881180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752168, -0.641308, 0.151550,
		-0.456956, 0.673305, 0.581251,
		-0.474800, 0.367946, -0.799488,
		3.214478, 3.272890, 3.641334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
