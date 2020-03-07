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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.542236, 53.589073, 49.963531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444908, 53.232285, 49.811123>,  <36.386509, 53.018211, 49.719677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444908, 53.232285, 49.811123>,  <36.542236, 53.589073, 49.963531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444908, 53.232285, 49.811123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966545, -0.255844, -0.018315,
		-0.081145, -0.372730, 0.924385,
		-0.243325, -0.891973, -0.381021,
		36.371910, 52.964691, 49.696815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724072, 52.888199, 50.172352>,  <36.542236, 53.589073, 49.963531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724072, 52.888199, 50.172352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732430, 52.791054, 49.784416>,  <36.737446, 52.732765, 49.551655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732430, 52.791054, 49.784416>,  <36.724072, 52.888199, 50.172352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732430, 52.791054, 49.784416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835865, -0.527980, 0.150224,
		-0.548538, -0.813791, 0.191967,
		0.020896, -0.242862, -0.969836,
		36.738697, 52.718197, 49.493465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520542, 53.102219, 50.155769>,  <36.724072, 52.888199, 50.172352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520542, 53.102219, 50.155769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718300, 52.891533, 50.432365>,  <37.836952, 52.765121, 50.598324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718300, 52.891533, 50.432365>,  <37.520542, 53.102219, 50.155769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718300, 52.891533, 50.432365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359478, -0.600405, -0.714346,
		0.791426, 0.601740, -0.107493,
		0.494390, -0.526710, 0.691488,
		37.866615, 52.733521, 50.639812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275063, 53.194096, 50.092255>,  <37.520542, 53.102219, 50.155769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275063, 53.194096, 50.092255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108692, 52.851650, 50.214943>,  <38.008869, 52.646183, 50.288555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108692, 52.851650, 50.214943>,  <38.275063, 53.194096, 50.092255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108692, 52.851650, 50.214943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430801, -0.482518, -0.762619,
		0.800887, -0.185054, 0.569505,
		-0.415922, -0.856114, 0.306721,
		37.983917, 52.594814, 50.306957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803078, 52.784874, 50.144684>,  <38.275063, 53.194096, 50.092255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803078, 52.784874, 50.144684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456116, 52.594604, 50.086258>,  <38.247936, 52.480442, 50.051205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456116, 52.594604, 50.086258>,  <38.803078, 52.784874, 50.144684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456116, 52.594604, 50.086258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374073, -0.429788, -0.821798,
		0.328134, -0.767472, 0.550740,
		-0.867409, -0.475677, -0.146062,
		38.195892, 52.451900, 50.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074005, 52.229462, 50.069534>,  <38.803078, 52.784874, 50.144684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074005, 52.229462, 50.069534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705048, 52.237671, 49.915253>,  <38.483673, 52.242596, 49.822685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705048, 52.237671, 49.915253>,  <39.074005, 52.229462, 50.069534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705048, 52.237671, 49.915253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370157, -0.238233, -0.897902,
		-0.110314, -0.970991, 0.212149,
		-0.922396, 0.020523, -0.385700,
		38.428329, 52.243828, 49.799541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930019, 51.561481, 49.604073>,  <39.074005, 52.229462, 50.069534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930019, 51.561481, 49.604073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693420, 51.866970, 49.500648>,  <38.551460, 52.050262, 49.438595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693420, 51.866970, 49.500648>,  <38.930019, 51.561481, 49.604073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693420, 51.866970, 49.500648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244127, -0.135986, -0.960161,
		-0.768460, -0.631056, -0.106010,
		-0.591500, 0.763725, -0.258558,
		38.515972, 52.096088, 49.423080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145466, 50.917831, 49.125767>,  <38.930019, 51.561481, 49.604073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145466, 50.917831, 49.125767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014385, 51.291565, 49.069729>,  <38.935738, 51.515804, 49.036106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014385, 51.291565, 49.069729>,  <39.145466, 50.917831, 49.125767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014385, 51.291565, 49.069729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920419, -0.349178, -0.175794,
		-0.213170, 0.071341, 0.974407,
		-0.327700, 0.934337, -0.140098,
		38.916077, 51.571865, 49.027699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471035, 51.368683, 48.657413>,  <39.145466, 50.917831, 49.125767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471035, 51.368683, 48.657413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862091, 51.292202, 48.692413>,  <40.096725, 51.246315, 48.713413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862091, 51.292202, 48.692413>,  <39.471035, 51.368683, 48.657413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862091, 51.292202, 48.692413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187837, 0.607111, -0.772096,
		0.094501, 0.771271, 0.629453,
		0.977643, -0.191199, 0.087501,
		40.155384, 51.234844, 48.718662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917358, 51.966015, 48.617329>,  <39.471035, 51.368683, 48.657413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917358, 51.966015, 48.617329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137074, 51.663811, 48.474510>,  <40.268902, 51.482487, 48.388821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137074, 51.663811, 48.474510>,  <39.917358, 51.966015, 48.617329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137074, 51.663811, 48.474510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258449, 0.559928, -0.787200,
		0.794659, 0.340123, 0.502825,
		0.549291, -0.755511, -0.357047,
		40.301861, 51.437157, 48.367397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679771, 52.184353, 48.568935>,  <39.917358, 51.966015, 48.617329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679771, 52.184353, 48.568935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544743, 51.938438, 48.283813>,  <40.463726, 51.790890, 48.112740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544743, 51.938438, 48.283813>,  <40.679771, 52.184353, 48.568935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544743, 51.938438, 48.283813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291079, 0.651961, -0.700157,
		0.895165, -0.443834, -0.041132,
		-0.337570, -0.614784, -0.712803,
		40.443470, 51.754002, 48.069973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927937, 52.614861, 49.250160>,  <40.679771, 52.184353, 48.568935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927937, 52.614861, 49.250160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022114, 52.882690, 48.968388>,  <41.078621, 53.043388, 48.799324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022114, 52.882690, 48.968388>,  <40.927937, 52.614861, 49.250160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022114, 52.882690, 48.968388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730248, -0.356410, -0.582847,
		-0.641330, 0.651641, 0.405043,
		0.235446, 0.669579, -0.704436,
		41.092747, 53.083565, 48.757057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663456, 52.597301, 49.508656>,  <40.927937, 52.614861, 49.250160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663456, 52.597301, 49.508656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951630, 52.353741, 49.641449>,  <42.124535, 52.207603, 49.721127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951630, 52.353741, 49.641449>,  <41.663456, 52.597301, 49.508656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951630, 52.353741, 49.641449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683739, 0.703723, -0.193069,
		-0.116066, 0.366085, 0.923315,
		0.720437, -0.608898, 0.331984,
		42.167763, 52.171070, 49.741043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141308, 52.664391, 50.165833>,  <41.663456, 52.597301, 49.508656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141308, 52.664391, 50.165833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381573, 52.475052, 49.908104>,  <42.525730, 52.361450, 49.753468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381573, 52.475052, 49.908104>,  <42.141308, 52.664391, 50.165833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381573, 52.475052, 49.908104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581805, 0.811546, -0.053817,
		0.548371, -0.342543, 0.762859,
		0.600661, -0.473347, -0.644321,
		42.561771, 52.333050, 49.714809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764122, 52.996758, 50.223305>,  <42.141308, 52.664391, 50.165833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764122, 52.996758, 50.223305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823082, 52.782909, 49.890450>,  <42.858459, 52.654598, 49.690735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823082, 52.782909, 49.890450>,  <42.764122, 52.996758, 50.223305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823082, 52.782909, 49.890450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600513, 0.716884, -0.354207,
		0.785912, -0.447499, 0.426716,
		0.147399, -0.534624, -0.832136,
		42.867302, 52.622520, 49.640808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328930, 53.086781, 50.643955>,  <42.764122, 52.996758, 50.223305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328930, 53.086781, 50.643955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391052, 53.297062, 50.978504>,  <43.428326, 53.423233, 51.179234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391052, 53.297062, 50.978504>,  <43.328930, 53.086781, 50.643955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391052, 53.297062, 50.978504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669039, -0.678888, 0.302486,
		0.726819, 0.512585, -0.457154,
		0.155307, 0.525707, 0.836368,
		43.437645, 53.454773, 51.229416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053848, 53.301937, 50.818897>,  <43.328930, 53.086781, 50.643955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053848, 53.301937, 50.818897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878403, 53.237034, 51.172462>,  <43.773136, 53.198093, 51.384602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878403, 53.237034, 51.172462>,  <44.053848, 53.301937, 50.818897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878403, 53.237034, 51.172462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739993, -0.623308, 0.252780,
		0.509932, 0.764958, 0.393457,
		-0.438610, -0.162255, 0.883909,
		43.746819, 53.188358, 51.437634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524200, 53.585072, 51.422047>,  <44.053848, 53.301937, 50.818897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524200, 53.585072, 51.422047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276733, 53.283005, 51.508743>,  <44.128254, 53.101765, 51.560760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276733, 53.283005, 51.508743>,  <44.524200, 53.585072, 51.422047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276733, 53.283005, 51.508743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771468, -0.636109, -0.014213,
		0.148603, 0.158413, 0.976126,
		-0.618671, -0.755163, 0.216738,
		44.091133, 53.056458, 51.573765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333492, 53.464687, 51.443317>,  <44.524200, 53.585072, 51.422047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333492, 53.464687, 51.443317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647560, 53.292374, 51.265358>,  <45.835999, 53.188984, 51.158581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647560, 53.292374, 51.265358>,  <45.333492, 53.464687, 51.443317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647560, 53.292374, 51.265358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226763, -0.868510, 0.440759,
		-0.576273, -0.245183, -0.779612,
		0.785167, -0.430785, -0.444900,
		45.883110, 53.163139, 51.131889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297703, 52.880596, 51.728001>,  <45.333492, 53.464687, 51.443317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297703, 52.880596, 51.728001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629143, 52.851799, 51.505924>,  <45.828007, 52.834522, 51.372677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629143, 52.851799, 51.505924>,  <45.297703, 52.880596, 51.728001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629143, 52.851799, 51.505924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140549, -0.933186, 0.330771,
		-0.541913, -0.352108, -0.763118,
		0.828599, -0.071994, -0.555195,
		45.877724, 52.830200, 51.339367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305191, 52.203533, 51.451965>,  <45.297703, 52.880596, 51.728001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305191, 52.203533, 51.451965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673000, 52.352280, 51.502861>,  <45.893688, 52.441528, 51.533398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673000, 52.352280, 51.502861>,  <45.305191, 52.203533, 51.451965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673000, 52.352280, 51.502861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301541, -0.875124, 0.378460,
		0.252085, -0.309636, -0.916831,
		0.919525, 0.371866, 0.127237,
		45.948856, 52.463840, 51.541031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795486, 51.810558, 51.232265>,  <45.305191, 52.203533, 51.451965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795486, 51.810558, 51.232265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941589, 52.011345, 51.545853>,  <46.029251, 52.131817, 51.734005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941589, 52.011345, 51.545853>,  <45.795486, 51.810558, 51.232265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.941589, 52.011345, 51.545853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208269, -0.864878, 0.456739,
		0.907309, -0.003550, -0.420449,
		0.365258, 0.501970, 0.783972,
		46.051167, 52.161938, 51.781044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338875, 51.449371, 51.569920>,  <45.795486, 51.810558, 51.232265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338875, 51.449371, 51.569920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163151, 51.683899, 51.842163>,  <46.057716, 51.824615, 52.005508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163151, 51.683899, 51.842163>,  <46.338875, 51.449371, 51.569920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163151, 51.683899, 51.842163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064808, -0.734976, 0.674989,
		0.895994, 0.340640, 0.284885,
		-0.439312, 0.586323, 0.680610,
		46.031357, 51.859795, 52.046345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051361, 51.324036, 51.275906>,  <46.338875, 51.449371, 51.569920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051361, 51.324036, 51.275906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012836, 51.621475, 51.011246>,  <46.989723, 51.799938, 50.852448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012836, 51.621475, 51.011246>,  <47.051361, 51.324036, 51.275906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012836, 51.621475, 51.011246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994025, 0.037544, -0.102496,
		-0.051374, -0.667571, -0.742771,
		-0.096310, 0.743599, -0.661654,
		46.983944, 51.844555, 50.812748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324734, 51.200520, 50.557789>,  <47.051361, 51.324036, 51.275906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324734, 51.200520, 50.557789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375896, 51.589981, 50.633308>,  <47.406593, 51.823658, 50.678619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375896, 51.589981, 50.633308>,  <47.324734, 51.200520, 50.557789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.375896, 51.589981, 50.633308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987443, -0.107223, -0.116018,
		-0.092718, 0.201264, -0.975139,
		0.127908, 0.973651, 0.188795,
		47.414268, 51.882076, 50.689945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.872616, 51.322903, 50.117912>,  <47.324734, 51.200520, 50.557789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.872616, 51.322903, 50.117912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866241, 51.614769, 50.391357>,  <47.862415, 51.789890, 50.555424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866241, 51.614769, 50.391357>,  <47.872616, 51.322903, 50.117912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.866241, 51.614769, 50.391357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999338, 0.033985, -0.012980,
		-0.032704, 0.682956, -0.729727,
		-0.015935, 0.729669, 0.683615,
		47.861462, 51.833668, 50.596443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.217621, 51.963997, 49.905746>,  <47.872616, 51.322903, 50.117912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.217621, 51.963997, 49.905746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.220890, 51.874855, 50.295673>,  <48.222851, 51.821369, 50.529629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.220890, 51.874855, 50.295673>,  <48.217621, 51.963997, 49.905746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.220890, 51.874855, 50.295673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993784, -0.106423, -0.032662,
		0.111022, 0.969025, 0.220602,
		0.008173, -0.222857, 0.974817,
		48.223343, 51.807999, 50.588120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.687016, 52.445305, 50.381130>,  <48.217621, 51.963997, 49.905746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.687016, 52.445305, 50.381130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.633343, 52.054554, 50.447708>,  <48.601139, 51.820103, 50.487656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.633343, 52.054554, 50.447708>,  <48.687016, 52.445305, 50.381130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.633343, 52.054554, 50.447708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969709, -0.164030, -0.180992,
		0.204108, 0.137114, 0.969298,
		-0.134178, -0.976880, 0.166441,
		48.593090, 51.761490, 50.497639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.149101, 52.217083, 50.980461>,  <48.687016, 52.445305, 50.381130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.149101, 52.217083, 50.980461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.085709, 51.954556, 50.685402>,  <49.047672, 51.797039, 50.508366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.085709, 51.954556, 50.685402>,  <49.149101, 52.217083, 50.980461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.085709, 51.954556, 50.685402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987358, -0.107503, -0.116475,
		-0.002855, -0.746785, 0.665059,
		-0.158478, -0.656319, -0.737652,
		49.038166, 51.757660, 50.464108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.306744, 51.488541, 51.168579>,  <49.149101, 52.217083, 50.980461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.306744, 51.488541, 51.168579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.367390, 51.572540, 50.782230>,  <49.403778, 51.622940, 50.550419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.367390, 51.572540, 50.782230>,  <49.306744, 51.488541, 51.168579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.367390, 51.572540, 50.782230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978290, -0.171553, 0.116265,
		-0.141283, -0.962532, -0.231453,
		0.151615, 0.210002, -0.965874,
		49.412872, 51.635540, 50.492470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.829460, 51.125278, 51.021004>,  <49.306744, 51.488541, 51.168579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.829460, 51.125278, 51.021004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.833424, 51.381241, 50.713646>,  <49.835800, 51.534817, 50.529232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.833424, 51.381241, 50.713646>,  <49.829460, 51.125278, 51.021004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.833424, 51.381241, 50.713646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992223, -0.101643, -0.071853,
		-0.124080, -0.761705, -0.635932,
		0.009907, 0.639902, -0.768393,
		49.836395, 51.573212, 50.483128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.156414, 50.930790, 50.318817>,  <49.829460, 51.125278, 51.021004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.156414, 50.930790, 50.318817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.173035, 51.315491, 50.427116>,  <50.183006, 51.546310, 50.492096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.173035, 51.315491, 50.427116>,  <50.156414, 50.930790, 50.318817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.173035, 51.315491, 50.427116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999093, -0.042517, -0.002284,
		0.009315, 0.270602, -0.962646,
		0.041547, 0.961752, 0.270753,
		50.185497, 51.604015, 50.508343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.725803, 51.159592, 50.015488>,  <50.156414, 50.930790, 50.318817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.725803, 51.159592, 50.015488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.648319, 51.412510, 50.315536>,  <50.601830, 51.564262, 50.495564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.648319, 51.412510, 50.315536>,  <50.725803, 51.159592, 50.015488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.648319, 51.412510, 50.315536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976920, 0.054175, 0.206620,
		0.090008, 0.772830, -0.628197,
		-0.193715, 0.632296, 0.750117,
		50.590206, 51.602200, 50.540573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.078327, 51.735435, 49.860817>,  <50.725803, 51.159592, 50.015488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.078327, 51.735435, 49.860817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.030499, 51.696133, 50.255997>,  <51.001801, 51.672550, 50.493107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.030499, 51.696133, 50.255997>,  <51.078327, 51.735435, 49.860817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.030499, 51.696133, 50.255997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991685, 0.035879, 0.123589,
		-0.047590, 0.994514, 0.093150,
		-0.119568, -0.098257, 0.987952,
		50.994629, 51.666656, 50.552383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.489880, 52.266800, 50.271217>,  <51.078327, 51.735435, 49.860817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.489880, 52.266800, 50.271217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.458279, 51.959015, 50.524734>,  <51.439316, 51.774345, 50.676846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.458279, 51.959015, 50.524734>,  <51.489880, 52.266800, 50.271217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.458279, 51.959015, 50.524734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972684, 0.079707, 0.218021,
		-0.218276, 0.633701, 0.742145,
		-0.079006, -0.769461, 0.633789,
		51.434578, 51.728176, 50.714870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.747498, 52.369923, 50.981342>,  <51.489880, 52.266800, 50.271217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.747498, 52.369923, 50.981342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.792934, 51.987457, 50.873375>,  <51.820198, 51.757980, 50.808594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.792934, 51.987457, 50.873375>,  <51.747498, 52.369923, 50.981342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.792934, 51.987457, 50.873375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984095, 0.070935, 0.162864,
		-0.136578, -0.284126, 0.949009,
		0.113592, -0.956159, -0.269919,
		51.827011, 51.700611, 50.792400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.103546, 51.993946, 51.556820>,  <51.747498, 52.369923, 50.981342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.103546, 51.993946, 51.556820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.162678, 51.852112, 51.187515>,  <52.198158, 51.767010, 50.965931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.162678, 51.852112, 51.187515>,  <52.103546, 51.993946, 51.556820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.162678, 51.852112, 51.187515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988898, 0.067181, 0.132539,
		0.015029, -0.932606, 0.360582,
		0.147831, -0.354587, -0.923263,
		52.207027, 51.745735, 50.910538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.540382, 51.303749, 51.458744>,  <52.103546, 51.993946, 51.556820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.540382, 51.303749, 51.458744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.578674, 51.570992, 51.163589>,  <52.601650, 51.731335, 50.986496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.578674, 51.570992, 51.163589>,  <52.540382, 51.303749, 51.458744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.578674, 51.570992, 51.163589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846827, 0.334960, 0.413141,
		0.523183, -0.664410, -0.533703,
		0.095726, 0.668103, -0.737886,
		52.607391, 51.771423, 50.942223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.190060, 51.147167, 51.029484>,  <52.540382, 51.303749, 51.458744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.190060, 51.147167, 51.029484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.089817, 51.534286, 51.019974>,  <53.029671, 51.766560, 51.014267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.089817, 51.534286, 51.019974>,  <53.190060, 51.147167, 51.029484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.089817, 51.534286, 51.019974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943505, 0.249663, 0.217869,
		0.216788, 0.032170, -0.975688,
		-0.250602, 0.967798, -0.023771,
		53.014637, 51.824627, 51.012844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.439438, 51.357487, 50.503685>,  <53.190060, 51.147167, 51.029484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.439438, 51.357487, 50.503685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.415890, 51.602226, 50.819199>,  <53.401760, 51.749069, 51.008507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.415890, 51.602226, 50.819199>,  <53.439438, 51.357487, 50.503685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.415890, 51.602226, 50.819199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995691, -0.020716, 0.090387,
		0.071644, 0.790703, -0.607994,
		-0.058874, 0.611850, 0.788780,
		53.398228, 51.785782, 51.055832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.953098, 51.880398, 50.452572>,  <53.439438, 51.357487, 50.503685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.953098, 51.880398, 50.452572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.871506, 51.846130, 50.842659>,  <53.822552, 51.825569, 51.076714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.871506, 51.846130, 50.842659>,  <53.953098, 51.880398, 50.452572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.871506, 51.846130, 50.842659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977250, -0.076919, 0.197650,
		0.058081, 0.993350, 0.099407,
		-0.203981, -0.085666, 0.975219,
		53.810310, 51.820431, 51.135223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.418995, 52.290276, 50.874275>,  <53.953098, 51.880398, 50.452572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.418995, 52.290276, 50.874275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.331154, 51.997383, 51.132149>,  <54.278450, 51.821648, 51.286873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.331154, 51.997383, 51.132149>,  <54.418995, 52.290276, 50.874275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.331154, 51.997383, 51.132149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953097, -0.019941, 0.302009,
		-0.208283, 0.680769, 0.702262,
		-0.219602, -0.732227, 0.644685,
		54.265274, 51.777714, 51.325554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.581593, 52.515488, 51.601269>,  <54.418995, 52.290276, 50.874275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.581593, 52.515488, 51.601269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.611359, 52.121506, 51.538872>,  <54.629219, 51.885117, 51.501434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.611359, 52.121506, 51.538872>,  <54.581593, 52.515488, 51.601269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.611359, 52.121506, 51.538872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985807, 0.049049, 0.160554,
		-0.150487, -0.165721, 0.974623,
		0.074411, -0.984952, -0.155988,
		54.633682, 51.826019, 51.492077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.730175, 52.022671, 52.185715>,  <54.581593, 52.515488, 51.601269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.730175, 52.022671, 52.185715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.884224, 51.862808, 51.852982>,  <54.976654, 51.766891, 51.653339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.884224, 51.862808, 51.852982>,  <54.730175, 52.022671, 52.185715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.884224, 51.862808, 51.852982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922312, 0.197889, 0.331934,
		0.031951, -0.895049, 0.444822,
		0.385122, -0.399660, -0.831837,
		54.999760, 51.742912, 51.603432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.337723, 51.717190, 52.304878>,  <54.730175, 52.022671, 52.185715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.337723, 51.717190, 52.304878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.384216, 51.792038, 51.914703>,  <55.412113, 51.836948, 51.680599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.384216, 51.792038, 51.914703>,  <55.337723, 51.717190, 52.304878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.384216, 51.792038, 51.914703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832528, 0.517227, 0.198428,
		0.541652, -0.835141, -0.095665,
		0.116235, 0.187123, -0.975436,
		55.419086, 51.848175, 51.622074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.041931, 51.428406, 51.927624>,  <55.337723, 51.717190, 52.304878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.041931, 51.428406, 51.927624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.883636, 51.754444, 51.758385>,  <55.788662, 51.950069, 51.656841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.883636, 51.754444, 51.758385>,  <56.041931, 51.428406, 51.927624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.883636, 51.754444, 51.758385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829567, 0.514912, 0.216066,
		0.393971, -0.265480, -0.879947,
		-0.395734, 0.815099, -0.423094,
		55.764915, 51.998974, 51.631454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.570560, 51.675907, 51.348904>,  <56.041931, 51.428406, 51.927624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.570560, 51.675907, 51.348904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.332375, 51.959076, 51.500839>,  <56.189465, 52.128975, 51.591999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.332375, 51.959076, 51.500839>,  <56.570560, 51.675907, 51.348904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.332375, 51.959076, 51.500839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777492, 0.626858, 0.050551,
		-0.202319, 0.325424, -0.923670,
		-0.595460, 0.707919, 0.379840,
		56.153736, 52.171452, 51.614792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.803665, 52.379299, 51.168163>,  <56.570560, 51.675907, 51.348904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.803665, 52.379299, 51.168163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.584305, 52.447151, 51.495697>,  <56.452690, 52.487862, 51.692215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.584305, 52.447151, 51.495697>,  <56.803665, 52.379299, 51.168163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.584305, 52.447151, 51.495697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628270, 0.729795, 0.269585,
		-0.551849, 0.662287, -0.506792,
		-0.548397, 0.169632, 0.818832,
		56.419785, 52.498039, 51.741348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.417240, 53.128059, 51.214596>,  <56.803665, 52.379299, 51.168163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.417240, 53.128059, 51.214596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.538231, 52.939632, 51.546043>,  <56.610825, 52.826576, 51.744911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.538231, 52.939632, 51.546043>,  <56.417240, 53.128059, 51.214596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.538231, 52.939632, 51.546043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630434, 0.750893, 0.196754,
		-0.714887, 0.462875, 0.524103,
		0.302473, -0.471069, 0.828615,
		56.628971, 52.798313, 51.794628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.451031, 53.534367, 51.889256>,  <56.417240, 53.128059, 51.214596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.451031, 53.534367, 51.889256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.742180, 53.260094, 51.891438>,  <56.916870, 53.095528, 51.892746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.742180, 53.260094, 51.891438>,  <56.451031, 53.534367, 51.889256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.742180, 53.260094, 51.891438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683252, 0.725920, 0.078780,
		-0.057977, -0.053615, 0.996877,
		0.727877, -0.685686, 0.005454,
		56.960545, 53.054386, 51.893074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.978825, 53.606358, 52.477249>,  <56.451031, 53.534367, 51.889256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.978825, 53.606358, 52.477249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.158417, 53.461792, 52.150375>,  <57.266171, 53.375053, 51.954250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.158417, 53.461792, 52.150375>,  <56.978825, 53.606358, 52.477249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.158417, 53.461792, 52.150375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751616, 0.647325, 0.126664,
		0.483209, -0.671082, 0.562280,
		0.448980, -0.361413, -0.817189,
		57.293110, 53.353367, 51.905220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.710899, 53.479134, 52.611031>,  <56.978825, 53.606358, 52.477249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.710899, 53.479134, 52.611031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.633041, 53.604233, 52.239159>,  <57.586327, 53.679291, 52.016037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.633041, 53.604233, 52.239159>,  <57.710899, 53.479134, 52.611031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.633041, 53.604233, 52.239159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704365, 0.704184, 0.089418,
		0.682630, -0.637429, -0.357352,
		-0.194644, 0.312746, -0.929679,
		57.574650, 53.698055, 51.960255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.439224, 53.454029, 52.327557>,  <57.710899, 53.479134, 52.611031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.439224, 53.454029, 52.327557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.178551, 53.696659, 52.145401>,  <58.022144, 53.842236, 52.036110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.178551, 53.696659, 52.145401>,  <58.439224, 53.454029, 52.327557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.178551, 53.696659, 52.145401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714778, 0.691997, -0.101156,
		0.253768, -0.391423, -0.884528,
		-0.651686, 0.606571, -0.455387,
		57.983044, 53.878632, 52.008785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.585823, 53.805912, 52.966148>,  <58.439224, 53.454029, 52.327557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.585823, 53.805912, 52.966148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.554070, 54.204521, 52.976326>,  <58.535019, 54.443687, 52.982433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.554070, 54.204521, 52.976326>,  <58.585823, 53.805912, 52.966148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.554070, 54.204521, 52.976326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285869, -0.047211, 0.957105,
		0.954975, 0.068703, 0.288622,
		-0.079382, 0.996520, 0.025445,
		58.530254, 54.503475, 52.983959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.035301, 54.202545, 53.493675>,  <58.585823, 53.805912, 52.966148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.035301, 54.202545, 53.493675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.712090, 54.424404, 53.414223>,  <58.518162, 54.557518, 53.366550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.712090, 54.424404, 53.414223>,  <59.035301, 54.202545, 53.493675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.712090, 54.424404, 53.414223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323256, -0.135530, 0.936556,
		0.492538, 0.820973, 0.288806,
		-0.808029, 0.554648, -0.198631,
		58.469681, 54.590797, 53.354633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.934425, 54.870956, 53.893589>,  <59.035301, 54.202545, 53.493675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.934425, 54.870956, 53.893589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.613075, 54.661633, 53.779934>,  <58.420265, 54.536037, 53.711742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.613075, 54.661633, 53.779934>,  <58.934425, 54.870956, 53.893589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.613075, 54.661633, 53.779934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231440, -0.165241, 0.958713,
		-0.548658, 0.835966, 0.011635,
		-0.803374, -0.523313, -0.284137,
		58.372063, 54.504639, 53.694695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.723766, 54.656525, 53.667797>,  <58.934425, 54.870956, 53.893589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.723766, 54.656525, 53.667797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.783844, 55.051407, 53.689194>,  <59.819889, 55.288338, 53.702034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.783844, 55.051407, 53.689194>,  <59.723766, 54.656525, 53.667797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.783844, 55.051407, 53.689194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354757, -0.104320, 0.929120,
		0.922816, -0.120568, -0.365887,
		0.150191, 0.987208, 0.053496,
		59.828903, 55.347569, 53.705242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.872604, 55.006950, 54.303963>,  <59.723766, 54.656525, 53.667797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.872604, 55.006950, 54.303963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.925278, 54.884838, 54.681210>,  <59.956882, 54.811569, 54.907558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.925278, 54.884838, 54.681210>,  <59.872604, 55.006950, 54.303963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.925278, 54.884838, 54.681210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823185, -0.496388, -0.275616,
		0.552291, 0.812651, 0.185936,
		0.131683, -0.305281, 0.943114,
		59.964783, 54.793255, 54.964142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.495152, 55.123146, 54.463100>,  <59.872604, 55.006950, 54.303963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.495152, 55.123146, 54.463100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.398193, 54.832001, 54.719681>,  <60.340019, 54.657314, 54.873631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.398193, 54.832001, 54.719681>,  <60.495152, 55.123146, 54.463100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.398193, 54.832001, 54.719681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794181, -0.528625, -0.299721,
		0.557243, 0.436776, 0.706192,
		-0.242400, -0.727861, 0.641452,
		60.325474, 54.613644, 54.912117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.077038, 54.947514, 54.586288>,  <60.495152, 55.123146, 54.463100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.077038, 54.947514, 54.586288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.903778, 54.640076, 54.774601>,  <60.799824, 54.455612, 54.887589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.903778, 54.640076, 54.774601>,  <61.077038, 54.947514, 54.586288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.903778, 54.640076, 54.774601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900303, -0.393781, 0.185450,
		0.042848, 0.504174, 0.862538,
		-0.433150, -0.768599, 0.470782,
		60.773834, 54.409496, 54.915836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.476887, 54.891205, 55.158234>,  <61.077038, 54.947514, 54.586288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.476887, 54.891205, 55.158234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.278595, 54.544395, 55.138168>,  <61.159618, 54.336308, 55.126129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.278595, 54.544395, 55.138168>,  <61.476887, 54.891205, 55.158234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.278595, 54.544395, 55.138168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849703, -0.496147, 0.178444,
		-0.179605, 0.045834, 0.982670,
		-0.495728, -0.867028, -0.050165,
		61.129875, 54.284286, 55.123119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.600861, 55.330437, 55.832958>,  <61.476887, 54.891205, 55.158234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.600861, 55.330437, 55.832958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.828354, 55.435852, 56.144623>,  <61.964848, 55.499100, 56.331623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.828354, 55.435852, 56.144623>,  <61.600861, 55.330437, 55.832958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.828354, 55.435852, 56.144623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811616, 0.333568, 0.479596,
		-0.133511, -0.905141, 0.403602,
		0.568731, 0.263538, 0.779162,
		61.998974, 55.514915, 56.378372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.147190, 55.782890, 55.321571>,  <61.600861, 55.330437, 55.832958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.147190, 55.782890, 55.321571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.959450, 56.135784, 55.336334>,  <60.846806, 56.347523, 55.345192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.959450, 56.135784, 55.336334>,  <61.147190, 55.782890, 55.321571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.959450, 56.135784, 55.336334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152788, 0.122310, -0.980661,
		-0.869691, -0.454637, -0.192202,
		-0.469353, 0.882239, 0.036909,
		60.818645, 56.400455, 55.347408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.651943, 55.835850, 54.709267>,  <61.147190, 55.782890, 55.321571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.651943, 55.835850, 54.709267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.792580, 56.176315, 54.865166>,  <60.876961, 56.380596, 54.958706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.792580, 56.176315, 54.865166>,  <60.651943, 55.835850, 54.709267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.792580, 56.176315, 54.865166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274546, 0.304269, -0.912165,
		-0.894992, 0.427708, -0.126707,
		0.351588, 0.851168, 0.389744,
		60.898056, 56.431667, 54.982090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.403065, 56.408691, 54.292850>,  <60.651943, 55.835850, 54.709267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.403065, 56.408691, 54.292850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.745773, 56.498024, 54.478786>,  <60.951397, 56.551624, 54.590347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.745773, 56.498024, 54.478786>,  <60.403065, 56.408691, 54.292850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.745773, 56.498024, 54.478786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257703, 0.595352, -0.761016,
		-0.446699, 0.771803, 0.452526,
		0.856767, 0.223328, 0.464839,
		61.002804, 56.565022, 54.618237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.488190, 57.166977, 54.551250>,  <60.403065, 56.408691, 54.292850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.488190, 57.166977, 54.551250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.829193, 56.991913, 54.436935>,  <61.033794, 56.886875, 54.368347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.829193, 56.991913, 54.436935>,  <60.488190, 57.166977, 54.551250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.829193, 56.991913, 54.436935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083841, 0.654153, -0.751702,
		0.515938, 0.616875, 0.594368,
		0.852513, -0.437664, -0.285783,
		61.084946, 56.860615, 54.351200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.096737, 57.576096, 54.652046>,  <60.488190, 57.166977, 54.551250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.096737, 57.576096, 54.652046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.105759, 57.320648, 54.344368>,  <61.111172, 57.167381, 54.159763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.105759, 57.320648, 54.344368>,  <61.096737, 57.576096, 54.652046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.105759, 57.320648, 54.344368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171301, 0.760478, -0.626362,
		0.984961, -0.117636, 0.126548,
		0.022554, -0.638619, -0.769192,
		61.112526, 57.129063, 54.113609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.661224, 57.735420, 54.295910>,  <61.096737, 57.576096, 54.652046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.661224, 57.735420, 54.295910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.419655, 57.534920, 54.048031>,  <61.274712, 57.414619, 53.899303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.419655, 57.534920, 54.048031>,  <61.661224, 57.735420, 54.295910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.419655, 57.534920, 54.048031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215350, 0.645961, -0.732365,
		0.767396, -0.575747, -0.282169,
		-0.603927, -0.501249, -0.619695,
		61.238476, 57.384544, 53.862122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.627434, 58.014824, 54.924435>,  <61.661224, 57.735420, 54.295910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.627434, 58.014824, 54.924435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.945869, 57.917030, 54.702995>,  <62.136929, 57.858353, 54.570133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.945869, 57.917030, 54.702995>,  <61.627434, 58.014824, 54.924435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.945869, 57.917030, 54.702995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058320, 0.941499, -0.331932,
		0.602366, 0.231960, 0.763773,
		0.796087, -0.244488, -0.553599,
		62.184696, 57.843685, 54.536915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.323498, 58.266136, 55.100712>,  <61.627434, 58.014824, 54.924435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.323498, 58.266136, 55.100712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.243752, 58.226944, 54.710705>,  <62.195904, 58.203430, 54.476700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.243752, 58.226944, 54.710705>,  <62.323498, 58.266136, 55.100712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.243752, 58.226944, 54.710705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055530, 0.992261, -0.111064,
		0.978351, -0.076285, -0.192378,
		-0.199362, -0.097977, -0.975015,
		62.183945, 58.197552, 54.418201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.906349, 58.575912, 54.700676>,  <62.323498, 58.266136, 55.100712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.906349, 58.575912, 54.700676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.558090, 58.590538, 54.504459>,  <62.349136, 58.599312, 54.386730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.558090, 58.590538, 54.504459>,  <62.906349, 58.575912, 54.700676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.558090, 58.590538, 54.504459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113780, 0.985160, -0.128509,
		0.478567, -0.167700, -0.861888,
		-0.870648, 0.036565, -0.490546,
		62.296894, 58.601509, 54.357296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.084442, 58.745338, 54.057205>,  <62.906349, 58.575912, 54.700676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.084442, 58.745338, 54.057205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.712082, 58.868530, 54.135761>,  <62.488667, 58.942448, 54.182896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.712082, 58.868530, 54.135761>,  <63.084442, 58.745338, 54.057205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.712082, 58.868530, 54.135761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245074, 0.925299, -0.289415,
		-0.270852, -0.221288, -0.936841,
		-0.930902, 0.307984, 0.196387,
		62.432812, 58.960926, 54.194675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.454548, 58.113625, 54.320930>,  <63.084442, 58.745338, 54.057205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.454548, 58.113625, 54.320930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.590294, 58.481041, 54.239830>,  <63.671741, 58.701492, 54.191170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.590294, 58.481041, 54.239830>,  <63.454548, 58.113625, 54.320930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.590294, 58.481041, 54.239830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914489, -0.271685, 0.299829,
		0.220323, -0.287162, -0.932199,
		0.339365, 0.918545, -0.202748,
		63.692104, 58.756603, 54.179005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.161858, 57.882275, 54.298836>,  <63.454548, 58.113625, 54.320930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.161858, 57.882275, 54.298836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.027138, 58.243820, 54.404366>,  <63.946304, 58.460747, 54.467682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.027138, 58.243820, 54.404366>,  <64.161858, 57.882275, 54.298836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.027138, 58.243820, 54.404366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690675, 0.046723, 0.721655,
		0.639948, 0.425269, -0.640009,
		-0.336801, 0.903860, 0.263823,
		63.926098, 58.514977, 54.483513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.682976, 58.365578, 54.175762>,  <64.161858, 57.882275, 54.298836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.682976, 58.365578, 54.175762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.450500, 58.454266, 54.488953>,  <64.311012, 58.507477, 54.676868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.450500, 58.454266, 54.488953>,  <64.682976, 58.365578, 54.175762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.450500, 58.454266, 54.488953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813767, 0.158446, 0.559177,
		-0.000080, 0.962152, -0.272514,
		-0.581192, 0.221718, 0.782980,
		64.276146, 58.520782, 54.723846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.989967, 58.884052, 54.499802>,  <64.682976, 58.365578, 54.175762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.989967, 58.884052, 54.499802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.758476, 58.710754, 54.776169>,  <64.619583, 58.606773, 54.941990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.758476, 58.710754, 54.776169>,  <64.989967, 58.884052, 54.499802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.758476, 58.710754, 54.776169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732489, 0.096307, 0.673932,
		-0.358520, 0.896114, 0.261615,
		-0.578725, -0.433248, 0.690922,
		64.584862, 58.580780, 54.983444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.839981, 59.293137, 55.159760>,  <64.989967, 58.884052, 54.499802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.839981, 59.293137, 55.159760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.827423, 58.900597, 55.235611>,  <64.819893, 58.665073, 55.281120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.827423, 58.900597, 55.235611>,  <64.839981, 59.293137, 55.159760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.827423, 58.900597, 55.235611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683397, 0.117371, 0.720550,
		-0.729372, 0.152208, 0.666970,
		-0.031391, -0.981355, 0.189626,
		64.818008, 58.606190, 55.292500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.679031, 59.230190, 55.861912>,  <64.839981, 59.293137, 55.159760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.679031, 59.230190, 55.861912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.901390, 58.947021, 55.687637>,  <65.034805, 58.777122, 55.583073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.901390, 58.947021, 55.687637>,  <64.679031, 59.230190, 55.861912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.901390, 58.947021, 55.687637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645320, 0.037155, 0.763008,
		-0.523960, -0.705315, 0.477489,
		0.555902, -0.707919, -0.435687,
		65.068161, 58.734646, 55.556931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.740562, 58.570377, 56.270218>,  <64.679031, 59.230190, 55.861912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.740562, 58.570377, 56.270218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.060638, 58.631897, 56.038345>,  <65.252686, 58.668808, 55.899220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.060638, 58.631897, 56.038345>,  <64.740562, 58.570377, 56.270218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.060638, 58.631897, 56.038345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598984, -0.253465, 0.759588,
		-0.030102, -0.955039, -0.294948,
		0.800195, 0.153804, -0.579683,
		65.300697, 58.678040, 55.864441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.248245, 58.026459, 56.326092>,  <64.740562, 58.570377, 56.270218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.248245, 58.026459, 56.326092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.470901, 58.348198, 56.242981>,  <65.604500, 58.541241, 56.193115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.470901, 58.348198, 56.242981>,  <65.248245, 58.026459, 56.326092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.470901, 58.348198, 56.242981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470881, -0.099442, 0.876574,
		0.684409, -0.585779, -0.434105,
		0.556647, 0.804347, -0.207773,
		65.637894, 58.589500, 56.180649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.828766, 57.868538, 56.527855>,  <65.248245, 58.026459, 56.326092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.828766, 57.868538, 56.527855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.863632, 58.266953, 56.520744>,  <65.884552, 58.506001, 56.516479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.863632, 58.266953, 56.520744>,  <65.828766, 57.868538, 56.527855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.863632, 58.266953, 56.520744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478247, -0.026181, 0.877835,
		0.873890, -0.085012, -0.478633,
		0.087158, 0.996036, -0.017777,
		65.889778, 58.565762, 56.515411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.488884, 57.983883, 56.502193>,  <65.828766, 57.868538, 56.527855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.488884, 57.983883, 56.502193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.249794, 58.240578, 56.694397>,  <66.106339, 58.394596, 56.809719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.249794, 58.240578, 56.694397>,  <66.488884, 57.983883, 56.502193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.249794, 58.240578, 56.694397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569535, -0.081911, 0.817875,
		0.564222, 0.762536, -0.316532,
		-0.597732, 0.641739, 0.480507,
		66.070473, 58.433098, 56.838551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.268188, 57.814121, 56.477741>,  <66.488884, 57.983883, 56.502193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.268188, 57.814121, 56.477741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.109528, 57.897125, 56.120056>,  <67.014336, 57.946926, 55.905445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.109528, 57.897125, 56.120056>,  <67.268188, 57.814121, 56.477741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.109528, 57.897125, 56.120056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331907, 0.940632, 0.071058,
		0.855868, -0.268609, -0.441972,
		-0.396646, 0.207510, -0.894210,
		66.990532, 57.959377, 55.851791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.798920, 57.945011, 56.111668>,  <67.268188, 57.814121, 56.477741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.798920, 57.945011, 56.111668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.450584, 58.141468, 56.103378>,  <67.241585, 58.259342, 56.098404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.450584, 58.141468, 56.103378>,  <67.798920, 57.945011, 56.111668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.450584, 58.141468, 56.103378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460481, 0.829780, 0.315313,
		0.172054, 0.265046, -0.948761,
		-0.870836, 0.491138, -0.020719,
		67.189331, 58.288811, 56.097164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.178581, 57.298420, 56.239281>,  <67.798920, 57.945011, 56.111668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.178581, 57.298420, 56.239281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.888489, 57.259491, 56.511917>,  <67.714432, 57.236134, 56.675499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.888489, 57.259491, 56.511917>,  <68.178581, 57.298420, 56.239281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.888489, 57.259491, 56.511917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681096, -0.246197, 0.689562,
		0.100697, 0.964322, 0.244835,
		-0.725237, -0.097319, 0.681586,
		67.670921, 57.230297, 56.716393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.371735, 57.616055, 56.864830>,  <68.178581, 57.298420, 56.239281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.371735, 57.616055, 56.864830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.094994, 57.345589, 56.966133>,  <67.928947, 57.183308, 57.026913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.094994, 57.345589, 56.966133>,  <68.371735, 57.616055, 56.864830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.094994, 57.345589, 56.966133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507643, -0.206098, 0.836554,
		-0.513452, 0.707338, 0.485839,
		-0.691857, -0.676163, 0.253254,
		67.887436, 57.142738, 57.042110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.084503, 57.744205, 57.501190>,  <68.371735, 57.616055, 56.864830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.084503, 57.744205, 57.501190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.030777, 57.352234, 57.442276>,  <67.998543, 57.117050, 57.406929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.030777, 57.352234, 57.442276>,  <68.084503, 57.744205, 57.501190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.030777, 57.352234, 57.442276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445366, -0.192471, 0.874416,
		-0.885215, 0.051861, 0.462282,
		-0.134324, -0.979931, -0.147281,
		67.990479, 57.058254, 57.398090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.774467, 57.504215, 58.085205>,  <68.084503, 57.744205, 57.501190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.774467, 57.504215, 58.085205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.999084, 57.224876, 57.907669>,  <68.133850, 57.057274, 57.801147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.999084, 57.224876, 57.907669>,  <67.774467, 57.504215, 58.085205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.999084, 57.224876, 57.907669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431699, -0.210356, 0.877146,
		-0.705915, -0.684153, 0.183353,
		0.561533, -0.698344, -0.443842,
		68.167542, 57.015373, 57.774517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.732422, 57.038113, 58.517658>,  <67.774467, 57.504215, 58.085205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.732422, 57.038113, 58.517658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.071899, 57.009083, 58.308105>,  <68.275589, 56.991665, 58.182373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.071899, 57.009083, 58.308105>,  <67.732422, 57.038113, 58.517658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.071899, 57.009083, 58.308105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526713, 0.026358, 0.849634,
		-0.047855, -0.997015, 0.060597,
		0.848695, -0.072577, -0.523879,
		68.326508, 56.987309, 58.150940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.069458, 56.277451, 58.622478>,  <67.732422, 57.038113, 58.517658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.069458, 56.277451, 58.622478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.303833, 56.586006, 58.523178>,  <68.444458, 56.771141, 58.463596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.303833, 56.586006, 58.523178>,  <68.069458, 56.277451, 58.622478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.303833, 56.586006, 58.523178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581206, -0.186570, 0.792081,
		0.564686, -0.608399, -0.557656,
		0.585943, 0.771390, -0.248252,
		68.479614, 56.817425, 58.448704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.829651, 56.208340, 58.375931>,  <68.069458, 56.277451, 58.622478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.829651, 56.208340, 58.375931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.735718, 56.532005, 58.591377>,  <68.679359, 56.726204, 58.720646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.735718, 56.532005, 58.591377>,  <68.829651, 56.208340, 58.375931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.735718, 56.532005, 58.591377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564699, -0.337450, 0.753155,
		0.791180, 0.481028, -0.377685,
		-0.234839, 0.809160, 0.538620,
		68.665268, 56.774754, 58.752964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.398148, 56.563240, 58.670582>,  <68.829651, 56.208340, 58.375931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.398148, 56.563240, 58.670582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.123787, 56.664188, 58.943596>,  <68.959167, 56.724758, 59.107403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.123787, 56.664188, 58.943596>,  <69.398148, 56.563240, 58.670582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.123787, 56.664188, 58.943596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595307, -0.344820, 0.725747,
		0.418509, 0.904106, 0.086273,
		-0.685900, 0.252373, 0.682531,
		68.918015, 56.739899, 59.148354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.884605, 56.024578, 58.791027>,  <69.398148, 56.563240, 58.670582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.884605, 56.024578, 58.791027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.238541, 55.971771, 58.969749>,  <70.450905, 55.940086, 59.076981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.238541, 55.971771, 58.969749>,  <69.884605, 56.024578, 58.791027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.238541, 55.971771, 58.969749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029319, 0.941337, 0.336192,
		-0.464973, -0.310576, 0.829061,
		0.884839, -0.132013, 0.446802,
		70.503990, 55.932167, 59.103790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.096260, 56.555546, 59.282829>,  <69.884605, 56.024578, 58.791027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.096260, 56.555546, 59.282829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.759903, 56.772018, 59.285095>,  <69.558090, 56.901901, 59.286453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.759903, 56.772018, 59.285095>,  <70.096260, 56.555546, 59.282829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.759903, 56.772018, 59.285095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332781, -0.508765, -0.793987,
		-0.426808, -0.669539, 0.607908,
		-0.840888, 0.541180, 0.005665,
		69.507637, 56.934372, 59.286793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.532516, 57.015938, 58.899246>,  <70.096260, 56.555546, 59.282829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.532516, 57.015938, 58.899246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.842422, 56.999321, 59.151596>,  <71.028366, 56.989353, 59.303005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.842422, 56.999321, 59.151596>,  <70.532516, 57.015938, 58.899246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.842422, 56.999321, 59.151596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632179, 0.064929, -0.772097,
		-0.008889, 0.997025, 0.076566,
		0.774771, -0.041540, 0.630875,
		71.074852, 56.986858, 59.340858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.817169, 57.457211, 59.404606>,  <70.532516, 57.015938, 58.899246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.817169, 57.457211, 59.404606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.029846, 57.361702, 59.079575>,  <71.157455, 57.304398, 58.884556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.029846, 57.361702, 59.079575>,  <70.817169, 57.457211, 59.404606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.029846, 57.361702, 59.079575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617265, 0.766178, 0.178760,
		0.579894, -0.596622, 0.554766,
		0.531702, -0.238776, -0.812576,
		71.189354, 57.290070, 58.835800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.538788, 57.553997, 59.611416>,  <70.817169, 57.457211, 59.404606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.538788, 57.553997, 59.611416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.540276, 57.575089, 59.211975>,  <71.541168, 57.587746, 58.972309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.540276, 57.575089, 59.211975>,  <71.538788, 57.553997, 59.611416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.540276, 57.575089, 59.211975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604819, 0.795133, 0.044235,
		0.796354, -0.604138, -0.028942,
		0.003711, 0.052731, -0.998602,
		71.541389, 57.590908, 58.912395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.392067, 58.234356, 59.568344>,  <71.538788, 57.553997, 59.611416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.392067, 58.234356, 59.568344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.649513, 58.520981, 59.460793>,  <71.803978, 58.692955, 59.396259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.649513, 58.520981, 59.460793>,  <71.392067, 58.234356, 59.568344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.649513, 58.520981, 59.460793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420515, -0.037552, 0.906508,
		0.639471, -0.696514, -0.325494,
		0.643618, 0.716560, -0.268881,
		71.842598, 58.735950, 59.380127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.086388, 58.029091, 59.583611>,  <71.392067, 58.234356, 59.568344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.086388, 58.029091, 59.583611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.137238, 58.421707, 59.640755>,  <72.167747, 58.657276, 59.675041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.137238, 58.421707, 59.640755>,  <72.086388, 58.029091, 59.583611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.137238, 58.421707, 59.640755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319789, -0.176904, 0.930828,
		0.938921, -0.072652, -0.336377,
		0.127133, 0.981543, 0.142865,
		72.175377, 58.716171, 59.683613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.598030, 57.617188, 59.982761>,  <72.086388, 58.029091, 59.583611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.598030, 57.617188, 59.982761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.689636, 57.315712, 60.229179>,  <72.744598, 57.134827, 60.377029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.689636, 57.315712, 60.229179>,  <72.598030, 57.617188, 59.982761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.689636, 57.315712, 60.229179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535531, -0.626035, -0.566821,
		0.812870, -0.200099, -0.546995,
		0.229017, -0.753685, 0.616045,
		72.758339, 57.089607, 60.413994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
