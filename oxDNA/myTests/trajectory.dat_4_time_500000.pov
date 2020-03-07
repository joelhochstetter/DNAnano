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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<38.851261, 45.373032, 57.060066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939659, 45.762596, 57.080719>,  <38.992699, 45.996334, 57.093109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939659, 45.762596, 57.080719>,  <38.851261, 45.373032, 57.060066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939659, 45.762596, 57.080719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327173, -0.024158, -0.944655,
		-0.918760, 0.225654, -0.323975,
		0.220992, 0.973908, 0.051633,
		39.005955, 46.054768, 57.096210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499004, 45.672512, 56.519798>,  <38.851261, 45.373032, 57.060066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499004, 45.672512, 56.519798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826271, 45.887241, 56.602180>,  <39.022633, 46.016079, 56.651611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826271, 45.887241, 56.602180>,  <38.499004, 45.672512, 56.519798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826271, 45.887241, 56.602180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301249, -0.095115, -0.948790,
		-0.489742, 0.838317, -0.239538,
		0.818170, 0.536822, 0.205960,
		39.071724, 46.048286, 56.663967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636341, 45.997753, 55.915348>,  <38.499004, 45.672512, 56.519798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636341, 45.997753, 55.915348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972900, 46.100548, 56.105507>,  <39.174835, 46.162224, 56.219601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972900, 46.100548, 56.105507>,  <38.636341, 45.997753, 55.915348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972900, 46.100548, 56.105507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487448, 0.018900, -0.872948,
		-0.233324, 0.966229, -0.109366,
		0.841401, 0.256990, 0.475396,
		39.225319, 46.177647, 56.248127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965919, 46.516483, 55.574070>,  <38.636341, 45.997753, 55.915348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965919, 46.516483, 55.574070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281822, 46.365158, 55.767220>,  <39.471363, 46.274364, 55.883110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281822, 46.365158, 55.767220>,  <38.965919, 46.516483, 55.574070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281822, 46.365158, 55.767220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494781, -0.072445, -0.865993,
		0.362595, 0.922840, 0.129966,
		0.789757, -0.378309, 0.482872,
		39.518749, 46.251667, 55.912083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503971, 46.797398, 55.268181>,  <38.965919, 46.516483, 55.574070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503971, 46.797398, 55.268181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671333, 46.477753, 55.440861>,  <39.771751, 46.285965, 55.544468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671333, 46.477753, 55.440861>,  <39.503971, 46.797398, 55.268181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671333, 46.477753, 55.440861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444155, -0.234574, -0.864697,
		0.792252, 0.553534, 0.256781,
		0.418405, -0.799109, 0.431697,
		39.796856, 46.238022, 55.570370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219143, 46.863518, 55.165249>,  <39.503971, 46.797398, 55.268181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219143, 46.863518, 55.165249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143768, 46.475922, 55.229179>,  <40.098545, 46.243362, 55.267540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143768, 46.475922, 55.229179>,  <40.219143, 46.863518, 55.165249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143768, 46.475922, 55.229179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448384, -0.229678, -0.863828,
		0.873753, -0.091111, 0.477760,
		-0.188435, -0.968992, 0.159829,
		40.087238, 46.185223, 55.277126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910969, 46.599934, 55.084190>,  <40.219143, 46.863518, 55.165249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910969, 46.599934, 55.084190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639969, 46.310989, 55.028770>,  <40.477367, 46.137623, 54.995518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639969, 46.310989, 55.028770>,  <40.910969, 46.599934, 55.084190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639969, 46.310989, 55.028770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457851, -0.266759, -0.848064,
		0.575644, -0.637998, 0.511461,
		-0.677500, -0.722356, -0.138550,
		40.436718, 46.094284, 54.987206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231583, 45.946606, 54.824326>,  <40.910969, 46.599934, 55.084190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231583, 45.946606, 54.824326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849960, 45.931587, 54.705421>,  <40.620987, 45.922577, 54.634079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849960, 45.931587, 54.705421>,  <41.231583, 45.946606, 54.824326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849960, 45.931587, 54.705421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291637, -0.343917, -0.892563,
		-0.068718, -0.938249, 0.339067,
		-0.954058, -0.037549, -0.297261,
		40.563744, 45.920322, 54.616241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099960, 45.234680, 54.539299>,  <41.231583, 45.946606, 54.824326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099960, 45.234680, 54.539299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825546, 45.487480, 54.395119>,  <40.660896, 45.639160, 54.308613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825546, 45.487480, 54.395119>,  <41.099960, 45.234680, 54.539299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825546, 45.487480, 54.395119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221566, -0.290407, -0.930899,
		-0.693009, -0.718495, 0.059199,
		-0.686038, 0.632004, -0.360449,
		40.619736, 45.677082, 54.286983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806332, 44.870106, 54.152679>,  <41.099960, 45.234680, 54.539299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806332, 44.870106, 54.152679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676414, 45.223450, 54.017517>,  <40.598465, 45.435455, 53.936420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676414, 45.223450, 54.017517>,  <40.806332, 44.870106, 54.152679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676414, 45.223450, 54.017517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018669, -0.351222, -0.936106,
		-0.945602, -0.310346, 0.097582,
		-0.324789, 0.883362, -0.337910,
		40.578979, 45.488457, 53.916145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349693, 44.594353, 53.607243>,  <40.806332, 44.870106, 54.152679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349693, 44.594353, 53.607243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426010, 44.975613, 53.513344>,  <40.471802, 45.204369, 53.457005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426010, 44.975613, 53.513344>,  <40.349693, 44.594353, 53.607243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426010, 44.975613, 53.513344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059416, -0.227491, -0.971966,
		-0.979830, 0.199393, 0.013229,
		0.190794, 0.953147, -0.234750,
		40.483250, 45.261559, 53.442921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860348, 44.810230, 53.077881>,  <40.349693, 44.594353, 53.607243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860348, 44.810230, 53.077881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155952, 45.078716, 53.054802>,  <40.333317, 45.239807, 53.040955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155952, 45.078716, 53.054802>,  <39.860348, 44.810230, 53.077881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155952, 45.078716, 53.054802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050185, -0.140254, -0.988843,
		-0.671821, 0.727870, -0.137335,
		0.739011, 0.671218, -0.057698,
		40.377655, 45.280083, 53.037491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703529, 45.186123, 52.492058>,  <39.860348, 44.810230, 53.077881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703529, 45.186123, 52.492058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089264, 45.279034, 52.542831>,  <40.320705, 45.334782, 52.573296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089264, 45.279034, 52.542831>,  <39.703529, 45.186123, 52.492058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089264, 45.279034, 52.542831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130083, 0.001774, -0.991501,
		-0.230527, 0.972648, -0.028505,
		0.964332, 0.232276, 0.126934,
		40.378563, 45.348717, 52.580910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910126, 45.728012, 52.031052>,  <39.703529, 45.186123, 52.492058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910126, 45.728012, 52.031052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262505, 45.554478, 52.106655>,  <40.473930, 45.450356, 52.152016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262505, 45.554478, 52.106655>,  <39.910126, 45.728012, 52.031052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262505, 45.554478, 52.106655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244890, 0.076184, -0.966553,
		0.404930, 0.897764, 0.173356,
		0.880943, -0.433839, 0.189004,
		40.526787, 45.424324, 52.163357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294991, 45.991909, 51.556824>,  <39.910126, 45.728012, 52.031052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294991, 45.991909, 51.556824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504532, 45.677559, 51.688259>,  <40.630257, 45.488949, 51.767120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504532, 45.677559, 51.688259>,  <40.294991, 45.991909, 51.556824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504532, 45.677559, 51.688259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372307, -0.135715, -0.918133,
		0.766137, 0.603304, 0.221494,
		0.523853, -0.785879, 0.328591,
		40.661686, 45.441795, 51.786835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057369, 46.071110, 51.298790>,  <40.294991, 45.991909, 51.556824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057369, 46.071110, 51.298790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011917, 45.684246, 51.389729>,  <40.984646, 45.452126, 51.444290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011917, 45.684246, 51.389729>,  <41.057369, 46.071110, 51.298790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011917, 45.684246, 51.389729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392961, -0.253916, -0.883803,
		0.912507, -0.011089, 0.408910,
		-0.113629, -0.967163, 0.227342,
		40.977829, 45.394096, 51.457932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710251, 45.788769, 51.196152>,  <41.057369, 46.071110, 51.298790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710251, 45.788769, 51.196152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429382, 45.505489, 51.166721>,  <41.260860, 45.335522, 51.149063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429382, 45.505489, 51.166721>,  <41.710251, 45.788769, 51.196152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429382, 45.505489, 51.166721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486501, -0.401758, -0.775827,
		0.519880, -0.580556, 0.626642,
		-0.702169, -0.708198, -0.073575,
		41.218731, 45.293030, 51.144650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092377, 45.157455, 51.090065>,  <41.710251, 45.788769, 51.196152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092377, 45.157455, 51.090065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719055, 45.084351, 50.966431>,  <41.495060, 45.040485, 50.892250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719055, 45.084351, 50.966431>,  <42.092377, 45.157455, 51.090065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719055, 45.084351, 50.966431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358876, -0.503789, -0.785751,
		-0.012106, -0.844271, 0.535780,
		-0.933307, -0.182766, -0.309088,
		41.439064, 45.029522, 50.873703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081623, 44.432907, 50.965961>,  <42.092377, 45.157455, 51.090065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081623, 44.432907, 50.965961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777618, 44.584702, 50.754913>,  <41.595215, 44.675777, 50.628284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777618, 44.584702, 50.754913>,  <42.081623, 44.432907, 50.965961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777618, 44.584702, 50.754913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408113, -0.353146, -0.841862,
		-0.505798, -0.855149, 0.113522,
		-0.760008, 0.379483, -0.527618,
		41.549618, 44.698547, 50.596626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807556, 43.933540, 50.510170>,  <42.081623, 44.432907, 50.965961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807556, 43.933540, 50.510170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674553, 44.264278, 50.328724>,  <41.594749, 44.462723, 50.219856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674553, 44.264278, 50.328724>,  <41.807556, 43.933540, 50.510170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674553, 44.264278, 50.328724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422725, -0.299290, -0.855412,
		-0.843054, -0.476187, -0.250010,
		-0.332511, 0.826844, -0.453614,
		41.574799, 44.512333, 50.192638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561138, 43.663280, 49.887077>,  <41.807556, 43.933540, 50.510170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561138, 43.663280, 49.887077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595627, 44.056503, 49.822384>,  <41.616322, 44.292439, 49.783566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595627, 44.056503, 49.822384>,  <41.561138, 43.663280, 49.887077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595627, 44.056503, 49.822384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296852, -0.180319, -0.937744,
		-0.951023, 0.032845, -0.307371,
		0.086225, 0.983060, -0.161738,
		41.621494, 44.351421, 49.773861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207577, 43.755856, 49.326168>,  <41.561138, 43.663280, 49.887077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207577, 43.755856, 49.326168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449593, 44.073673, 49.346687>,  <41.594803, 44.264362, 49.358997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449593, 44.073673, 49.346687>,  <41.207577, 43.755856, 49.326168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449593, 44.073673, 49.346687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300794, -0.168449, -0.938695,
		-0.737193, 0.583375, -0.340911,
		0.605037, 0.794543, 0.051297,
		41.631104, 44.312035, 49.362076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156090, 44.077686, 48.647495>,  <41.207577, 43.755856, 49.326168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156090, 44.077686, 48.647495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496361, 44.215118, 48.806641>,  <41.700523, 44.297577, 48.902126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496361, 44.215118, 48.806641>,  <41.156090, 44.077686, 48.647495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496361, 44.215118, 48.806641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426214, -0.007769, -0.904589,
		-0.307706, 0.939092, -0.153046,
		0.850681, 0.343578, 0.397864,
		41.751564, 44.318192, 48.925999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400177, 44.751575, 48.319584>,  <41.156090, 44.077686, 48.647495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400177, 44.751575, 48.319584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712013, 44.559021, 48.479836>,  <41.899117, 44.443489, 48.575985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712013, 44.559021, 48.479836>,  <41.400177, 44.751575, 48.319584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712013, 44.559021, 48.479836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483424, 0.055850, -0.873603,
		0.398165, 0.874728, 0.276254,
		0.779593, -0.481386, 0.400627,
		41.945892, 44.414604, 48.600025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963348, 45.162880, 48.058483>,  <41.400177, 44.751575, 48.319584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963348, 45.162880, 48.058483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143265, 44.832554, 48.194550>,  <42.251213, 44.634357, 48.276188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143265, 44.832554, 48.194550>,  <41.963348, 45.162880, 48.058483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143265, 44.832554, 48.194550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617067, 0.011993, -0.786819,
		0.645691, 0.563807, 0.514980,
		0.449791, -0.825819, 0.340163,
		42.278202, 44.584808, 48.296600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652359, 45.249950, 48.059830>,  <41.963348, 45.162880, 48.058483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652359, 45.249950, 48.059830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632751, 44.850437, 48.062023>,  <42.620987, 44.610729, 48.063339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632751, 44.850437, 48.062023>,  <42.652359, 45.249950, 48.059830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632751, 44.850437, 48.062023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516163, -0.030030, -0.855964,
		0.855086, -0.039127, 0.517007,
		-0.049018, -0.998783, 0.005482,
		42.618046, 44.550804, 48.063667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342636, 44.935551, 47.935570>,  <42.652359, 45.249950, 48.059830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342636, 44.935551, 47.935570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070038, 44.665211, 47.823292>,  <42.906479, 44.503006, 47.755924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070038, 44.665211, 47.823292>,  <43.342636, 44.935551, 47.935570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070038, 44.665211, 47.823292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507423, -0.160003, -0.846712,
		0.527340, -0.719460, 0.451984,
		-0.681494, -0.675852, -0.280694,
		42.865589, 44.462456, 47.739082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781853, 44.382965, 47.724968>,  <43.342636, 44.935551, 47.935570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781853, 44.382965, 47.724968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439331, 44.289387, 47.540794>,  <43.233818, 44.233238, 47.430290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439331, 44.289387, 47.540794>,  <43.781853, 44.382965, 47.724968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439331, 44.289387, 47.540794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498444, -0.140913, -0.855393,
		0.135237, -0.961983, 0.237275,
		-0.856308, -0.233949, -0.460439,
		43.182438, 44.219204, 47.402664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850681, 43.687088, 47.283367>,  <43.781853, 44.382965, 47.724968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850681, 43.687088, 47.283367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533409, 43.892002, 47.151653>,  <43.343048, 44.014950, 47.072624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533409, 43.892002, 47.151653>,  <43.850681, 43.687088, 47.283367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533409, 43.892002, 47.151653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378332, -0.009200, -0.925624,
		-0.477217, -0.858763, -0.186519,
		-0.793176, 0.512290, -0.329288,
		43.295456, 44.045689, 47.052868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542126, 43.331764, 46.708042>,  <43.850681, 43.687088, 47.283367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542126, 43.331764, 46.708042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415001, 43.706715, 46.651012>,  <43.338726, 43.931683, 46.616795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415001, 43.706715, 46.651012>,  <43.542126, 43.331764, 46.708042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415001, 43.706715, 46.651012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162069, -0.094452, -0.982249,
		-0.934201, -0.335274, -0.121901,
		-0.317809, 0.937374, -0.142575,
		43.319656, 43.987926, 46.608238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221821, 43.215046, 46.067242>,  <43.542126, 43.331764, 46.708042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221821, 43.215046, 46.067242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242065, 43.612434, 46.108139>,  <43.254211, 43.850868, 46.132679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242065, 43.612434, 46.108139>,  <43.221821, 43.215046, 46.067242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242065, 43.612434, 46.108139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080846, 0.097964, -0.991901,
		-0.995441, 0.058469, -0.075360,
		0.050613, 0.993471, 0.102244,
		43.257248, 43.910477, 46.138813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722828, 43.520195, 45.761559>,  <43.221821, 43.215046, 46.067242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722828, 43.520195, 45.761559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018806, 43.789230, 45.765427>,  <43.196396, 43.950653, 45.767746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018806, 43.789230, 45.765427>,  <42.722828, 43.520195, 45.761559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018806, 43.789230, 45.765427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101224, 0.125548, -0.986910,
		-0.665001, 0.729286, 0.160982,
		0.739951, 0.672591, 0.009668,
		43.240791, 43.991009, 45.768326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516335, 44.034397, 45.313366>,  <42.722828, 43.520195, 45.761559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516335, 44.034397, 45.313366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909576, 44.099049, 45.347729>,  <43.145523, 44.137840, 45.368347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909576, 44.099049, 45.347729>,  <42.516335, 44.034397, 45.313366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909576, 44.099049, 45.347729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065395, 0.128192, -0.989591,
		-0.170954, 0.978491, 0.115456,
		0.983106, 0.161624, 0.085903,
		43.204510, 44.147537, 45.373501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643318, 44.778954, 45.042542>,  <42.516335, 44.034397, 45.313366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643318, 44.778954, 45.042542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990280, 44.580307, 45.030029>,  <43.198456, 44.461121, 45.022522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990280, 44.580307, 45.030029>,  <42.643318, 44.778954, 45.042542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990280, 44.580307, 45.030029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164578, 0.345639, -0.923822,
		0.469596, 0.796182, 0.381542,
		0.867406, -0.496617, -0.031277,
		43.250504, 44.431320, 45.020645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085335, 45.222195, 44.896709>,  <42.643318, 44.778954, 45.042542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085335, 45.222195, 44.896709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278938, 44.895885, 44.770061>,  <43.395100, 44.700100, 44.694073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278938, 44.895885, 44.770061>,  <43.085335, 45.222195, 44.896709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278938, 44.895885, 44.770061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297885, 0.493821, -0.816949,
		0.822798, 0.301095, 0.482021,
		0.484012, -0.815771, -0.316623,
		43.424141, 44.651154, 44.675076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713535, 45.390892, 44.429832>,  <43.085335, 45.222195, 44.896709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713535, 45.390892, 44.429832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609512, 45.013161, 44.349228>,  <43.547100, 44.786522, 44.300865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609512, 45.013161, 44.349228>,  <43.713535, 45.390892, 44.429832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609512, 45.013161, 44.349228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158072, 0.164241, -0.973673,
		0.952566, -0.285065, 0.106560,
		-0.260059, -0.944332, -0.201512,
		43.531494, 44.729862, 44.288773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269436, 45.091038, 43.873867>,  <43.713535, 45.390892, 44.429832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269436, 45.091038, 43.873867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941559, 44.864201, 43.841583>,  <43.744831, 44.728100, 43.822212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941559, 44.864201, 43.841583>,  <44.269436, 45.091038, 43.873867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941559, 44.864201, 43.841583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138729, -0.059836, -0.988521,
		0.555751, -0.821480, 0.127718,
		-0.819692, -0.567090, -0.080709,
		43.695652, 44.694073, 43.817371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459492, 44.553513, 43.428375>,  <44.269436, 45.091038, 43.873867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459492, 44.553513, 43.428375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062729, 44.595394, 43.399647>,  <43.824673, 44.620522, 43.382408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062729, 44.595394, 43.399647>,  <44.459492, 44.553513, 43.428375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062729, 44.595394, 43.399647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060853, -0.104438, -0.992668,
		-0.111465, -0.989001, 0.097219,
		-0.991903, 0.104732, -0.071825,
		43.765156, 44.626804, 43.378101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281929, 43.963463, 42.957478>,  <44.459492, 44.553513, 43.428375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281929, 43.963463, 42.957478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986839, 44.233486, 42.954224>,  <43.809788, 44.395500, 42.952271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986839, 44.233486, 42.954224>,  <44.281929, 43.963463, 42.957478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986839, 44.233486, 42.954224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041611, 0.033438, -0.998574,
		-0.673823, -0.737007, -0.052758,
		-0.737720, 0.675057, -0.008136,
		43.765522, 44.436005, 42.951782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883102, 43.850941, 42.406067>,  <44.281929, 43.963463, 42.957478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883102, 43.850941, 42.406067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748009, 44.220367, 42.478691>,  <43.666954, 44.442024, 42.522266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748009, 44.220367, 42.478691>,  <43.883102, 43.850941, 42.406067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748009, 44.220367, 42.478691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070694, 0.167455, -0.983342,
		-0.938584, -0.344941, 0.008736,
		-0.337732, 0.923566, 0.181556,
		43.646690, 44.497437, 42.533157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189137, 43.855206, 42.156723>,  <43.883102, 43.850941, 42.406067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189137, 43.855206, 42.156723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333038, 44.228348, 42.149094>,  <43.419380, 44.452232, 42.144516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333038, 44.228348, 42.149094>,  <43.189137, 43.855206, 42.156723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333038, 44.228348, 42.149094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239158, 0.072437, -0.968275,
		-0.901877, 0.352900, 0.249159,
		0.359752, 0.932853, -0.019069,
		43.440964, 44.508205, 42.143372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862129, 44.087498, 41.602547>,  <43.189137, 43.855206, 42.156723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862129, 44.087498, 41.602547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128136, 44.384392, 41.635635>,  <43.287739, 44.562527, 41.655491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128136, 44.384392, 41.635635>,  <42.862129, 44.087498, 41.602547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128136, 44.384392, 41.635635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111378, 0.208095, -0.971747,
		-0.738479, 0.637012, 0.221055,
		0.665014, 0.742235, 0.082725,
		43.327641, 44.607063, 41.660454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664825, 44.679192, 41.244236>,  <42.862129, 44.087498, 41.602547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664825, 44.679192, 41.244236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051277, 44.782001, 41.253479>,  <43.283150, 44.843685, 41.259026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051277, 44.782001, 41.253479>,  <42.664825, 44.679192, 41.244236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051277, 44.782001, 41.253479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050280, 0.275315, -0.960039,
		-0.253114, 0.926359, 0.278912,
		0.966129, 0.257023, 0.023109,
		43.341114, 44.859108, 41.260410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689976, 45.297241, 40.784378>,  <42.664825, 44.679192, 41.244236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689976, 45.297241, 40.784378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070442, 45.176960, 40.812248>,  <43.298721, 45.104790, 40.828972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070442, 45.176960, 40.812248>,  <42.689976, 45.297241, 40.784378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070442, 45.176960, 40.812248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182423, 0.365543, -0.912743,
		0.248995, 0.880883, 0.402549,
		0.951169, -0.300703, 0.069675,
		43.355793, 45.086750, 40.833149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122803, 45.878353, 40.751354>,  <42.689976, 45.297241, 40.784378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122803, 45.878353, 40.751354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355606, 45.584328, 40.612244>,  <43.495289, 45.407913, 40.528778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355606, 45.584328, 40.612244>,  <43.122803, 45.878353, 40.751354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355606, 45.584328, 40.612244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087863, 0.482015, -0.871746,
		0.808423, 0.476806, 0.345121,
		0.582007, -0.735063, -0.347779,
		43.530209, 45.363808, 40.507912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695045, 46.290459, 40.414165>,  <43.122803, 45.878353, 40.751354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695045, 46.290459, 40.414165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688217, 45.913551, 40.280396>,  <43.684120, 45.687408, 40.200134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688217, 45.913551, 40.280396>,  <43.695045, 46.290459, 40.414165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688217, 45.913551, 40.280396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109010, 0.330728, -0.937409,
		0.993894, -0.052455, 0.097071,
		-0.017068, -0.942267, -0.334427,
		43.683098, 45.630871, 40.180069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984188, 46.395123, 39.835556>,  <43.695045, 46.290459, 40.414165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984188, 46.395123, 39.835556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828148, 46.030220, 39.785587>,  <43.734524, 45.811279, 39.755608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828148, 46.030220, 39.785587>,  <43.984188, 46.395123, 39.835556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828148, 46.030220, 39.785587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049276, 0.156155, -0.986503,
		0.919452, -0.378682, -0.105869,
		-0.390103, -0.912258, -0.124917,
		43.711117, 45.756542, 39.748112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293480, 46.139835, 39.298424>,  <43.984188, 46.395123, 39.835556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293480, 46.139835, 39.298424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967155, 45.909096, 39.314930>,  <43.771362, 45.770653, 39.324833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967155, 45.909096, 39.314930>,  <44.293480, 46.139835, 39.298424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967155, 45.909096, 39.314930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099478, 0.069680, -0.992597,
		0.569700, -0.813876, -0.114229,
		-0.815810, -0.576846, 0.041267,
		43.722412, 45.736042, 39.327309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358624, 45.591545, 38.744884>,  <44.293480, 46.139835, 39.298424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358624, 45.591545, 38.744884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968918, 45.616699, 38.831470>,  <43.735096, 45.631790, 38.883423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968918, 45.616699, 38.831470>,  <44.358624, 45.591545, 38.744884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968918, 45.616699, 38.831470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211827, 0.072967, -0.974579,
		-0.077085, -0.995350, -0.057768,
		-0.974262, 0.062888, 0.216467,
		43.676640, 45.635567, 38.896412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033478, 45.148590, 38.284794>,  <44.358624, 45.591545, 38.744884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033478, 45.148590, 38.284794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742851, 45.407791, 38.376175>,  <43.568474, 45.563313, 38.431004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742851, 45.407791, 38.376175>,  <44.033478, 45.148590, 38.284794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742851, 45.407791, 38.376175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099361, 0.229910, -0.968127,
		-0.679871, -0.726110, -0.102660,
		-0.726569, 0.648001, 0.228456,
		43.524879, 45.602192, 38.444710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622871, 44.922539, 37.774948>,  <44.033478, 45.148590, 38.284794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622871, 44.922539, 37.774948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504021, 45.282211, 37.903446>,  <43.432713, 45.498013, 37.980545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504021, 45.282211, 37.903446>,  <43.622871, 44.922539, 37.774948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504021, 45.282211, 37.903446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064788, 0.316680, -0.946317,
		-0.952639, -0.301986, -0.035837,
		-0.297123, 0.899177, 0.321247,
		43.414883, 45.551964, 37.999821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982449, 44.988716, 37.482887>,  <43.622871, 44.922539, 37.774948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982449, 44.988716, 37.482887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117577, 45.353992, 37.574066>,  <43.198654, 45.573158, 37.628773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117577, 45.353992, 37.574066>,  <42.982449, 44.988716, 37.482887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117577, 45.353992, 37.574066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138328, 0.287729, -0.947670,
		-0.930992, 0.288606, 0.223520,
		0.337816, 0.913191, 0.227951,
		43.218922, 45.627949, 37.642452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555988, 45.388832, 37.183563>,  <42.982449, 44.988716, 37.482887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555988, 45.388832, 37.183563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885643, 45.613102, 37.215679>,  <43.083435, 45.747662, 37.234947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885643, 45.613102, 37.215679>,  <42.555988, 45.388832, 37.183563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885643, 45.613102, 37.215679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059140, 0.226166, -0.972292,
		-0.563296, 0.796552, 0.219549,
		0.824136, 0.560672, 0.080290,
		43.132885, 45.781303, 37.239765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376667, 46.100029, 36.928909>,  <42.555988, 45.388832, 37.183563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376667, 46.100029, 36.928909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775711, 46.103355, 36.901463>,  <43.015137, 46.105350, 36.884995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775711, 46.103355, 36.901463>,  <42.376667, 46.100029, 36.928909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775711, 46.103355, 36.901463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068925, 0.193473, -0.978682,
		0.005132, 0.981070, 0.193584,
		0.997609, 0.008320, -0.068613,
		43.074993, 46.105850, 36.880878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539490, 46.661892, 36.556053>,  <42.376667, 46.100029, 36.928909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539490, 46.661892, 36.556053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845406, 46.410088, 36.501183>,  <43.028954, 46.259007, 36.468262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845406, 46.410088, 36.501183>,  <42.539490, 46.661892, 36.556053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845406, 46.410088, 36.501183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028094, 0.180126, -0.983242,
		0.643671, 0.755824, 0.120072,
		0.764786, -0.629511, -0.137176,
		43.074841, 46.221233, 36.460030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731167, 46.842880, 35.823326>,  <42.539490, 46.661892, 36.556053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731167, 46.842880, 35.823326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957306, 46.525154, 35.912273>,  <43.092987, 46.334518, 35.965641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957306, 46.525154, 35.912273>,  <42.731167, 46.842880, 35.823326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957306, 46.525154, 35.912273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107286, -0.196487, -0.974619,
		0.817848, 0.574853, -0.025863,
		0.565345, -0.794315, 0.222370,
		43.126911, 46.286858, 35.978985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297489, 46.864494, 35.318310>,  <42.731167, 46.842880, 35.823326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297489, 46.864494, 35.318310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250755, 46.480545, 35.420288>,  <43.222717, 46.250175, 35.481476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250755, 46.480545, 35.420288>,  <43.297489, 46.864494, 35.318310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250755, 46.480545, 35.420288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020762, -0.254287, -0.966906,
		0.992935, -0.118258, 0.009780,
		-0.116832, -0.959871, 0.254946,
		43.215706, 46.192585, 35.496773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799915, 46.556210, 34.894867>,  <43.297489, 46.864494, 35.318310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799915, 46.556210, 34.894867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513382, 46.300331, 35.006329>,  <43.341461, 46.146805, 35.073204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513382, 46.300331, 35.006329>,  <43.799915, 46.556210, 34.894867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513382, 46.300331, 35.006329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044355, -0.356801, -0.933127,
		0.696343, -0.680793, 0.227215,
		-0.716336, -0.639699, 0.278653,
		43.298481, 46.108421, 35.089924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008595, 45.901119, 34.654194>,  <43.799915, 46.556210, 34.894867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008595, 45.901119, 34.654194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616753, 45.845062, 34.711803>,  <43.381649, 45.811428, 34.746368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616753, 45.845062, 34.711803>,  <44.008595, 45.901119, 34.654194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616753, 45.845062, 34.711803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072815, -0.420438, -0.904395,
		0.187297, -0.896433, 0.401656,
		-0.979601, -0.140144, 0.144021,
		43.322872, 45.803020, 34.755009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905396, 45.137836, 34.539150>,  <44.008595, 45.901119, 34.654194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905396, 45.137836, 34.539150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543602, 45.303379, 34.497913>,  <43.326527, 45.402702, 34.473171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543602, 45.303379, 34.497913>,  <43.905396, 45.137836, 34.539150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543602, 45.303379, 34.497913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070179, -0.382836, -0.921147,
		-0.420693, -0.825928, 0.375313,
		-0.904485, 0.413860, -0.103094,
		43.272255, 45.427536, 34.466988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458290, 44.539925, 34.331242>,  <43.905396, 45.137836, 34.539150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458290, 44.539925, 34.331242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262474, 44.877476, 34.243393>,  <43.144985, 45.080006, 34.190685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262474, 44.877476, 34.243393>,  <43.458290, 44.539925, 34.331242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262474, 44.877476, 34.243393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159449, -0.334246, -0.928900,
		-0.857281, -0.419712, 0.298180,
		-0.489536, 0.843873, -0.219620,
		43.115612, 45.130638, 34.177505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895622, 44.327217, 34.016068>,  <43.458290, 44.539925, 34.331242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895622, 44.327217, 34.016068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959961, 44.704433, 33.899582>,  <42.998566, 44.930763, 33.829689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959961, 44.704433, 33.899582>,  <42.895622, 44.327217, 34.016068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959961, 44.704433, 33.899582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090754, -0.279675, -0.955796,
		-0.982797, 0.180169, 0.040598,
		0.160851, 0.943038, -0.291215,
		43.008217, 44.987347, 33.812218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440983, 44.462811, 33.469337>,  <42.895622, 44.327217, 34.016068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440983, 44.462811, 33.469337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697968, 44.763138, 33.408001>,  <42.852158, 44.943333, 33.371197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697968, 44.763138, 33.408001>,  <42.440983, 44.462811, 33.469337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697968, 44.763138, 33.408001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015466, -0.212770, -0.976980,
		-0.766160, 0.625302, -0.148309,
		0.642464, 0.750817, -0.153345,
		42.890705, 44.988384, 33.361996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212234, 44.844090, 32.904408>,  <42.440983, 44.462811, 33.469337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212234, 44.844090, 32.904408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599716, 44.942837, 32.914780>,  <42.832207, 45.002083, 32.921005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599716, 44.942837, 32.914780>,  <42.212234, 44.844090, 32.904408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599716, 44.942837, 32.914780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036440, -0.038092, -0.998610,
		-0.245535, 0.968301, -0.045895,
		0.968703, 0.246866, 0.025932,
		42.890327, 45.016895, 32.922558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<46.082420, 43.653358, 33.078568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.772163, 43.903790, 33.046555>,  <45.586010, 44.054047, 33.027348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.772163, 43.903790, 33.046555>,  <46.082420, 43.653358, 33.078568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772163, 43.903790, 33.046555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341826, 0.523280, 0.780598,
		0.530593, 0.578109, -0.619888,
		-0.775646, 0.626073, -0.080036,
		45.539471, 44.091610, 33.022545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262390, 44.425804, 33.110973>,  <46.082420, 43.653358, 33.078568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262390, 44.425804, 33.110973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.884598, 44.387856, 33.236797>,  <45.657921, 44.365086, 33.312294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.884598, 44.387856, 33.236797>,  <46.262390, 44.425804, 33.110973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884598, 44.387856, 33.236797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231332, 0.487846, 0.841720,
		-0.233317, 0.867759, -0.438814,
		-0.944483, -0.094875, 0.314563,
		45.601254, 44.359394, 33.331165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124496, 45.028008, 33.458210>,  <46.262390, 44.425804, 33.110973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124496, 45.028008, 33.458210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.833115, 44.788445, 33.591278>,  <45.658287, 44.644707, 33.671120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.833115, 44.788445, 33.591278>,  <46.124496, 45.028008, 33.458210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833115, 44.788445, 33.591278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139981, 0.345230, 0.928020,
		-0.670645, 0.722585, -0.167648,
		-0.728451, -0.598905, 0.332675,
		45.614578, 44.608772, 33.691082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672413, 45.432865, 34.006485>,  <46.124496, 45.028008, 33.458210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672413, 45.432865, 34.006485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.595100, 45.045170, 34.067429>,  <45.548714, 44.812553, 34.103992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.595100, 45.045170, 34.067429>,  <45.672413, 45.432865, 34.006485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595100, 45.045170, 34.067429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177567, 0.118165, 0.976989,
		-0.964942, 0.215887, 0.149267,
		-0.193281, -0.969242, 0.152357,
		45.537117, 44.754398, 34.113136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182709, 45.412933, 34.526344>,  <45.672413, 45.432865, 34.006485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182709, 45.412933, 34.526344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.362991, 45.055912, 34.520565>,  <45.471161, 44.841698, 34.517097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.362991, 45.055912, 34.520565>,  <45.182709, 45.412933, 34.526344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362991, 45.055912, 34.520565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011151, -0.010558, 0.999882,
		-0.892602, -0.450816, 0.005195,
		0.450708, -0.892554, -0.014451,
		45.498203, 44.788147, 34.516232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801365, 44.946430, 35.109097>,  <45.182709, 45.412933, 34.526344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801365, 44.946430, 35.109097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.132935, 44.733002, 35.041946>,  <45.331875, 44.604942, 35.001656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.132935, 44.733002, 35.041946>,  <44.801365, 44.946430, 35.109097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132935, 44.733002, 35.041946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068333, -0.394473, 0.916363,
		-0.555173, -0.748123, -0.363449,
		0.828923, -0.533576, -0.167879,
		45.381611, 44.572929, 34.991581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676178, 44.317505, 35.511562>,  <44.801365, 44.946430, 35.109097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676178, 44.317505, 35.511562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.067978, 44.298538, 35.433247>,  <45.303059, 44.287159, 35.386257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.067978, 44.298538, 35.433247>,  <44.676178, 44.317505, 35.511562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067978, 44.298538, 35.433247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160583, -0.403067, 0.900972,
		-0.121641, -0.913941, -0.387188,
		0.979498, -0.047419, -0.195793,
		45.361828, 44.284313, 35.374508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844860, 43.796455, 35.843361>,  <44.676178, 44.317505, 35.511562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844860, 43.796455, 35.843361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.174606, 44.018314, 35.798119>,  <45.372456, 44.151428, 35.770973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.174606, 44.018314, 35.798119>,  <44.844860, 43.796455, 35.843361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174606, 44.018314, 35.798119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234434, -0.152663, 0.960070,
		0.515231, -0.817963, -0.255878,
		0.824365, 0.554644, -0.113102,
		45.421917, 44.184708, 35.764187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366863, 43.474979, 36.209290>,  <44.844860, 43.796455, 35.843361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366863, 43.474979, 36.209290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.566376, 43.820038, 36.175671>,  <45.686081, 44.027073, 36.155499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.566376, 43.820038, 36.175671>,  <45.366863, 43.474979, 36.209290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566376, 43.820038, 36.175671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065446, 0.059205, 0.996098,
		0.864255, -0.502333, -0.026926,
		0.498779, 0.862645, -0.084044,
		45.716011, 44.078831, 36.150459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013767, 43.298481, 36.466976>,  <45.366863, 43.474979, 36.209290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013767, 43.298481, 36.466976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.943810, 43.691460, 36.492943>,  <45.901836, 43.927246, 36.508522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.943810, 43.691460, 36.492943>,  <46.013767, 43.298481, 36.466976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943810, 43.691460, 36.492943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241071, -0.021194, 0.970276,
		0.954619, 0.185341, -0.233133,
		-0.174891, 0.982446, 0.064912,
		45.891342, 43.986195, 36.512417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.598091, 43.485775, 36.854065>,  <46.013767, 43.298481, 36.466976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.598091, 43.485775, 36.854065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.336235, 43.783451, 36.907177>,  <46.179123, 43.962055, 36.939045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.336235, 43.783451, 36.907177>,  <46.598091, 43.485775, 36.854065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336235, 43.783451, 36.907177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315047, 0.108917, 0.942806,
		0.687166, 0.659027, -0.305756,
		-0.654636, 0.744192, 0.132780,
		46.139843, 44.006710, 36.947010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.976498, 44.107677, 37.220337>,  <46.598091, 43.485775, 36.854065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.976498, 44.107677, 37.220337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.583740, 44.159729, 37.275414>,  <46.348087, 44.190960, 37.308460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.583740, 44.159729, 37.275414>,  <46.976498, 44.107677, 37.220337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583740, 44.159729, 37.275414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169923, 0.283561, 0.943779,
		0.083768, 0.950084, -0.300537,
		-0.981890, 0.130127, 0.137688,
		46.289173, 44.198769, 37.316719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.878918, 44.781166, 37.542229>,  <46.976498, 44.107677, 37.220337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.878918, 44.781166, 37.542229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.539970, 44.600861, 37.654503>,  <46.336601, 44.492680, 37.721867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.539970, 44.600861, 37.654503>,  <46.878918, 44.781166, 37.542229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539970, 44.600861, 37.654503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121411, 0.350127, 0.928801,
		-0.516942, 0.821113, -0.241959,
		-0.847367, -0.450759, 0.280687,
		46.285759, 44.465633, 37.738708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567310, 45.164925, 38.094734>,  <46.878918, 44.781166, 37.542229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567310, 45.164925, 38.094734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.364136, 44.821766, 38.125771>,  <46.242229, 44.615871, 38.144390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.364136, 44.821766, 38.125771>,  <46.567310, 45.164925, 38.094734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364136, 44.821766, 38.125771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088848, 0.141771, 0.985904,
		-0.856799, 0.493885, -0.148232,
		-0.507938, -0.857892, 0.077589,
		46.211754, 44.564400, 38.149048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.125053, 45.322601, 38.654709>,  <46.567310, 45.164925, 38.094734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.125053, 45.322601, 38.654709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.125809, 44.924149, 38.619553>,  <46.126263, 44.685078, 38.598457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.125809, 44.924149, 38.619553>,  <46.125053, 45.322601, 38.654709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125809, 44.924149, 38.619553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202520, -0.086451, 0.975455,
		-0.979276, 0.015961, -0.201899,
		0.001886, -0.996128, -0.087892,
		46.126373, 44.625309, 38.593185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467381, 45.046631, 38.994534>,  <46.125053, 45.322601, 38.654709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467381, 45.046631, 38.994534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.718559, 44.735462, 38.985401>,  <45.869267, 44.548763, 38.979923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.718559, 44.735462, 38.985401>,  <45.467381, 45.046631, 38.994534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718559, 44.735462, 38.985401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115051, -0.121800, 0.985865,
		-0.769702, -0.616448, -0.165984,
		0.627951, -0.777918, -0.022827,
		45.906944, 44.502087, 38.978554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265358, 44.641060, 39.521729>,  <45.467381, 45.046631, 38.994534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265358, 44.641060, 39.521729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.638702, 44.503944, 39.479141>,  <45.862709, 44.421673, 39.453590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.638702, 44.503944, 39.479141>,  <45.265358, 44.641060, 39.521729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638702, 44.503944, 39.479141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069493, -0.118423, 0.990529,
		-0.352152, -0.931918, -0.086710,
		0.933359, -0.342791, -0.106464,
		45.918709, 44.401108, 39.447201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294666, 44.148712, 40.060524>,  <45.265358, 44.641060, 39.521729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294666, 44.148712, 40.060524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.670677, 44.243752, 39.962631>,  <45.896286, 44.300777, 39.903896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.670677, 44.243752, 39.962631>,  <45.294666, 44.148712, 40.060524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670677, 44.243752, 39.962631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237380, 0.059521, 0.969592,
		0.244943, -0.969537, -0.000450,
		0.940028, 0.237602, -0.244728,
		45.952686, 44.315033, 39.889214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703369, 43.652702, 40.450577>,  <45.294666, 44.148712, 40.060524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703369, 43.652702, 40.450577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.942032, 43.959866, 40.357346>,  <46.085228, 44.144161, 40.301407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.942032, 43.959866, 40.357346>,  <45.703369, 43.652702, 40.450577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942032, 43.959866, 40.357346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325590, 0.033821, 0.944906,
		0.733482, -0.639669, -0.229843,
		0.596654, 0.767906, -0.233077,
		46.121029, 44.190239, 40.287422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413078, 43.468361, 40.479931>,  <45.703369, 43.652702, 40.450577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413078, 43.468361, 40.479931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.441536, 43.865574, 40.517502>,  <46.458611, 44.103901, 40.540047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.441536, 43.865574, 40.517502>,  <46.413078, 43.468361, 40.479931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441536, 43.865574, 40.517502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149416, -0.103715, 0.983320,
		0.986212, -0.055921, -0.155754,
		0.071142, 0.993034, 0.093929,
		46.462879, 44.163483, 40.545681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057564, 43.706673, 40.799179>,  <46.413078, 43.468361, 40.479931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057564, 43.706673, 40.799179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.794373, 43.996269, 40.882019>,  <46.636456, 44.170029, 40.931725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.794373, 43.996269, 40.882019>,  <47.057564, 43.706673, 40.799179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794373, 43.996269, 40.882019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335773, 0.035902, 0.941259,
		0.674030, 0.688871, -0.266721,
		-0.657982, 0.723994, 0.207105,
		46.596977, 44.213467, 40.944149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.509453, 44.081280, 41.300007>,  <47.057564, 43.706673, 40.799179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.509453, 44.081280, 41.300007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.127632, 44.198769, 41.320255>,  <46.898540, 44.269260, 41.332405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.127632, 44.198769, 41.320255>,  <47.509453, 44.081280, 41.300007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127632, 44.198769, 41.320255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078433, 0.083675, 0.993402,
		0.287547, 0.952222, -0.102909,
		-0.954550, 0.293721, 0.050625,
		46.841267, 44.286884, 41.335442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490032, 44.565285, 41.879311>,  <47.509453, 44.081280, 41.300007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490032, 44.565285, 41.879311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.104416, 44.473061, 41.826447>,  <46.873047, 44.417725, 41.794727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.104416, 44.473061, 41.826447>,  <47.490032, 44.565285, 41.879311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104416, 44.473061, 41.826447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140948, 0.021991, 0.989773,
		-0.225298, 0.972809, -0.053697,
		-0.964041, -0.230563, -0.132161,
		46.815205, 44.403893, 41.786797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.147297, 44.887417, 42.426071>,  <47.490032, 44.565285, 41.879311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.147297, 44.887417, 42.426071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.858055, 44.637836, 42.307545>,  <46.684509, 44.488087, 42.236427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.858055, 44.637836, 42.307545>,  <47.147297, 44.887417, 42.426071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.858055, 44.637836, 42.307545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430906, 0.072206, 0.899504,
		-0.539851, 0.778120, -0.321076,
		-0.723105, -0.623952, -0.296316,
		46.641125, 44.450649, 42.218651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.418228, 45.163982, 42.506977>,  <47.147297, 44.887417, 42.426071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.418228, 45.163982, 42.506977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.382271, 44.765644, 42.512787>,  <46.360699, 44.526642, 42.516273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.382271, 44.765644, 42.512787>,  <46.418228, 45.163982, 42.506977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382271, 44.765644, 42.512787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379278, 0.047711, 0.924052,
		-0.920906, 0.077556, -0.381991,
		-0.089891, -0.995846, 0.014522,
		46.355305, 44.466888, 42.517143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759800, 45.034260, 42.909424>,  <46.418228, 45.163982, 42.506977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759800, 45.034260, 42.909424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.997406, 44.712646, 42.919849>,  <46.139969, 44.519676, 42.926105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.997406, 44.712646, 42.919849>,  <45.759800, 45.034260, 42.909424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.997406, 44.712646, 42.919849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020074, 0.047198, 0.998684,
		-0.804207, -0.592705, 0.044176,
		0.594010, -0.804035, 0.026059,
		46.175610, 44.471436, 42.927666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278221, 44.591324, 43.203667>,  <45.759800, 45.034260, 42.909424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278221, 44.591324, 43.203667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.652351, 44.460190, 43.256870>,  <45.876827, 44.381508, 43.288792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.652351, 44.460190, 43.256870>,  <45.278221, 44.591324, 43.203667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.652351, 44.460190, 43.256870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212294, -0.219324, 0.952275,
		-0.283019, -0.918923, -0.274737,
		0.935324, -0.327837, 0.133009,
		45.932949, 44.361839, 43.296772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220249, 43.849976, 43.431458>,  <45.278221, 44.591324, 43.203667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220249, 43.849976, 43.431458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.557663, 44.016003, 43.567795>,  <45.760113, 44.115620, 43.649597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.557663, 44.016003, 43.567795>,  <45.220249, 43.849976, 43.431458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557663, 44.016003, 43.567795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308467, -0.145094, 0.940104,
		0.439658, -0.898147, 0.005643,
		0.843534, 0.415065, 0.340841,
		45.810722, 44.140522, 43.670048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102886, 43.554527, 44.022301>,  <45.220249, 43.849976, 43.431458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102886, 43.554527, 44.022301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.398468, 43.813805, 44.095829>,  <45.575817, 43.969372, 44.139946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.398468, 43.813805, 44.095829>,  <45.102886, 43.554527, 44.022301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398468, 43.813805, 44.095829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111589, -0.151325, 0.982165,
		0.664447, -0.746291, -0.039492,
		0.738958, 0.648190, 0.183825,
		45.620155, 44.008263, 44.150978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466599, 43.315601, 44.636158>,  <45.102886, 43.554527, 44.022301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466599, 43.315601, 44.636158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.627937, 43.680344, 44.605637>,  <45.724743, 43.899189, 44.587322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.627937, 43.680344, 44.605637>,  <45.466599, 43.315601, 44.636158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.627937, 43.680344, 44.605637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107242, 0.035710, 0.993592,
		0.908740, -0.408948, -0.083386,
		0.403350, 0.911858, -0.076308,
		45.748943, 43.953899, 44.582745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163158, 43.455952, 44.951923>,  <45.466599, 43.315601, 44.636158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163158, 43.455952, 44.951923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.975853, 43.809147, 44.964951>,  <45.863468, 44.021065, 44.972767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.975853, 43.809147, 44.964951>,  <46.163158, 43.455952, 44.951923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975853, 43.809147, 44.964951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134732, 0.034928, 0.990266,
		0.873256, 0.468093, -0.135323,
		-0.468263, 0.882989, 0.032566,
		45.835373, 44.074043, 44.974720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.443226, 43.768200, 45.549206>,  <46.163158, 43.455952, 44.951923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.443226, 43.768200, 45.549206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.164558, 44.043404, 45.467926>,  <45.997356, 44.208527, 45.419159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.164558, 44.043404, 45.467926>,  <46.443226, 43.768200, 45.549206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164558, 44.043404, 45.467926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098705, 0.372478, 0.922777,
		0.710567, 0.622816, -0.327405,
		-0.696672, 0.688012, -0.203196,
		45.955555, 44.249805, 45.406967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.765579, 44.437176, 45.526474>,  <46.443226, 43.768200, 45.549206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.765579, 44.437176, 45.526474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.379364, 44.469093, 45.625572>,  <46.147636, 44.488243, 45.685032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.379364, 44.469093, 45.625572>,  <46.765579, 44.437176, 45.526474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.379364, 44.469093, 45.625572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254580, 0.487588, 0.835133,
		-0.054159, 0.869420, -0.491097,
		-0.965534, 0.079794, 0.247744,
		46.089703, 44.493031, 45.699894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.690037, 45.124279, 45.738632>,  <46.765579, 44.437176, 45.526474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.690037, 45.124279, 45.738632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.371811, 44.928116, 45.880943>,  <46.180878, 44.810417, 45.966331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.371811, 44.928116, 45.880943>,  <46.690037, 45.124279, 45.738632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371811, 44.928116, 45.880943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177563, 0.372714, 0.910799,
		-0.579271, 0.787770, -0.209438,
		-0.795561, -0.490411, 0.355781,
		46.133144, 44.780994, 45.987679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428280, 45.658581, 46.089218>,  <46.690037, 45.124279, 45.738632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428280, 45.658581, 46.089218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.292168, 45.309135, 46.228367>,  <46.210503, 45.099468, 46.311855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.292168, 45.309135, 46.228367>,  <46.428280, 45.658581, 46.089218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292168, 45.309135, 46.228367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119053, 0.326948, 0.937513,
		-0.932758, 0.360430, -0.007247,
		-0.340278, -0.873610, 0.347874,
		46.190083, 45.047050, 46.332729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033676, 45.819523, 46.595772>,  <46.428280, 45.658581, 46.089218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033676, 45.819523, 46.595772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.124191, 45.434643, 46.656399>,  <46.178501, 45.203716, 46.692776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.124191, 45.434643, 46.656399>,  <46.033676, 45.819523, 46.595772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124191, 45.434643, 46.656399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099102, 0.177536, 0.979112,
		-0.969006, -0.206542, 0.135530,
		0.226289, -0.962196, 0.151564,
		46.192078, 45.145985, 46.701870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583630, 45.523430, 47.106243>,  <46.033676, 45.819523, 46.595772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583630, 45.523430, 47.106243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.886902, 45.262962, 47.092751>,  <46.068867, 45.106682, 47.084656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.886902, 45.262962, 47.092751>,  <45.583630, 45.523430, 47.106243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886902, 45.262962, 47.092751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041761, -0.100124, 0.994098,
		-0.650705, -0.752298, -0.103106,
		0.758181, -0.651171, -0.033735,
		46.114357, 45.067612, 47.082630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419540, 44.956352, 47.493927>,  <45.583630, 45.523430, 47.106243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419540, 44.956352, 47.493927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.819366, 44.946220, 47.487900>,  <46.059261, 44.940140, 47.484283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.819366, 44.946220, 47.487900>,  <45.419540, 44.956352, 47.493927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.819366, 44.946220, 47.487900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015591, 0.020447, 0.999669,
		-0.025019, -0.999470, 0.020834,
		0.999565, -0.025336, -0.015071,
		46.119236, 44.938622, 47.483379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694012, 44.231041, 47.710033>,  <45.419540, 44.956352, 47.493927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694012, 44.231041, 47.710033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.969749, 44.512123, 47.780464>,  <46.135193, 44.680775, 47.822723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.969749, 44.512123, 47.780464>,  <45.694012, 44.231041, 47.710033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969749, 44.512123, 47.780464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040046, -0.205716, 0.977792,
		0.723326, -0.681087, -0.113668,
		0.689345, 0.702710, 0.176074,
		46.176552, 44.722935, 47.833286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164906, 43.964962, 48.260330>,  <45.694012, 44.231041, 47.710033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164906, 43.964962, 48.260330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.234650, 44.358833, 48.259102>,  <46.276497, 44.595158, 48.258366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.234650, 44.358833, 48.259102>,  <46.164906, 43.964962, 48.260330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234650, 44.358833, 48.259102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146674, -0.022890, 0.988920,
		0.973698, -0.172874, -0.148417,
		0.174356, 0.984678, -0.003068,
		46.286957, 44.654236, 48.258183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630875, 44.008415, 48.678234>,  <46.164906, 43.964962, 48.260330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630875, 44.008415, 48.678234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.510239, 44.389343, 48.659790>,  <46.437855, 44.617901, 48.648724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.510239, 44.389343, 48.659790>,  <46.630875, 44.008415, 48.678234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510239, 44.389343, 48.659790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066874, 0.069373, 0.995347,
		0.951088, 0.297107, -0.084608,
		-0.301594, 0.952321, -0.046111,
		46.419762, 44.675041, 48.645958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991272, 44.392159, 49.259186>,  <46.630875, 44.008415, 48.678234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991272, 44.392159, 49.259186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.677704, 44.623631, 49.169220>,  <46.489563, 44.762516, 49.115242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.677704, 44.623631, 49.169220>,  <46.991272, 44.392159, 49.259186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.677704, 44.623631, 49.169220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196717, 0.112085, 0.974033,
		0.588867, 0.807813, 0.025971,
		-0.783925, 0.578684, -0.224914,
		46.442528, 44.797237, 49.101746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.090134, 44.891663, 49.639500>,  <46.991272, 44.392159, 49.259186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.090134, 44.891663, 49.639500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.699280, 44.913765, 49.557373>,  <46.464767, 44.927025, 49.508099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.699280, 44.913765, 49.557373>,  <47.090134, 44.891663, 49.639500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699280, 44.913765, 49.557373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148915, 0.511404, 0.846339,
		0.151766, 0.857562, -0.491482,
		-0.977134, 0.055256, -0.205318,
		46.406139, 44.930344, 49.495777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865490, 45.643368, 49.739658>,  <47.090134, 44.891663, 49.639500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865490, 45.643368, 49.739658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.546303, 45.406090, 49.782314>,  <46.354790, 45.263721, 49.807907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.546303, 45.406090, 49.782314>,  <46.865490, 45.643368, 49.739658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546303, 45.406090, 49.782314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197890, 0.424994, 0.883300,
		-0.569291, 0.683739, -0.456518,
		-0.797964, -0.593195, 0.106641,
		46.306915, 45.228130, 49.814308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451801, 46.114319, 50.096710>,  <46.865490, 45.643368, 49.739658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451801, 46.114319, 50.096710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.282532, 45.753162, 50.126949>,  <46.180969, 45.536469, 50.145092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.282532, 45.753162, 50.126949>,  <46.451801, 46.114319, 50.096710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282532, 45.753162, 50.126949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364622, 0.246082, 0.898050,
		-0.829444, 0.352465, -0.433349,
		-0.423171, -0.902891, 0.075595,
		46.155579, 45.482296, 50.149628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801613, 46.226059, 50.457870>,  <46.451801, 46.114319, 50.096710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801613, 46.226059, 50.457870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.850395, 45.830215, 50.488350>,  <45.879665, 45.592709, 50.506638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.850395, 45.830215, 50.488350>,  <45.801613, 46.226059, 50.457870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850395, 45.830215, 50.488350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405473, 0.020395, 0.913880,
		-0.905935, -0.142347, -0.398772,
		0.121955, -0.989607, 0.076194,
		45.886982, 45.533333, 50.511208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232491, 45.994690, 50.980110>,  <45.801613, 46.226059, 50.457870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232491, 45.994690, 50.980110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.499290, 45.696934, 50.992699>,  <45.659370, 45.518280, 51.000252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.499290, 45.696934, 50.992699>,  <45.232491, 45.994690, 50.980110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.499290, 45.696934, 50.992699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109829, -0.056459, 0.992346,
		-0.736920, -0.665349, -0.119415,
		0.666998, -0.744394, 0.031469,
		45.699390, 45.473614, 51.002140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883194, 45.530754, 51.420464>,  <45.232491, 45.994690, 50.980110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883194, 45.530754, 51.420464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.276894, 45.460052, 51.422096>,  <45.513111, 45.417633, 51.423077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.276894, 45.460052, 51.422096>,  <44.883194, 45.530754, 51.420464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276894, 45.460052, 51.422096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002427, 0.036607, 0.999327,
		-0.176785, -0.983574, 0.036459,
		0.984247, -0.176755, 0.004085,
		45.572166, 45.407028, 51.423321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886856, 44.997437, 51.964417>,  <44.883194, 45.530754, 51.420464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886856, 44.997437, 51.964417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.260941, 45.125637, 51.904213>,  <45.485394, 45.202557, 51.868092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.260941, 45.125637, 51.904213>,  <44.886856, 44.997437, 51.964417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260941, 45.125637, 51.904213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149635, 0.027494, 0.988359,
		0.320909, -0.946848, -0.022245,
		0.935215, 0.320502, -0.150504,
		45.541504, 45.221786, 51.859062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258350, 44.519012, 52.311394>,  <44.886856, 44.997437, 51.964417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258350, 44.519012, 52.311394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.496582, 44.839130, 52.283669>,  <45.639523, 45.031200, 52.267033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.496582, 44.839130, 52.283669>,  <45.258350, 44.519012, 52.311394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496582, 44.839130, 52.283669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186206, -0.053612, 0.981047,
		0.781414, -0.597202, -0.180951,
		0.595584, 0.800298, -0.069309,
		45.675259, 45.079220, 52.262875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892776, 44.308796, 52.570637>,  <45.258350, 44.519012, 52.311394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892776, 44.308796, 52.570637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.878532, 44.707645, 52.597404>,  <45.869987, 44.946957, 52.613464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.878532, 44.707645, 52.597404>,  <45.892776, 44.308796, 52.570637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878532, 44.707645, 52.597404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383757, -0.048183, 0.922176,
		0.922747, 0.058518, -0.380937,
		-0.035609, 0.997123, 0.066918,
		45.867851, 45.006783, 52.617481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509434, 44.491558, 52.780205>,  <45.892776, 44.308796, 52.570637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509434, 44.491558, 52.780205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.292740, 44.810665, 52.886108>,  <46.162724, 45.002129, 52.949650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.292740, 44.810665, 52.886108>,  <46.509434, 44.491558, 52.780205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292740, 44.810665, 52.886108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548898, 0.097209, 0.830218,
		0.636584, 0.595078, -0.490554,
		-0.541730, 0.797767, 0.264756,
		46.130222, 45.049995, 52.965534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.998631, 44.921177, 53.168106>,  <46.509434, 44.491558, 52.780205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.998631, 44.921177, 53.168106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.633461, 45.051125, 53.266922>,  <46.414360, 45.129093, 53.326210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.633461, 45.051125, 53.266922>,  <46.998631, 44.921177, 53.168106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633461, 45.051125, 53.266922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352936, 0.324457, 0.877590,
		0.204950, 0.888362, -0.410863,
		-0.912925, 0.324870, 0.247037,
		46.359585, 45.148586, 53.341034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.989532, 45.647144, 53.448753>,  <46.998631, 44.921177, 53.168106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.989532, 45.647144, 53.448753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.647232, 45.485966, 53.578568>,  <46.441853, 45.389259, 53.656456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.647232, 45.485966, 53.578568>,  <46.989532, 45.647144, 53.448753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647232, 45.485966, 53.578568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148570, 0.409465, 0.900147,
		-0.495599, 0.818518, -0.290534,
		-0.855750, -0.402948, 0.324538,
		46.390507, 45.365082, 53.675930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.635414, 46.251011, 53.680809>,  <46.989532, 45.647144, 53.448753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.635414, 46.251011, 53.680809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.454277, 45.926521, 53.828781>,  <46.345592, 45.731827, 53.917564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.454277, 45.926521, 53.828781>,  <46.635414, 46.251011, 53.680809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454277, 45.926521, 53.828781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038646, 0.396664, 0.917150,
		-0.890751, 0.429624, -0.148277,
		-0.452846, -0.811222, 0.369932,
		46.318424, 45.683155, 53.939762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355907, 46.522587, 54.227947>,  <46.635414, 46.251011, 53.680809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355907, 46.522587, 54.227947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.335754, 46.133904, 54.320244>,  <46.323662, 45.900692, 54.375622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.335754, 46.133904, 54.320244>,  <46.355907, 46.522587, 54.227947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.335754, 46.133904, 54.320244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045015, 0.228586, 0.972482,
		-0.997715, 0.059380, 0.032225,
		-0.050380, -0.971711, 0.230737,
		46.320641, 45.842392, 54.389465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823231, 46.389679, 54.777744>,  <46.355907, 46.522587, 54.227947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823231, 46.389679, 54.777744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.080597, 46.083473, 54.777939>,  <46.235016, 45.899750, 54.778057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.080597, 46.083473, 54.777939>,  <45.823231, 46.389679, 54.777744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080597, 46.083473, 54.777939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274387, 0.231213, 0.933409,
		-0.714654, -0.600435, 0.358814,
		0.643414, -0.765519, 0.000486,
		46.273621, 45.853817, 54.778084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746437, 46.077393, 55.431343>,  <45.823231, 46.389679, 54.777744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746437, 46.077393, 55.431343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.091110, 45.911480, 55.314407>,  <46.297913, 45.811932, 55.244247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.091110, 45.911480, 55.314407>,  <45.746437, 46.077393, 55.431343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091110, 45.911480, 55.314407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366213, 0.109511, 0.924064,
		-0.351269, -0.903308, 0.246262,
		0.861683, -0.414780, -0.292335,
		46.349617, 45.787045, 55.226707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989754, 45.541172, 55.982178>,  <45.746437, 46.077393, 55.431343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989754, 45.541172, 55.982178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.320366, 45.648235, 55.784107>,  <46.518734, 45.712475, 55.665264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.320366, 45.648235, 55.784107>,  <45.989754, 45.541172, 55.982178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320366, 45.648235, 55.784107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475871, 0.137608, 0.868684,
		0.300654, -0.953636, -0.013635,
		0.826531, 0.267662, -0.495180,
		46.568325, 45.728535, 55.635551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570087, 45.271889, 56.294357>,  <45.989754, 45.541172, 55.982178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570087, 45.271889, 56.294357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.757835, 45.567070, 56.100399>,  <46.870483, 45.744179, 55.984024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.757835, 45.567070, 56.100399>,  <46.570087, 45.271889, 56.294357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757835, 45.567070, 56.100399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391145, 0.318564, 0.863437,
		0.791643, -0.594933, -0.139122,
		0.469368, 0.737951, -0.484894,
		46.898647, 45.788456, 55.954929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.343960, 45.305805, 56.492382>,  <46.570087, 45.271889, 56.294357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.343960, 45.305805, 56.492382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.279564, 45.661358, 56.320816>,  <47.240925, 45.874691, 56.217876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.279564, 45.661358, 56.320816>,  <47.343960, 45.305805, 56.492382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.279564, 45.661358, 56.320816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410929, 0.455494, 0.789723,
		0.897341, -0.049118, -0.438597,
		-0.160989, 0.888883, -0.428917,
		47.231266, 45.928024, 56.192142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.003403, 45.761204, 56.411751>,  <47.343960, 45.305805, 56.492382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.003403, 45.761204, 56.411751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.672813, 45.986370, 56.415207>,  <47.474461, 46.121468, 56.417282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.672813, 45.986370, 56.415207>,  <48.003403, 45.761204, 56.411751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.672813, 45.986370, 56.415207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370520, 0.532314, 0.761155,
		0.423863, 0.632275, -0.648512,
		-0.826471, 0.562913, 0.008642,
		47.424873, 46.155243, 56.417801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.255699, 46.401035, 56.705635>,  <48.003403, 45.761204, 56.411751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.255699, 46.401035, 56.705635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.857483, 46.423943, 56.735634>,  <47.618553, 46.437687, 56.753632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.857483, 46.423943, 56.735634>,  <48.255699, 46.401035, 56.705635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.857483, 46.423943, 56.735634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094149, 0.549521, 0.830158,
		0.006333, 0.833515, -0.552461,
		-0.995538, 0.057271, 0.074994,
		47.558823, 46.441124, 56.758133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.190628, 47.158970, 56.861027>,  <48.255699, 46.401035, 56.705635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.190628, 47.158970, 56.861027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.863548, 46.981232, 57.007408>,  <47.667301, 46.874588, 57.095238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.863548, 46.981232, 57.007408>,  <48.190628, 47.158970, 56.861027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.863548, 46.981232, 57.007408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276490, 0.254421, 0.926727,
		-0.504896, 0.858967, -0.085182,
		-0.817700, -0.444349, 0.365952,
		47.618237, 46.847927, 57.117195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<46.571728, 46.305965, 57.534824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.879929, 46.514328, 57.387863>,  <47.064850, 46.639347, 57.299686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.879929, 46.514328, 57.387863>,  <46.571728, 46.305965, 57.534824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879929, 46.514328, 57.387863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251238, -0.281546, -0.926073,
		-0.585839, 0.805845, -0.086060,
		0.770501, 0.520908, -0.367400,
		47.111080, 46.670601, 57.277645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.318172, 46.679604, 56.943531>,  <46.571728, 46.305965, 57.534824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.318172, 46.679604, 56.943531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.709412, 46.650597, 56.865494>,  <46.944157, 46.633194, 56.818672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.709412, 46.650597, 56.865494>,  <46.318172, 46.679604, 56.943531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.709412, 46.650597, 56.865494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207697, -0.400595, -0.892404,
		-0.013441, 0.913381, -0.406883,
		0.978101, -0.072514, -0.195091,
		47.002842, 46.628841, 56.806965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514336, 47.073658, 56.404385>,  <46.318172, 46.679604, 56.943531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514336, 47.073658, 56.404385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.803268, 46.797058, 56.407394>,  <46.976627, 46.631096, 56.409203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.803268, 46.797058, 56.407394>,  <46.514336, 47.073658, 56.404385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803268, 46.797058, 56.407394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314574, -0.338256, -0.886920,
		0.615855, 0.638283, -0.461863,
		0.722333, -0.691504, 0.007529,
		47.019970, 46.589607, 56.409653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.820465, 47.088825, 55.636765>,  <46.514336, 47.073658, 56.404385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.820465, 47.088825, 55.636765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.937843, 46.745201, 55.804527>,  <47.008270, 46.539028, 55.905186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.937843, 46.745201, 55.804527>,  <46.820465, 47.088825, 55.636765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937843, 46.745201, 55.804527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122401, -0.468879, -0.874740,
		0.948107, 0.205353, -0.242741,
		0.293447, -0.859059, 0.419411,
		47.025879, 46.487484, 55.930351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325504, 46.724430, 55.198956>,  <46.820465, 47.088825, 55.636765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325504, 46.724430, 55.198956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.174210, 46.444931, 55.441833>,  <47.083431, 46.277229, 55.587559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.174210, 46.444931, 55.441833>,  <47.325504, 46.724430, 55.198956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.174210, 46.444931, 55.441833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178430, -0.588591, -0.788494,
		0.908349, -0.406581, 0.097950,
		-0.378239, -0.698750, 0.607193,
		47.060738, 46.235306, 55.623993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631413, 46.098942, 54.996338>,  <47.325504, 46.724430, 55.198956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631413, 46.098942, 54.996338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.292305, 46.000076, 55.184036>,  <47.088840, 45.940758, 55.296658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.292305, 46.000076, 55.184036>,  <47.631413, 46.098942, 54.996338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.292305, 46.000076, 55.184036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318311, -0.470574, -0.822945,
		0.424220, -0.847035, 0.320263,
		-0.847771, -0.247167, 0.469248,
		47.037975, 45.925926, 55.324810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.598007, 45.373016, 54.892433>,  <47.631413, 46.098942, 54.996338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.598007, 45.373016, 54.892433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.223587, 45.478848, 54.985222>,  <46.998936, 45.542347, 55.040897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.223587, 45.478848, 54.985222>,  <47.598007, 45.373016, 54.892433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223587, 45.478848, 54.985222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341852, -0.527599, -0.777674,
		-0.083364, -0.807242, 0.584304,
		-0.936049, 0.264575, 0.231974,
		46.942772, 45.558220, 55.054813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053551, 44.761513, 54.828182>,  <47.598007, 45.373016, 54.892433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053551, 44.761513, 54.828182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.829132, 45.092163, 54.810661>,  <46.694481, 45.290554, 54.800148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.829132, 45.092163, 54.810661>,  <47.053551, 44.761513, 54.828182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829132, 45.092163, 54.810661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433734, -0.338631, -0.834988,
		-0.705058, -0.449462, 0.548522,
		-0.561042, 0.826627, -0.043807,
		46.660820, 45.340153, 54.797520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384876, 44.547489, 54.653393>,  <47.053551, 44.761513, 54.828182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384876, 44.547489, 54.653393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.332878, 44.938202, 54.585285>,  <46.301678, 45.172630, 54.544422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.332878, 44.938202, 54.585285>,  <46.384876, 44.547489, 54.653393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332878, 44.938202, 54.585285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487643, -0.212502, -0.846786,
		-0.863311, -0.027048, 0.503947,
		-0.129994, 0.976786, -0.170265,
		46.293880, 45.231239, 54.534206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749142, 44.597416, 54.404152>,  <46.384876, 44.547489, 54.653393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749142, 44.597416, 54.404152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.936417, 44.925014, 54.271461>,  <46.048782, 45.121574, 54.191845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.936417, 44.925014, 54.271461>,  <45.749142, 44.597416, 54.404152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936417, 44.925014, 54.271461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393091, -0.143182, -0.908283,
		-0.791380, 0.555645, 0.254905,
		0.468185, 0.818998, -0.331731,
		46.076874, 45.170715, 54.171944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220669, 44.836544, 53.950890>,  <45.749142, 44.597416, 54.404152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220669, 44.836544, 53.950890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.572090, 45.021881, 53.904495>,  <45.782944, 45.133083, 53.876659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.572090, 45.021881, 53.904495>,  <45.220669, 44.836544, 53.950890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572090, 45.021881, 53.904495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221068, 0.179192, -0.958655,
		-0.423405, 0.867871, 0.259861,
		0.878554, 0.463347, -0.115988,
		45.835655, 45.160885, 53.869698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156288, 45.505260, 53.627056>,  <45.220669, 44.836544, 53.950890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156288, 45.505260, 53.627056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.533920, 45.399155, 53.548714>,  <45.760498, 45.335491, 53.501709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.533920, 45.399155, 53.548714>,  <45.156288, 45.505260, 53.627056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533920, 45.399155, 53.548714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168940, 0.120964, -0.978175,
		0.283162, 0.956559, 0.069386,
		0.944076, -0.265260, -0.195853,
		45.817142, 45.319576, 53.489956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502563, 46.089520, 53.244904>,  <45.156288, 45.505260, 53.627056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502563, 46.089520, 53.244904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.742470, 45.779987, 53.163452>,  <45.886414, 45.594269, 53.114582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.742470, 45.779987, 53.163452>,  <45.502563, 46.089520, 53.244904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742470, 45.779987, 53.163452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052516, 0.215870, -0.975009,
		0.798449, 0.595473, 0.088833,
		0.599768, -0.773830, -0.203633,
		45.922401, 45.547840, 53.102364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875763, 46.354080, 52.673645>,  <45.502563, 46.089520, 53.244904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875763, 46.354080, 52.673645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.907249, 45.955559, 52.659878>,  <45.926140, 45.716446, 52.651619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.907249, 45.955559, 52.659878>,  <45.875763, 46.354080, 52.673645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907249, 45.955559, 52.659878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144351, 0.022771, -0.989264,
		0.986391, 0.082838, -0.142025,
		0.078715, -0.996303, -0.034419,
		45.930862, 45.656670, 52.649551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.295815, 46.197563, 52.229706>,  <45.875763, 46.354080, 52.673645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.295815, 46.197563, 52.229706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.146713, 45.826401, 52.226814>,  <46.057251, 45.603703, 52.225079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.146713, 45.826401, 52.226814>,  <46.295815, 46.197563, 52.229706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146713, 45.826401, 52.226814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018436, 0.000380, -0.999830,
		0.927747, -0.372825, 0.016965,
		-0.372755, -0.927902, -0.007226,
		46.034885, 45.548031, 52.224648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721851, 45.685635, 51.838516>,  <46.295815, 46.197563, 52.229706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721851, 45.685635, 51.838516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.355759, 45.524685, 51.830044>,  <46.136105, 45.428116, 51.824959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.355759, 45.524685, 51.830044>,  <46.721851, 45.685635, 51.838516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355759, 45.524685, 51.830044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061809, -0.088246, -0.994179,
		0.398166, -0.911211, 0.105636,
		-0.915229, -0.402378, -0.021185,
		46.081188, 45.403973, 51.823689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832867, 45.100319, 51.461422>,  <46.721851, 45.685635, 51.838516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832867, 45.100319, 51.461422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.438019, 45.162258, 51.477547>,  <46.201111, 45.199421, 51.487221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.438019, 45.162258, 51.477547>,  <46.832867, 45.100319, 51.461422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438019, 45.162258, 51.477547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072459, -0.207982, -0.975445,
		-0.142661, -0.965798, 0.216523,
		-0.987116, 0.154847, 0.040309,
		46.141884, 45.208714, 51.489639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547626, 44.515942, 51.098171>,  <46.832867, 45.100319, 51.461422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547626, 44.515942, 51.098171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.281822, 44.813721, 51.072197>,  <46.122341, 44.992390, 51.056610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.281822, 44.813721, 51.072197>,  <46.547626, 44.515942, 51.098171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281822, 44.813721, 51.072197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065274, -0.144393, -0.987365,
		-0.744422, -0.651876, 0.144544,
		-0.664511, 0.744452, -0.064938,
		46.082470, 45.037056, 51.052715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204056, 44.285633, 50.581200>,  <46.547626, 44.515942, 51.098171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204056, 44.285633, 50.581200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.097588, 44.670963, 50.594856>,  <46.033707, 44.902161, 50.603050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.097588, 44.670963, 50.594856>,  <46.204056, 44.285633, 50.581200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097588, 44.670963, 50.594856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172943, -0.012884, -0.984848,
		-0.948284, -0.268042, 0.170029,
		-0.266172, 0.963321, 0.034138,
		46.017735, 44.959961, 50.605099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549911, 44.323666, 50.327888>,  <46.204056, 44.285633, 50.581200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549911, 44.323666, 50.327888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.722847, 44.679153, 50.266876>,  <45.826607, 44.892445, 50.230270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.722847, 44.679153, 50.266876>,  <45.549911, 44.323666, 50.327888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722847, 44.679153, 50.266876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178071, -0.081677, -0.980622,
		-0.883955, 0.451120, 0.122943,
		0.432336, 0.888718, -0.152530,
		45.852547, 44.945770, 50.221119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094257, 44.692638, 49.806911>,  <45.549911, 44.323666, 50.327888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094257, 44.692638, 49.806911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.454971, 44.864326, 49.786674>,  <45.671398, 44.967339, 49.774532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.454971, 44.864326, 49.786674>,  <45.094257, 44.692638, 49.806911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454971, 44.864326, 49.786674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023917, -0.166439, -0.985762,
		-0.431525, 0.887734, -0.160358,
		0.901784, 0.429216, -0.050591,
		45.725506, 44.993092, 49.771496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108967, 45.099407, 49.232143>,  <45.094257, 44.692638, 49.806911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108967, 45.099407, 49.232143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.501259, 45.052658, 49.294769>,  <45.736633, 45.024609, 49.332344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.501259, 45.052658, 49.294769>,  <45.108967, 45.099407, 49.232143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501259, 45.052658, 49.294769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165572, 0.071727, -0.983586,
		0.103727, 0.990553, 0.089696,
		0.980728, -0.116876, 0.156568,
		45.795479, 45.017593, 49.341740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432018, 45.611423, 48.753727>,  <45.108967, 45.099407, 49.232143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432018, 45.611423, 48.753727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.735718, 45.374245, 48.861031>,  <45.917938, 45.231937, 48.925411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.735718, 45.374245, 48.861031>,  <45.432018, 45.611423, 48.753727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735718, 45.374245, 48.861031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397584, 0.096264, -0.912502,
		0.515239, 0.799469, 0.308834,
		0.759247, -0.592944, 0.268257,
		45.963493, 45.196362, 48.941509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027462, 45.968277, 48.635361>,  <45.432018, 45.611423, 48.753727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027462, 45.968277, 48.635361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.129784, 45.581612, 48.630909>,  <46.191177, 45.349613, 48.628239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.129784, 45.581612, 48.630909>,  <46.027462, 45.968277, 48.635361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129784, 45.581612, 48.630909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362960, 0.106712, -0.925674,
		0.896003, 0.232754, 0.378158,
		0.255809, -0.966663, -0.011134,
		46.206528, 45.291611, 48.627567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633152, 45.913116, 48.228863>,  <46.027462, 45.968277, 48.635361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633152, 45.913116, 48.228863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.538643, 45.525253, 48.253975>,  <46.481937, 45.292534, 48.269043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.538643, 45.525253, 48.253975>,  <46.633152, 45.913116, 48.228863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.538643, 45.525253, 48.253975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208335, -0.113658, -0.971431,
		0.949090, -0.216444, 0.228868,
		-0.236273, -0.969657, 0.062779,
		46.467762, 45.234356, 48.272808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.126537, 45.636211, 47.903717>,  <46.633152, 45.913116, 48.228863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.126537, 45.636211, 47.903717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.854538, 45.342968, 47.898865>,  <46.691338, 45.167023, 47.895954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.854538, 45.342968, 47.898865>,  <47.126537, 45.636211, 47.903717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854538, 45.342968, 47.898865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214068, -0.182677, -0.959585,
		0.701267, -0.655116, 0.281156,
		-0.680000, -0.733112, -0.012134,
		46.650539, 45.123035, 47.895226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.368118, 44.965569, 47.469040>,  <47.126537, 45.636211, 47.903717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.368118, 44.965569, 47.469040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.971153, 44.919960, 47.487431>,  <46.732975, 44.892593, 47.498466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.971153, 44.919960, 47.487431>,  <47.368118, 44.965569, 47.469040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.971153, 44.919960, 47.487431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020429, -0.215819, -0.976220,
		0.121233, -0.969753, 0.211852,
		-0.992414, -0.114022, 0.045976,
		46.673428, 44.885754, 47.501225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170380, 44.286549, 47.120731>,  <47.368118, 44.965569, 47.469040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170380, 44.286549, 47.120731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.853424, 44.529697, 47.100277>,  <46.663250, 44.675587, 47.088005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.853424, 44.529697, 47.100277>,  <47.170380, 44.286549, 47.120731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853424, 44.529697, 47.100277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130541, -0.250850, -0.959184,
		-0.595890, -0.753368, 0.278122,
		-0.792385, 0.607874, -0.051134,
		46.615707, 44.712059, 47.084938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.478191, 43.872158, 46.854942>,  <47.170380, 44.286549, 47.120731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.478191, 43.872158, 46.854942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.412811, 44.263840, 46.806885>,  <46.373581, 44.498848, 46.778049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.412811, 44.263840, 46.806885>,  <46.478191, 43.872158, 46.854942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412811, 44.263840, 46.806885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380235, -0.174900, -0.908202,
		-0.910332, -0.102767, 0.400918,
		-0.163454, 0.979209, -0.120141,
		46.363773, 44.557602, 46.770844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.607929, 43.973557, 34.181908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888557, 44.209644, 34.022186>,  <45.056934, 44.351295, 33.926353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888557, 44.209644, 34.022186>,  <44.607929, 43.973557, 34.181908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888557, 44.209644, 34.022186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358266, -0.192233, -0.913615,
		-0.615991, 0.784021, 0.076591,
		0.701570, 0.590218, -0.399302,
		45.099030, 44.386711, 33.902397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356514, 44.352509, 33.635502>,  <44.607929, 43.973557, 34.181908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356514, 44.352509, 33.635502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746315, 44.357685, 33.545902>,  <44.980194, 44.360790, 33.492142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746315, 44.357685, 33.545902>,  <44.356514, 44.352509, 33.635502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746315, 44.357685, 33.545902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210374, -0.294415, -0.932235,
		-0.078012, 0.955590, -0.284186,
		0.974503, 0.012940, -0.223999,
		45.038666, 44.361568, 33.478703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411209, 44.679173, 32.959919>,  <44.356514, 44.352509, 33.635502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411209, 44.679173, 32.959919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.753365, 44.474522, 32.992302>,  <44.958656, 44.351730, 33.011730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.753365, 44.474522, 32.992302>,  <44.411209, 44.679173, 32.959919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753365, 44.474522, 32.992302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008010, -0.169339, -0.985525,
		0.517927, 0.842357, -0.148948,
		0.855387, -0.511623, 0.080958,
		45.009979, 44.321033, 33.016590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107704, 45.425861, 32.910892>,  <44.411209, 44.679173, 32.959919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107704, 45.425861, 32.910892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.727135, 45.303913, 32.928120>,  <43.498795, 45.230743, 32.938454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.727135, 45.303913, 32.928120>,  <44.107704, 45.425861, 32.910892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727135, 45.303913, 32.928120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105118, 0.453097, 0.885242,
		-0.289395, 0.837710, -0.463133,
		-0.951420, -0.304868, 0.043066,
		43.441708, 45.212452, 32.941040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757809, 45.942650, 33.176819>,  <44.107704, 45.425861, 32.910892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757809, 45.942650, 33.176819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499603, 45.641811, 33.229980>,  <43.344681, 45.461308, 33.261875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499603, 45.641811, 33.229980>,  <43.757809, 45.942650, 33.176819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499603, 45.641811, 33.229980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298722, 0.408773, 0.862363,
		-0.702906, 0.516967, -0.488537,
		-0.645513, -0.752097, 0.132899,
		43.305950, 45.416183, 33.269852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139717, 46.216591, 33.387287>,  <43.757809, 45.942650, 33.176819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139717, 46.216591, 33.387287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127815, 45.841232, 33.525002>,  <43.120674, 45.616016, 33.607628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127815, 45.841232, 33.525002>,  <43.139717, 46.216591, 33.387287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127815, 45.841232, 33.525002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340293, 0.333371, 0.879241,
		-0.939849, -0.090999, -0.329247,
		-0.029751, -0.938394, 0.344284,
		43.118889, 45.559715, 33.628288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491699, 46.125786, 33.777081>,  <43.139717, 46.216591, 33.387287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491699, 46.125786, 33.777081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708809, 45.812374, 33.898064>,  <42.839073, 45.624329, 33.970654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.708809, 45.812374, 33.898064>,  <42.491699, 46.125786, 33.777081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708809, 45.812374, 33.898064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129175, 0.277956, 0.951869,
		-0.829885, -0.555721, 0.049655,
		0.542775, -0.783527, 0.302457,
		42.871643, 45.577316, 33.988800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052433, 45.808727, 34.258911>,  <42.491699, 46.125786, 33.777081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052433, 45.808727, 34.258911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.425568, 45.686459, 34.335209>,  <42.649448, 45.613098, 34.380989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.425568, 45.686459, 34.335209>,  <42.052433, 45.808727, 34.258911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425568, 45.686459, 34.335209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101945, 0.283847, 0.953435,
		-0.345585, -0.908841, 0.233619,
		0.932834, -0.305677, 0.190745,
		42.705418, 45.594757, 34.392433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057522, 45.651260, 34.972042>,  <42.052433, 45.808727, 34.258911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057522, 45.651260, 34.972042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.450851, 45.662041, 34.900097>,  <42.686848, 45.668510, 34.856930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.450851, 45.662041, 34.900097>,  <42.057522, 45.651260, 34.972042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450851, 45.662041, 34.900097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171993, 0.183751, 0.967809,
		0.059137, -0.982603, 0.176050,
		0.983322, 0.026954, -0.179867,
		42.745850, 45.670128, 34.846138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404751, 45.293133, 35.558094>,  <42.057522, 45.651260, 34.972042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404751, 45.293133, 35.558094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683296, 45.530857, 35.397163>,  <42.850426, 45.673492, 35.300606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683296, 45.530857, 35.397163>,  <42.404751, 45.293133, 35.558094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683296, 45.530857, 35.397163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410589, 0.129877, 0.902524,
		0.588635, -0.793677, -0.153577,
		0.696366, 0.594314, -0.402325,
		42.892204, 45.709152, 35.276466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019024, 44.966022, 35.766151>,  <42.404751, 45.293133, 35.558094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019024, 44.966022, 35.766151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074547, 45.354980, 35.691116>,  <43.107861, 45.588356, 35.646095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074547, 45.354980, 35.691116>,  <43.019024, 44.966022, 35.766151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074547, 45.354980, 35.691116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446402, 0.107653, 0.888334,
		0.884002, -0.207044, -0.419134,
		0.138804, 0.972391, -0.187590,
		43.116188, 45.646698, 35.634838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673084, 45.143154, 36.222172>,  <43.019024, 44.966022, 35.766151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673084, 45.143154, 36.222172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520683, 45.504677, 36.144234>,  <43.429241, 45.721592, 36.097469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520683, 45.504677, 36.144234>,  <43.673084, 45.143154, 36.222172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520683, 45.504677, 36.144234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326660, 0.328741, 0.886128,
		0.864944, 0.273971, -0.420490,
		-0.381006, 0.903808, -0.194848,
		43.406380, 45.775818, 36.085781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199917, 45.508442, 36.387722>,  <43.673084, 45.143154, 36.222172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199917, 45.508442, 36.387722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874489, 45.740429, 36.404430>,  <43.679234, 45.879620, 36.414455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874489, 45.740429, 36.404430>,  <44.199917, 45.508442, 36.387722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874489, 45.740429, 36.404430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245441, 0.277402, 0.928874,
		0.527131, 0.765953, -0.368034,
		-0.813567, 0.579969, 0.041769,
		43.630417, 45.914421, 36.416962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348995, 46.197296, 36.789265>,  <44.199917, 45.508442, 36.387722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348995, 46.197296, 36.789265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954041, 46.139862, 36.815971>,  <43.717068, 46.105400, 36.831997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954041, 46.139862, 36.815971>,  <44.348995, 46.197296, 36.789265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954041, 46.139862, 36.815971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056771, 0.072630, 0.995742,
		-0.147823, 0.986969, -0.063562,
		-0.987383, -0.143585, 0.066767,
		43.657825, 46.096786, 36.836002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171085, 46.550114, 37.355797>,  <44.348995, 46.197296, 36.789265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171085, 46.550114, 37.355797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853561, 46.310898, 37.311569>,  <43.663048, 46.167370, 37.285030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853561, 46.310898, 37.311569>,  <44.171085, 46.550114, 37.355797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853561, 46.310898, 37.311569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008605, -0.170746, 0.985277,
		-0.608110, 0.783071, 0.130393,
		-0.793806, -0.598035, -0.110571,
		43.615421, 46.131489, 37.278397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661163, 46.849846, 37.842312>,  <44.171085, 46.550114, 37.355797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661163, 46.849846, 37.842312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520538, 46.479691, 37.785664>,  <43.436165, 46.257595, 37.751675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520538, 46.479691, 37.785664>,  <43.661163, 46.849846, 37.842312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520538, 46.479691, 37.785664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012141, -0.146758, 0.989098,
		-0.936085, 0.349450, 0.040360,
		-0.351563, -0.925390, -0.141621,
		43.415070, 46.202072, 37.743176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069611, 46.729622, 38.238983>,  <43.661163, 46.849846, 37.842312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069611, 46.729622, 38.238983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.202034, 46.356262, 38.183605>,  <43.281490, 46.132248, 38.150379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.202034, 46.356262, 38.183605>,  <43.069611, 46.729622, 38.238983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202034, 46.356262, 38.183605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157839, -0.199429, 0.967117,
		-0.930314, -0.298324, -0.213350,
		0.331062, -0.933397, -0.138444,
		43.301353, 46.076244, 38.142071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553120, 46.383160, 38.687092>,  <43.069611, 46.729622, 38.238983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553120, 46.383160, 38.687092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857498, 46.131531, 38.623562>,  <43.040127, 45.980553, 38.585442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857498, 46.131531, 38.623562>,  <42.553120, 46.383160, 38.687092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857498, 46.131531, 38.623562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103257, -0.359097, 0.927571,
		-0.640541, -0.689435, -0.338211,
		0.760950, -0.629069, -0.158827,
		43.085785, 45.942810, 38.575912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436207, 45.848400, 39.175152>,  <42.553120, 46.383160, 38.687092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436207, 45.848400, 39.175152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820580, 45.782623, 39.086094>,  <43.051205, 45.743156, 39.032661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820580, 45.782623, 39.086094>,  <42.436207, 45.848400, 39.175152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820580, 45.782623, 39.086094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152145, -0.358134, 0.921190,
		-0.231218, -0.919075, -0.319124,
		0.960932, -0.164443, -0.222640,
		43.108860, 45.733292, 39.019302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479572, 45.165932, 39.433445>,  <42.436207, 45.848400, 39.175152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479572, 45.165932, 39.433445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.844055, 45.328621, 39.407310>,  <43.062744, 45.426235, 39.391628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.844055, 45.328621, 39.407310>,  <42.479572, 45.165932, 39.433445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844055, 45.328621, 39.407310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219900, -0.346134, 0.912050,
		0.348340, -0.845437, -0.404840,
		0.911210, 0.406728, -0.065339,
		43.117416, 45.450638, 39.387711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985626, 44.648041, 39.632015>,  <42.479572, 45.165932, 39.433445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985626, 44.648041, 39.632015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201172, 44.982460, 39.673290>,  <43.330498, 45.183113, 39.698055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201172, 44.982460, 39.673290>,  <42.985626, 44.648041, 39.632015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201172, 44.982460, 39.673290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410224, -0.367421, 0.834697,
		0.735760, -0.407459, -0.540957,
		0.538864, 0.836049, 0.103184,
		43.362831, 45.233276, 39.704247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685879, 44.428055, 39.740227>,  <42.985626, 44.648041, 39.632015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685879, 44.428055, 39.740227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678185, 44.796452, 39.895866>,  <43.673569, 45.017490, 39.989250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678185, 44.796452, 39.895866>,  <43.685879, 44.428055, 39.740227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678185, 44.796452, 39.895866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215930, -0.376162, 0.901042,
		0.976219, 0.101353, -0.191633,
		-0.019238, 0.920994, 0.389102,
		43.672413, 45.072750, 40.012596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396729, 44.468323, 40.150562>,  <43.685879, 44.428055, 39.740227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396729, 44.468323, 40.150562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133652, 44.749573, 40.258678>,  <43.975807, 44.918324, 40.323547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133652, 44.749573, 40.258678>,  <44.396729, 44.468323, 40.150562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133652, 44.749573, 40.258678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108694, -0.266483, 0.957691,
		0.745404, 0.659245, 0.098838,
		-0.657691, 0.703124, 0.270294,
		43.936344, 44.960510, 40.339767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589062, 44.607288, 40.897400>,  <44.396729, 44.468323, 40.150562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589062, 44.607288, 40.897400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220741, 44.763275, 40.894501>,  <43.999748, 44.856869, 40.892761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220741, 44.763275, 40.894501>,  <44.589062, 44.607288, 40.897400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220741, 44.763275, 40.894501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026757, -0.044619, 0.998646,
		0.389117, 0.919747, 0.051519,
		-0.920800, 0.389969, -0.007248,
		43.944500, 44.880264, 40.892326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702778, 44.990059, 41.411743>,  <44.589062, 44.607288, 40.897400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702778, 44.990059, 41.411743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305893, 44.975567, 41.364082>,  <44.067760, 44.966873, 41.335487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305893, 44.975567, 41.364082>,  <44.702778, 44.990059, 41.411743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305893, 44.975567, 41.364082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123311, 0.152071, 0.980647,
		-0.017409, 0.987705, -0.155354,
		-0.992215, -0.036228, -0.119148,
		44.008228, 44.964699, 41.328339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372669, 45.363476, 41.936600>,  <44.702778, 44.990059, 41.411743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372669, 45.363476, 41.936600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050110, 45.144646, 41.846771>,  <43.856575, 45.013348, 41.792873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050110, 45.144646, 41.846771>,  <44.372669, 45.363476, 41.936600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050110, 45.144646, 41.846771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302558, 0.055373, 0.951521,
		-0.508121, 0.835248, -0.210175,
		-0.806394, -0.547078, -0.224575,
		43.808193, 44.980522, 41.779400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825432, 45.752533, 42.257114>,  <44.372669, 45.363476, 41.936600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825432, 45.752533, 42.257114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.727112, 45.366932, 42.216549>,  <43.668118, 45.135571, 42.192211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.727112, 45.366932, 42.216549>,  <43.825432, 45.752533, 42.257114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727112, 45.366932, 42.216549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352251, -0.008636, 0.935866,
		-0.903050, 0.265762, -0.337447,
		-0.245804, -0.964000, -0.101414,
		43.653370, 45.077732, 42.186127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232746, 45.702145, 42.648376>,  <43.825432, 45.752533, 42.257114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232746, 45.702145, 42.648376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.343102, 45.319809, 42.607857>,  <43.409313, 45.090408, 42.583546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.343102, 45.319809, 42.607857>,  <43.232746, 45.702145, 42.648376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343102, 45.319809, 42.607857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295164, -0.184547, 0.937454,
		-0.914749, -0.228729, -0.333043,
		0.275885, -0.955837, -0.101301,
		43.425869, 45.033058, 42.577465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733955, 45.265518, 42.949558>,  <43.232746, 45.702145, 42.648376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733955, 45.265518, 42.949558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038300, 45.006008, 42.954838>,  <43.220905, 44.850304, 42.958004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038300, 45.006008, 42.954838>,  <42.733955, 45.265518, 42.949558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038300, 45.006008, 42.954838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154661, -0.161554, 0.974670,
		-0.630211, -0.743633, -0.223260,
		0.760864, -0.648777, 0.013198,
		43.266560, 44.811375, 42.958797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484680, 44.553062, 43.288105>,  <42.733955, 45.265518, 42.949558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484680, 44.553062, 43.288105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880371, 44.598732, 43.324749>,  <43.117786, 44.626133, 43.346733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880371, 44.598732, 43.324749>,  <42.484680, 44.553062, 43.288105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880371, 44.598732, 43.324749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062936, -0.233275, 0.970372,
		0.132158, -0.965685, -0.223576,
		0.989229, 0.114171, 0.091606,
		43.177139, 44.632984, 43.352230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638752, 43.988461, 43.689983>,  <42.484680, 44.553062, 43.288105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638752, 43.988461, 43.689983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.972305, 44.206699, 43.723351>,  <43.172440, 44.337643, 43.743370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.972305, 44.206699, 43.723351>,  <42.638752, 43.988461, 43.689983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972305, 44.206699, 43.723351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190202, -0.425949, 0.884529,
		0.518126, -0.721731, -0.458967,
		0.833888, 0.545593, 0.083421,
		43.222473, 44.370377, 43.748375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191757, 43.522469, 44.041573>,  <42.638752, 43.988461, 43.689983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191757, 43.522469, 44.041573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299721, 43.902214, 44.105892>,  <43.364498, 44.130062, 44.144482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299721, 43.902214, 44.105892>,  <43.191757, 43.522469, 44.041573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299721, 43.902214, 44.105892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082752, -0.189245, 0.978437,
		0.959324, -0.250781, -0.129641,
		0.269907, 0.949366, 0.160795,
		43.380692, 44.187023, 44.154129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.004459, 43.507870, 44.364876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822609, 43.851597, 44.458591>,  <43.713497, 44.057831, 44.514820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822609, 43.851597, 44.458591>,  <44.004459, 43.507870, 44.364876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822609, 43.851597, 44.458591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101511, -0.211345, 0.972126,
		0.884879, 0.465736, 0.008852,
		-0.454625, 0.859316, 0.234293,
		43.686222, 44.109390, 44.528881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386742, 43.792233, 44.914238>,  <44.004459, 43.507870, 44.364876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386742, 43.792233, 44.914238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036880, 43.982632, 44.950920>,  <43.826965, 44.096870, 44.972931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036880, 43.982632, 44.950920>,  <44.386742, 43.792233, 44.914238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036880, 43.982632, 44.950920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071615, -0.060228, 0.995612,
		0.479435, 0.877381, 0.018590,
		-0.874651, 0.476000, 0.091709,
		43.774487, 44.125431, 44.978432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468292, 44.351486, 45.406666>,  <44.386742, 43.792233, 44.914238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468292, 44.351486, 45.406666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074928, 44.278934, 45.405983>,  <43.838909, 44.235405, 45.405575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074928, 44.278934, 45.405983>,  <44.468292, 44.351486, 45.406666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074928, 44.278934, 45.405983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011607, 0.053530, 0.998499,
		-0.181014, 0.981956, -0.054748,
		-0.983412, -0.181378, -0.001708,
		43.779903, 44.224522, 45.405472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903206, 44.992756, 45.282558>,  <44.468292, 44.351486, 45.406666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903206, 44.992756, 45.282558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230209, 44.765808, 45.322102>,  <45.426411, 44.629639, 45.345829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230209, 44.765808, 45.322102>,  <44.903206, 44.992756, 45.282558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230209, 44.765808, 45.322102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156514, 0.053683, -0.986216,
		0.554237, 0.821715, 0.132687,
		0.817511, -0.567365, 0.098857,
		45.475464, 44.595600, 45.351757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381424, 45.242302, 44.856659>,  <44.903206, 44.992756, 45.282558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381424, 45.242302, 44.856659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471588, 44.855938, 44.907570>,  <45.525688, 44.624119, 44.938118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471588, 44.855938, 44.907570>,  <45.381424, 45.242302, 44.856659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471588, 44.855938, 44.907570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219780, -0.076860, -0.972517,
		0.949150, 0.247191, 0.194963,
		0.225413, -0.965913, 0.127280,
		45.539211, 44.566162, 44.945755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979855, 45.217564, 44.497204>,  <45.381424, 45.242302, 44.856659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979855, 45.217564, 44.497204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940277, 44.820724, 44.528076>,  <45.916531, 44.582623, 44.546600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940277, 44.820724, 44.528076>,  <45.979855, 45.217564, 44.497204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940277, 44.820724, 44.528076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420688, -0.111998, -0.900266,
		0.901793, -0.056608, 0.428444,
		-0.098947, -0.992095, 0.077185,
		45.910591, 44.523094, 44.551231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.616199, 44.924980, 44.230854>,  <45.979855, 45.217564, 44.497204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.616199, 44.924980, 44.230854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324753, 44.651054, 44.225975>,  <46.149883, 44.486698, 44.223049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324753, 44.651054, 44.225975>,  <46.616199, 44.924980, 44.230854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324753, 44.651054, 44.225975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238638, -0.237126, -0.941713,
		0.642006, -0.689058, 0.336197,
		-0.728616, -0.684814, -0.012199,
		46.106167, 44.445610, 44.222317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.042435, 44.356544, 44.027733>,  <46.616199, 44.924980, 44.230854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.042435, 44.356544, 44.027733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660591, 44.322384, 43.913589>,  <46.431484, 44.301888, 43.845104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660591, 44.322384, 43.913589>,  <47.042435, 44.356544, 44.027733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660591, 44.322384, 43.913589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297810, -0.255698, -0.919743,
		0.005582, -0.962977, 0.269525,
		-0.954609, -0.085401, -0.285356,
		46.374207, 44.296764, 43.827984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980568, 43.717758, 43.665024>,  <47.042435, 44.356544, 44.027733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980568, 43.717758, 43.665024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686348, 43.962723, 43.549149>,  <46.509815, 44.109699, 43.479622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686348, 43.962723, 43.549149>,  <46.980568, 43.717758, 43.665024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686348, 43.962723, 43.549149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221672, -0.186503, -0.957120,
		-0.640177, -0.768226, 0.001429,
		-0.735551, 0.612409, -0.289689,
		46.465683, 44.146446, 43.462242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764351, 43.378555, 43.107853>,  <46.980568, 43.717758, 43.665024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764351, 43.378555, 43.107853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591042, 43.734325, 43.049629>,  <46.487057, 43.947788, 43.014694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591042, 43.734325, 43.049629>,  <46.764351, 43.378555, 43.107853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.591042, 43.734325, 43.049629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039271, -0.179981, -0.982886,
		-0.900405, -0.420145, 0.112910,
		-0.433276, 0.889430, -0.145557,
		46.461060, 44.001156, 43.005962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336697, 43.201160, 42.534657>,  <46.764351, 43.378555, 43.107853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336697, 43.201160, 42.534657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355270, 43.600719, 42.531872>,  <46.366413, 43.840454, 42.530201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355270, 43.600719, 42.531872>,  <46.336697, 43.201160, 42.534657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355270, 43.600719, 42.531872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186158, -0.015502, -0.982398,
		-0.981422, 0.044320, -0.186673,
		0.046434, 0.998897, -0.006964,
		46.369202, 43.900387, 42.529781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866730, 43.482979, 41.985157>,  <46.336697, 43.201160, 42.534657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866730, 43.482979, 41.985157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110603, 43.795937, 42.035973>,  <46.256927, 43.983711, 42.066460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110603, 43.795937, 42.035973>,  <45.866730, 43.482979, 41.985157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.110603, 43.795937, 42.035973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034072, 0.134252, -0.990361,
		-0.791910, 0.608138, 0.055194,
		0.609686, 0.782397, 0.127036,
		46.293510, 44.030655, 42.074085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611694, 44.060001, 41.521687>,  <45.866730, 43.482979, 41.985157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611694, 44.060001, 41.521687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983978, 44.153893, 41.633896>,  <46.207348, 44.210228, 41.701221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983978, 44.153893, 41.633896>,  <45.611694, 44.060001, 41.521687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983978, 44.153893, 41.633896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255579, 0.131319, -0.957828,
		-0.261663, 0.963151, 0.062229,
		0.930705, 0.234723, 0.280522,
		46.263191, 44.224308, 41.718052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679604, 44.820366, 41.377270>,  <45.611694, 44.060001, 41.521687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679604, 44.820366, 41.377270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041985, 44.651257, 41.368225>,  <46.259415, 44.549789, 41.362797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041985, 44.651257, 41.368225>,  <45.679604, 44.820366, 41.377270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041985, 44.651257, 41.368225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069793, 0.201817, -0.976933,
		0.417587, 0.883477, 0.212343,
		0.905953, -0.422774, -0.022616,
		46.313770, 44.524426, 41.361439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039848, 45.338161, 41.001854>,  <45.679604, 44.820366, 41.377270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039848, 45.338161, 41.001854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.210281, 44.976387, 40.993446>,  <46.312542, 44.759323, 40.988403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.210281, 44.976387, 40.993446>,  <46.039848, 45.338161, 41.001854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210281, 44.976387, 40.993446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058436, 0.050697, -0.997003,
		0.902793, 0.423582, 0.074453,
		0.426087, -0.904438, -0.021016,
		46.338108, 44.705055, 40.987141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.465096, 45.457417, 40.465240>,  <46.039848, 45.338161, 41.001854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.465096, 45.457417, 40.465240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473656, 45.058205, 40.488865>,  <46.478790, 44.818680, 40.503040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473656, 45.058205, 40.488865>,  <46.465096, 45.457417, 40.465240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473656, 45.058205, 40.488865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116770, -0.061166, -0.991274,
		0.992929, 0.014313, -0.117848,
		0.021397, -0.998025, 0.059062,
		46.480076, 44.758797, 40.506584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.903179, 45.150990, 39.953186>,  <46.465096, 45.457417, 40.465240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.903179, 45.150990, 39.953186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633461, 44.873745, 40.055103>,  <46.471630, 44.707397, 40.116253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633461, 44.873745, 40.055103>,  <46.903179, 45.150990, 39.953186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633461, 44.873745, 40.055103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132104, -0.226255, -0.965069,
		0.726547, -0.684404, 0.061001,
		-0.674298, -0.693109, 0.254797,
		46.431171, 44.665813, 40.131542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.186905, 44.648182, 39.588127>,  <46.903179, 45.150990, 39.953186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.186905, 44.648182, 39.588127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809418, 44.545753, 39.671856>,  <46.582924, 44.484295, 39.722095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809418, 44.545753, 39.671856>,  <47.186905, 44.648182, 39.588127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.809418, 44.545753, 39.671856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091492, -0.406075, -0.909248,
		0.317834, -0.877229, 0.359793,
		-0.943722, -0.256072, 0.209324,
		46.526302, 44.468933, 39.734653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.151913, 43.997452, 39.265781>,  <47.186905, 44.648182, 39.588127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.151913, 43.997452, 39.265781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.775337, 44.115391, 39.331203>,  <46.549393, 44.186153, 39.370457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.775337, 44.115391, 39.331203>,  <47.151913, 43.997452, 39.265781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.775337, 44.115391, 39.331203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243361, -0.258458, -0.934866,
		-0.233366, -0.919928, 0.315077,
		-0.941443, 0.294843, 0.163559,
		46.492905, 44.203846, 39.380272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633766, 43.445988, 39.000664>,  <47.151913, 43.997452, 39.265781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633766, 43.445988, 39.000664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454727, 43.803661, 39.004448>,  <46.347301, 44.018265, 39.006718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454727, 43.803661, 39.004448>,  <46.633766, 43.445988, 39.000664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454727, 43.803661, 39.004448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220805, -0.100267, -0.970150,
		-0.866544, -0.436328, 0.242320,
		-0.447600, 0.894184, 0.009458,
		46.320446, 44.071915, 39.007286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209595, 43.346958, 38.409317>,  <46.633766, 43.445988, 39.000664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209595, 43.346958, 38.409317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162262, 43.738708, 38.474834>,  <46.133862, 43.973759, 38.514145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162262, 43.738708, 38.474834>,  <46.209595, 43.346958, 38.409317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162262, 43.738708, 38.474834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148151, 0.145692, -0.978175,
		-0.981860, -0.140013, 0.127855,
		-0.118330, 0.979372, 0.163792,
		46.126762, 44.032520, 38.523972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521332, 43.510353, 38.208248>,  <46.209595, 43.346958, 38.409317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521332, 43.510353, 38.208248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757805, 43.831982, 38.183025>,  <45.899689, 44.024960, 38.167892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757805, 43.831982, 38.183025>,  <45.521332, 43.510353, 38.208248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757805, 43.831982, 38.183025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143256, 0.027743, -0.989297,
		-0.793711, 0.593891, 0.131589,
		0.591185, 0.804067, -0.063059,
		45.935162, 44.073200, 38.164108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136791, 44.076080, 37.915443>,  <45.521332, 43.510353, 38.208248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136791, 44.076080, 37.915443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523209, 44.153561, 37.847046>,  <45.755058, 44.200047, 37.806007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523209, 44.153561, 37.847046>,  <45.136791, 44.076080, 37.915443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523209, 44.153561, 37.847046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195081, 0.112853, -0.974273,
		-0.169418, 0.974549, 0.146808,
		0.966044, 0.193699, -0.170996,
		45.813023, 44.211670, 37.795746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034008, 44.318153, 37.325268>,  <45.136791, 44.076080, 37.915443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034008, 44.318153, 37.325268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430550, 44.267776, 37.340015>,  <45.668476, 44.237549, 37.348862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430550, 44.267776, 37.340015>,  <45.034008, 44.318153, 37.325268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430550, 44.267776, 37.340015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056035, 0.152224, -0.986756,
		0.118661, 0.980289, 0.157965,
		0.991352, -0.125941, 0.036867,
		45.727955, 44.229996, 37.351074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244926, 44.920910, 37.006664>,  <45.034008, 44.318153, 37.325268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244926, 44.920910, 37.006664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.526550, 44.637379, 36.989391>,  <45.695526, 44.467262, 36.979027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.526550, 44.637379, 36.989391>,  <45.244926, 44.920910, 37.006664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526550, 44.637379, 36.989391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024963, 0.085478, -0.996027,
		0.709700, 0.700186, 0.077877,
		0.704061, -0.708825, -0.043185,
		45.737770, 44.424732, 36.976437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650139, 45.292675, 36.578354>,  <45.244926, 44.920910, 37.006664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650139, 45.292675, 36.578354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746498, 44.905128, 36.555470>,  <45.804314, 44.672600, 36.541740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746498, 44.905128, 36.555470>,  <45.650139, 45.292675, 36.578354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746498, 44.905128, 36.555470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073026, 0.040684, -0.996500,
		0.967800, 0.244230, -0.060952,
		0.240896, -0.968864, -0.057209,
		45.818768, 44.614468, 36.538307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084499, 45.256840, 36.044231>,  <45.650139, 45.292675, 36.578354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084499, 45.256840, 36.044231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983414, 44.872353, 36.088406>,  <45.922764, 44.641659, 36.114910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983414, 44.872353, 36.088406>,  <46.084499, 45.256840, 36.044231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983414, 44.872353, 36.088406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043569, -0.102719, -0.993756,
		0.966559, -0.255948, -0.015921,
		-0.252715, -0.961218, 0.110436,
		45.907600, 44.583988, 36.121536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541534, 44.871838, 35.604630>,  <46.084499, 45.256840, 36.044231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.541534, 44.871838, 35.604630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221542, 44.637390, 35.655991>,  <46.029545, 44.496719, 35.686806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221542, 44.637390, 35.655991>,  <46.541534, 44.871838, 35.604630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221542, 44.637390, 35.655991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069645, -0.121848, -0.990102,
		0.595968, -0.801007, 0.056656,
		-0.799982, -0.586124, 0.128404,
		45.981548, 44.461552, 35.694511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634838, 44.392132, 35.131603>,  <46.541534, 44.871838, 35.604630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634838, 44.392132, 35.131603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246216, 44.359497, 35.220535>,  <46.013042, 44.339916, 35.273895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246216, 44.359497, 35.220535>,  <46.634838, 44.392132, 35.131603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246216, 44.359497, 35.220535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220442, -0.031573, -0.974889,
		0.086555, -0.996166, 0.012691,
		-0.971552, -0.081584, 0.222330,
		45.954750, 44.335022, 35.287235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406570, 43.815033, 34.779194>,  <46.634838, 44.392132, 35.131603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406570, 43.815033, 34.779194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097954, 44.060371, 34.846745>,  <45.912785, 44.207577, 34.887276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097954, 44.060371, 34.846745>,  <46.406570, 43.815033, 34.779194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097954, 44.060371, 34.846745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280910, -0.090279, -0.955479,
		-0.570796, -0.784635, 0.241950,
		-0.771545, 0.613349, 0.168880,
		45.866489, 44.244377, 34.897408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906826, 43.514355, 34.468018>,  <46.406570, 43.815033, 34.779194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906826, 43.514355, 34.468018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753502, 43.881947, 34.504978>,  <45.661507, 44.102501, 34.527157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753502, 43.881947, 34.504978>,  <45.906826, 43.514355, 34.468018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753502, 43.881947, 34.504978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387672, -0.069274, -0.919191,
		-0.838320, -0.388161, 0.382818,
		-0.383313, 0.918984, 0.092406,
		45.638508, 44.157642, 34.532700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197433, 43.552582, 34.302246>,  <45.906826, 43.514355, 34.468018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197433, 43.552582, 34.302246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334267, 43.921539, 34.230507>,  <45.416367, 44.142914, 34.187462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334267, 43.921539, 34.230507>,  <45.197433, 43.552582, 34.302246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334267, 43.921539, 34.230507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418294, -0.021433, -0.908059,
		-0.841432, 0.385656, 0.378500,
		0.342086, 0.922393, -0.179352,
		45.436893, 44.198257, 34.176701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<45.645119, 44.027702, 46.803318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.793739, 44.369164, 46.657322>,  <45.882912, 44.574039, 46.569725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.793739, 44.369164, 46.657322>,  <45.645119, 44.027702, 46.803318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793739, 44.369164, 46.657322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447186, -0.179973, -0.876148,
		-0.813616, 0.488758, 0.314872,
		0.371556, 0.853654, -0.364994,
		45.905205, 44.625259, 46.547825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056381, 44.101799, 46.383675>,  <45.645119, 44.027702, 46.803318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056381, 44.101799, 46.383675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.370071, 44.316349, 46.258911>,  <45.558285, 44.445080, 46.184052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.370071, 44.316349, 46.258911>,  <45.056381, 44.101799, 46.383675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370071, 44.316349, 46.258911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369876, 0.000508, -0.929081,
		-0.498181, 0.843977, 0.198792,
		0.784224, 0.536379, -0.311913,
		45.605339, 44.477264, 46.165337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810883, 44.694565, 45.929821>,  <45.056381, 44.101799, 46.383675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810883, 44.694565, 45.929821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.195885, 44.626789, 45.845078>,  <45.426884, 44.586124, 45.794231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.195885, 44.626789, 45.845078>,  <44.810883, 44.694565, 45.929821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195885, 44.626789, 45.845078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224018, -0.055989, -0.972976,
		0.152996, 0.983950, -0.091846,
		0.962501, -0.169436, -0.211856,
		45.484634, 44.575958, 45.781521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072445, 44.984821, 45.897888>,  <44.810883, 44.694565, 45.929821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072445, 44.984821, 45.897888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.807030, 44.692081, 45.835766>,  <43.647781, 44.516438, 45.798492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.807030, 44.692081, 45.835766>,  <44.072445, 44.984821, 45.897888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807030, 44.692081, 45.835766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372328, 0.142977, 0.917022,
		-0.648916, 0.666301, -0.367358,
		-0.663536, -0.731848, -0.155302,
		43.607967, 44.472527, 45.789177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529228, 45.226925, 46.252499>,  <44.072445, 44.984821, 45.897888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529228, 45.226925, 46.252499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.416397, 44.845154, 46.213520>,  <43.348698, 44.616089, 46.190132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.416397, 44.845154, 46.213520>,  <43.529228, 45.226925, 46.252499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416397, 44.845154, 46.213520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517584, 0.065865, 0.853093,
		-0.807799, 0.291076, -0.512577,
		-0.282076, -0.954430, -0.097451,
		43.331776, 44.558826, 46.184284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796642, 45.180744, 46.671307>,  <43.529228, 45.226925, 46.252499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796642, 45.180744, 46.671307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.929558, 44.805630, 46.631016>,  <43.009308, 44.580563, 46.606842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.929558, 44.805630, 46.631016>,  <42.796642, 45.180744, 46.671307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929558, 44.805630, 46.631016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372204, -0.228514, 0.899581,
		-0.866629, -0.261430, -0.424980,
		0.332292, -0.937782, -0.100731,
		43.029243, 44.524296, 46.600796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208206, 44.671288, 46.653786>,  <42.796642, 45.180744, 46.671307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208206, 44.671288, 46.653786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.550781, 44.507523, 46.779575>,  <42.756329, 44.409264, 46.855049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.550781, 44.507523, 46.779575>,  <42.208206, 44.671288, 46.653786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550781, 44.507523, 46.779575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445557, -0.278533, 0.850822,
		-0.260748, -0.868792, -0.420964,
		0.856440, -0.409413, 0.314470,
		42.807713, 44.384701, 46.873917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987904, 43.992115, 46.932949>,  <42.208206, 44.671288, 46.653786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987904, 43.992115, 46.932949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.351967, 44.096577, 47.061577>,  <42.570404, 44.159252, 47.138752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.351967, 44.096577, 47.061577>,  <41.987904, 43.992115, 46.932949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351967, 44.096577, 47.061577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273371, -0.204588, 0.939900,
		0.311246, -0.943368, -0.114816,
		0.910161, 0.261153, 0.321567,
		42.625015, 44.174923, 47.158047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083130, 43.509243, 47.447575>,  <41.987904, 43.992115, 46.932949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083130, 43.509243, 47.447575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341301, 43.803856, 47.528522>,  <42.496204, 43.980621, 47.577091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341301, 43.803856, 47.528522>,  <42.083130, 43.509243, 47.447575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341301, 43.803856, 47.528522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119785, -0.164064, 0.979150,
		0.754374, -0.656207, -0.017666,
		0.645424, 0.736529, 0.202369,
		42.534927, 44.024815, 47.589233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436897, 43.279636, 48.050640>,  <42.083130, 43.509243, 47.447575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436897, 43.279636, 48.050640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.488243, 43.676300, 48.045986>,  <42.519051, 43.914299, 48.043194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.488243, 43.676300, 48.045986>,  <42.436897, 43.279636, 48.050640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488243, 43.676300, 48.045986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142694, 0.030075, 0.989310,
		0.981408, -0.125331, 0.145364,
		0.128363, 0.991659, -0.011632,
		42.526752, 43.973797, 48.042496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930145, 43.521091, 48.716984>,  <42.436897, 43.279636, 48.050640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930145, 43.521091, 48.716984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.720123, 43.843876, 48.608810>,  <42.594109, 44.037544, 48.543907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.720123, 43.843876, 48.608810>,  <42.930145, 43.521091, 48.716984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720123, 43.843876, 48.608810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248607, 0.158475, 0.955552,
		0.813948, 0.568950, 0.117407,
		-0.525055, 0.806958, -0.270436,
		42.562607, 44.085964, 48.527679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055965, 44.044907, 49.261196>,  <42.930145, 43.521091, 48.716984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055965, 44.044907, 49.261196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.730125, 44.159912, 49.059700>,  <42.534622, 44.228916, 48.938801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.730125, 44.159912, 49.059700>,  <43.055965, 44.044907, 49.261196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730125, 44.159912, 49.059700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420036, 0.306509, 0.854179,
		0.399989, 0.907408, -0.128918,
		-0.814603, 0.287512, -0.503744,
		42.485744, 44.246166, 48.908577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875332, 44.697071, 49.432182>,  <43.055965, 44.044907, 49.261196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875332, 44.697071, 49.432182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.525581, 44.586025, 49.272987>,  <42.315731, 44.519398, 49.177471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.525581, 44.586025, 49.272987>,  <42.875332, 44.697071, 49.432182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525581, 44.586025, 49.272987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480468, 0.380548, 0.790148,
		-0.067906, 0.882107, -0.466128,
		-0.874379, -0.277616, -0.397983,
		42.263268, 44.502739, 49.153591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448353, 45.283253, 49.583530>,  <42.875332, 44.697071, 49.432182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448353, 45.283253, 49.583530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.194908, 44.987743, 49.491661>,  <42.042839, 44.810440, 49.436539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.194908, 44.987743, 49.491661>,  <42.448353, 45.283253, 49.583530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194908, 44.987743, 49.491661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566955, 0.241405, 0.787582,
		-0.526397, 0.629240, -0.571807,
		-0.633616, -0.738769, -0.229676,
		42.004822, 44.766113, 49.422760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778854, 45.594288, 49.549046>,  <42.448353, 45.283253, 49.583530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778854, 45.594288, 49.549046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.740791, 45.205513, 49.635094>,  <41.717953, 44.972248, 49.686722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.740791, 45.205513, 49.635094>,  <41.778854, 45.594288, 49.549046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740791, 45.205513, 49.635094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602068, 0.228292, 0.765112,
		-0.792754, -0.056711, -0.606898,
		-0.095160, -0.971940, 0.215124,
		41.712242, 44.913933, 49.699631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052216, 45.559376, 49.734894>,  <41.778854, 45.594288, 49.549046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052216, 45.559376, 49.734894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.216835, 45.224575, 49.879150>,  <41.315609, 45.023697, 49.965702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.216835, 45.224575, 49.879150>,  <41.052216, 45.559376, 49.734894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216835, 45.224575, 49.879150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551594, 0.086247, 0.829641,
		-0.725512, -0.540367, -0.426188,
		0.411554, -0.836998, 0.360637,
		41.340302, 44.973476, 49.987343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501408, 45.090588, 49.909721>,  <41.052216, 45.559376, 49.734894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501408, 45.090588, 49.909721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.828896, 44.995232, 50.118668>,  <41.025387, 44.938019, 50.244038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.828896, 44.995232, 50.118668>,  <40.501408, 45.090588, 49.909721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828896, 44.995232, 50.118668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486965, 0.193764, 0.851658,
		-0.304243, -0.951644, 0.042550,
		0.818719, -0.238391, 0.522368,
		41.074512, 44.923714, 50.275379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258015, 44.746361, 50.457741>,  <40.501408, 45.090588, 49.909721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258015, 44.746361, 50.457741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.624260, 44.829807, 50.595222>,  <40.844006, 44.879875, 50.677711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.624260, 44.829807, 50.595222>,  <40.258015, 44.746361, 50.457741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624260, 44.829807, 50.595222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387774, 0.232310, 0.892000,
		0.106234, -0.950007, 0.293599,
		0.915612, 0.208611, 0.343709,
		40.898945, 44.892391, 50.698334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307861, 44.375652, 51.056747>,  <40.258015, 44.746361, 50.457741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307861, 44.375652, 51.056747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.583710, 44.663769, 51.086681>,  <40.749218, 44.836639, 51.104641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.583710, 44.663769, 51.086681>,  <40.307861, 44.375652, 51.056747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583710, 44.663769, 51.086681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214725, 0.104688, 0.971048,
		0.691607, -0.685722, 0.226860,
		0.689618, 0.720296, 0.074839,
		40.790596, 44.879856, 51.109135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811958, 44.197681, 51.756668>,  <40.307861, 44.375652, 51.056747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811958, 44.197681, 51.756668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.848190, 44.587757, 51.675869>,  <40.869930, 44.821804, 51.627392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.848190, 44.587757, 51.675869>,  <40.811958, 44.197681, 51.756668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848190, 44.587757, 51.675869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146794, 0.213686, 0.965811,
		0.985011, -0.057832, 0.162507,
		0.090580, 0.975189, -0.201994,
		40.875366, 44.880314, 51.615273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382145, 44.368778, 52.063301>,  <40.811958, 44.197681, 51.756668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382145, 44.368778, 52.063301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.141075, 44.683243, 52.008553>,  <40.996433, 44.871922, 51.975704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.141075, 44.683243, 52.008553>,  <41.382145, 44.368778, 52.063301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141075, 44.683243, 52.008553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179497, 0.300673, 0.936684,
		0.777539, 0.539946, -0.322321,
		-0.602672, 0.786164, -0.136867,
		40.960274, 44.919090, 51.967491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610001, 44.884365, 52.510067>,  <41.382145, 44.368778, 52.063301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610001, 44.884365, 52.510067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.266022, 45.063213, 52.411621>,  <41.059635, 45.170525, 52.352554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.266022, 45.063213, 52.411621>,  <41.610001, 44.884365, 52.510067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266022, 45.063213, 52.411621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002293, 0.478824, 0.877908,
		0.510377, 0.755519, -0.410739,
		-0.859948, 0.447122, -0.246113,
		41.008038, 45.197350, 52.337788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659393, 45.582474, 52.775017>,  <41.610001, 44.884365, 52.510067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659393, 45.582474, 52.775017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.269073, 45.513729, 52.720947>,  <41.034882, 45.472481, 52.688507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.269073, 45.513729, 52.720947>,  <41.659393, 45.582474, 52.775017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269073, 45.513729, 52.720947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200413, 0.455854, 0.867198,
		-0.087422, 0.873305, -0.479267,
		-0.975803, -0.171863, -0.135170,
		40.976334, 45.462170, 52.680397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348087, 46.149101, 52.863522>,  <41.659393, 45.582474, 52.775017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348087, 46.149101, 52.863522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.040276, 45.900898, 52.923920>,  <40.855591, 45.751976, 52.960159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.040276, 45.900898, 52.923920>,  <41.348087, 46.149101, 52.863522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040276, 45.900898, 52.923920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188129, 0.446221, 0.874925,
		-0.610275, 0.644872, -0.460114,
		-0.769528, -0.620505, 0.150999,
		40.809418, 45.714745, 52.969219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721539, 46.552708, 53.139294>,  <41.348087, 46.149101, 52.863522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721539, 46.552708, 53.139294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.664680, 46.169075, 53.237236>,  <40.630566, 45.938896, 53.296001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.664680, 46.169075, 53.237236>,  <40.721539, 46.552708, 53.139294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664680, 46.169075, 53.237236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397073, 0.281841, 0.873440,
		-0.906713, 0.026927, -0.420888,
		-0.142143, -0.959083, 0.244857,
		40.622036, 45.881351, 53.310692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179379, 46.639984, 53.506752>,  <40.721539, 46.552708, 53.139294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179379, 46.639984, 53.506752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.291649, 46.269379, 53.606987>,  <40.359013, 46.047016, 53.667130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.291649, 46.269379, 53.606987>,  <40.179379, 46.639984, 53.506752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291649, 46.269379, 53.606987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330036, 0.151995, 0.931651,
		-0.901275, -0.344195, -0.263121,
		0.280676, -0.926513, 0.250586,
		40.375851, 45.991425, 53.682163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646530, 46.461548, 53.967800>,  <40.179379, 46.639984, 53.506752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646530, 46.461548, 53.967800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927834, 46.188828, 54.048370>,  <40.096615, 46.025196, 54.096714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927834, 46.188828, 54.048370>,  <39.646530, 46.461548, 53.967800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927834, 46.188828, 54.048370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290766, -0.017290, 0.956638,
		-0.648755, -0.731332, -0.210404,
		0.703258, -0.681802, 0.201430,
		40.138809, 45.984287, 54.108799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324070, 45.767437, 54.238987>,  <39.646530, 46.461548, 53.967800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324070, 45.767437, 54.238987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703438, 45.823669, 54.352642>,  <39.931057, 45.857410, 54.420834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703438, 45.823669, 54.352642>,  <39.324070, 45.767437, 54.238987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703438, 45.823669, 54.352642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259884, -0.168491, 0.950826,
		0.181548, -0.975626, -0.123264,
		0.948420, 0.140586, 0.284139,
		39.987965, 45.865845, 54.437885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507725, 45.218853, 54.739342>,  <39.324070, 45.767437, 54.238987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507725, 45.218853, 54.739342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793205, 45.487778, 54.817959>,  <39.964493, 45.649132, 54.865128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793205, 45.487778, 54.817959>,  <39.507725, 45.218853, 54.739342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793205, 45.487778, 54.817959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254226, -0.012829, 0.967060,
		0.652689, -0.740155, 0.161764,
		0.713699, 0.672314, 0.196540,
		40.007317, 45.689472, 54.876923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919933, 44.901688, 55.306927>,  <39.507725, 45.218853, 54.739342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919933, 44.901688, 55.306927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.966270, 45.298222, 55.282127>,  <39.994072, 45.536140, 55.267246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.966270, 45.298222, 55.282127>,  <39.919933, 44.901688, 55.306927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966270, 45.298222, 55.282127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326809, 0.096988, 0.940101,
		0.937964, -0.088640, 0.335211,
		0.115842, 0.991331, -0.062002,
		40.001022, 45.595619, 55.263527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152031, 45.106026, 56.023186>,  <39.919933, 44.901688, 55.306927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152031, 45.106026, 56.023186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067909, 45.472660, 55.887161>,  <40.017437, 45.692642, 55.805546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067909, 45.472660, 55.887161>,  <40.152031, 45.106026, 56.023186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067909, 45.472660, 55.887161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332404, 0.260072, 0.906571,
		0.919390, 0.303696, 0.249982,
		-0.210309, 0.916587, -0.340057,
		40.004818, 45.747635, 55.785145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387512, 45.549004, 56.529755>,  <40.152031, 45.106026, 56.023186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387512, 45.549004, 56.529755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.112534, 45.769848, 56.341034>,  <39.947548, 45.902355, 56.227802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.112534, 45.769848, 56.341034>,  <40.387512, 45.549004, 56.529755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112534, 45.769848, 56.341034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369455, 0.293432, 0.881703,
		0.625238, 0.780431, 0.002261,
		-0.687445, 0.552109, -0.471799,
		39.906300, 45.935482, 56.199493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411331, 46.203518, 56.864262>,  <40.387512, 45.549004, 56.529755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411331, 46.203518, 56.864262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052155, 46.179970, 56.689796>,  <39.836651, 46.165840, 56.585117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052155, 46.179970, 56.689796>,  <40.411331, 46.203518, 56.864262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052155, 46.179970, 56.689796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402037, 0.512950, 0.758452,
		0.179083, 0.856398, -0.484264,
		-0.897940, -0.058866, -0.436164,
		39.782772, 46.162312, 56.558949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068405, 46.825500, 57.092922>,  <40.411331, 46.203518, 56.864262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068405, 46.825500, 57.092922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776848, 46.591476, 56.950706>,  <39.601913, 46.451061, 56.865376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776848, 46.591476, 56.950706>,  <40.068405, 46.825500, 57.092922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776848, 46.591476, 56.950706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570028, 0.231007, 0.788482,
		-0.379180, 0.777390, -0.501883,
		-0.728897, -0.585064, -0.355540,
		39.558178, 46.415958, 56.844044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385460, 47.311550, 57.100376>,  <40.068405, 46.825500, 57.092922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385460, 47.311550, 57.100376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259277, 46.931999, 57.104935>,  <39.183567, 46.704269, 57.107670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259277, 46.931999, 57.104935>,  <39.385460, 47.311550, 57.100376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259277, 46.931999, 57.104935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418890, 0.150019, 0.895559,
		-0.851482, 0.277731, -0.444797,
		-0.315452, -0.948874, 0.011400,
		39.164642, 46.647339, 57.108356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
