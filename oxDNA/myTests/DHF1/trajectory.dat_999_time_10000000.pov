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
	<1.557452, 1.912302, 2.885987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493736, 2.248488, 2.678818>,  <1.455507, 2.450200, 2.554516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493736, 2.248488, 2.678818>,  <1.557452, 1.912302, 2.885987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.493736, 2.248488, 2.678818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942103, 0.286214, 0.174708,
		0.295073, -0.460107, -0.837397,
		-0.159290, 0.840466, -0.517923,
		1.445949, 2.500628, 2.523441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.089638, 1.980071, 2.414864>,  <1.557452, 1.912302, 2.885987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.089638, 1.980071, 2.414864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.952248, 2.345001, 2.504026>,  <1.869813, 2.563959, 2.557524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.952248, 2.345001, 2.504026>,  <2.089638, 1.980071, 2.414864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.952248, 2.345001, 2.504026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939073, 0.330367, 0.094868,
		0.012910, 0.241911, -0.970213,
		-0.343476, 0.912325, 0.222907,
		1.849205, 2.618699, 2.570899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.093197, 2.465019, 1.936130>,  <2.089638, 1.980071, 2.414864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.093197, 2.465019, 1.936130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.149109, 2.601345, 2.308002>,  <2.182656, 2.683141, 2.531126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.149109, 2.601345, 2.308002>,  <2.093197, 2.465019, 1.936130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.149109, 2.601345, 2.308002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951914, 0.212245, -0.220931,
		-0.272617, 0.915858, -0.294761,
		0.139780, 0.340817, 0.929680,
		2.191043, 2.703590, 2.586907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.446465, 3.055142, 1.917766>,  <2.093197, 2.465019, 1.936130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.446465, 3.055142, 1.917766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.521568, 2.899020, 2.278301>,  <2.566630, 2.805347, 2.494622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.521568, 2.899020, 2.278301>,  <2.446465, 3.055142, 1.917766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.521568, 2.899020, 2.278301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976012, 0.177108, -0.126621,
		-0.110213, 0.903490, 0.414196,
		0.187758, -0.390305, 0.901337,
		2.577896, 2.781929, 2.548702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.981419, 3.446187, 2.263186>,  <2.446465, 3.055142, 1.917766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.981419, 3.446187, 2.263186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.956863, 3.131359, 2.508707>,  <2.942130, 2.942462, 2.656020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.956863, 3.131359, 2.508707>,  <2.981419, 3.446187, 2.263186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.956863, 3.131359, 2.508707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958699, 0.124612, 0.255671,
		-0.277718, 0.604147, 0.746913,
		-0.061389, -0.787069, 0.613803,
		2.938447, 2.895238, 2.692848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.313372, 3.674053, 3.014532>,  <2.981419, 3.446187, 2.263186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.313372, 3.674053, 3.014532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.322868, 3.282574, 2.932961>,  <3.328566, 3.047686, 2.884017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.322868, 3.282574, 2.932961>,  <3.313372, 3.674053, 3.014532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.322868, 3.282574, 2.932961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999120, 0.016175, 0.038686,
		-0.034563, -0.204668, 0.978221,
		0.023740, -0.978698, -0.203929,
		3.329990, 2.988964, 2.871782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.649721, 3.514385, 3.610768>,  <3.313372, 3.674053, 3.014532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.649721, 3.514385, 3.610768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.691181, 3.223090, 3.339790>,  <3.716057, 3.048314, 3.177204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.691181, 3.223090, 3.339790>,  <3.649721, 3.514385, 3.610768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.691181, 3.223090, 3.339790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993326, 0.110442, 0.033259,
		0.050598, -0.676369, 0.734823,
		0.103651, -0.728236, -0.677443,
		3.722276, 3.004619, 3.136557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.123874, 3.076325, 3.847569>,  <3.649721, 3.514385, 3.610768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.123874, 3.076325, 3.847569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.143589, 2.969691, 3.462549>,  <4.155418, 2.905711, 3.231537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.143589, 2.969691, 3.462549>,  <4.123874, 3.076325, 3.847569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.143589, 2.969691, 3.462549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986205, -0.139485, 0.089130,
		-0.158022, -0.953665, 0.256032,
		0.049288, -0.266585, -0.962550,
		4.158375, 2.889716, 3.173784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.414915, 3.431356, 3.159734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.443863, 3.058382, 3.018127>,  <5.461232, 2.834598, 2.933164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.443863, 3.058382, 3.018127>,  <5.414915, 3.431356, 3.159734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.443863, 3.058382, 3.018127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988496, -0.114318, 0.099026,
		-0.132805, 0.342778, -0.929982,
		0.072370, -0.932435, -0.354017,
		5.465574, 2.778651, 2.911923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.043635, 3.469650, 2.541941>,  <5.414915, 3.431356, 3.159734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.043635, 3.469650, 2.541941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.037971, 3.090055, 2.667942>,  <5.034573, 2.862299, 2.743543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.037971, 3.090055, 2.667942>,  <5.043635, 3.469650, 2.541941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.037971, 3.090055, 2.667942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957903, -0.077468, -0.276441,
		0.286741, -0.305657, -0.907939,
		-0.014160, -0.948985, 0.315003,
		5.033723, 2.805360, 2.762443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.646317, 3.120775, 2.071318>,  <5.043635, 3.469650, 2.541941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.646317, 3.120775, 2.071318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.616447, 2.904907, 2.406742>,  <4.598526, 2.775387, 2.607996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.616447, 2.904907, 2.406742>,  <4.646317, 3.120775, 2.071318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.616447, 2.904907, 2.406742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974679, -0.138236, -0.175761,
		0.210771, -0.830451, -0.515681,
		-0.074675, -0.539669, 0.838559,
		4.594045, 2.743007, 2.658310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.300772, 2.514081, 1.921932>,  <4.646317, 3.120775, 2.071318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.300772, 2.514081, 1.921932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.248177, 2.633297, 2.300114>,  <4.216619, 2.704827, 2.527022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.248177, 2.633297, 2.300114>,  <4.300772, 2.514081, 1.921932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.248177, 2.633297, 2.300114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989346, -0.099571, -0.106205,
		0.062487, -0.949346, 0.307958,
		-0.131489, 0.298041, 0.945453,
		4.208730, 2.722709, 2.583750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.859182, 2.043775, 2.124897>,  <4.300772, 2.514081, 1.921932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.859182, 2.043775, 2.124897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.826698, 2.330574, 2.401829>,  <3.807208, 2.502653, 2.567988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.826698, 2.330574, 2.401829>,  <3.859182, 2.043775, 2.124897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.826698, 2.330574, 2.401829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978551, -0.189301, 0.081261,
		0.189323, -0.670880, 0.716992,
		-0.081210, 0.716998, 0.692329,
		3.802335, 2.545673, 2.609528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.554083, 1.724129, 2.796896>,  <3.859182, 2.043775, 2.124897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.554083, 1.724129, 2.796896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.485390, 2.117043, 2.826900>,  <3.444174, 2.352791, 2.844903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.485390, 2.117043, 2.826900>,  <3.554083, 1.724129, 2.796896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.485390, 2.117043, 2.826900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960044, -0.183949, 0.210898,
		0.220960, -0.035797, 0.974626,
		-0.171732, 0.982283, 0.075012,
		3.433870, 2.411728, 2.849404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.989998, 1.719305, 3.307933>,  <3.554083, 1.724129, 2.796896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.989998, 1.719305, 3.307933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.969910, 2.074955, 3.125973>,  <2.957856, 2.288345, 3.016796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.969910, 2.074955, 3.125973>,  <2.989998, 1.719305, 3.307933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.969910, 2.074955, 3.125973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988391, 0.021146, 0.150450,
		0.143388, 0.457176, 0.877741,
		-0.050222, 0.889125, -0.454901,
		2.954843, 2.341692, 2.989502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.766503, 2.210107, 3.714756>,  <2.989998, 1.719305, 3.307933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.766503, 2.210107, 3.714756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.690857, 2.350056, 3.347752>,  <2.645469, 2.434025, 3.127549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.690857, 2.350056, 3.347752>,  <2.766503, 2.210107, 3.714756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.690857, 2.350056, 3.347752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981144, -0.029366, 0.191033,
		0.039894, 0.936337, 0.348828,
		-0.189115, 0.349872, -0.917511,
		2.634122, 2.455017, 3.072499>
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
