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
	<1.581452, 3.551693, 5.648788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.380165, 3.212463, 5.582407>,  <1.259393, 3.008925, 5.542578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.380165, 3.212463, 5.582407>,  <1.581452, 3.551693, 5.648788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.380165, 3.212463, 5.582407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617711, -0.218714, -0.755379,
		0.604322, -0.482632, 0.633926,
		-0.503218, -0.848075, -0.165954,
		1.229200, 2.958041, 5.532621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.056126, 2.985640, 5.522149>,  <1.581452, 3.551693, 5.648788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.056126, 2.985640, 5.522149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718246, 2.914936, 5.320064>,  <1.515519, 2.872514, 5.198812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718246, 2.914936, 5.320064>,  <2.056126, 2.985640, 5.522149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.718246, 2.914936, 5.320064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534895, -0.244704, -0.808707,
		0.019320, -0.953350, 0.301249,
		-0.844698, -0.176761, -0.505214,
		1.464837, 2.861908, 5.168499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.106349, 2.294910, 5.036482>,  <2.056126, 2.985640, 5.522149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.106349, 2.294910, 5.036482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.843529, 2.571770, 4.917006>,  <1.685837, 2.737886, 4.845321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.843529, 2.571770, 4.917006>,  <2.106349, 2.294910, 5.036482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.843529, 2.571770, 4.917006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444632, 0.035860, -0.894995,
		-0.608760, -0.720863, -0.331314,
		-0.657049, 0.692150, -0.298688,
		1.646414, 2.779415, 4.827400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.748098, 2.176564, 4.368917>,  <2.106349, 2.294910, 5.036482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.748098, 2.176564, 4.368917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.761528, 2.571468, 4.431129>,  <1.769586, 2.808411, 4.468456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.761528, 2.571468, 4.431129>,  <1.748098, 2.176564, 4.368917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.761528, 2.571468, 4.431129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372667, 0.132028, -0.918525,
		-0.927357, 0.088800, -0.363487,
		0.033574, 0.987260, 0.155530,
		1.771600, 2.867646, 4.477788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.598882, 2.461262, 3.716881>,  <1.748098, 2.176564, 4.368917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.598882, 2.461262, 3.716881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.736900, 2.782097, 3.911857>,  <1.819711, 2.974598, 4.028842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.736900, 2.782097, 3.911857>,  <1.598882, 2.461262, 3.716881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.736900, 2.782097, 3.911857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319413, 0.387990, -0.864545,
		-0.882564, 0.454002, -0.122324,
		0.345045, 0.802088, 0.487440,
		1.840414, 3.022723, 4.058089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.456729, 2.971545, 3.350831>,  <1.598882, 2.461262, 3.716881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.456729, 2.971545, 3.350831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.765305, 3.096546, 3.572542>,  <1.950450, 3.171547, 3.705568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.765305, 3.096546, 3.572542>,  <1.456729, 2.971545, 3.350831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.765305, 3.096546, 3.572542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416157, 0.411166, -0.811021,
		-0.481348, 0.856320, 0.187139,
		0.771439, 0.312504, 0.554278,
		1.996736, 3.190297, 3.738825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.613070, 3.668182, 3.050083>,  <1.456729, 2.971545, 3.350831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.613070, 3.668182, 3.050083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.933754, 3.573631, 3.269679>,  <2.126164, 3.516901, 3.401436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.933754, 3.573631, 3.269679>,  <1.613070, 3.668182, 3.050083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.933754, 3.573631, 3.269679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575369, 0.553990, -0.601703,
		-0.161905, 0.798261, 0.580143,
		0.801709, -0.236378, 0.548988,
		2.174267, 3.502718, 3.434375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.903792, 4.354960, 3.124422>,  <1.613070, 3.668182, 3.050083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.903792, 4.354960, 3.124422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.181122, 4.070137, 3.168740>,  <2.347520, 3.899243, 3.195331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.181122, 4.070137, 3.168740>,  <1.903792, 4.354960, 3.124422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.181122, 4.070137, 3.168740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628622, 0.522443, -0.576097,
		0.352330, 0.469071, 0.809837,
		0.693324, -0.712058, 0.110796,
		2.389119, 3.856520, 3.201979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.944603, 4.004252, 1.943625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.204597, 3.999771, 2.247571>,  <3.360594, 3.997082, 2.429938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.204597, 3.999771, 2.247571>,  <2.944603, 4.004252, 1.943625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.204597, 3.999771, 2.247571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648387, -0.529700, 0.546820,
		0.396374, -0.848111, -0.351561,
		0.649986, -0.011203, 0.759864,
		3.399593, 3.996410, 2.475529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.146033, 3.298421, 2.166937>,  <2.944603, 4.004252, 1.943625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.146033, 3.298421, 2.166937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.155342, 3.573341, 2.457337>,  <3.160928, 3.738293, 2.631577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.155342, 3.573341, 2.457337>,  <3.146033, 3.298421, 2.166937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.155342, 3.573341, 2.457337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555349, -0.594957, 0.581045,
		0.831292, -0.416706, 0.367845,
		0.023273, 0.687300, 0.726000,
		3.162324, 3.779531, 2.675138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.963332, 2.993937, 2.701752>,  <3.146033, 3.298421, 2.166937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.963332, 2.993937, 2.701752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.945129, 3.349030, 2.884995>,  <2.934208, 3.562085, 2.994940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.945129, 3.349030, 2.884995>,  <2.963332, 2.993937, 2.701752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.945129, 3.349030, 2.884995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444210, -0.428731, 0.786681,
		0.894766, -0.167697, 0.413849,
		-0.045506, 0.887732, 0.458107,
		2.931478, 3.615349, 3.022427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.325138, 2.975363, 3.370853>,  <2.963332, 2.993937, 2.701752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.325138, 2.975363, 3.370853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.054642, 3.270035, 3.371282>,  <2.892344, 3.446838, 3.371539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.054642, 3.270035, 3.371282>,  <3.325138, 2.975363, 3.370853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.054642, 3.270035, 3.371282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450561, -0.414747, 0.790557,
		0.582831, 0.534125, 0.612388,
		-0.676242, 0.736679, 0.001072,
		2.851769, 3.491039, 3.371604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.263972, 3.277030, 4.087569>,  <3.325138, 2.975363, 3.370853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.263972, 3.277030, 4.087569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.922188, 3.354889, 3.894900>,  <2.717117, 3.401604, 3.779299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.922188, 3.354889, 3.894900>,  <3.263972, 3.277030, 4.087569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.922188, 3.354889, 3.894900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519093, -0.282521, 0.806675,
		0.020935, 0.939305, 0.342444,
		-0.854461, 0.194648, -0.481672,
		2.665849, 3.413283, 3.750399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.910101, 3.747995, 4.454118>,  <3.263972, 3.277030, 4.087569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.910101, 3.747995, 4.454118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.621216, 3.585815, 4.229969>,  <2.447884, 3.488508, 4.095479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.621216, 3.585815, 4.229969>,  <2.910101, 3.747995, 4.454118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.621216, 3.585815, 4.229969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609457, -0.010062, 0.792755,
		-0.327060, 0.914062, -0.239837,
		-0.722214, -0.405449, -0.560373,
		2.404552, 3.464181, 4.061857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.325145, 4.119309, 4.563543>,  <2.910101, 3.747995, 4.454118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.325145, 4.119309, 4.563543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.169739, 3.779900, 4.419842>,  <2.076495, 3.576254, 4.333621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.169739, 3.779900, 4.419842>,  <2.325145, 4.119309, 4.563543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.169739, 3.779900, 4.419842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617826, -0.049374, 0.784763,
		-0.683628, 0.526848, -0.505057,
		-0.388515, -0.848524, -0.359254,
		2.053184, 3.525342, 4.312066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.633999, 4.172988, 4.565551>,  <2.325145, 4.119309, 4.563543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.633999, 4.172988, 4.565551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.682259, 3.776146, 4.551857>,  <1.711214, 3.538041, 4.543640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.682259, 3.776146, 4.551857>,  <1.633999, 4.172988, 4.565551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.682259, 3.776146, 4.551857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542522, -0.094779, 0.834677,
		-0.831332, -0.082128, -0.549674,
		0.120648, -0.992105, -0.034236,
		1.718453, 3.478514, 4.541586>
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
